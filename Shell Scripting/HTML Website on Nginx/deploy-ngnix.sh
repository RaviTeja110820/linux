#!/bin/bash
#==========================================================
# Bash Script: Deploy HTML Website on Nginx (AWS EC2 Ubuntu)
# Author: Raviteja
# Purpose: Automates the deployment of a static HTML website
#          on Nginx server on Ubuntu EC2 instance.
# Notes:
# - Hides unnecessary command output (only echo messages shown)
# - Removes Apache if installed to avoid conflicts
# - Installs Nginx and deploys sample HTML
#==========================================================

set -e  # Exit immediately if any command fails

echo "================================"
echo "Starting Deployment on EC2..."
echo "================================"

#-------------------------------
# Step 1: Remove Apache2 if installed
#-------------------------------
echo ""
echo "Step 1: Checking and removing Apache2 if exists..."
if systemctl is-active --quiet apache2 2>/dev/null || dpkg -l | grep -q apache2; then
    echo "Apache2 detected. Removing..."
    sudo systemctl stop apache2 2>/dev/null || true  # Stop Apache service if running
    sudo systemctl disable apache2 2>/dev/null || true  # Disable auto-start
    sudo apt remove --purge apache2 apache2-utils apache2-bin apache2.2-common -y >/dev/null 2>&1
    sudo apt autoremove -y >/dev/null 2>&1
    sudo apt autoclean >/dev/null 2>&1
    echo "✓ Apache2 removed successfully!"
else
    echo "✓ No Apache2 found. Proceeding..."
fi

#-------------------------------
# Step 2: Update system packages
#-------------------------------
echo ""
echo "Step 2: Updating system packages..."
sudo apt update -qq >/dev/null 2>&1  # Quiet update
sudo apt upgrade -y >/dev/null 2>&1  # Quiet upgrade
echo "✓ System updated"

#-------------------------------
# Step 3: Install Nginx
#-------------------------------
echo ""
echo "Step 3: Installing Nginx..."
sudo apt install nginx -y >/dev/null 2>&1
echo "✓ Nginx installed"

#-------------------------------
# Step 4: Start and enable Nginx service
#-------------------------------
echo ""
echo "Step 4: Starting Nginx service..."
sudo systemctl start nginx >/dev/null 2>&1
sudo systemctl enable nginx >/dev/null 2>&1

# Verify Nginx is running
if systemctl is-active --quiet nginx; then
    echo "✓ Nginx is running successfully!"
else
    echo "✗ Nginx failed to start. Check logs with: sudo journalctl -xeu nginx"
    exit 1
fi

#-------------------------------
# Step 5: Backup default Nginx config
#-------------------------------
echo ""
echo "Step 5: Backing up default Nginx configuration..."
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.backup
echo "✓ Backup created at /etc/nginx/sites-available/default.backup"

#-------------------------------
# Step 6: Clean default website content
#-------------------------------
echo ""
echo "Step 6: Cleaning default website content..."
sudo rm -rf /var/www/html/*

#-------------------------------
# Step 7: Create website directory
#-------------------------------
echo ""
echo "Step 7: Creating website directory..."
sudo mkdir -p /var/www/html

#-------------------------------
# Step 8: Deploy sample HTML website
#-------------------------------
echo ""
echo "Step 8: Deploying sample website..."
sudo tee /var/www/html/index.html > /dev/null << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to My EC2 Website</title>
</head>
<body>
    <h1>Deploying using Shell Script!</h1>
    <p>My website is now live on AWS EC2</p>
    <p>Successfully deployed with Nginx</p>
    <p>Created by Raviteja</p>
</body>
</html>
EOF
echo "✓ Sample website deployed"

#-------------------------------
# Step 9: Set proper permissions
#-------------------------------
echo ""
echo "Step 9: Setting permissions..."
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
echo "✓ Permissions set correctly"

#-------------------------------
# Step 10: Test Nginx configuration
#-------------------------------
echo ""
echo "Step 10: Testing Nginx configuration..."
sudo nginx -t >/dev/null 2>&1
echo "✓ Nginx configuration test passed"

#-------------------------------
# Step 11: Reload Nginx
#-------------------------------
echo ""
echo "Step 11: Reloading Nginx to apply changes..."
sudo systemctl reload nginx >/dev/null 2>&1
echo "✓ Nginx reloaded successfully!"

#-------------------------------
# Step 12: Display public URL
#-------------------------------
SERVER_IP=$(curl -s ifconfig.me)
echo ""
echo "================================"
echo "✓ Deployment Complete!"
echo "================================"
echo "Your website is now live at: http://$SERVER_IP"
echo ""
echo "- Check Nginx status: sudo systemctl status nginx"
echo "- View error logs: sudo tail -f /var/log/nginx/error.log"
echo "- View access logs: sudo tail -f /var/log/nginx/access.log"
echo "- Test config: sudo nginx -t"
echo "- Reload Nginx: sudo systemctl reload nginx"
echo "================================"
