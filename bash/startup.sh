#!/bin/bash

# Set the default docker-compose file
DOCKER_FILE=docker-compose-light.yml

function spin_up {
    # Ask for the docker-compose file
    echo "Which docker-compose file do you want to spin up?"
    select docker_file in "docker-compose-light.yml" "docker-compose-full.yml"; do
        case $docker_file in
            docker-compose-light.yml ) DOCKER_FILE=docker-compose-light.yml; break;;
            docker-compose-full.yml ) DOCKER_FILE=docker-compose-full.yml; break;;
        esac
    done

# Notify user of selected option
echo "Selected: $docker_file"

    # Spin up docker-compose
    docker-compose -f ../docker/"$DOCKER_FILE" up -d 2>&1 | grep -v "healthcheck"
}

function spin_down {
    # Spin down docker-compose
    docker-compose -f ../docker/"$DOCKER_FILE" down
}

# Ask the user what they want to do
echo "What do you want to do?"
select option in "Spin up containers" "Spin down containers"; do
    case $option in
        "Spin up containers" ) spin_up; break;;
        "Spin down containers" ) spin_down; break;;
    esac
done

# Notify user of selected option
echo "Selected: $option"

# Wait for user input before exiting
read -p "Press any key to exit docker containers finished..." -n1 -s
