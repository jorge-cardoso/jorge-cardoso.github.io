---
layout: article
title: "Projects"
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

ML for Systems
----------------

For hyperscalers, such as Huawei Cloud, the Operation and Maintenance (O&M) of cloud infrastructures and platforms
cannot be done any longer manually or simply with off-the-shelf solutions. 
It requires self-developed automated systems, ideally exploiting the use of AI to provide tools for
autonomous cloud operations.

HC, or Huawei Cloud, has a [microservices](https://en.wikipedia.org/wiki/Microservices) architecture composed of hundreds of services.
They are distributed over thousands of hosts in many geographical regions and operate with an availability 
higher than [five nines](https://en.wikipedia.org/wiki/High_availability). 
Huawei Cloud is one of the largest and fastest growing platforms in the world. 
It has a strong presence throughout the world with over 40 availability zones located across 23 geographical regions, ranging from Germany, France, South/Central America, Hong Kong and Russia to Thailand and South Africa.

<a href="./pdf_img/iforesight3.png">
<img src="./pdf_img/iforesight3.png" height="25%" width="25%" style="float:right;margin:0 20px 0 0;"/>
</a>

The mission of the **AIOps / Reliability Team** (based in [Munich](https://www.muenchen.de/int/en.html),  Germany) was to develop 
new systems and tools to analyze observability data from [Huawei Cloud](https://www.huaweicloud.com/en-us/about/about_us.html) to detect problems 
which impact customers, identify the root cause within seconds, and fix failures using the 1/5/10 rule 
(detection: 1 min, RCA: 5 min, recovery: 10 min).
We generally build tools for [anomaly detection](https://en.wikipedia.org/wiki/Anomaly_detection), 
[root-cause analysis](https://en.wikipedia.org/wiki/Root_cause_analysis), 
[performance analysis](https://en.wikipedia.org/wiki/Application_performance_management), 
[predictive maintenance](https://en.wikipedia.org/wiki/Predictive_maintenance), 
[security operations](https://en.wikipedia.org/wiki/Security_operations_center),
and 
[operations automation](https://en.wikipedia.org/wiki/Robotic_process_automation). 

From 2015 to 2024, we used AI from the fields of [Data Science](https://en.wikipedia.org/wiki/Data_science),
[Machine Learning](https://en.wikipedia.org/wiki/Machine_learning), and
[Deep Learning](https://en.wikipedia.org/wiki/Deep_learning), including **statistical learning**, **time-series analysis**, **deep learning**, **big data**,
**streaming**, and **data visualization**, enabled us to develop new production-ready services for troubleshooting 
Huawei Cloud and detect issues which were previously undetectable.



Cloud Reliability
-----------------

It was build on top of [OpenStack](https://docs.openstack.org/), an opensource cloud operating system.
OpenStack controls large pools of compute, storage, and networking resources throughout tens of datacenters. 
The base services are predominantly written in Python and Java, and run on Linux. 


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
+ José María García, Carlos Pedrinaci, Manuel Resinas, Jorge Cardoso, Pablo Fernández, Antonio Ruiz-Cortés. [Linked USDL Agreement: Effectively Sharing Semantic Service Level Agreements on the Web](/publications/Papers/CP-2015-079-Linked-USDL-Agreement.pdf), The IEEE International Conference on Web Services (ICWS), June 27 - July 2, 2015, New York, USA. **(Acceptance Rate: 17.4%)**
+ Jorge Cardoso and Carlos Pedrinaci, [Evolution and Overview of Linked USDL](/publications/Papers/CP-2015-077-Linked-USDL-Evolution-and-Overview.pdf). 6th International Conference Exploring Services Science, IESS 2015, Porto, Portugal, February 4-6, 2015, LNBIP, Vol. 201, Novoa, Henriqueta, Dragoicea, Monica (Eds.), 2015.
+ Cardoso, J., R Mans, PR da Cunha, W van der Aalst, H Berthold, [A framework for next generation e-health systems and services](/publications/Papers/CP-2015-080-Framework-e-health-systems.pdf) Proc. Amer. Conf. Inf. Syst. (AMCIS), pp. 1-11. 2015.  **(Conference Rank: A)**
+ Pedrinaci, C.; Cardoso, J. and Leidig, T. [Linked USDL: A Vocabulary for Web-scale Service Trading](/publications/Papers/CP-2014-073-ESWC-Linked-USDL.pdf). In 11th Extended Semantic Web Conference (ESWC), Crete, Greece, 2014. (Acceptance Rate: 25%)
+ Cardoso, J.; Binz, T.; Breitenbucher, Uwe; Kopp, O. and Leymann, F. [Cloud Computing Automation: Integrating USDL and TOSCA](/publications/Papers/CP-2013-068-CAISE-USDL-and-TOSCA.pdf). In 25th Conference on Advanced Information Systems Engineering (CAiSE  2013), pages 1-16, Springer, LNCS, Vol. 7908, 2013. **(Conference Rank: A; Acceptance rate: 16,6%)**
+ Jorge Cardoso, Ricardo Lopes, and Geert Poels. [Conceptual Frameworks](/publications/Papers/CH-2014-Service-Systems-Conceptual-Frameworks.pdf), in Service Systems: Concepts, Modeling, and Programming, Springer, 2014.
+ Jorge Cardoso, Ricardo Lopes, and Geert Poels. [The LSS-USDL Model](/publications/Papers/CH-2014-Service-Systems-The-LSS-USDL-Model.pdf), in Service Systems: Concepts, Modeling, and Programming, Springer, 2014.



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


Other projects
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

