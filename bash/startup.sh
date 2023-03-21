#!/bin/bash

function spin_up {
    # Ask for the docker-compose file
    echo "Which docker-compose file do you want to spin up?"
    select docker_file in "docker-compose-light.yml" "docker-compose-full.yml"; do
        case $docker_file in
            docker-compose-light.yml ) docker_file=docker-compose-light.yml; break;;
            docker-compose-full.yml ) docker_file=docker-compose-full.yml; break;;
        esac
    done

    # Spin up docker-compose
    docker-compose -f ../docker/$docker_file up -d 2>&1 | grep -v "healthcheck"
}

spin_up

# shellcheck disable=SC2162
read -p "Press any key to exit containers have been initialized..." -n1 -s
