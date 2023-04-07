#!/bin/bash

# Set the default docker-compose file
DOCKER_FILE=cp-light.yml

function spin_up {
    # Ask for the docker-compose file
    echo "What kafka instance do you want to spin up?"
    select docker_file in "cp-light.yml" "cp-full.yml"; do
        case $docker_file in
            cp-light.yml ) DOCKER_FILE=cp-light.yml; break;;
            cp-full.yml ) DOCKER_FILE=cp-full.yml; break;;
        esac
    done

if [ $DOCKER_FILE == cp-full.yml ]
  then
   echo "This might take awhile creating containers.."
   sleep 1
else
   echo "Shouldn't take long creating containers now.."
   sleep 1
fi

# Notify user of selected option
echo "Selected: $docker_file"

    # Spin up docker-compose
    docker-compose -f ../docker/"$DOCKER_FILE" up -d 2>&1 | grep -v "healthcheck"
}

function spin_down {
    # Spin down  docker-compose
    docker-compose -f ../docker/"$DOCKER_FILE" down
}

# Ask the user what they want to do
function spin_down {

    # Ask for the docker-compose file
    echo "Which kafka instance do you want to spin down?"
    select docker_file in "cp-light.yml" "cp-full.yml"; do
        case $docker_file in
            cp-light.yml ) DOCKER_FILE=cp-light.yml; break;;
            cp-full.yml ) DOCKER_FILE=cp-full.yml; break;;
        esac
    done

    # Spin down docker-compose
    docker-compose -f ../docker/"$DOCKER_FILE" down
}

# Notify user of selected option
echo "Selected: $option"

# Wait for user input before exiting
read -p "Press any key to exit docker containers finished..." -n1 -s
