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


## Introduction

In planet-scale deployments, the Operation and Maintenance (O&M) of cloud platforms cannot be done any longer 
manually or simply with off-the-shelf solutions. It requires self-developed automated systems, ideally exploiting 
the use of AI to provide tools for autonomous cloud operations. We rely on deep learning, 
distributed traces, and time-series analysis (sequence analysis) to effectively detect and fix anomalous 
cloud infrastructure behaviors during operations to reduce the workload of human operators. 

The iForesight system is being used to evaluate new O&M approaches. iForesight 3.0 is the result of 2 years 
of research with the goal to provide an intelligent new tool aimed at SRE cloud maintenance teams. It enables 
them to quickly detect and predict anomalies thanks to the use of artificial intelligence when cloud services 
are slow or unresponsive. 

## Problem
Existing tools for monitoring IT infrastructures, networks and applications focus on collecting logs, metrics, 
events, and traces from distributed systems mainly for visualization. Nonetheless, the final goal of monitoring 
is to reach a level of technological development where we have tools that conduct root cause analysis with a high 
accuracy and enable to autonomously recover systems. To achieve this goal, we still need to shift from a data 
collection stage to an insight- and action-driven paradigm. One promising path to monitor planet- and large-scale 
platforms is to rely on advanced analytics and explore techniques from statistics, time-series analysis, data mining, 
natural language processing, graph processing, machine learning, and deep learning to extract insights from large 
volumes of monitoring data to support and drive recovery actions. 

## Approach
The mission of the **Intelligent Cloud Operations** SRE team (based in [Munich](https://www.muenchen.de/int/en.html), 
Germany) is to develop new systems and tools to analyze observability data 
from [Huawei Cloud](https://www.huaweicloud.com/en-us/about/about_us.html)
to detect impact to customers, identify the root cause within seconds, and fix the problem using 
the 1/5/10 rule (detection: 1 min, RCA: 5 min, recovery: 10 min).

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

The use of ML for production engineering can support the development of new approaches for: 
1. Monitoring and alerting
2. Anomaly detection and Root Cause Analysis
3. Capacity planing and prediction
4. Canarying validation
5. Service Scaling
6. Operational performance

Our work focuses on points 1) and 2). 

In 2017 we adopted AI in the form of [Data Science](https://en.wikipedia.org/wiki/Data_science) and 
[Machine Learning](https://en.wikipedia.org/wiki/Machine_learning) approaches for anomaly detection, 
root-cause analysis, fault prediction, and automated recovery into our suite. 

These techniques, including **statistical learning**, **time-series analysis**, **deep learning**, **big data**,
**streaming**, and **data visualization**, enabled us to develop new production-ready services for troubleshooting 
Huawei Cloud and detect issues which were previously undetectable.

## AIOPs platform
An AIOps platform architecture consists of functional layers such as:

1. *Big Data processing*. Real-time processing of streaming and historical data.
2. *Data pipeline*. Connected data processing elements ingesting data from multiple sources.
3. *Library of algorithms*: Statistical functions, classical machine learning, and deep learning algorithm.
4. *Automation*. Use runbooks and RPA technology to automate repetitive tasks.
5. *User interface*. Allows IT operations teams t interact with the platform and quickly identify issues and apply corrective actions.

Our work focuses on points 1)-3). 

## Challenges

The challenges of operationalising AI are not limited to the understanding of deep learnign or machine learning algorithms.
Major challenges are related with software engineering, access and processing of large amounts of distributed data, 
model management, updating, deleting and training models on specialized GPUs and hardware, composition of workflows
for orchestrating parallel jobs, and the visual management of models, workflows, and results. 

## Huawei Cloud
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

### Underlying Architecture

Key building block components which require a close monitoring include:

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
+ [Linux Servers](https://en.wikipedia.org/wiki/Linux) 
+ [Network Switches](https://en.wikipedia.org/wiki/Network_switch) and 
[Network Routers](https://en.wikipedia.org/wiki/Router_(computing)


### Service offerings

Besides these building blocks which are part of the base cloud infrastructure, service offerings also need to be
monitored:
+ *Compute, network, storage*. Cloud servers, auto scaling, object storage, volume service, VPC network, and CDN, 
+ *Databases*. MySQl, PostgreSQL, and replication service.
+ *Security*. Vulnerability scan service, SSL management, and Anti-DDoS.
+ *Applications*. APM, API Gateway, and application orchestration. 
+ *Enterprise Intelligence*. Machine learning services, graph engines, face and image recognition, and Mapreduce.
+ *DevCloud*. Project management, build, code hub, code check, and code release.


## Approach

### Exploring SRE Pain Points
After identifying a pain point, we identify the following elements to develop a solution:
+ Existing manual workflows for troubleshooting for automatization 
+ Key golden metrics which can enable an effective anomaly detection
+ Data sources for root cause analysis
+ Manual recovery actions
+ Critical components which requires special monitoring infrastructure

### Data Sources

Monitoring data comes from many different data sources such hypervisors, OS, applications, application servers, 
middleware, databases, application logs, host and network metrics.

Generally, data sources can be classified in four types:
1. *Logs*. Service, microservices, and applications generate logs, composed of timestamped records with a structure 
and free-form text, which are stored in system files.
2. *Metrics*. Examples of metrics include CPU load, memory available, and the response time of a HTTP request.
3. *Traces*. Traces records the workflow and tasks executed in response to an HTTP request. 
4. *Events*. Major milestones which occur within a data center can be exposed as events. 
Examples include alarms, service upgrades, and software releases.

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

### Remediation

Once methods for pattern recognition and inference are mastered, the next step is to look into auto remediation. 
The first approach consists in running automated diagnostics scripts (runbooks) to troubleshoot and 
gain insights of the current state of components, services, or systems to, afterwards, conduct a manual remediation.
As knowledge on failure modes is gained, failure patterns are identified and recovery is encoded into automated 
remediation scripts. Often, only simple failure cases can be handled but this constitute a very good starting point 
for more complex scenarios. Examples include rebooting a host, restarting a microservice or hung process, 
free disk space, and remove cached data. As knowledge on running systems accumulates, auto-remediation becomes 
pervasive to service owners which can define their own recovery actions.


### Automation

In practice, these three tasks -- pattern recognition, inference, and remediation -- are linked together to provide an 
end-to-end solution for O&M. 
For example, when pattern recognition identifies an HTTP endpoint with a high latency associated with an anomaly 
by analysing metrics, distributed traces are immediately analysed to reveal exactly which microservice or component 
is causing the problem.
Its logs and context metrics are accessed to quickly diagnose the issue. 
Afterwards, when sufficient evidence characterizing the problem is collected, inference will nominate remediation 
actions to be executed.

### Evaluation

We evaluate the techniques and algorithms we built using a 3-level approach:
+ *Synthetics data*. We built models simulating microservice applications which are able to generate data under 
very specific conditions. The scenarios simulated are usually difficult to obtain when using testbeds and 
production systems. The controlled data enables a fine-grained understanding of how new algorithms behave and are an 
effective way for improvement and redesign.
+ *Testbed data*. Once an algorithm passes the evaluation using synthetic data, we make a second evaluation using 
testbed data. We run an OpenSack cloud platform under normal utilization. Faults are injected into the platform and
we expect algorithms to detect anomalies, find their root cause, predict errors, and remediate failures.
+ *Production data*. In the last step of the evaluation, we deploy algorithms in planet-scale production systems. 
This is the final evaluation in an environment with noise and which generally makes algorithms generate many 
false positives. Accuracy, performance and resources consumption is registered.

Many public datasets are also available to conduct comparative studies:
+ [Yahoo webscope](https://webscope.sandbox.yahoo.com/catalog.php?datatype=s&did=70&guccounter=1) 
+ [Alibaba clusterdata](https://github.com/alibaba/clusterdata)
+ [Azure Public Dataset](https://github.com/Azure/AzurePublicDataset)
+ [Google Cluster Data](https://github.com/google/cluster-data)
+ [Outlier Detection DataSets from Stonybrook](http://odds.cs.stonybrook.edu/)
+ [Outlier evaluation from LMU](http://www.dbs.ifi.lmu.de/research/outlier-evaluation/)
+ [Outlier datasets from ELKI](https://elki-project.github.io/datasets/outlier)
+ [LogPai datasets](https://github.com/logpai/loghub/blob/master/README.md)
+ [Timeseries classification](http://timeseriesclassification.com/dataset.php?train=&test=&leng=&class=&type=='sensor')
+ [Numenta Anomaly Benchmark](https://github.com/numenta/NAB)
+ [Anomaly detection datasets from Harvard](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/OPQMVF)
+ [Anomaly detection datasets from Oregon State](https://ir.library.oregonstate.edu/concern/datasets/47429f155)



## Tech Stack
AIOps does not only requires new methods and techniques from the fields of statistics and ML, but it also needs online and offline big data infrastructure (such as Hadoop, HBase, Spark, Gobblin, Presto) to ingest and process scale monitoring data which can reach several PB/day. For example, Facebook uses Presto for interactive queries over their 300PB data stores.

iForesight is build using the following software stack and applications. 

+ Frontend: Grafana, Jupyter, Node.js
+ AI: Tensorflow, Keras, PyTorch, Pandas/NumPy, Scikit-learn, Huawei Model Arts
+ Backend: Microservices, Docker, MySQL 
+ Big Data: OpenTSDB, Hive, ArangoDB, HBase, Elastic Search, Spark Streaming. 
+ Transport: Kafka
+ Data sources: metrics, app logs, tracing, alarms, topologies, and change events
+ Language: Python

In 2019, we will closely following the progresses make in the following 5 fields to extend our stack and suite:

+ [AIOps](https://blog.appdynamics.com/aiops/what-is-aiops/),
[Service Mesh](https://www.nginx.com/blog/what-is-a-service-mesh/),
[Istio](https://istio.io),
[Distributed Tracing](https://opentracing.io/docs/overview/what-is-tracing/),
[SRE](https://landing.google.com/sre/),
[RPA](https://en.wikipedia.org/wiki/Robotic_process_automation)


## Existing Systems

## Industry
+ Tracing: [Lightstep](https://lightstep.com), [Google StackDriver](https://cloud.google.com/trace/),
[Amazon X-Ray](https://aws.amazon.com/xray/)
+ APM: [New Relic](https://newrelic.com/products/application-monitoring), [AppDynamics](https://www.appdynamics.com),
[Dynatrace](https://www.dynatrace.com), 
[Azure Application Insights](https://docs.microsoft.com/en-us/azure/azure-monitor/app/cloudservices),
[CA APM](https://www.ca.com/us/products/application-performance-monitoring.html)

## Academia

To come...

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

