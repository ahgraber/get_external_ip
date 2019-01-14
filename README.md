# get_external_ip
Script and plists to email external IP to self for remote access

#### Setup
1. Edit email_external_ip.scpt and com.USER.email_external_ip.plist to replace USER with login name, and update your email address and password
2. Place .scpt and .py file in ~/dev/ (create this folder if it does not exist)
3. Place .plist file in ~/Library/LaunchAgents/ (user-specific) or /Library/LaunchAgents (all users - will need admin/root privileges)
   * if user-specific, in terminal:
   ``` 
   launchctl load ~/Library/LaunchAgents/LoginScripts.Test.plist
   ```
   * if all users, in terminal:
   ```
   sudo chown root /Library/LaunchAgents/LoginScripts.Test.plist
   sudo launchctl load /Library/LaunchAgents/LoginScripts.Test.plist
   ```
4. If script/setup is correct, you should receive an email!

Note: pythonEmail has correct settings for gmail; if you use another email service you may have to edit the ports and authentication settings.

for further info on launchctl, see: (https://stackoverflow.com/questions/22842016/launch-shell-script-on-login-in-mac-os-os-x)
