# Project Overview

Automating the deployment of a website on an **AWS EC2 Ubuntu instance** using **Nginx**.  
The goal of the shell script is to:

- Ensure Apache is removed (to avoid conflicts)
- Install Nginx
- Set up a website folder structure
- Deploy a sample HTML website
- Configure permissions
- Test and reload Nginx
- Output the live website URL

---

## Step 1: Launch EC2 Instance

1. Go to **AWS Console → EC2 Dashboard → Launch Instance**
2. Configure instance:

   - **Name:** my-project-nginx  
   - **AMI:** Ubuntu Server 22.04 LTS  
   - **Instance Type:** t2.micro (free tier eligible)  
   - **Key Pair:** Create/download a `.pem` key for SSH access  
   - **Network Settings:** Add security rule `All Traffic → Anywhere` (for simplicity, but for production use HTTP/HTTPS only)  
   - **Storage:** 8 GB is sufficient

---

## Step 2: Connect to EC2

Open your terminal or Git Bash:

```bash
ssh -i your-key.pem ubuntu@<your-ec2-public-ip>
```

You are now inside your EC2 instance.

---

## Step 3: Create Deployment Script

Create a new shell script:

```bash
vim deploy-nginx.sh
```

Make it executable:

```bash
chmod +x deploy-nginx.sh
```

---

## Step 4: Script Breakdown

### Header

```bash
#!/bin/bash
set -e
```

- `#!/bin/bash` → tells Linux to use bash to run the script.  
- `set -e` → stops the script if any command fails (safe practice).

---

### Step 4.1: Remove Apache2

```bash
if systemctl is-active --quiet apache2 2>/dev/null || dpkg -l | grep -q apache2; then
    echo "Apache2 detected. Removing..."
    sudo systemctl stop apache2
    sudo systemctl disable apache2
    sudo apt remove --purge apache2 -y
    sudo apt autoremove -y
    sudo apt autoclean
fi
```

- Checks if Apache2 is installed  
- Stops and disables it to avoid port conflicts (Nginx uses port 80)  
- Removes packages and cleans system

---

### Step 4.2: Update System

```bash
sudo apt update -qq
sudo apt upgrade -y
```

- Updates package list (`apt update`)  
- Upgrades installed packages (`apt upgrade`)

---

### Step 4.3: Install Nginx

```bash
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

- Installs Nginx web server  
- Starts Nginx immediately and enables it to start on boot

---

### Step 4.4: Backup Default Nginx Config

```bash
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/default.backup
```

- Always keep a backup of the original config before making changes

---

### Step 4.5: Clean Default Website

```bash
sudo rm -rf /var/www/html/*
sudo mkdir -p /var/www/html
```

- Clears default Nginx page  
- Ensures `/var/www/html` exists for your website files

---

### Step 4.6: Deploy Sample Website

```bash
sudo tee /var/www/html/index.html > /dev/null << 'EOF'
<title>Welcome to My EC2 Website</title>
<h1>Deploying using Shell Script!</h1>
<p>My website is now live on AWS EC2</p>
<p>Successfully deployed with Nginx</p>
<p>Created by Sonal Mittal</p>
EOF
```

- Creates a simple HTML file using `tee`  
- You can replace this with your own website files

---

### Step 4.7: Set Permissions

```bash
sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html
```

- `www-data` is the default Nginx user  
- Ensures Nginx can read files, and directories are executable

---

### Step 4.8: Test & Reload Nginx

```bash
sudo nginx -t
sudo systemctl reload nginx
```

- `nginx -t` → tests configuration for syntax errors  
- `systemctl reload nginx` → applies new changes without stopping the server

---

### Step 4.9: Show Public Website URL

```bash
SERVER_IP=$(curl -s ifconfig.me)
echo "Your website is live at: http://$SERVER_IP"
```

- Fetches public IP of EC2 instance  
- Outputs the live website URL

---

## ✅ Step 5: Run the Script

```bash
./deploy-nginx.sh
```

The script will:

- Remove Apache2 if present  
- Install Nginx  
- Deploy your website automatically  

After running, open your **EC2 public IP** in a browser — your website should be live!
