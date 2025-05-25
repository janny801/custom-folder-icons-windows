# Folder Icon Setter

This is a **Windows 11 batch script (.bat)** that allows you to change folder icons by applying a custom `.ico` file using a `desktop.ini` configuration.  
It automates the process of assigning custom icons to folders, sets the required attributes, and refreshes File Explorer so the new icon appears immediately.

You can use this to **visually organize folders** by applying personalized icons with minimal effort.

## ✅ Features
- Applies custom icon via `desktop.ini`
- Automatically sets required folder attributes (`+s +r`)
- Hides `desktop.ini` after creation
- Restarts Windows Explorer to reflect changes
- Opens `desktop.ini` for manual verification (with Admin rights)

## 🛠 How to Use

1. **Edit the Script:**

   Replace these two lines in the script with your actual paths:
   ```bat
   set folder=FULL_PATH_TO_TARGET_FOLDER
   set icon=FULL_PATH_TO_ICON_FILE.ico
    ```
2. **Save the Script as a `.bat` File:**

   Open Notepad, paste the script, and save it with a `.bat` extension (e.g., `set_folder_icon.bat`).  
   Be sure to select **"All Files"** as the file type when saving.

3. **Run the Script as Administrator:**

   Right-click the saved `.bat` file and choose **"Run as administrator"**.  
   This is required to modify system attributes and restart Explorer.
