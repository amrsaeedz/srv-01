cat >/etc/systemd/system/srv01.service <<EOL
[Unit]
Description=Dotnet S3 info service

[Service]
ExecStart=/usr/bin/dotnet /home/ubuntu/srv01/srv01.dll
SyslogIdentifier=srv01

Environment=DOTNET_CLI_HOME=/temp

[Install]
WantedBy=multi-user.target
EOL

sudo systemctl daemon-reload