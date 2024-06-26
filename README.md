# WordPress Development Environment 🐋

This repository initializes a local WordPress development environment using Docker and Docker Compose.

# Features

- XDebug integration with Visual Studio Code
- PHP error logging to the host machine
- Email capturing via smtp4dev service
- phpMyAdmin integration

# Setup

1. Clone this repository on your local machine.

2. Make sure you have both Docker and Docker Compose installed.

3. Start the containers by executing the command below:

```
docker compose -f docker-compose.yaml up -d
```

# Post-setup

After successfully setting up the environment, you can access and interact with the various components as follows:

## WordPress

- WordPress: `http://127.0.0.1:80/`
- WordPress Admin Panel: `http://127.0.0.1:80/wp-admin/`

### First-Time Setup

When you access WordPress for the first time, you'll need to go through the initial setup process:

1. Visit `http://127.0.0.1:80/` in your web browser.
2. Choose your preferred language.
3. On the next page, fill in the site information and create your admin account as prompted.
4. Click "Install WordPress" to complete the setup.
5. You can now access the admin panel using your username and password.

### Themes and Plugins

You can easily add custom themes and plugins to your WordPress development environment:

- Place your custom themes under the `wp-content/themes/` directory.

- Place your custom plugins under the `wp-content/plugins/` directory.

## Mail Server

All emails sent from WordPress are accessible from here:

- smtp4dev Web Interface: `http://127.0.0.1:5000`

## MySQL Database

You can connect to the database using 3rd party tools like MySQL Workbench:

- Host: `127.0.0.1`
- Port: `3306`
- Username: `root`
- Password: `root`

Otherwise, use the phpMyAdmin web interface for database manipulation:

- phpMyAdmin Web Interface: `http://127.0.0.1:4000`

# Customization

**Note:** Remember to rebuild the WordPress Docker image after either adding custom scripts or modifying the PHP configurations.

## Custom PHP Scripts

To add custom PHP scripts:

- Place your scripts within the `configs/var/www/html/` directory.
- These scripts will be automatically included in the web root of the container.

## PHP Configuration

To extend or modify PHP configurations:

- Edit the file: `configs/usr/local/etc/php/conf.d/user.ini`
- This file allows you to override default PHP settings or add new ones.
