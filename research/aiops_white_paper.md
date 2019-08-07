---
layout: article
title: "AIOps"
date:
modified:
excerpt: "excerpt"
tags: []
image:
  feature:
  teaser:
  thumb:
ads: false
toc: true
---  

<p>
<a href="http://jorge-cardoso.github.io/research/pdf_img/iforesight3.png">
<img src="http://jorge-cardoso.github.io/research/pdf_img//iforesight3.png" height="25%" width="25%" style="float:left;margin:0 20px 0 0;"/>
</a>
</p>


This page is in construction. You will certainly find errs.


## Introduction

In planet-scale deployments, the Operation and Maintenance (O&M) of cloud platforms cannot be done any longer 
manually or simply with off-the-shelf solutions. It requires self-developed automated systems, ideally exploiting 
the use of AI to provide tools for autonomous cloud operations. We rely on deep learning, 
distributed traces, and time-series analysis (sequence analysis) to effectively detect and fix anomalous 
cloud infrastructure behaviors during operations to reduce the workload of human operators. 

The iForesight system, labelled under the AIOps software category, is being used to evaluate new O&M approaches. 
iForesight 3.0 is the result of 3 years of research with the goal to provide an intelligent new tool aimed at 
SRE cloud maintenance teams. 
It enables them to quickly detect and predict anomalies thanks to the use of artificial intelligence when cloud services 
are slow or unresponsive. 

## Problem
The operation of large-scale platforms serving millions of people often introduces complex and unique 
engineering challenges. 
Existing tools for monitoring IT infrastructures, networks and applications focus on collecting logs, metrics, 
events, and traces from distributed systems mainly for visualization. Nonetheless, the final goal of monitoring 
is to reach a level of technological development where we have tools that conduct root cause analysis with a high 
accuracy and enable to autonomously recover systems. To achieve this goal, we still need to shift from a data 
collection stage to an insight- and action-driven paradigm. One promising path to monitor planet- and large-scale 
platforms is to rely on advanced analytics and explore techniques from statistics, time-series analysis, data mining, 
natural language processing, graph processing, machine learning, and deep learning to extract insights from large 
volumes of monitoring data to support and drive recovery actions. 

Main challenges:
+ *Scale*. Large cloud providers can have more than 1 million physical servers. Each server has 2 CPUs. Each CPU has 
10 VMs. Each VM has a OS and various applications.
+ *Distribution*. AZ and regions
+ *Complexity*. Microservices, containers, and serverless complexity. Several programming languages. Several teams.
+ *Dynamism*. Workloads around the sun, lunch and terminate instances. CMDB is static but VM is dynamic.

## Approach
The mission of the **Intelligent Cloud Operations** SRE team (based in [Munich](https://www.muenchen.de/int/en.html), 
Germany) is to develop new AIOps systems and tools to analyze observability data 
from [Huawei Cloud](https://www.huaweicloud.com/en-us/about/about_us.html)
to detect impact to customers, identify the root cause within seconds, and fix the problem using 
the 1/5/10 rule (detection: 1 min, RCA: 5 min, recovery: 10 min).

AIOps (Artificial Intelligence for IT operations) characterizes systems which use complex monitoring platforms, heterogeneous big data, machine learning (ML) and other artificial intelligence technologies to toubleshoot IT problems.
The term can be viewed as the evolution of [IT operations analytic](https://en.wikipedia.org/wiki/IT_operations_analytics) and
[Software Analytics](http://taoxie.cs.illinois.edu/publications/ieeesoft13-softanalytics.pdf).

The following figure from [Gartner](https://www.gartner.com/en) provides a high level architecture of the system 
we are building highliting the main areas of concern: 
+ Real-time streaming and historical data, observations, 
[Big Data](https://en.wikipedia.org/wiki/Big_data), 
Machine Learning (ML), 
[Anomaly Detection](https://en.wikipedia.org/wiki/Anomaly_detection), 
[Root-Cause Analysis](https://en.wikipedia.org/wiki/Root_cause_analysis), 
[Performance Analysis](https://en.wikipedia.org/wiki/Application_performance_management), 
[Predictive Maintenance](https://en.wikipedia.org/wiki/Predictive_maintenance), and 
[Automation](https://en.wikipedia.org/wiki/Robotic_process_automation). 
<p>
<img src="https://blogs.bmc.com/wp-content/uploads/2019/02/AIOpsGraphicGartner2018-768x408.png" height="408" width="768" style="float:center;margin:0 20px 0 0;"/>
</p>

In 2017 we adopted AI in the form of [Data Science](https://en.wikipedia.org/wiki/Data_science) and 
[Machine Learning](https://en.wikipedia.org/wiki/Machine_learning) approaches for anomaly detection, 
root-cause analysis, fault prediction, and automated recovery into our suite. 

These techniques, including **statistical learning**, **time-series analysis**, **deep learning**, **big data**,
**streaming**, and **data visualization**, enabled us to develop new production-ready services for troubleshooting 
Huawei Cloud and detect issues which were previously undetectable.


## Challenges

The challenges of operationalising AI are not limited to the understanding of deep learning or machine learning algorithms.
Major challenges are related with software engineering, access and processing of large amounts of distributed data, 
model management, updating, deleting and training models on specialized GPUs and hardware, composition of workflows
for orchestrating parallel jobs, and the visual management of models, workflows, and results. 
+ Methods, techniques, and algorithms
+ AIOps platform construction

## System Under the Microscope: Huawei Cloud 
Our cloud has planet-scale technical requirements with an 
[microservices](https://en.wikipedia.org/wiki/Microservices) architecture composed of hundreds of services.
They are distributed over thousands of hosts in many geographical regions and operate with an availability 
higher than [five nines](https://en.wikipedia.org/wiki/High_availability). 

Our system monitors Huawei Cloud which is build on top of [OpenStack](https://docs.openstack.org/), an 
opensource cloud operating system. OpenStack controls large pools of compute, storage, and networking
resources throughout tens of datacenters. The base services are predominantly written in Python and Java 
running on Linux. 

Huawei Cloud is one of the largest and fastest growing platforms in the world. 
It has a strong presence throughout the world with over 40 availability zones located across 23 geographical regions,
ranging from Germany, France, South/Central America, Hong Kong and Russia to Thailand and South Africa.

There are three properties that make platforms such as Huawei Cloud far more difficult to monitor and troubleshoot:
1. Amount of data and relationships which O&M teams need to analyze.
2. Due to its distributed nature and complexity, system data has a low signal to noise ratio.
3. Since many different subsystems interact together, semantically reconciliating data is difficult.

The strongest challenge for cloud architecture is design and operational complexity. 
Cloud deployments comprise thousands of geographically distributed services and microservices.
Behavior patterns such as the [Universal Law of Computational Scalability](http://www.perfdynamics.com/Manifesto/USLscalability.html), 
make a distributed system highly non-linear and difficult to model.

### Underlying Architecture

Key building block components which require a close monitoring include:

The book [The Datacenter as a Computer: An Introduction to the Design of Warehouse-Scale Machines](https://ai.google/research/pubs/pub41606), 
written by Google engineers, provide a very good description of the various parts which make up a data center.
It also identifies that less than 10% of outages are caused by hardware, approximately 60% by software, and 
that operation and maintenance failure account for 20%.

#### Troubleshooting Services

Software that provides services to end users.

+ *OBS*. Object Storage Service is a stable, secure, efficient, cloud storage service
+ *EVS*. Elastic Volume Service offers scalable block storage for servers
+ *VPC*. Virtual Private Cloud enables to create private, isolated virtual networks
+ *ECS*. Elastic Cloud Server is a cloud server that provides scalable, on-demand computing resources

#### Troubleshooting Middleware

Examples:

+ Firewalls and VPNs
+ [API Gateways](https://microservices.io/patterns/apigateway.html) (e.g., [Kong](https://konghq.com))
+ [Load Balancers](https://en.wikipedia.org/wiki/Load_balancing_(computing)) (e.g., [HAProxy](http://www.haproxy.org))
+ [Message Queuing Services](https://en.wikipedia.org/wiki/Message_queuing_service)
(e.g., [RabbitMQ](https://en.wikipedia.org/wiki/RabbitMQ))
+ [Distributed Caches](https://en.wikipedia.org/wiki/Distributed_cache) 
(e.g., [Redis](https://en.wikipedia.org/wiki/Redis))
+ [Web Servers](https://en.wikipedia.org/wiki/Web_server)
(e.g., [Apache](https://en.wikipedia.org/wiki/Apache_HTTP_Server))
+ [Application Servers](https://en.wikipedia.org/wiki/Application_server) 
(e.g., [EJB](https://en.wikipedia.org/wiki/Enterprise_JavaBeans))
+ [Database Servers](https://en.wikipedia.org/wiki/Database_server) 
(e.g., [MySQL](https://en.wikipedia.org/wiki/MySQL))

For example, to troubleshoot a load balancer (LB), it is important to understand which components are being impacted. 
Load balancer metrics enable to measure the number and type of connections established, response time, and the 
quantity of data transfered across backend servers, listeners, and the balancer itself. 

The following metrics help to determine where to start an investigation to diagnose a load balancer and client issues:
+ Response time. Average response time of backend servers
+ Closed connections. Number of connections closed between the load balancer and backend servers.
+ 5xx status codes. Number of HTTP 5xx responses received from backend servers.
+ Unhealthy backend servers. The number of unhealthy backend servers in the backend set.
+ Connection count. Number of incoming client requests to the load balancer.

The metric *closed connections* can be used to evaluate if a large-scale system has enough services running 
to handle the incoming load. 
And, the *5xx status codes* or *unhealthy backend servers* may provide evidence that the last deployment 
introduced a bug. 

Many databases externalize different status metrics to help operators to troubleshoot errors and identify performance 
issues. Typical metrics include server resources, backend disk storage, query statistics, and cache issues.
[CouchDB website](https://docs.couchbase.com/server/5.5/monitoring/ui-monitoring-statistics.html) provides a 
detailed description of the metrics which can be used to troubleshooting.

Example of statistics metrics include:

+ *requests/sec*. Total number of requests processed per second.
+ *selects/sec*. Total number of SELECT requests processed per second.
+ *request time*. Average end-to-end time to process a query.
+ *service time*. Average time to execute a query.

#### Troubleshooting Platform

Software which typically abstracts the hardware of physical server.

+ [Linux Servers](https://en.wikipedia.org/wiki/Linux)


#### Troubleshooting Hardware

As another example, datacenter use server systems assembled with commodity DRAM memory protected against errors 
by storing redundant information and applying ECC to detect and correct errors. 
Nonetheless, a relatively recent study shows that event with ECC techniques, memory chip failures cause significant 
downtime in datacenters 
[DRAM Errors in the Wild: A Large-Scale Field Study](http://static.googleusercontent.com/media/research.google.com/en//pubs/archive/35162.pdf). 
The main reason seems to be due to packaging and circuit problems. 
Thus, monitoring DRAM module to detect and predict anomalies is relevant for AIOps.  

+ [Network Switches](https://en.wikipedia.org/wiki/Network_switch) and 
[Network Routers](https://en.wikipedia.org/wiki/Router_(computing))


### Service offerings

Besides these building blocks which are part of the base cloud infrastructure, service offerings also need to be
monitored:
+ *Compute, network, storage*. Cloud servers, auto scaling, object storage, volume service, VPC network, and CDN, 
+ *Databases*. MySQl, PostgreSQL, and replication service.
+ *Security*. Vulnerability scan service, SSL management, and Anti-DDoS.
+ *Applications*. APM, API Gateway, and application orchestration. 
+ *Enterprise Intelligence*. Machine learning services, graph engines, face and image recognition, and Mapreduce.
+ *DevCloud*. Project management, build, code hub, code check, and code release.

### Solutions Required for Troubleshooting 
+ Switch failure
+ HDD failures
+ Service anomaly detection/prediction. Using log analysis, trace analysis, and metric analysis
+ [Cluster failure prediction](https://dl.acm.org/citation.cfm?id=1362678)


## AIOps Platform Construction
An AIOps platform architecture consists of functional layers such as:

1. *Big Data processing*. Real-time processing of streaming and historical data.
  * *In-memory databases*. (e.g., [Gorilla](https://www.vldb.org/pvldb/vol8/p1816-teller.pdf))
  * *Distributed log system*. (e.g., [LogDevice](https://github.com/facebookincubator/LogDevice)) 
2. *Data pipeline*. Connected data processing elements ingesting data from multiple sources.
3. *Library of algorithms*: Statistical functions, classical machine learning, and deep learning algorithm.
4. *Automation*. Use runbooks and RPA technology to automate repetitive tasks.
5. *User interface*. Allows IT operations teams t interact with the platform and quickly identify issues and apply corrective actions.

For 2019-2020, our work focuses on points 1)-3).

AIOps does not only requires new methods and techniques from the fields of statistics and ML, but it also needs 
online and offline big data infrastructure (such as Hadoop, HBase, Spark, Gobblin, Presto) to ingest and process
scale monitoring data which can reach several PB/day. For example, Facebook uses Presto for interactive queries
over their 300PB data stores.

iForesight is build using the following software stack and applications. 

+ Frontend: Grafana, Jupyter, Node.js
+ AI: Tensorflow, Keras, PyTorch, Pandas/NumPy, Scikit-learn, Huawei Model Arts
+ Backend: Microservices, Docker, MySQL 
+ Big Data: OpenTSDB, Hive, ArangoDB, HBase, Elastic Search, Spark Streaming. 
+ Transport: Kafka
+ Data sources: metrics, app logs, tracing, alarms, topologies, and change events
+ Agents: StatsD, cAdvisor, FluentD 
+ Language: Python

In 2019, we will closely following the progresses make in the following 5 fields to extend our stack and suite:

+ [AIOps](https://blog.appdynamics.com/aiops/what-is-aiops/),
[Service Mesh](https://www.nginx.com/blog/what-is-a-service-mesh/),
[Istio](https://istio.io),
[Distributed Tracing](https://opentracing.io/docs/overview/what-is-tracing/),
[SRE](https://landing.google.com/sre/),
[RPA](https://en.wikipedia.org/wiki/Robotic_process_automation)


### Monitoring system

The presentation "A Tale of One Billion Time Series" describes how Baidu.com monitors its large-scale search platform.
In 2018, the number of metrics collected has grown to 1 billion.

+ Millions hosts, services, instances
+ 600+ metrics per target on average
+ 1.000.000.000 time series (and the number os still increasing)

Looking at 1B time series from another angle brings the following requirements:
+ *Volume*. 50TB (1.000.000.000.000 bytes) per day (read a point of 4 bytes every 5 minutes=288*4=1152)
+ *Requests*. 10M r/w requests per second
+ *Points*. 40M in and 60M out per second
+ *Traffic*. 50Gbps write and 100 Gbps read

Performance requirements are:
+ *Latency*: < 10s
+ *99th response time*: <= 500ms
+ *Availability (SLA)*: = 99.99%
    + Uses Hot standby

#### Storage
The metrics are stored in a time-series database (TSDB) with three layers:
+ Memory database based on Redis stores **hot data**
    + The query engine determines if to access HBase or Redis
        + If the query is for data older than one day, it will query HBase, otherwise Redis
    + Data in Redis is compressed. The algorithm is from Facebook.
+ HBase stores **warm data**
    + Performance degradation: lots of compactation and splitting
    + Intolerable r/w latency in underlying HDFS
    + HBase balances random writes and sequentially access disks
        + Buffers writes and flushes writes into multiple HFiles (append only)
        + Read may need to scan all HFiles (disk seeks)
    + Compactation 
        + Compactation merges HFiles to accelerate read
        + HBase tables are split into chunks of rows called "regions"
        + Region will be split into two when it becomes too big
        + Regions are distributed and can be moved across servers to balance load
        + **Problem with compactation**: Consumes a lot of I/O; causes JVM stop the world GC; Block writes
        + **Solution**: Partition data by date
    + Handling splitting
        + Pre-splitting 
+ HDFS stores **cold data**
    + Need to reduce R/W latency
    + Put region server and data node together in the same node


The base architecture was optimize for high frequency read/writes:
+ *Write*. Use batch and asynchronous techniques to the write path.
+ *Read*. Customized data model with multi-layer down-sampling mechanism into HBase and 
use compression for in-memory database

The major challenge is the data scale.

#### Read and write

The architecture has two separate modules working on top on HBase to improve efficiency:
+ Query engine. Specialized read module
+ Saver. Specialized write module

#### Data layout

Data table:
+ data point: target, metric, time, value
    + Use as a row key: hash(target) + hash(metric) + hash(rounded to 2 hours)
    + Each row contains two hours of data
    + Each row has a constant length: 7190
    + Design inspired by OpenTSDB
+ data expires according to TTL

Metadata tables and index:
+ Metric properties are: name, cycle, value type
+ Tags: isp, dc, etc.
+ Index: tag -> time series

#### Challenges
+ Large queries are slow (and take a large bandwidth)
    + Daily resource usage report of all the hosts (CPU, MEM, IO, etc.)
        + Billions of data points requests
    + PV Growth trend of the whole year
        + Millions of data points requests
+ <20% critical data attract >80% small queries 
    + PV anomaly detection (needs data of recent hours)
+ Query patterns
    + Latency insensitive
        + Short-term (a lot of metrics); long-term (high resolution)
        + Daily resource usage report of all the hosts
        + There one day available to process these queries
        + **Solution:** Avoid HBase bandwidth exhaustion -> copy data to an external Hadoop asynchronously
    + Latency sensitive
        + Short-term (high resolution)
        + long-term (low resolution): trend data important for business
        + PV's growth trend visualization of the whole year 
        + PV's anomaly detection
        + **Solution:** Multi-level down-sampling
            + Down-sampling: High resolution -> Low resolution
            + Multi-level: 2 levels. A query for one year can be answer in a few milliseconds
            + Online pre-aggregation (max, min, sum, count) within Saver in real-time
                  

## Methods, techniques, and algorithms

### Exploring SRE Pain Points
After identifying a pain point, we identify the following elements to develop a solution:
+ Existing manual workflows for troubleshooting for automatization 
+ Key golden metrics which can enable an effective anomaly detection
+ Data sources for root cause analysis
+ Manual recovery actions
+ Critical components which requires special monitoring infrastructure

### Data Ingestion

Monitoring systems and monitoring data is the corner stone of troubleshooting.
Their goal is to track of the *health status* of components and applications.
Traditional and well-known systems include Ganglia and Nagios.

Monitoring data comes from many different data sources such hypervisors, OS, applications, application servers, 
middleware, databases, application logs, host and network metrics.

Generally, data sources can be classified in four types:
1. *Logs*. Service, microservices, and applications generate logs, composed of timestamped records with a structure 
and free-form text, which are stored in system files.
2. *Metrics*. Examples of metrics include CPU load, memory available, and the response time of a HTTP request.
3. *Traces*. Traces records the workflow and tasks executed in response to an HTTP request. 
4. *Events*. Major milestones which occur within a data center can be exposed as events. 
Examples include alarms, service upgrades, and software releases.

Examples:

> 2017-01-18 15:54:00.467 32552 ERROR oslo_messaging.rpc.server [req-c0b38ace - default default] Exception during message handling

> {“tags": [“mem”, “192.196.0.2”, “AZ01”], “data”: [2483, 2669, 2576, 2560, 2549, 2506, 2480, 2565, 3140, …, 2542, 2636, 2638, 2538, 2521, 2614, 2514, 2574, 2519]}

> {"traceId": "72c53", "name": "get", "timestamp": 1529029301238, "id": "df332", "duration": 124957, “annotations": [{"key": "http.status_code", "value": "200"}, {"key": "http.url", "value": "https://v2/e5/servers/detail?limit=200"}, {"key": "protocol", "value": "HTTP"}, "endpoint": {"serviceName": "hss", "ipv4": "126.75.191.253"}]


> {"id": "dns_address_match“, "timestamp": 1529029301238, ...}
> {"id": "ping_packet_loss“, "timestamp": 152902933452, ...}
> {"id": "tcp_connection_time“, "timestamp": 15290294516578, ...}
> {"id": "cpu_usage_average “, "timestamp": 1529023098976, ...}


#### Examples 

Google SRE team proposed [4 Golden Signals](https://landing.google.com/sre/sre-book/chapters/monitoring-distributed-systems/) 
which provide key insights on how a distributed system is running using metrics:
+ *Latency*. Time to handle a request (aka response time)
+ *Traffic*. How much demand is being placed on a system
+ *Errors*. Rate of requests that fail
+ *Saturation*. Constraints places on service resources 

Other proposals include the [RED](https://www.vividcortex.com/blog/monitoring-and-observability-with-use-and-red) and 
[USE](http://www.brendangregg.com/usemethod.html?source=post_page---------------------------) methods.

When key services are not often called by users, the volume of metrics collected is insufficient for 
pattern recognition and anomaly detection.
In such cases, [synthetic monitoring](https://en.wikipedia.org/wiki/Synthetic_monitoring) (also known as active 
monitoring) can be adopted and consists in creating artificial users to simulate user behavior by making automated
calls to services. 

An AIOps platform needs to be able to ingest logs, metrics, traces, and events into efficient key-value databases
where they are stored to later be accessed and analyzed.

Challenges:
+ *Resolution*. While reading data sources every minute is relatively easy to achieve, as systems become more complex, 
non-linear, and with an large customer base, fine grained metrics are needed. Often, one second polling resolution 
is required since anomalies and uncommon patterns that occur in a one minute interval are invisible. 

To get the monitoring data needed, SRE need to write new tools, patch existing systems, and add knobs to 
production platforms to control their behavior.


#### Distributed Tracing

Trends:
+ Monoliths to microservices 
+ Basic concurrency to async concurrency to distributed concurrency
+ Complexity

Distributed tracing enables understanding how systems' components interact together when handling incoming requests.
It has its root on early research on concepts such as X-Trace and Magpie, and was generalized in industry 
with Google paper [Dapper](https://static.googleusercontent.com/media/research.google.com/en//archive/papers/dapper-2010-1.pdf)
in 2010.

Trace events can be generated across software stacks and within a software stack.

Many companies supported by large-scale systems, such as Uber and Facebook, operate large scale distributed 
tracing systems to gain observability capabilities. 

Opensource:
+ [OpenTelemetry](https://opentelemetry.io)
+ [W3C Distributed Tracing Working Group](https://www.w3.org/2018/distributed-tracing/)

[Industry Solutions](https://atscaleconference.com/videos/systems-scale-2019-observability-infra-uber-and-facebook/):
+ Facebook
    + FBTrace (node trace model), trace datastore, Canopy (stream processing for traces), Scube
    + Compare populations of traces (e.g., before and after releases, perf regression)
+ Uber
    + One request has 30 services and 100 RPCs
    + Use tracing for root cause analysis
    + Compare trace structures (just like Code Diff) -- saseq
    + Compare span durations (heat map of latencies) -- LMU
    + Challenge:
        + Individual traces can be an outlier 
        + Users must find the right baseline
            + Create a statistical model from an aggregate of traces
    + Benefits:
        + Uber can solve problems from 30 minutes to 2 minutes

### Pattern Recognition

The objective of approaches for [pattern recognition](https://en.wikipedia.org/wiki/Pattern_recognition) is to detect
patterns in noisy and high-dimensionality data. 
Once the data is collected, we apply probabilistic algorithms, ML and other techniques to find suspicious patterns.

Examples of patterns of interests include:
+ Latency outliers and latency trends in metrics
+ Gradual degradation of traffic and incoming calls
+ Spikes or sudden change in error rate in logs
+ Saturation of memory utilization \>95% memory 
+ Structural changes in traces

For metrics, pattern recognition can rely on [feature-based time-series analysis](https://arxiv.org/abs/1709.08055) 
to identify interpretable insights of their structure.

Patterns of interests are not always a synonym of an anomaly or a failure. Often, a pattern is associated with a
probability that something is possibly wrong. By correlating patterns from multiple data sources, we increase 
the confidence (precision and recall) that a failure is indeed under way.

For example, we can autonomously identify anomalous microservices' latencies by dynamically choosing
temporal features, predict memory leaks ahead of time before impacting systems, or finding rare message entries in 
service logs with billions records. We applies all these techniques to real-time data streams.

As another example, although distributed logging is a solved problem and many solutions already exist, 
what still needs to be mastered is the extraction of meaningful and actionable information from massive logs.
While many argue that "the more [data] the merrier", in reality, the more log statements you have, the less
you can find due to noise and non-determinism.

With the success of developing pattern recognition for anomaly detection in 2017-2018, in 2019 we are planning
the next phase of our next-gen monitoring and troubleshooting suite. 
We will extend supported patterns by implementing new detector services for distributed trace and service logs.
All the anomaly detectors contribute with results to a central knowledge repository of metric, trace, and log 
observations, and alarms and relevant external events (e.g., platform upgrades).

#### Challenges
+ [Multimodal metrics](https://en.wikipedia.org/wiki/Multimodal_distribution). 
Since distributed systems are composed of many subsystems, it is expected to observe Gaussian mixture models
representing normally distributed subpopulations generated by the subcomponents. When subpopulation assignment 
is not known, unsupervised learning can be used to determine the subpopulation a data point belongs to. 
If the number of components is known, expectation maximization (EM) can be used to estimate the mixture model's
parameters, and, afterwards run a clustering algorithm.
Nonetheless, the number of components is unusably not known. Furthermore, the distribution of data points is often not
Gaussian.
+ Direct and indirect metrics. CPU load, available memory, network resources, and IO are direct signal host-level
metrics.
On the other hand, the *response time* of a service call to a microservice provisioned by *n* distributed components
is an indirect signal service-level metric. As its values dependent on the health of the subcomponents and the
subset of components involved during the handling of the request.
Indirect metrics are far more complex to analyze when compared to direct ones.
+ Variability. Due to the large number of components presents in a large-scale systems, the variability of latency 
is high. The reasons of this variability in individual components of a service is well known and in the 
Communication of the ACM article 
[The Tail at Scale](https://www2.cs.duke.edu/courses/cps296.4/fall13/838-CloudPapers/dean_longtail.pdf).
Sources of variability include the existence of daemons, shared resources, garbage collection, queueing, and 
energy management. Techniques such as replication, sharding, and load-balancing all contribute to increase the entropy
of a complex system. 

### Inductive Inference 

While the patterns recognized correspond to the symptoms of an underlying problem, inductive inference
explores the problem space and tries to identify the faulty services or resources.

Inductive reasoning draws a conclusion by gathering together particular observations (i.e., patterns discovered) 
in the form of premises and reasons from these particular premises to a general conclusion.
Troubleshooting, root-cause analysis, tuning, and capacity planning are particular forms of inference.

A [semi-supervised machine learning](https://en.wikipedia.org/wiki/Semi-supervised_learning) system will analyze
an observed pattern repository to automatically infer complex incidents associated with failures and explain 
the underlying possible root-cause to SREs and operators. 
This inference will learn associations between patterns, alerts and external events which will be formalized as 
rules and stored in a [knowledge-based system](https://en.wikipedia.org/wiki/Knowledge-based_systems). 
On top, a smart assistant will help operators in making associations and decisions on the relationship 
between patterns, alerts and anomalies for [root-cause analysis](https://en.wikipedia.org/wiki/Root_cause_analysis).

Several techniques can be for inductive inference , e.g.:
+ Traffic analysis: Correlation between sudden increase in requests and slashdot effect, with increase 
latency of requests. 
+ Trace analysis: Component or dependency failure, structural trace analysis, response time span analysis.
+ Event analysis: Causality between upgrades, reconfigurations, and forklift replacements and failure.

Inference can also decide to run automated diagnostics scripts (runbooks) to gain additional insights of the 
current state of components, services, or systems to improve inference.
For example, when pattern recognition identifies an HTTP endpoint with a high latency associated with an anomaly 
by analysing metrics, distributed traces are immediately analysed to reveal exactly which microservice or component 
is causing the problem.
Its logs and context metrics are accessed to quickly diagnose the issue. 
Afterwards, when sufficient evidence characterizing the problem is collected, inference will nominate operations and 
remediation actions to be executed.


#### Challenges
+ Access to customer systems is not possible to calibrate models: use Transfer learning
+ Model localization: the same model is adapted to different contexts
+ How to improve model based on running and field information
+ [Fuzzy Logic](https://en.wikipedia.org/wiki/Fuzzy_logic).
Determining that a service is in a failed state is rather simple. The challenge is to determine if the current state 
of a service is in the gray zone between the *ok* and *failed* states. For example, analyzing a service 
which passes all the basic health checks, but is unable to complete client requests according SLOs for 5% of requests, 
is far more difficult.
+ Masking. Complex distributed systems that use load balancing components to increase reliability and scalability
make the detection of anomaly more difficult since their object is to mask problems from end users. 
Thus, if an AIOps system is looking at a distributed system from the user perspective, it may not be able to easily
identify health problems. 


### Automated Operations

The most common use of operations is to solve problems. Operations (actions) can be automatically triggered 
in response to troubleshooting workflows.

For example, once methods for pattern recognition and inference are mastered, the next step is to look into 
auto-remediation. As knowledge on failure modes is gained, failure patterns are identified and recovery is 
encoded into automated remediation scripts. Often, only simple failure cases can be handled but this constitute 
a very good starting point for more complex scenarios.

Examples include rebooting a host, restarting a microservice or hung process, free disk space, and remove 
cached data. As knowledge on running systems accumulates, auto-remediation becomes pervasive to service owners 
which can define their own recovery actions.

Other types of operations relevant to AIOps include: 
1. Capacity planing
2. Canarying validation
3. Service scaling
4. Performance analysis
5. Intelligent troubleticket routing
6. Predictive maintenance


### Evaluation

We evaluate the techniques and algorithms we built using a 3-level approach:
+ *Synthetics data*. We built models simulating microservice applications which are able to generate data under 
very specific conditions. The scenarios simulated are usually difficult to obtain when using testbeds and 
production systems. The controlled data enables a fine-grained understanding of how new algorithms behave and are an 
effective way for improvement and redesign. Nonetheless, the type of traffic that is generated in production is
typically not captured by synthetic data.
+ *Testbed data*. Once an algorithm passes the evaluation using synthetic data, we make a second evaluation using 
testbed data. We run an OpenSack cloud platform under normal utilization. Faults are injected into the platform and
we expect algorithms to detect anomalies, find their root cause, predict errors, and remediate failures.
Service calls from normal production can be used to trigger the calls of the testbed.
+ *Production data*. In the last step of the evaluation, we deploy algorithms in planet-scale production systems. 
This is the final evaluation in an environment with noise and which generally makes algorithms generate many 
false positives. Accuracy, performance and resources consumption is registered.

Many public datasets are also available to conduct comparative studies:
+ Anomaly detection datasets: [Harvard](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/OPQMVF),
[Oregon State](https://ir.library.oregonstate.edu/concern/datasets/47429f155),
[Numenta](https://github.com/numenta/NAB)
+ Outliers datasets: [Stonybrook](http://odds.cs.stonybrook.edu/), 
[LMU](http://www.dbs.ifi.lmu.de/research/outlier-evaluation/),
[ELKI](https://elki-project.github.io/datasets/outlier)
+ Cluster datasets: [Alibaba clusterdata](https://github.com/alibaba/clusterdata),
[Google Cluster Data](https://github.com/google/cluster-data)
+ [Yahoo webscope](https://webscope.sandbox.yahoo.com/catalog.php?datatype=s&did=70&guccounter=1) 
+ [Azure Public Dataset](https://github.com/Azure/AzurePublicDataset)
+ [LogPai datasets](https://github.com/logpai/loghub/blob/master/README.md)
+ [Timeseries classification](http://timeseriesclassification.com/dataset.php?train=&test=&leng=&class=&type=='sensor')

#### Challenges
+ Obtain support to make datasets available so that researchers can develop new approaches
+ Generate positive and negative samples automatically
+ Sparse training samples
+ Hard to obtain data from clients environments


## Applications and Use Cases

### Systems and Subsystems analysis
We are particularly interested in exploring how complex IT systems can be decomposed into subsystems to be analyzed.
While algorithms and techniques to analyze metrics and time series generated by single targets (e.g., CPU and I/O) are fundamental and constitute building blocks for anomaly detection and root-cause analysis, our previous research as shown that using single metrics tend to generate too many false positives for non-linear and noisy systems.
Thus, instead, we seek to analyze subsystems (e.g., HAProxy or OBS’s microservices) as a whole by developing machine learning algorithms which consider many metrics and other monitoring data sources such as:
CPU load, response time, closed connections, 5xx status codes, requests/sec, selects/sec, request time, and service time.

### Anomaly Detection
For large-scale, dynamic IT infrastructures, detecting problems is a complex task since its behavior becomes 
too complex to understand.
Without special tools, operators need to manually analyze different monitoring, configuration, trace, log, and 
other data. 
Techniques for anomaly detection allow to automatically discover potential problems by analyzing data generated by 
the monitoring infrastructure and raising alarms when unusual conditions are meet. 
This is especially important for planet-scale systems, where it is desirable to have teams which can scale while 
maintaining quality of service and SLOs.

Anomaly detection approaches are classified into two types:
1. *Reactive*. Algorithms detect anomalies after they happen.
2. *Proactive*. Solutions predict upcoming anomalies when a system is a normal state.

Techniques can be classified:
+ Model-based approaches describe system performance or system states.
Problems are recognized by deviations from models capturing a normal behavior. 
+ Correlation-based approaches learn normal behavior by analyzing the correlations which exist between components' 
metrics over time.
+ Statistical-based approaches analyze the normal distribution of data points and monitor distribution patterns 
at runtime.

Techniques:
+ Metrics. Time series analysis for multimodal and univariate/multivariate data.
+ *Logs*. 
Classifiers can be trained to detect anomalies in application logs. 
Since records are often not labelled, the challenge is to build predictive model trained with the *normal sequences* 
of log records which reflect a normal execution or behavior of a distributed system. 
The model can be used to detect anomalies when the sequence of records significantly differ from the learned sequences.
One of the first works in this field can be traced back to 2009.
[Xu et al.](https://dl.acm.org/citation.cfm?id=1629587) proposed to parse logs and analyse source code using 
information retrieval approaches to create features which are analyzed using machine learning to detect problems.   
More recent approaches, for example, [Zhang et al.](https://ieeexplore.ieee.org/document/7840733/),
[Du et al.](https://www.cs.utah.edu/~lifeifei/papers/deeplog.pdf), and
[Brown et al.](https://arxiv.org/pdf/1803.04967.pdf), use logs to generate feature sequences which are fed 
into an LSTM to, afterwards, detect anomalies of hardware and software applications. 

+ Traces. Graph-based techniques.

The article [On Predictability of System Anomalies in Real World](https://ieeexplore.ieee.org/document/5581600) 
provides an illustrative example on how hard drive failures can be predicted.


#### Multimodel metric anomaly detection
Multimodal metrics are often a symptom that part of a system build for reliability has a performance degradation,
possibly due to a failure. 
The use of clustering algorithms for multimodal anomaly detection are an interesting approach. The latent groupings
are found by finding a partition that separates the moniroting data into unimodal subsets that are more coherent
than the unpartitioned superset.


#### Univariate/multivariate anomaly detection
To detect servers which are outliers, [Netflix](https://medium.com/netflix-techblog/tracking-down-the-villains-outlier-detection-at-netflix-40360b31732) uses the clustering algorithm [DBSCAN](https://en.wikipedia.org/wiki/DBSCAN). 
Using a self-service paradigm, service owners identify one metric to be monitored for outliers.
The troubleshooting system runs DBSCAN to analysis metric windows which returns the set of servers considered outliers.
Service owners also specify the minimum timeframe for a deviation to be considered a true positive outlier.

Netflix solves the parameter selection challenge inherent to most algorithms by only asking service owners to define the current number of outliers. 
Using [simulated annealing](https://en.wikipedia.org/wiki/Simulated_annealing), the distance and minimum cluster size parameters are determined.
Results show a precision of 93%, recall: 87%, [F-score](https://en.wikipedia.org/wiki/F1_score): 90% for pools of almost 2K servers.

Following the approach path from Netflix, [other researchers](https://www.hbs.edu/faculty/Publication%20Files/2019%20HICSS%20Anomoly_296d232d-ccb2-448d-9d19-603c08a04a19.pdf) have extended the approach by using several metrics. While the results were more modest, the software system at hand was more complex.

To come...using tsfresh and Random Forests


### Diagnosis
+ *Dependency Inference* exploits the relationships between components and the communications between microservices 
to localize the causes of problems since failure often propagate across distributed systems. 
Early work in this field include the research by [Attariyan at al.](https://www.usenix.org/system/files/conference/osdi12/osdi12-final-33.pdf)
More recent proposal include the research from [Mace](https://cs.brown.edu/~jcmace/mace_thesis.pdf).
+ *Correlation Analysis* explores the correlations between the metrics generated by different components. 
A correlation implies a relationship which can be followed to find a root cause.
+ *Similarity Analysis* detects and localize problems by comparing behaviors of components, under the assumption 
that in normal state they should perform similarly. For example, in a cluster, the server with an outlier behavior 
is the problematic component. The assumption is that the majority of servers in a cluster are fault-free.

### Alarm Deduplication
Large-scale, complex IT infrastructures can generate tens to hundreds of alarms and represent one of the most important 
challenges for operators. 
One unique problem can suddenly inundated an operation with 20-30 alarms in response to a database failure. 
In such situations, the alarms system become a nuisance rather than a useful tool. 

Alarm deduplication (also known as alarm suppression) is a class of management techniques which groups alarms related 
to the same underlying problem. 
It transforms a set of related alarms into one or two notifications that really matter. 
In some cases, it is possible to identify the key alarm, core of the problem, and establish a relationship 
with the root cause. 

Techniques:
+ Flood analysis
+ Correlation and causality analysis 

### Capacity Planning
Refers to the capture of metric records relevant to understanding workloads and utilization trends to devise 
future capacity plans, and resource poll capacity forecast.
Examples of metrics to track include:
+ vCPU number, vRAM allocation, and compute load
+ Storage allocation and I/O latency
+ Network traffic

Fore casting becomes challenging when holidays, multiple seasonalities need to be considered. 


### Incident Response

+ Alerting 
+ Troubleshooting

When a root cause is matched with an alarm or anomaly, AIOps can initiate and orchestrate a remediation workflow and 
route a description of the root cause to the most adequate expert team for change, problem, and incident management 
following [ITIL best practices](https://en.wikipedia.org/wiki/ITIL).
AI can act as a matchmaking and routing system by using multi-criteria techniques to identify in real time the 
right teams based on on-call schedules, location and expertise.
Additionally, AIOps can use NLP techniques to index relevant documentation to assist operation teams to remediate an 
issue.

Early work in this field include the research from
[Candea et al.](https://link.springer.com/article/10.1007/s10586-006-7562-4)
which show how to reduce downtime of applications by automatically recovering from transient and intermittent 
software failures.



### Security Management
While anomaly detection is frequently employed to detect unusual patterns in monitoring data related to IT 
infrastructure problems, the same techniques can be use to detect patterns typically associated with a variety of 
security risks such violations, unauthorized access, and malicious activities.
Machine learning algorithms can process netflow metrics, control plan traces, and application and network equipment
logs for the analysis. 
AIOps brings increased benefits when threats are complex and multi-dimensional, since their interpretation by human 
is hard and time consuming. 


### Resource Optimization
To come....

### Root Cause Analysis
+ Proactively find anomalies before failures are reported
+ Perform audit trails and root cause analysis (RCA)

### Infrastructure Scaling
+ Configure predictive scaling that learns from the previous load conditions and usage patterns

### Cost Management
+ Forecast the cost of infrastructure (VM or IT)
+ Intelligent cost mng. in an important feature of public clouds

### Real time application behavior learning
+ Learns the behavior of application using trace patterns, log status messages, and performance metrics. 

### Performance Tuning
+ Auto tuning of workloads by analyzing the time taken for common tasks such as responding to a request and 
apply an accurate fix to the problem

Techniques:
+ Message Queuing analysis. Message queue length is a good metric for system health analysis.
The length of queue of connecting microservices are constantly monitored and an alert is sent out if their size goes
beyond a predefined threshold. Either generate alerts on the size of single queues or a sum of message queues.

### Energy Efficiency 
+ Manual
+ DVS Dual voltage papers

### Memory and SSD anomaly detection
to come

### Alarm deduplication
to come


## Existing Systems

### Industry
+ Tracing: [Lightstep](https://lightstep.com), [Google StackDriver](https://cloud.google.com/trace/),
[Amazon X-Ray](https://aws.amazon.com/xray/)
+ APM: [New Relic](https://newrelic.com/products/application-monitoring), [AppDynamics](https://www.appdynamics.com),
[Dynatrace](https://www.dynatrace.com), 
[Azure Application Insights](https://docs.microsoft.com/en-us/azure/azure-monitor/app/cloudservices),
[CA APM](https://www.ca.com/us/products/application-performance-monitoring.html)

### Academia

To come...

## Research Methodology

We will follow a KPI-driven development for the new approaches and algorithms devised by the project. 
This means that we will always implement first a baseline algorithm to clearly demonstrate the limitations of existing approaches.
Afterwards, for each incremental enhancement we make to the new algorithm, we will quantify the improvement using ROC AUC, F1 Score, etc. 

## Team and Culture

Several researchers have contributed to iForesight, namely, llya Shakhat, Paul Staab, Wei Guangsheng, Jinxunmi,
Sasho Nedelkoski, Alexander Wieder, Yi Feng, Florian Richter, Francesco del Buono, Phani Pawan, and Ankur Bhatia, 
among others.

Our skill set encompasses expertise in the fields of:
+ AI/Data Science (time series analysis, regression, decision trees, pattern recognition, probability theory 
and neural networks),
+ Software Engineering (analysis, design, development, testing), and 
+ Operation (deployment, infrastructure).


Our culture of innovation and R&D is based on 4 main guiding principles:

+ [DIY](https://en.wikipedia.org/wiki/Do_it_yourself),
[KISS](https://pt.wikipedia.org/wiki/Keep_It_Simple),
[Deep Work](https://www.amazon.com/gp/product/1455586692)*, 
[KPI-driven Research](https://en.wikipedia.org/wiki/Performance_indicator)

*(Time Spent) x (Intensity of Focus)

