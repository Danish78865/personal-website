# Deploy website to Netlify
Write-Host "🚀 Starting deployment to Netlify..." -ForegroundColor Green

# Create zip file of the website
Write-Host "📦 Creating site zip file..." -ForegroundColor Blue
Add-Type -AssemblyName System.IO.Compression.FileSystem
$zipPath = ".\site-deploy.zip"

# Create zip file excluding .git and deployment files
$files = Get-ChildItem -Path . -Recurse | Where-Object { 
    $_.FullName -notlike "*\.git*" -and 
    $_.FullName -notlike "*\site-deploy.zip" -and
    $_.FullName -notlike "*\deploy-website.ps1" -and
    $_.FullName -notlike "*\deploy.py"
}

# Create zip archive
$zip = [System.IO.Compression.ZipFile]::Open($zipPath, 'Create')
foreach ($file in $files) {
    $relativePath = $file.FullName.Replace((Get-Location).Path, "").TrimStart('\')
    $entry = $zip.CreateEntry($relativePath)
    $entry.LastWriteTime = $file.LastWriteTime
    using ($writer = $entry.Open()) {
        $writer.Write([System.IO.File]::ReadAllBytes($file.FullName))
    }
}
$zip.Dispose()
$zip.Dispose()

Write-Host "✅ Zip file created successfully" -ForegroundColor Green

# Open Netlify Drop for deployment
Write-Host "🌐 Opening Netlify Drop for deployment..." -ForegroundColor Blue
Start-Process "https://app.netlify.com/drop"

Write-Host "📋 Instructions:" -ForegroundColor Yellow
Write-Host "1. Drag your 'personal-website' folder into the Netlify Drop page" -ForegroundColor White
Write-Host "2. Wait 30 seconds for deployment" -ForegroundColor White
Write-Host "3. Your website will be live!" -ForegroundColor White

# Clean up
Remove-Item $zipPath -Force
Write-Host "✅ Deployment ready!" -ForegroundColor Green
