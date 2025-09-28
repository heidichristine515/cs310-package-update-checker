# Package Update Checker
# By Heidi Blank
# 9/28/25
# Checks for package updates and adds weekly cron jobs to complete the updates.

# Appends new cron jobs to the cron tab
(crontab -l 2>/dev/null; echo "0 0 * * 1 /usr/bin/apt update")
(crontab -l 2>/dev/null; echo "0 0 * * 1 /usr/bin/apt list --upgradable > /var/tmp/update-list.txt")
(crontab -l 2>/dev/null; echo "0 0 * * 1 /usr/bin/apt upgrade") | sudo crontab -
sudo crontab -l
