# Termux-GUI_Desktop-Install

This script automates the installation of a Debian-based XFCE desktop environment with a VNC server in Termux. It includes all necessary dependencies and provides a simple way to start and stop the VNC server.

## Installation

Ensure you have **Termux** installed on your Android device.

### Steps:
1. Open Termux and update packages:
   ```sh
   pkg update && pkg upgrade -y
   ```
2. Install `git` if not already installed:
   ```sh
   pkg install git -y
   ```
3. Clone this repository:
   ```sh
   git clone https://github.com/Keonbe/Termux-GUI_Desktop-Install
   ```
4. Navigate to the cloned directory:
   ```sh
   cd your-repo
   ```
5. Give execution permissions to the script:
   ```sh
   chmod +x setup.sh
   ```
6. Run the script:
   ```sh
   ./setup.sh
   ```

## Usage

### Starting VNC Server
After installation, start the VNC server by running:
```sh
vncserver-start
```

Set your VNC password when prompted.

### Connecting to the VNC Server
1. Download a VNC viewer app from the app store (e.g., **VNC Viewer** by RealVNC).
2. Open the VNC app and connect to:
   ```
   127.0.0.1:5901 or localhost:1
   ```
3. Set picture quality to high for a better experience.

### Stopping VNC Server
To stop the VNC server, run:
```sh
vncserver-stop
```

## Notes
- This script installs XFCE4 along with essential applications such as **Firefox**, **Mousepad**, and **Neofetch**.
- If any package fails to install, rerun the script to ensure all dependencies are met.
- Make sure to allow storage permissions in Termux if needed:
  ```sh
  termux-setup-storage
  ```

## License
This project is licensed under the MIT License.

---
For any issues, feel free to open an issue on the repository.

