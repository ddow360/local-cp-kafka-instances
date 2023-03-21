# Local CP Kafka Instance

Easy setup with docker to create Confluent Platform instance locally. This provides an easy throw away
development sandbox.

## Overview
**cp-all-in-one** is a pre-packaged Docker container provided by Confluent
that includes a complete Apache Kafka cluster, along with other components
of the Confluent Platform such as ZooKeeper, Kafka Connect, and the
Confluent Control Center. This pre-built environment provides an easy way 
to get started with Kafka development, testing, and learning, without the
need to manually install and configure all the components of the Confluent
Platform. When running these instances locally, you get a fully functional
Kafka environment that can be used for developing, testing, and learning purposes.
You can use the Kafka command-line tools, Kafka Connect to integrate Kafka with other 
systems, and Confluent Control Center to monitor and manage the Kafka cluster. 
You can create topics, produce and consume messages, set up Kafka Connectors
to transfer data from external sources into Kafka, and use Control Center to visualize and monitor
the health of your Kafka cluster.



### Features

#### All features with docker-compose-full.yml

* KsqlDB
* Kafka Connect
* Confluent Control Center 
* Health Monitoring
* Command-line tools
* Schema Registry

#### All features with docker-compose-light.yml

* Confluent Control Center
* Health Monitoring
* Schema Registry



### Coffee with Kafka
             )  (
        )      (
       (        )
        `)    (`
      _  |  |  |  _
     | |_|_|__|_| |
     |             |
     |   [C W K]   |
     |             |
     '-------------'
