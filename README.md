# Local CP Kafka Instance

_Easy setup with docker to create Confluent Platform instance locally. This provides an easy throw away
development sandbox._

#### Mac
Simply do sh startup.sh to run the script and select the prompts

#### Windows:
You would most likely need Git Bash installed on your computer in order to run the prompted shell script. If you are unable to do so you can run it with the prompts given in the yml files.

_______________

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

#### All features with cp-full.yml

* KsqlDB
* Kafka Connect
* Confluent Control Center 
* Rest Proxy
* 3 Brokers
* Health Monitoring
* Command-line tools
* Schema Registry

#### All features with cp-light.yml

* Confluent Control Center
* 3 Brokers
* Health Monitoring
* Schema Registry

#
             )  (
        )      (
       (        )
        `)    (`
      _  |  |  |  _
     | |_|_|__|_| |
     |             |
     |   [C w K]   |
     |             |
     '-------------'
