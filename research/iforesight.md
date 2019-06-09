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

In planet-scale deployments, the Operation and Maintenance (O&M) of cloud platforms cannot be done any longer 
manually or simply with off-the-shelf solutions. It requires self-developed automated systems, ideally exploiting 
the use of AI to provide tools for autonomous cloud operations. We rely on deep learning, 
distributed traces, and time-series analysis (sequence analysis) to effectively detect and fix anomalous 
cloud infrastructure behaviors during operations to reduce the workload of human operators. 

The iForesight system is being used to evaluate new O&M approaches. iForesight 3.0 is the result of 2 years 
of research with the goal to provide an intelligent new tool aimed at SRE cloud maintenance teams. It enables 
them to quickly detect and predict anomalies thanks to the use of artificial intelligence when cloud services 
are slow or unresponsive. 


## Our Goal

Huawei Cloud is one of the largest and fastest growing platforms in the world. 
It has a strong presence throughout the world with over 40 availability zones located across 23 geographical regions,
ranging from Germany, France, South/Central America, Hong Kong and Russia to Thailand and South Africa.

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
1. Monitoring and alterting
2. Anomaly detection and Root Cause Analysis
3. Capacity planing and prediction
4. Canarying validation
5. Service Scaling

Our work focuses on points 1) and 2). 


## Next-gen Solutions

Our cloud has planet-scale technical requirements with an 
[microservices](https://en.wikipedia.org/wiki/Microservices) architecture composed of hundreds of services.
They are distributed over thousands of hosts in many geographical regions and operate with an availability 
higher than [five nines](https://en.wikipedia.org/wiki/High_availability). 

Our system monitors Huawei Cloud which is build on top of [OpenStack](https://docs.openstack.org/), an 
opensource cloud operating system. OpenStack controls large pools of compute, storage, and networking
resources throughout tens of datacenters. The base services are predominantly written in Python and Java 
running on Linux. 

In 2017 we adopted AI in the form of [Data Science](https://en.wikipedia.org/wiki/Data_science) and 
[Machine Learning](https://en.wikipedia.org/wiki/Machine_learning) approaches for anomaly detection, 
root-cause analysis, fault prediction, and automated recovery into our suite. 

These techniques, including **statistical learning**, **time-series analysis**, **deep learning**, **big data**,
**streaming**, and **data visualization**, enabled us to develop new production-ready services for troubleshooting 
Huawei Cloud and detect issues which were previously undetectable.

### Anomaly detection
For example, we can autonomously identify anomalous microservices' latencies by dynamically choosing
temporal features, predict memory leaks ahead of time before impacting systems, or finding rare message entries in 
service logs with billions records. We applies all these techniques to real-time data streams.

As another example, although distributed logging is a solved problem and many solutions already exist, 
what still needs to be mastered is the extraction of meaningful and actionable information from massive logs.
While many argue that "the more [data] the merrier", in reality, the more log statements you have, the less
you can find due to noise and non-determinism.

With the success of anomaly detection in 2017-2018, in 2019 we are planning the next phase of our next-gen 
monitoring and troubleshooting suite. 
We will extend anomaly detection by implementing two new detector services for distributed trace and service logs.
All the anomaly detectors contribute with results to a central knowledge repository of metric, trace, and log 
observations, and alarms and relevant external events (e.g., platform upgrades).

### Root-cause analysis
A [semi-supervised machine learning](https://en.wikipedia.org/wiki/Semi-supervised_learning) system will analyze
the repository to automatically identify complex incidents associated with failures and explain the underlying
possible root-cause to SREs and operators. 
This analysis will learn associations between anomalies, alerts and external events which will be formalized as 
rules and stored in a [knowledge-based system](https://en.wikipedia.org/wiki/Knowledge-based_systems). On top, a smart assistant will help operators in making associations and decisions on the relationship 
between alerts and anomalies for [root-cause analysis](https://en.wikipedia.org/wiki/Root_cause_analysis). 

### Auto remediation
Once methods for anomaly detection and root cause analysis are mastered, the next step is to look into auto remediation. The first approach consists in running automated diagnostics scripts (runbooks) to troubleshoot and gain insights of the current state of components, services, or systems to, afterwards, conduct a manual remediation. As knowledge on failure modes is gained, failure patterns are identified and recovery is encoded into automated remediation scripts. Often, only simple failure cases can be handled but this constitute a very good starting point for more complex scenarios. Examples include rebooting a host, restarting a microservice or hung process, free disk space, and remove cached data. As knowledge on running systems accumulates, auto-remediation becomes pervasive to service owners which can define their own recovery actions.

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

## Our skill set

+ AiDevOps: AI/Data Science (Analytics), Software Engineering (Analysis, Design, Development, Testing), Operation (Deployment, Infrastructure)

## Systems from Academia and Industry

+ [Lightstep](https://lightstep.com)
+ [Google StackDriver](https://cloud.google.com/trace/)
+ [Amazon X-Ray](https://aws.amazon.com/xray/)
+ [New Relic](https://newrelic.com/products/application-monitoring)
+ [AppDynamics](https://www.appdynamics.com)
+ [Dynatrace](https://www.dynatrace.com)
+ [Azure Application Insights](https://docs.microsoft.com/en-us/azure/azure-monitor/app/cloudservices)
+ [CA APM](https://www.ca.com/us/products/application-performance-monitoring.html)

## Team and Culture

Several reserchers have contributed to iForesight, namely, llya Shakhat, Paul Staab, Wei Guangsheng, Jinxunmi, Sasho Nedelkoski, Alexander Wieder, Yi Feng, Florian Richter, Francesco del Buono, Phani Pawan, and Ankur Bhatia, among others.

Our culture of innovation and R&D is based on 3 main guiding principles:

+ [DIY](https://en.wikipedia.org/wiki/Do_it_yourself), [KISS](https://pt.wikipedia.org/wiki/Keep_It_Simple),
[Deep Work](https://www.amazon.com/gp/product/1455586692)*

*(Time Spent) x (Intensity of Focus)

