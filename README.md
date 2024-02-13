# Dotfiles repository

## Getting Started
### Cloning the Project
To get started, you'll need to clone this repository to your local machine. Open a terminal and run the following command:

```sh
git clone https://github.com/0grre/.dotfiles.git ~/.dotfiles
```

This command clones the repository into the `.dotfiles` directory in your home folder.

### Installation
Before running the installation script, ensure you have `rsync` installed on your system, as our synchronization scripts rely on it.

1. **Install rsync:**

- On macOS: rsync is pre-installed.
- On Linux: Install rsync using your package manager, e.g., sudo apt-get install rsync for Debian/Ubuntu.

2. **Run the Installation Script:**

Navigate to the `.dotfiles` directory and run the installation script:

```sh
cd ~/.dotfiles
./install_hook.sh
```

This script sets up the necessary Git hooks for automatic synchronization.

## Scripts Overview

### install_hooks.sh
**Purpose:** Sets up Git hooks for automatic synchronization of your dotfiles.
How to Run:
```sh
./install_hook.sh
```

Run this script once after cloning the repository to ensure the post-merge hook is properly installed.

### sync_files.sh

**Purpose:** Synchronizes configurations between .dotfiles/.config and your system's .config directory, ensuring that any updates are reflected in both locations.
- How to Run:
  
```sh
./sync_files.sh
```
You can manually run this script to synchronize your configurations at any time.

## How It Works

**Post-Merge Hook:** After any git pull operation, the post-merge hook automatically triggers the synchronization script to update your configurations.

**Synchronization Script:** This script uses rsync to sync files and directories between `.dotfiles/.config` and your system's `.config`, ensuring the latest configurations are always in use.

## Contributing
Contributions are welcome! If you have improvements or fixes, please fork the repository and submit a pull request.

## Support
<a href="https://www.buymeacoffee.com/0grre" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
