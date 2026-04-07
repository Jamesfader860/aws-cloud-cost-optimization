#!/bin/bash

# -------------------------------------------------------------------------
# Project: AWS Cloud Cost Optimization
# Purpose: Automated Bootstrapping of Apache Web Server
# Author: [Your Name/GitHub Handle]
# -------------------------------------------------------------------------

# Update the OS package manager
yum update -y

# Install Apache Web Server (httpd)
yum install -y httpd

# Start the service immediately
systemctl start httpd

# Ensure the service starts automatically on every boot/reboot
systemctl enable httpd

# Create a custom landing page to verify the deployment
echo "<html>
<head>
    <title>Cloud Optimization Project</title>
    <style>
        body { font-family: sans-serif; text-align: center; margin-top: 50px; }
        .status { color: #2ecc71; font-weight: bold; }
    </style>
</head>
<body>
    <h1>AWS Cloud Cost Optimization Project</h1>
    <p>Status: <span class='status'>ACTIVE</span></p>
    <p>Instance Type: <b>t3.micro (Optimized)</b></p>
    <p>Deployment Method: Automated via User Data</p>
</body>
</html>" > /var/www/html/index.html
