---
layout: article
title: "Software Systems"
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


AI Infrastructure
-----------------

AI cluster management involves orchestrating large-scale computing resources to efficiently train and deploy AI models, particularly large language models (LLMs) like LLaMA, Grok, Mistral, and other transformer-based architectures. 
We are currently working in three main areas:

<img src="/images/Sebastian_Kirsch.png" width="350" style="float:right;margin:20px 20px 20px 20px;">
<img src="/images/Huawei-Logo.png" width="50" style="font-size: 0.75em; margin-right: 20px;">
  
- **Performance analysis** focuses on optimizing computation graphs, memory usage, and parallelization strategies, such as tensor and pipeline parallelism, to maximize efficiency using profiling tools (e.g., NVIDIA Nsight Systems and Nsight Compute), monitoring, and observability (e.g., NVIDIA DCGM).
- **Optimization** looks at efficient inter-GPU and inter-node communication strategies, such as NVLink, RDMA, and high-bandwidth networking to minimize bottlenecks in distributed training.
- **Benchmarking** frameworks, such as MLPerf, TPCx-AI, and DAWNBench play a crucial role in evaluating the performance of these models across different hardware configurations, measuring throughput, latency, and power efficiency under various workloads. 
- **Reliability** ensures fault tolerance and automated recovery mechanisms to maintain high availability in AI clusters. By using system design patterns, load balancing, checkpointing, and failure management, downtime can be minimized.

Key challenges include optimizing resource utilization, scaling communication strategies, establishing standardized benchmarks, and enhancing fault tolerance with proactive anomaly detection and self-healing mechanisms for more efficient, scalable, and resilient AI clusters.

<div style="margin-top: 0px; margin-bottom: 25px; display: flex; align-items: flex-end;">
  <img src="/images/nvidia-logo-horz.png" width="175" style="font-size: 0.75em; margin-right: 20px;">
</div>


ML for Systems
----------------

<img src="/images/iforesight3.png" height="25%" width="25%" style="float:right;margin:0 20px 0 0;"/>

For hyperscalers, such as Huawei Cloud, the Operation and Maintenance (O&M) of cloud infrastructures and platforms
cannot be done any longer manually or simply with off-the-shelf solutions. 
It requires self-developed automated systems, ideally exploiting the use of AI to provide tools for
autonomous cloud operations.

HC, or Huawei Cloud, has a [microservices](https://en.wikipedia.org/wiki/Microservices) architecture composed of hundreds of services.
They are distributed over thousands of hosts in many geographical regions and operate with an availability 
higher than [five nines](https://en.wikipedia.org/wiki/High_availability). 
Huawei Cloud is one of the largest and fastest growing platforms in the world. 
It has a strong presence throughout the world with over 40 availability zones located across 23 geographical regions, ranging from Germany, France, South/Central America, Hong Kong and Russia to Thailand and South Africa.

The objective of the **AIOps / Reliability Team** (based in [Munich](https://www.muenchen.de/int/en.html),  Germany) was to develop 
new systems and tools to analyze observability data from [Huawei Cloud](https://www.huaweicloud.com/en-us/about/about_us.html) to detect problems 
which impact customers, identify the root cause within seconds, and fix failures using the 1/5/10 rule 
(detection: 1 min, RCA: 5 min, recovery: 10 min).
We generally build tools for [anomaly detection](https://en.wikipedia.org/wiki/Anomaly_detection), 
[root-cause analysis](https://en.wikipedia.org/wiki/Root_cause_analysis), 
[performance analysis](https://en.wikipedia.org/wiki/Application_performance_management), 
[predictive maintenance](https://en.wikipedia.org/wiki/Predictive_maintenance), 
[security operations](https://en.wikipedia.org/wiki/Security_operations_center),
and 
[operations automation](https://en.wikipedia.org/wiki/Robotic_process_automation) for Cloud and intelligent management (1):

- [Security Operations](/aiops/2023-04-12-Security_Operations_Lecture.pdf): SecOps integrates monitoring, tools, processes, and technology to keep IT secure while reducing risk.
- [Intelligent Log Analysis](/aiops/2020-02-22-Intelligent_Log_Analysis_lecture.pdf): Explore the use of structured logging to facilitate the application of AI/ML methods for Root-cause analysis
- [Hypervisor Reliability](/aiops/2023-12-20_Hypervisor_Anomaly_Detection_Lecture.pdf): Identifying health issues of hypervisors correlated with latent failures. 

From 2015 to 2024, we used AI from the fields of [Data Science](https://en.wikipedia.org/wiki/Data_science),
[Machine Learning](https://en.wikipedia.org/wiki/Machine_learning), and
[Deep Learning](https://en.wikipedia.org/wiki/Deep_learning), including **statistical learning**, **time-series analysis**, **deep learning**, **big data**,
**streaming**, and **data visualization**, enabled us to develop new production-ready services for troubleshooting 
Huawei Cloud and detect issues which were previously undetectable.


<div style="margin-top: 15px; margin-bottom: 25px; display: flex; align-items: flex-end;">
  <img src="/images/Huawei-Logo.png" width="50" style="font-size: 0.75em; margin-right: 20px;">
  <p style="font-size: 0.75em;"> (1) Technical University of Berlin (TUB) </p>
</div>

 

AI for Operations
-----------------

We developed several cutting-edge tools and solutions focused on failure prediction, failure prevention, and anomaly detection 
to enhance the operation of cloud infrastructures. 
By leveraging advanced machine learning algorithms and data analytics, we enabled
HUAWEI CLOUD operators to anticipate potential issues, optimize system performance, and ensure the reliability and resilience 
of the cloud infrastructure.

**Observability:**
We enhanced HUAWEI CLOUD **Cloud Monitoring Service** used to monitor and manage the performance,
health, and security of global cloud infrastructures using machine learning.
+ [Multi-source Distributed System Data for AI-Powered Analytics](/rd/Papers/CP-2020-093-Multi-source_Distributed_System_Data.pdf), ESOCC 2020, 2020.
+ [Observing and Controlling Performance in Microservices](pdf_img/MSc_thesis_Andre_Bento.pdf)
+ [Towards Occupation Inference in Non-instrumented Services](/rd/Papers/CP-2019-092-IEEE_NCA_Towards-Occupation-Inference-in-Non-instrumented-Services.pdf), NCA, 2019. 
+ [On Black-Box Monitoring Techniques for Multi-Component Services](/rd/Papers/CP-2018-083-On-Black-Box-Monitoring Techniques-for-Multi-Component-Services.pdf), NCA, 2018
+ [Self-Supervised Log Parsing](/rd/Papers/CP-2020-095_ECML_Self_Supervised_Log_Parsing.pdf). ECML-PKDD, 2020. (Rank: A)

**Failure Prevention:**
We enhanced the global, decentralized, and scalable HUAWEI CLOUD **Cloud Log Service** to collect,
analyze, and manage petabytes of logs and event data generated by the cloud infrastructure and on-premises systems. 
+ [QuLog: Data-Driven Approach for Log Instruction Quality Assessment](/rd/Papers/CP-2022-097_ICPC_QuLog.pdf), IEEE/ACM ICPC, 2022. (Rank: A)

**Failure Prediction:**
We developed new systems for HUAWEI CLOUD datacenters to predict the failure of HDD, SDD, RAM, and Optical network
transceivers using Machine Learning.
+ [Exploring Error Bits for Memory Failure Prediction](/rd/Papers/CP-2023-103_Exploring Error_Bits_for_Memory_Failure_Prediction.pdf), ACM/IEEE ICCAD, 2023. (Rank: A)
+ HiMFP: Hierarchical Intelligent Memory Failure Prediction. IEEE DSN, 2023. (Rank: A)
+ An Optical Transceiver Reliability. IEEE/ACM CCGrid, 2023. (nominated best paper)
+ [Online Memory Leak Detection in the Cloud-based Infrastructures](/rd/Papers/WP-2020-078-AIOPS2020_Online_Memory_Leak_Detection.pdf), [AIOPS 2020](https://aiopsworkshop.github.io/), 2020.
+ [Managing Large-Scale Edge Cluster Over Unstable Network with KubeEdge](https://www.lfasiallc.com/kubecon-cloudnativecon-open-source-summit-china/program/schedule/), CNCF, 2021.

**Anomaly detection:**
We build a distributed **Cloud Trace Service** for HUAWEI CLOUD to follow and profile the execution
of public cloud services' requests as they travel across multiple infrastructure
services, components, middleware, and systems in a public and private cloud. 
+ [Anomaly Detection and Classification using Distributed Tracing](/rd/Papers/CP-2019-089-CCGrid-Anomaly_Detection_and_Classification_using_DT_and_DL.pdf), IEEE CCGrid, 2019. (Rank: A)
+ [Anomaly Detection and Classification using Distributed Tracing and Deep Learning](/rd/Papers/CP-2019-089-CCGrid-Anomaly_Detection_and_Classification_using_DT_and_DL.pdf), IEEE/ACM CCGrid, 2019. (Rank: A)
+ [Anomaly Detection from System Tracing Data using Multimodal Deep Learning](/rd/Papers/CP-2019-090-IEEECloud-Anomaly_Detection_from_System_Tracing_Data_and_MDL.pdf), IEEE Cloud, 2019. (Rate: 21%)
+ [Self-Supervised Anomaly Detection from Distributed Traces](/rd/Papers/CP-2020-096_UCC_Self_Supervised_Anomaly_Detection_from_Distributed_Traces.pdf), UCC, 2020
+ [Automated Analysis of Distributed Tracing. Journal of Grid Computing](/rd/Papers/JA-2021-026-Automated_Analysis_of_Distributed_Tracing.pdf), 2021, (IF: 4.67).
+ [Self-Attentive Classification-Based Anomaly Detection in Unstructured Logs](/rd/Papers/CP-2020-094-ICDM_Self_Attentive_Classification_Based_Anomaly_Detection.pdf), ICDM, 2020. (Rank: A*)




Cloud Reliability
-----------------

From 2015 to 2020, we worked on improving the [Reliability and Resilience](http://www.slideshare.net/JorgeCardoso4/cloud-resilience-with-open-stack) of Huawei Cloud (HC) and 
Open Telekom Cloud (OTC), since in early days HC had a strong dependence on [OpenStack](https://docs.openstack.org/).  

<img align="right" src="/images/OTC.png" width="350">

We developed several new tools and systems based on: 

- [Fault-injection technologies](https://en.wikipedia.org/wiki/Fault_injection) to demonstrate that systems are robustness by injecting faults to damage internal components to test its fault tolerance.
- Distributed Tracing ([So, you want to trace your distributed system? Key design insights from years of practical experience](http://www.pdl.cmu.edu/PDL-FTP/SelfStar/CMU-PDL-14-102.pdf) provides a very good overview of tracing systems)
- Root-cause Analysis ([Efficient Failure Diagnosis of OpenStack](/rd/Papers/JA-2018-023-IEEE_Internet_Computing_Nov_Dec_2018.pdf), IEEE Internet Computing, 2018.)


<div style="margin-bottom: 15px;"></div>
The following presentations/lectures (1,2)  provide an overview of our work on OpenStack and distributed tracing. 

- [Introduction](/systems/openstack/Part_1_Introduction.pdf): Hyperscalers, cloud monitoring, AI and O&M, monitoring formats, ML for O&M. 
- [OpenStack Cloud OS](/systems/openstack/Part_2_OpenStack_Cloud.pdf): Virtualization, public clouds, openstack system design, openstack services (IMS, compute, nova, scheduler, network, storage).  
- [OpenStack Hands-on](/systems/openstack/Part_3_Openstack_Hands-on.pdf): Setup infrastructure, install Openstack, CLI, launch instances, attach volumes, create networks, distributed tracing.
- [Distributed Tracing Technologies](/systems/openstack/Part_4_Distributed_Tracing_Technologies.pdf): Workflow for VM creation, tracing concetps, tracing systems, Zipkin, Jaeger, OpenTracing, OSProfiler.  
- [Distributed Trace Analysis](/systems/openstack/Part_5_Distributed_Trace_Analysis.pdf): Monitoring data sources, troubleshooting with tracing, feature selection, trace abstraction, time series analysis, sequence analysis. LSTM.  
- [Distributed Trace Analysis (Hands-on)](/systems/openstack/Part_6_Distributed_Trace_Analysis_Hands_on.ipynb): Jupyter notebook with running code for dsitributed trace analysis for Openstack.
- [Cloud Benchmarking](/systems/openstack/Part_8_Cloud_Benchmarking.pdf): Benchmarking public cloud platforms, ECS and RDS benchmarking.   
- [Cloud Computing](/systems/aiops/cloud_computing): Overview, concept, web APIs, platforms, applications, and BPM  

<div style="margin-bottom: 15px;"></div>

<img align="left" src="/images/T-Systems_Logo.png" width="180" style="margin-right: 20px;">
<img align="left" src="/images/Deutsche_Telekom-Logo.png" width="110" style="margin-right: 20px;">
<p style="font-size: 0.75em;"> (1) Technical University of Berlin (TUB), (2) Technical University of Munich (TUM)  </p>
 



Service Systems
---------------

<a href="https://github.com/linked-usdl">
<img align="right" src="/images/Logo-LSS-USDL.png" width="250" style="left;margin-top: 20px;"/>
</a>

Our contributions on service systems placed emphasis on three fields: service description languages (with the **USDL** family),
service system modeling (with the **LSS USDL language**), service analytics (using **process mining**), and 
service networks (using principals from **social networks**).

[//]: # (<iframe width="300" height="100" src="http://player.vimeo.com/video/21894921" alt="The video is not available. Please use another browser or change your configuration." frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen alt="You browser does not supports video frames">)

[//]: # (</iframe>)

[//]: # ()
[//]: # (The video above explains the goal of USDL &#40;please note that since then, XML has been replaced by RDFS&#41;)

- **Service Analytics**. 
We analyse large logs from IT service provisioning (e.g., application logs, transactions, ITIL) to find 
behaviour patterns.

- **Service Descriptions**. 
We developed the Linked USDL language (Unified Service Description Language) to describe services
using computer-understandable specifications, formal ontologies (RDFS), and AI for inference. 

- **Service Systems**.
We developed the Linked Service System model for the Unified Service Description Language (LSS-USDL) 
using lightweight semantic models to capture service systems.

We also explored the concept of **service networks**.
The observation that the power of service-based economies is no longer restricted to individual
organizations, but spans across networks, was the main driver for conducting service network research.
 

[//]: # (<a href="https://github.com/linked-usdl">)

[//]: # (<img align="right" src="/images/Logo-linked-usdl.png" width="65" style="left;margin:0px 10px 0px 10px;"/>)

[//]: # (</a>)


+ Linked USDL Privacy: Describing Privacy Policies for Service, IEEE ICWS (Rank: A), 2018. 
+ Modeling Service Level Agreements with Linked USDL Agreement, IEEE TSC (IF: 3.049), 2017.
+ [Linked USDL Agreement: Effectively Sharing Semantic Service Level Agreements on the Web](/rd/Papers/CP-2015-079-Linked-USDL-Agreement.pdf), IEEE ICWS, (Acceptance Rate: 17.4%), 2015. 
+ [A framework for next generation e-health systems and services](/rd/Papers/CP-2015-080-Framework-e-health-systems.pdf) AMCIS, (Rank: A), 2015. 
+ [Cloud Computing Automation: Integrating USDL and TOSCA](/rd/Papers/CP-2013-068-CAISE-USDL-and-TOSCA.pdf). CAiSE (Rank: A), 2013. 
+ [Service Systems
Concepts, Modeling, and Programming](http://www.springer.com/computer/database+management+%26+information+retrieval/book/978-3-319-10812-4). Springer 2014. 

See <a href="https://github.com/jorge-cardoso/lss-usdl">Github LSS-USDL</a>,
<a href="https://github.com/linked-usdl">Github Linked-USDL</a> 



We also explored the concept of Process Analytics.
Our intentions are twofold. On the one hand, we think it is fundamental to survey findings from neighboring disciplines on how Business Process Quality Metrics can be developed. In particular, we believe that we can gather additional insights from software engineering, cognitive science, and graph theory and relate them to business process modeling.
A further empirical investigation might ultimately lead to establishing a complexity theory of business process models. On the other hand, we plan to demonstrate that these metrics serves their purpose, we plan to carry out several empirical validations by means of controlled experiments.

<div style="margin-bottom: 15px;"></div>
<img align="left" src="/images/SAP_2011_logo.png" width="70" style="margin-right: 20px;">
<br> 


<!-- 
Semantic DNS
----------------------

<img align="right" src="/images/sds.gif" width="75" style="center;margin:20px 20px 20px 20px;">

Enterprises have the need to communicate. In business to business applications, usually XML is used to automatically  exchange information. But sometimes more semantics is needed. Enterprises  also need to share concepts, terms,  definitions and relationships (between concepts) relevant to their business activities.

Why are developing the Semantic Domain System which is a systems that follows similar concepts from the DNS.
The Domain Name System or DNS, is a service where relationships between IP addresses and physical domains are stored.
When you request your browser, email client, ftp client or any other application to search for a specific domain,
it automatically calls the DNS Server and finds the IP for the machine that offers the required service. It enables the use of names instead of IP addresses. Each company is responsible for maintaining their own IP addresses.

In SDS, like in DNS, each company is responsible for managing their own concepts and is able to browse other companies'
concept definitions. The system will allow a clear representation of concepts and relationships between concepts.


Enterprise Integration
------------------------

<img align="right" src="/images/b2biss_vertical_small.png" width="75" style="center;margin:20px 20px 20px 20px;">

**Semantic B2B Integration**.
B2B integration, also known as external IS integration and e-business integration, has promised to automate and
integrate business processes and interactions between companies by considerably renovating the way business was
conducted with partners, suppliers, and customers. B2B integration is fundamentally about data and information
exchange among businesses and their information systems. The ability to interact and exchange information both
internally and with external organizations (partners, suppliers, customers) is a fundamental issue in the enterprise sector.

One simple solution that organizations have adopted to reach a higher level of integration relied on the use of XML as the language to represent data. XML has become a de facto standard of B2B because of its simplicity, extensibility and ease of processing. Today its estimated that most organizations use XML to store and transfer data. This is the reason why we created B2BISS (Business-to-Business Integration using Syntactic-to-Semantic Mapping).


<img align="right" src="/images/JXML2OWL.gif" width="100" style="center;margin:15px 0px 0px 0px;">

**Model Transformation**.
Today's enterprises face critical needs in integrating disparate information spread over several data sources inside and even outside the organization. Semantic web technologies, such as ontologies, play an important role in the semantic integration of data. The purpose of JXMLOWL is to present a framework to assist the semantic data integration process.
The framework supports mappings and instances transformation from syntactic data sources in XML format to a common global model defined by an ontology using semantic web related technologies such as OWL.
 -->


<!-- 
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
-->

