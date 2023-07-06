#/bin/bash
docker run -d --name=deconzbro -e DECONZ_UID=0 -e DECONZ_GID=0  -p 443:443 -p 5900:5900 -p 6080:6080 -p 5901:5901 -p 8001:80   --restart=unless-stopped  -e DECONZ_VNC_MODE=1 -e DECONZ_VNC_PORT=5901 -e DECONZ_VNC_PASSWORD=changeme -v /etc/localtime:/etc/localtime:ro -v /opt/deconz:/opt/deCONZ --device=/dev/ttyACM0 -e DECONZ_DEVICE=/dev/ttyACM0 deconzcommunity/deconz
