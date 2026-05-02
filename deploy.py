import os
import subprocess
import requests
import zipfile
import json

def create_site_zip():
    """Create a zip file of the website"""
    with zipfile.ZipFile('site.zip', 'w', zipfile.ZIP_DEFLATED) as zipf:
        # Add all files except .git and deployment files
        for root, dirs, files in os.walk('.'):
            # Skip .git directory
            if '.git' in root:
                continue
                
            for file in files:
                if file.endswith('.zip') or file.endswith('.py'):
                    continue
                    
                file_path = os.path.join(root, file)
                arcname = os.path.relpath(file_path, '.')
                zipf.write(file_path, arcname)
    
    print("✅ Site zip created successfully")

def deploy_to_netlify():
    """Deploy to Netlify using their API"""
    try:
        # Create the zip file
        create_site_zip()
        
        # Read the zip file
        with open('site.zip', 'rb') as f:
            files = {'file': ('site.zip', f, 'application/zip')}
            
            # Deploy to Netlify Drop API
            print("🚀 Deploying to Netlify...")
            response = requests.post(
                'https://api.netlify.com/api/v1/sites',
                files=files,
                headers={
                    'Authorization': 'Bearer Bearer netlify-auth-token',  # This will trigger browser auth
                    'Content-Type': 'multipart/form-data'
                }
            )
            
            if response.status_code == 200:
                site_info = response.json()
                print(f"✅ Site deployed successfully!")
                print(f"🌐 URL: {site_info.get('url', 'N/A')}")
                print(f"🔗 Admin URL: {site_info.get('admin_url', 'N/A')}")
                return site_info
            else:
                print(f"❌ Deployment failed: {response.text}")
                return None
                
    except Exception as e:
        print(f"❌ Error: {e}")
        return None
    finally:
        # Clean up zip file
        if os.path.exists('site.zip'):
            os.remove('site.zip')

if __name__ == "__main__":
    deploy_to_netlify()
