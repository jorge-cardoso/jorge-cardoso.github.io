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
<a href="http://jorge-cardoso.github.io/research/iforesight3.png">
<img src="http://jorge-cardoso.github.io/research/iforesight3.png" height="25%" width="25%" style="float:left;margin:0 20px 0 0;"/>
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

The mission of the **Intelligent Cloud Operations** SRE team (based in [Munich](https://www.muenchen.de/int/en.html), Germany) is to develop new systems and tools to analyze observability data from [Huawei Cloud](https://www.huaweicloud.com/en-us/about/about_us.html)
to detect impact to customers, identify the root cause within seconds, and fix the problem using 
the 1/5/10 rule (detection: 1 min, RCA: 5 min, recovery: 10 min).

The following figure from [Gartner]() provide a high level architecture of the system we are building highliting the main areas of concern: 
+ Real-time streaming and historical data, observations, Big Data, Machine Learning, Anomaly Detection, Performance Analysis, and Automation. 
<p>
<img src="https://blogs.bmc.com/wp-content/uploads/2019/02/AIOpsGraphicGartner2018-768x408.png" height="408" width="768" style="float:center;margin:0 20px 0 0;"/>
</p>


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

These techniques, including **statistics**, **time-series analysis**, **deep learning**, **big data**,
**streaming**, and **data visualization**, enabled us to develop new production-ready services for troubleshooting 
Huawei Cloud and detect issues which were previously undetectable.

For example, we can autonomously identify anomalous microservices' latencies by dynamically choosing
temporal features, predict memory leaks ahead of time before impacting systems, or finding rare message entries in 
service logs with billions records. We applies all these techniques to real-time data streams.

With the success of anomaly detection in 2017-2018, in 2019 we are planning the next phase of our next-gen 
monitoring and troubleshooting suite. 
We will extend anomaly detection by implementing two new detector services for distributed trace and service logs.
All the anomaly detectors contribute with results to a central knowledge repository of metric, trace, and log 
observations, and alarms and relevant external events (e.g., platform upgrades).

A [semi-supervised machine learning](https://en.wikipedia.org/wiki/Semi-supervised_learning) system will analyze
the repository to automatically identify complex incidents associated with failures and explain the underlying
possible root-cause to SREs and operators. 
This analysis will learn associations between anomalies, alerts and external events which will be formalized as 
rules and stored in a [knowledge-based system](https://en.wikipedia.org/wiki/Knowledge-based_systems).
On top, a smart assistant will help operators in making associations and decisions on the relationship 
between alerts and anomalies for [root-cause analysis](https://en.wikipedia.org/wiki/Root_cause_analysis). 

In the future, this knowledge will be associated with recovery actions and managed by a
**recovery system**


## Tech Stack

iForesight is build using the following software stack and applications. 

+ Backend: Microservices, Docker, 
+ Frontend: Grafana, Jupyter, Node.js
+ AI: Tensorflow, Keras, PyTorch, Pandas/NumPy, Scikit-learn, Huawei Model Arts
+ Language: Python

In 2019, we will closely following the progresses make in the following 5 fields to extend our stack and suite:

+ [AIOps](https://blog.appdynamics.com/aiops/what-is-aiops/),
[Service Mesh](https://www.nginx.com/blog/what-is-a-service-mesh/),
[Distributed Tracing](https://opentracing.io/docs/overview/what-is-tracing/),
[SRE](https://landing.google.com/sre/),
[RPA](https://en.wikipedia.org/wiki/Robotic_process_automation)


## Culture

Our culture of innovation and R&D is based on 3 main guiding principles:

+ [DIY](https://en.wikipedia.org/wiki/Do_it_yourself), [KISS](https://pt.wikipedia.org/wiki/Keep_It_Simple),
[FOCUS](https://www.amazon.com/gp/product/1455586692)*

*High-quality work produced = (Time Spent) x (Intensity of Focus)
