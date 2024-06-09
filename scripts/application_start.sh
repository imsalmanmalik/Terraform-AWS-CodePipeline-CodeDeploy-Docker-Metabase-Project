#!/bin/bash
chmod +x before_install.sh after_install.sh application_start.sh validate_service.sh
#!/bin/bash
# Start the Docker containers
cd /home/ubuntu/newdocker-project
docker-compose up -d
