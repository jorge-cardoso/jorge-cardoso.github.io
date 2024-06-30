---
layout: article
title: ""
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


AIOps iForesight
----------------

In planet-scale deployments, the Operation and Maintenance (O&M) of cloud platforms cannot be done any longer 
manually or simply with off-the-shelf solutions. 
It requires self-developed automated systems, ideally exploiting the use of AI to provide tools for autonomous 
cloud operations. We rely on deep learning, distributed traces, and time-series analysis to effectively detect 
and fix anomalous cloud infrastructure behaviors during operations to reduce the workload of human operators. 

<p>
<a href="../pdf_img/iforesight3.png">
<img src="../pdf_img/iforesight3.png" height="25%" width="25%" style="float:right;margin:0 20px 0 0;"/>
</a>
</p>

The iForesight system is being used to evaluate new O&M and AIOps approaches. iForesight 3.0 is the result of 3 years  of research with the goal to provide an intelligent new tool aimed at SRE cloud maintenance teams. It enables  them to quickly detect and predict anomalies thanks to the use of artificial intelligence when cloud services are slow or unresponsive. 

### Problem
Existing tools for monitoring IT infrastructures, networks and applications focus on collecting logs, metrics, 
events, and traces from distributed systems mainly for visualization and simple rule-based alerting.
Nonetheless, the final goal of monitoring 
is to reach a level of technological development where we have tools that conduct root cause analysis with a high 
accuracy and enable to autonomously recover systems. To achieve this goal, we still need to shift from a data 
collection stage to an insight- and action-driven paradigm. One promising path to monitor planet- and large-scale 
platforms is to rely on advanced analytics and explore techniques from statistics, time-series analysis, data mining, 
natural language processing, graph processing, machine learning, and deep learning to extract insights from large 
volumes of monitoring data to support and drive recovery actions. 

### Approach
The mission of the **AIOps SRE team** (based in [Munich](https://www.muenchen.de/int/en.html),  Germany) is to develop new systems and tools to analyze observability data from [Huawei Cloud](https://www.huaweicloud.com/en-us/about/about_us.html) to detect problems which impact customers, identify the root cause within seconds, and fix failures using the 1/5/10 rule (detection: 1 min, RCA: 5 min, recovery: 10 min).

In 2017 we adopted AI in the form of [Data Science](https://en.wikipedia.org/wiki/Data_science) and 
[Machine Learning](https://en.wikipedia.org/wiki/Machine_learning) approaches for anomaly detection, 
root-cause analysis, fault prediction, and automated recovery into our suite. 
These techniques, including **statistical learning**, **time-series analysis**, **deep learning**, **big data**,
**streaming**, and **data visualization**, enabled us to develop new production-ready services for troubleshooting 
Huawei Cloud and detect issues which were previously undetectable.

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

The use of AI for production engineering can support the development of new approaches for: 
1. Monitoring and alerting
2. Anomaly detection and Root Cause Analysis
3. Capacity planing and prediction
4. Canarying validation
5. Service Scaling
6. Operational performance

Our work focuses on points 1) and 2). 

An AIOps platform architecture which runs AI algorithms consists of functional layers such as:

1. *Big Data processing*. Real-time processing of streaming and historical data.
2. *Data pipeline*. Connected data processing elements ingesting data from multiple sources.
3. *Library of algorithms*: Statistical functions, classical machine learning, and deep learning algorithm.
4. *Automation*. Use runbooks and RPA technology to automate repetitive tasks.
5. *User interface*. Allows IT operations teams t interact with the platform and quickly identify issues and apply corrective actions.

For 2019, our work focuses on points 1)-3). 

### Challenges

The challenges of operationalising AI are not limited to the understanding of deep learning or machine learning algorithms.
Major challenges are related with software engineering, access and processing of large amounts of distributed data, 
model management, updating, deleting and training models on specialized GPUs and hardware, composition of workflows
for orchestrating parallel jobs, and the visual management of models, workflows, and results. 

### Huawei Cloud
HC, or Huawei Cloud, has planet-scale technical requirements. It has a 
[microservices](https://en.wikipedia.org/wiki/Microservices) architecture composed of hundreds of services.
They are distributed over thousands of hosts in many geographical regions and operate with an availability 
higher than [five nines](https://en.wikipedia.org/wiki/High_availability). 
It was build on top of [OpenStack](https://docs.openstack.org/), an opensource cloud operating system.
OpenStack controls large pools of compute, storage, and networking resources throughout tens of datacenters. 
The base services are predominantly written in Python and Java, and run on Linux. 

Huawei Cloud is one of the largest and fastest growing platforms in the world. 
It has a strong presence throughout the world with over 40 availability zones located across 23 geographical regions,
ranging from Germany, France, South/Central America, Hong Kong and Russia to Thailand and South Africa.

There are three properties that make platforms such as Huawei Cloud far more difficult to monitor and troubleshoot when
compared to other distributed systems:
1. Amount of data and relationships which O&M teams need to analyze.
2. Due to its distributed nature and complexity, system data has a low signal to noise ratio.
3. Since many different subsystems interact together, semantically reconciliating data is difficult.


The strongest challenge is its architecture design and operational complexity. 
Cloud deployments comprise thousands of geographically distributed services and microservices.
These key building block components require a close monitoring:

+ [API Gateways](https://microservices.io/patterns/apigateway.html) (e.g., [Kong](https://konghq.com))
+ [Load Balancers](https://en.wikipedia.org/wiki/Load_balancing_(computing) (e.g., [HAProxy](http://www.haproxy.org))
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

Besides these building blocks which are part of the base cloud infrastructure, service offerings also need to be
monitored:
+ *Compute, network, storage*. Cloud servers, auto scaling, object storage, volume service, VPC network, and CDN, 
+ *Databases*. MySQl, PostgreSQL, and replication service.
+ *Security*. Vulnerability scan service, SSL management, and Anti-DDoS.
+ *Applications*. APM, API Gateway, and application orchestration. 
+ *Enterprise Intelligence*. Machine learning services, graph engines, face and image recognition, and Mapreduce.
+ *DevCloud*. Project management, build, code hub, code check, and code release.

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


### Tech Stack
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



Cloud Reliability
-----------------

Reliability is a measure of the percentage uptime of cloud services to customers, considering the downtime due to faults. Many cloud providers are setting a reliability level of 99.95%.
This means that if you provision a VM it will be available 99.95% of the time, with a possible downtime
of 21.6 minutes per month. Reliability is an important characteristic which enables platforms to adapt and 
recover under stress and remain functional from a customer perspective. You can find additional information from 
a Meetup meeting on [Cloud Reliability and Resilience](http://www.slideshare.net/JorgeCardoso4/cloud-resilience-with-open-stack).

Every year big companies made the headlines for the wrong reason: reliability problems. In Q1 2016, Microsoft (9 days), Twitter (8h), Apple (7h), are PayPal (7h) are the "lucky" winners:

+ Two separate outages meant [Microsoft's biggest customers haven't had access to email](http://www.businessinsider.de/microsoft-has-a-9-day-long-office-365-outage-2016-1?r=UK&IR=T) for several days.
+ [Twitter Went Down](http://recode.net/2016/01/19/twitter-went-down-because-of-an-internal-code-change/) Because of an ‘Internal Code Change’.
+ eBay, Etsy and Online Merchants Hit by [PayPal Outage](http://www.ecommercebytes.com/C/blog/blog.pl?/pl/2016/3/1457113386.html)
+ [Apple Pay suffers](http://www.theinquirer.net/inquirer/news/2446737/apple-pay-suffers-first-wobble-with-seven-hour-outage) first wobble with seven-hour outage. Problem saw Visa users unable to sign up to iPhone payments service.

According to section of [IEEE Society](http://rs.ieee.org) working on Reliability, "reliability engineering is a
design engineering discipline which applies scientific knowledge to assure that a system will perform its intended function for the required duration within a given environment, including the ability to test and support the system through its total lifecycle (...) it is the probability of failure-free software operation for a specified period of time in a specified environment."

Cloud resiliency is the ability of a cloud platform or service to recover and continue operating when failures occur. Automated means for recovery are the most desirable solutions.

### OpenStack Cloud OS
OpenStack is a cloud operating system (Cloud OS) for building public and private clouds. It can control pools of 
compute, storage, and networking recourses located in large data centres. It is supported by major IT players in 
the world which include IBM, HP, Intel, Huawei, Red Hat, AT&T, and Ericsson. At Huawei Research we are currently 
developing the next generation of reliable cloud platforms for Deutsche Telekom. The Open Telekom Cloud engineered
by Huawei and operated by T-Systems was launched at CeBIT 2016 and delivers flexible and convenient cloud services.

<img align="right" src="/images/OTC.png" width="450">

Major players are building competences in the field of cloud reliability. 
[Microsoft Trustworthy Computing](https://www.microsoft.com/en-us/twc/reliability.aspx) has a division dedicated 
to Reliability and IBM offers specialized [Resiliency Services](http://www-935.ibm.com/services/us/en/it-services/business-continuity/) 
to assure continuous business operations and improve overall reliability.

Cloud reliability and resilience of OpenStack can be analyzed and improved at 3 levels:

+ Level 1. OpenStack paltform and services
+ Level 2. Hypervisor and virtual machines (VM) managed
+ Level 3. Applications running inside VMs

We concentrate our efforts on Level 1.

Reliable large-scale distributed systems are hard to build since their validation is time consuming, complex, and 
often non-deterministic. OpenStack is not an exception. Research from Microsoft 
with [MODIST](https://www.usenix.org/legacy/event/nsdi09/tech/full_papers/yang/yang_html/) 
(Junfeng Yang, et al., MODIST: Transparent Model Checking of Unmodified Distributed Systems Proceedings of the
6th Symposium on Networked Systems Design and Implementation (NSDI '09), Pages 213-228) exemplifies well the
problems associated with general distributed systems. Experiments found a total of 35 bugs in Berkeley DB,
a Paxos implementation, and a primary-backup replication protocol implementation. Thus, validation, testing, 
and benchmarking frameworks are needed, specifically, when OpenStack is used to support mission critical applications.

Building large-scale distributed systems requires the consideration of several theories, technologies, 
and methodologies, such as:

+ [CAP Theorem](https://en.wikipedia.org/wiki/CAP_theorem)
+ [Microservices](http://martinfowler.com/articles/microservices.html)
+ [Twelve Factor App](https://12factor.net)

Ensuring the reliability of large-scale, complex distributed cloud platform requires new innovative approaches. While NetFlix’s ChaosMonkey proposed a new tool (and concept) for site reliability engineers, it only enables the analysis of cloud native applications. Since at Huawei we are developing highly reliable cloud platforms (e.g., Openstack), the site reliability engineering team developed a new approach framework, called Butterfly Effect, to automatically inject faults into cloud infrastructures.

+ Efficient execution trace processing using stream processing
+ Dynamic time-based fingerprinting to detect timeouts
+ Position and negative fingerprints for automated diagnosis and localization of user commands
+ Rely as much possible on open source and Python (see [Python frameworks, libraries, software and resources](https://github.com/vinta/awesome-python))


### Fault Injection
+ [Fault-injection technologies](https://en.wikipedia.org/wiki/Fault_injection) or FIT provides approaches to demonstrate that software is robustness and fault tolerance by injecting faults to damage internal components to test its fault tolerance.
+ Domenico Cotroneo and Henrique Madeira. [Introduction to software fault injection](http://link.springer.com/chapter/10.1007/978-88-470-2772-5_1). In Domenico Cotroneo, editor, Innovative Technologies for Dependable OTS-Based Critical Systems, pages 1–15. Springer Milan, 2013.
+ Haissam Ziade, Rafic A Ayoubi, Raoul Velazco, et al. A survey on fault injection techniques. Int. Arab J. Inf. Technol., 1(2):171–186, 2004.
+ (Graph-based) In [Towards a Fault-Resilient Cloud Management Stack](https://kabru.eecs.umich.edu/papers/publications/2013/socc2013_ju.pdf), the authors use execution graphs to monitor and observe the processing of external requests. Intrumentation is done between openStack and the hypervisor, the database, REST, HTTP, and AMQP. Server-crash faults are injected by killing relevant service processes via systemd.
+ (Graph-based) In HANSEL: Diagnosing Faults in OpenStack, the auhtors intercept AMQP and REST messages to reconstruct an execution graph. The approach requires network monitoring agents at each node in the OpenStack deployment. One of the challenges is the so-called transaction stitching to reconstruct full transactions to recreate the execution graph.
+ (String-based) In Toward achieving operational excellence in a cloud and [US20150161025 A1: Injecting Faults at Select Execution Points of Distributed Applications ](http://www.google.com/patents/US20150161025), the authors rely on the operating system level information to build message traces by observing system events such as SEND or RECV system calls (or LIBC calls). These events are monitored per thread since with higher granularities (i.e., process-level or system-level), the job of separating events is difficult. Message sequences are converted into string of symbols and strings are comapred using an edit distance function. High distances indicate possible anomalies between executions.
+ [DICE Fault Injection](https://github.com/dice-project/DICE-Fault-Injection-Tool): A tool to generate faults within Virtual Machine. Under development.
+ Lineage-driven Fault Injection by Peter Alvaro, Joshua Rosen, Joseph M. Hellerstein UC Berkeley, Proceeding SIGMOD '15.
+ [New Functional Testing in etcd](https://coreos.com/blog/new-functional-testing-in-etcd/). CoreOS uses a fault-injection framework to simulate the most common cases of failures that the system etcd may meet in real life.
+ To guarantee HA, [LinkedIn](https://linkedin.com) simulates data center failures and measure the effects. To improve response time and lower the cost of operations, they have built the [Nurse](https://engineering.linkedin.com/sre/introducing-nurse-auto-remediation-linkedin) system, a workflow engine which enables to define tasks to recover automatically from failures.

+ The book [Resilience and Reliability on AWS](https://www.amazon.com/Resilience-Reliability-AWS-Jurg-Vliet/dp/1449339190) provides  a motivation and a few examples (for beginners) on the importance of reliability. The author shares their experience to achieve resilience and reliability with code examples to monitor Redis or MongoDB. The use of simple techniques to solve the complex problem of reliability of clouds clearly indicates that current solutions are limited and further systmathic approaches are needed.

+ Microsoft proposed the Resilience Modeling and Analysis methodology. It is an approach for improving resilience adapted from the industry-standard technique known as Failure Mode and Effects Analysis (FMEA).

+ [Fault Injection at Cloudera](http://blog.cloudera.com/blog/2016/04/quality-assurance-at-cloudera-fault-injection-and-elastic-partitioning/) uses fault-injection tools and elastic-partitioning techniques for the continuous improvement and verification of their Hadoop ecosystem (CDH) via an extensive QA process during the software-development life cycle.
+ OpenStack Reliability Testing describes an abstract methodology for OpenStack cluster high-availability testing and analysis.


### Anomaly Detection

+ (Process-based) In Experience report: Anomaly detection of cloud application operations using log and cloud metric correlation analysis (2015), the authors present an approach to detect anomalies by correlating data & events extracted from logs and metrics generated by Amazon AWS. While the approach is interesting, the level of detail provided by Amazon logging system does not enable to gain an insightful view and prediction of failures.
+ (Path-based) In patent [Diagnosing distributed applications using application logs and request processing paths](https://www.google.com/patents/US20140136692) and [Patent US9069668](https://www.google.com/patents/US9069668), the authors inject faults into the so-called transaction path, detecting a writing action to a log of the distributed application. When a failure occurs, the path is marked as problematic.
+ Generic approaches for reliability such as Fault Tree Analysis (FTA), Root cause analysis (RCA), Failure mode and effects analysis (FMCA), Cause–effect graphs, Ishikawa diagram, Five whys, etc.


### Distributed Tracing

Traditional monitoring solutions for cloud platforms and applications, such as [Cloudwatch](https://aws.amazon.com/cloudwatch/) from Amazon AWS, [Ceilometer](https://wiki.openstack.org/wiki/Telemetry) from Openstack, and [Nagios](https://www.nagios.org/), place emphasis on *component-based monitoring*. Existing solutions collect detailed information on system statistics about virtual machines, CPU, disk IO, hosts, RPC, etc.

Component-based monitoring tools provide not information into the relationship between the components of a distributed service. Since debugging a distributed system is a danting task using these tools, cross-component monitoring (tracing) solutions were explored to aliviate exisitng limitation by tracing the path of events and method calls that are generated at runtime.

The study from Sambasivan, Raja R., et al. titled [So, you want to trace your distributed system? Key design insights from years of practical experience](http://www.pdl.cmu.edu/PDL-FTP/SelfStar/CMU-PDL-14-102.pdf) (Vol. 102. Technical Report, CMU-PDL-14, 2014) provides a very good overview of tracing systems developed up to 2014, and include the analysis of X-Trace, Magpie, Dapper, etc. The thesis from Nathan Scott of the Monash University, Australia, titled [Unifying Event Trace and Sampled Performance Data] (http://pcp.io/papers/unifying-thesis.pdf) also give a fairly good overview of these main tracing systems.

+ [X-Trace](http://people.eecs.berkeley.edu/~istoica/papers/2007/xtr-nsdi07.pdf) from [Berkeley](http://www.berkeley.edu/) outputs a set of task graphs according to Lamport’s happens before relation to trace the execution path of a distributed system. It does not rely on physical clocks and uses low level primitives for instrumentation (e.g., xtr::logEvent(string), xtr::logEvent("end"), pushdown(), and pushnext()).
+ [Magpie](http://research.microsoft.com/en-us/projects/magpie/) from [Microsoft](http://www.microsoft.com) infers traces by combining event logs generated by low level black-box instrumentation. It automatically extracting individual requests from a running system and constructs a probabilistic workload model. Magpie relies on experts with deep knowledge about the system to construct a schema of how to correlate events in different components. In contrast to other approach (from Google, Twitter, and Cloudera), it infers causal relations from the events generated by the operating system and application instrumentation.
+ [Dapper](http://research.google.com/pubs/pub36356.html) from [Google](http://www.google.com) focuses on library and middleware modifications and provides a special context to track execution across async callbacks and RPCs.
+ HTrace from [Cloudera](https://www.cloudera.com/) is a tracing framework intended for use with distributed systems written in java. It is similar to Dapper and performs end-to-end tracing to capture detailed paths of causally between events generated by the components which make a distributed system.
+ [Zipkin](http://zipkin.io) from Twitter is also a distributed tracing system. It helps gather timing data needed to troubleshoot latency problems in microservice architectures. Zipkin's design is based on the Google Dapper.
+ [Distributed Tracing at Netflix with Salt](https://speakerdeck.com/niteshkant/distributed-tracing-at-netflix) Dependency and tracing from Netflix.
+ [Jaeger](https://pypi.python.org/pypi/jaeger-client/2.1.0) and [Tracing HTTP request latency](https://medium.com/opentracing/tracing-http-request-latency-in-go-with-opentracing-7cc1282a100a#.74u76hglk). The approach from Uber on tracing (similar to Dapper and Zipkin).
+ [Openstracing](https://github.com/opentracing) OpenTracing is an open distributed tracing standard for applications. Since distributed tracing is important for large-scale distributed systems management and complex services architectures, OpenTracing was created in 2016 to address the standardization problems from instrumentation.

Facebook uses mystery machine
https://www.usenix.org/system/files/conference/osdi14/osdi14-paper-chow.pdf

+ [Methods and Systems of Distributed Tracing](http://www.google.com/patents/US20140215443) and US 20140215443 A1 Application and US 9135145 B2 Grant by Rackspace Us, Inc. (Sept 2015). A system and methods are provided for distributed tracing in a distributed application by observing messages sent and received among components of the distributed application, generating a probabilistic model of a call flow, and constructing a call flow graph based on the probabilistic model for the distributed application.
+ Mike Y. Chen, Anthony Accardi, Emre Kiciman, Jim Lloyd, Dave Patterson, Armando Fox, and Eric Brewer. 2004. [Path-based faliure and evolution management](http://people.eecs.berkeley.edu/~brewer/papers/nsdi2004_chen_paths.pdf). In Proceedings of the 1st conference on Symposium on Networked Systems Design and Implementation - Volume 1 (NSDI'04), Vol. 1. USENIX Association, Berkeley, CA, USA, 23-23.


#### Monitoring

+ [Eliot](https://github.com/ClusterHQ/eliot) A Python library for Logging for complex distributed systems
+ [Monitoring without Infrastructure @ Airbnb](https://www.usenix.org/conference/srecon15/program/presentation/serebryany) Airbnb uses logstash, statsd, NewRelic, Datadog, and their own open-sourced configuration-as-code alerting framework for monitoring.
+ [RefStack](https://refstack.openstack.org/#/results/303e7538-136d-4802-a7e9-a85cfe3c9fc1). RefStack provides users in the OpenStack community with a Tempest wrapper, refstack-client, that helps to verify interoperability of their cloud with other OpenStack clouds. It does so by validating any cloud implementation against the OpenStack Tempest API tests

Other tools from the field of APM ([Application Performance Management](https://en.wikipedia.org/wiki/Application_performance_management)), such as [NewRelic](https://newrelic.com) limite their span to monitor the performance of transactions across web application stacks.


### Literature
+ [Software Fault Injection](https://www.amazon.com/Software-Fault-Injection-Jeffrey-Voas/dp/0471183814) by Jeffrey M. Voas and Gary McGraw.
+ [Patterns of resilience](http://www.slideshare.net/ufried/patterns-of-resilience) by Uwe Friedrichsen
+ [Site Reliability Engineering: How Google Runs Production Systems](https://books.google.de/books?id=81UrjwEACAAJ&redir_esc=y). Edited by Betsy Beyer, Chris Jones, Jennifer Petoff and Niall Richard Murphy.
+ [How Complex Systems Fail](http://web.mit.edu/2.75/resources/random/How%20Complex%20Systems%20Fail.pdf) by Richard I. Cook, MD Cognitive technologies Laboratory, University of Chicago (2000).


Service Systems
---------------

Our research on service systems placed emphasis on three fields: service description languages (with the USDL family), service system modeling (with the LSS USDL language), service analytics (using process mining), and 
service networks (using principals from social networks).

<iframe width="500" height="281" src="http://player.vimeo.com/video/21894921" alt="The video is not available. Please use another browser or change your configuration." frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen alt="You browser does not supports video frames">
</iframe>

The video above explains the goal of USDL (please note that since then, XML has been replaced by RDFS)

**Service Analytics**. We analyse large logs from IT service provisioning (e.g., ITIL) to find human behaviour patterns which are rewarded or penalized. Interesting work. It is the new challenge for companies, the future so to say: to analyse people behaviour... My new upcoming book on Service Systems Fundamentals/Springer will have a chapter dedicated to the topic.

**Service Descriptions**. Linked USDL (Unified Service Description Language) enables describing business, software, or real-world services using computer-readable and computer-understandable specifications to make them tradable on the web/Internet. It uses RDFS to provide a shared model. 

<a href="https://github.com/linked-usdl">
<img src="/images/Logo-linked-usdl.png" width="65" style="left;margin:0px 10px 0px 10px;"/>
</a>

See <a href="https://github.com/linked-usdl">Github</a> and <a href="http://www.linked-usdl.org">linked-usdl.org</a>

**Service Systems**. The Linked Service System model for the Unified Service Description Language (LSS-USDL) explores the development of lightweight semantic models to capture the essence of service systems. Real service systems can be modeled with LSS-USDL, they can be accessed and queried programmatically, and they can be annotated with background knowledge. 

<a href="https://github.com/jorge-cardoso/lss-usdl">
<img src="/images/Logo-LSS-USDL.png" width="200"  style="center;margin:0 20px 0 0;"/>
</a>

See <a href="https://github.com/jorge-cardoso/lss-usdl">Github</a> and this recent book <a href="http://www.springer.com/computer/database+management+%26+information+retrieval/book/978-3-319-10812-4">Service Systems.</a> This approach provides descriptions that can be used for service management, optimization, and analytics.

**Service Networks**. Societies are becoming increasingly service-oriented. Service revenues from companies, such as Rolls Royce, Caterpillar, and ThyssenKrupp, often reach more than 35% of total sales. In the field of information technology, the global spending on cloud services is expected to grow 40% over the next seven years. Despite these facts, services are still the least studied part of the economy.

The observation that the power of service-based economies is no longer restricted to individual organizations, but spans across networks, is the main driver for conducting service network research. Networks play an important role in many application areas such as energy grid distribution and smart city planning. Service networks are a class of networks of emerging interest since worldwide economies are becoming increasingly connected. Nonetheless, while the economies of many countries are becoming service-oriented, very few studies on service networks exist. Understanding when, why, where, and how service networks function best is fundamental for the future because their analysis can provide an x-ray of service-based economies.


**Publications**

+ Georgia Kapitsaki, Josef Ioannou, Jorge Cardoso, Carlos Pedrinaci, "Linked USDL Privacy: Describing Privacy Policies for Service",  was published at the IEEE Inter. Conf. on Web Services (ICWS) **(Conference Rank: A)**, 2-7 July 2018, San Francisco, USA, 2018. 
+ José María García, Pablo Fernández, Carlos Pedrinaci, Manuel Resinas, Jorge Cardoso, Antonio Ruiz-Cortés, "Modeling Service Level Agreements with Linked USDL Agreement", IEEE Transactions on Services Computing **(Impact Factor 2016: 3.049)**, pp. 52-65, Volume: 10, Issue: 1, Jan.-Feb. 1 2017.
+ José María García, Carlos Pedrinaci, Manuel Resinas, Jorge Cardoso, Pablo Fernández, Antonio Ruiz-Cortés. [Linked USDL Agreement: Effectively Sharing Semantic Service Level Agreements on the Web](/rd/Papers/CP-2015-079-Linked-USDL-Agreement.pdf), The IEEE International Conference on Web Services (ICWS), June 27 - July 2, 2015, New York, USA. **(Acceptance Rate: 17.4%)**
+ Jorge Cardoso and Carlos Pedrinaci, [Evolution and Overview of Linked USDL](/rd/Papers/CP-2015-077-Linked-USDL-Evolution-and-Overview.pdf). 6th International Conference Exploring Services Science, IESS 2015, Porto, Portugal, February 4-6, 2015, LNBIP, Vol. 201, Novoa, Henriqueta, Dragoicea, Monica (Eds.), 2015.
+ Cardoso, J., R Mans, PR da Cunha, W van der Aalst, H Berthold, [A framework for next generation e-health systems and services](/rd/Papers/CP-2015-080-Framework-e-health-systems.pdf) Proc. Amer. Conf. Inf. Syst. (AMCIS), pp. 1-11. 2015.  **(Conference Rank: A)**
+ Pedrinaci, C.; Cardoso, J. and Leidig, T. [Linked USDL: A Vocabulary for Web-scale Service Trading](/rd/Papers/CP-2014-073-ESWC-Linked-USDL.pdf). In 11th Extended Semantic Web Conference (ESWC), Crete, Greece, 2014. (Acceptance Rate: 25%)
+ Cardoso, J.; Binz, T.; Breitenbucher, Uwe; Kopp, O. and Leymann, F. [Cloud Computing Automation: Integrating USDL and TOSCA](/rd/Papers/CP-2013-068-CAISE-USDL-and-TOSCA.pdf). In 25th Conference on Advanced Information Systems Engineering (CAiSE  2013), pages 1-16, Springer, LNCS, Vol. 7908, 2013. **(Conference Rank: A; Acceptance rate: 16,6%)**
+ Jorge Cardoso, Ricardo Lopes, and Geert Poels. [Conceptual Frameworks](/rd/Papers/CH-2014-Service-Systems-Conceptual-Frameworks.pdf), in Service Systems: Concepts, Modeling, and Programming, Springer, 2014.
+ Jorge Cardoso, Ricardo Lopes, and Geert Poels. [The LSS-USDL Model](/rd/Papers/CH-2014-Service-Systems-The-LSS-USDL-Model.pdf), in Service Systems: Concepts, Modeling, and Programming, Springer, 2014.



Semantic Domain System
----------------------

<img align="right" src="/images/sds.gif" width="100" style="center;margin:20px 20px 20px 20px;">

Enterprises have the need to communicate. In business to business applications, usually XML is used to automatically  exchange information. But sometimes more semantics is needed. Enterprises  also need to share concepts, terms,  definitions and relationships (between concepts) relevant to their business activities.

Why are developing the Semantic Domain System which is a systems that follows similar concepts from the DNS.
The Domain Name System or DNS, is a service where relationships between IP addresses and physical domains are stored.
When you request your browser, email client, ftp client or any other application to search for a specific domain,
it automatically calls the DNS Server and finds the IP for the machine that offers the required service. It enables the use of names instead of IP addresses. Each company is responsible for maintaining their own IP addresses.

In SDS, like in DNS, each company is responsible for managing their own concepts and is able to browse other companies'
concept definitions. The system will allow a clear representation of concepts and relationships between concepts.

Semantic B2B Integration
------------------------

<img align="right" src="/images/b2biss_vertical_small.png" width="100" style="center;margin:20px 20px 20px 20px;">

B2B integration, also known as external IS integration and e-business integration, has promised to automate and
integrate business processes and interactions between companies by considerably renovating the way business was
conducted with partners, suppliers, and customers. B2B integration is fundamentally about data and information
exchange among businesses and their information systems. The ability to interact and exchange information both
internally and with external organizations (partners, suppliers, customers) is a fundamental issue in the enterprise sector.

One simple solution that organizations have adopted to reach a higher level of integration relied on the use of XML as the language to represent data. XML has become a de facto standard of B2B because of its simplicity, extensibility and ease of processing. Today its estimated that most organizations use XML to store and transfer data. This is the reason why we created B2BISS (Business-to-Business Integration using Syntactic-to-Semantic Mapping).

JXML2OWL
--------

<img align="right" src="/images/JXML2OWL.gif" width="100" style="center;margin:20px 20px 20px 20px;">

Today's enterprises face critical needs in integrating disparate information spread over several data sources inside and even outside the organization. Semantic web technologies, such as ontologies, play an important role in the semantic integration of data. The purpose of JXMLOWL is to present a framework to assist the semantic data integration process.
The framework supports mappings and instances transformation from syntactic data sources in XML format to a common global model defined by an ontology using semantic web related technologies such as OWL.


Business Process Quality Metrics
----------------------

<img align="right" src="/images/bpqm.jpg" width="100" style="center;margin:20px 20px 20px 20px;">

Our intentions are twofold. On the one hand, we think it is fundamental to survey findings from neighboring disciplines on how Business Process Quality Metrics can be developed. In particular, we believe that we can gather additional insights from software engineering, cognitive science, and graph theory and relate them to business process modeling.
A further empirical investigation might ultimately lead to establishing a complexity theory of business process models. On the other hand, we plan to demonstrate that these metrics serves their purpose, we plan to carry out several empirical validations by means of controlled experiments.


Other systems
--------------

+ Process Control-Flow Analysis
+ Semantic Dynamic Packaging (POSI/EIA/56164/2004).
+ DME&nbsp;Web Site Development, Jos&eacute; Nelson Alves e Duarte Abreu.
+ Poseidon: A tool for semi-automatic process design, Jose Miguel Rodrigues de Freitas and Luis Roberto Fernandes Faria.
+ Web Services over Peer-to-Peer infrastructure, Martinho da Silva Correia.
+ Quality of Service Management for METEOR Workflow Management System, University of Georgia, GA, USA.
+ Semantic e-Workflow Composition for METEOR Workflow Management System, University of Georgia, GA, USA.
+ MARATHON Workflow Management System, Jorge Cardoso and Christoph Bussler, Boeing Company, July 1999, WA, USA.
+ SketchPad, CCG/ZGDV - Centro de Computa&ccedil;&atilde;o Gr&aacute;fica and <a href="http://www.igd.fraunhofer.de/">IGD/Darmstadt</a>, Germany
+ DiagLactato 2.0: An Expert System for Healthcare, 1994.
+ CUCo - Comunicar Utilizando o Computador, Projecto Minerva, Universidade de Coimbra, 1994.
+ Puzzle Quiz, Projecto Minerva, Universidade de Coimbra, 1992.
+ Task Game, Projecto Minerva, Universidade de Coimbra, 1991.


