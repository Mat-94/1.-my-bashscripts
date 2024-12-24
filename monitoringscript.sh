#!/bin/bash

# List of services to check
 SERVICES=("nginx" "apache2" "mysql" "ssh")

 # Log file location
  LOG_FILE="/var/log/service_status.log"


  # Function to check if a service is running
   check_service_status() {
       SERVICE=$1
       if systemctl is-active --quiet $SERVICE; then
	               echo "$SERVICE is running"
	       else
     # Log the service down status with timestamp

     echo "$(date '+%Y-%m-%d %H:%M:%S') - ALERT: $SERVICE is DOWN" >> $LOG_FILE
             echo "$SERVICE is DOWN"
	         fi
	 }

	 # Check the status of each service in the list
	 #
	 for SERVICE in "${SERVICES[@]}"; do
		     check_service_status $SERVICE
	     done

