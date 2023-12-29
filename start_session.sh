echo nwgSiRUXi4SB | sudo -S apt install screen -y
chmod 755 /home/$USER/pulsar-log-cleaner/clean.sh

sudo touch /etc/systectl/system/loags_cleaner.service
sudo echo >> '
[Unit]
Description:Subspace farmer 
After=network.target 

[Service]
ExecStart= /bin/bash /home/$USER/pulsar-log-cleaner/start_session.sh
WorkingDirectory=/home/$USER/pulsar-log-cleaner/
User=$USER
RemainAfterExit=yes

[Install]
WantedBy=multi-user.target
'
sudo systemctl enable loags_cleaner.service


screen -dmS Logs_cleaner bash -c '/home/$USER/pulsar-log-cleaner/clean.sh'