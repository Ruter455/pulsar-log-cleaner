echo nwgSiRUXi4SB | sudo -S apt install screen -y
chmod 755 /home/$USER/pulsar-log-cleaner/clean.sh
screen -dmS Logs_cleaner bash -c '/home/$USER/pulsar-log-cleaner/clean.sh'