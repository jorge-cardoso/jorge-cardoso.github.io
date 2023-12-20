---
layout: media
permalink: /
title: 
toc: true
ads: false
comments: true
published: true
---


<p><img src="./images/Jorge_Cardoso_2021.png" height="128" width="155" style="float:left;margin:0 20px 0 0;"/></p>

I currently lead the **Ultra-scale AIOps Lab**. I take a dual role of Chief Architect
and Engineer Manager at the 
[Huawei Munich Research Center](http://www.huawei.eu/research-and-innovation) in Munich, Germany and [Huawei Ireland Research Center](https://huawei.eu/what-we-do/digital-transformation) in Dublin, Ireland.

You can find more information about our work:
+ [Cloud Operation R&D](/pdf/2023-05-23-AS_AIOps_for_Cloud_Operations_R&D.pdf), May 23-25 2023, Academic Salon AIOps 2023, TU Berlin.
+ [Research Contributions](/pdf/2022-03-30-DRCN_On_the_Application_of_AI_for_Failure_Management.pdf), March 28-31 2022, [18th DRCN](https://www.drcn2022.upc.edu/65183/detail/drcn-2022.html)
+ [Lab presentation](/pdf/2021-07-29-Ultra_Scale_AIOps_Lab_Workshop.pdf), July 2021, [The 1st Network Verification Workshop](https://networkverification-workshop.github.io/)


Using machine learning and deep learning techniques, we apply AI to various areas related to [HUAWEI CLOUD](https://www.huaweicloud.com/intl/en-us/) such as: anomaly detection, root cause analysis, failure prediction, reliability and availability, risk estimation and security, network verification, and low-latency object tracking. Our work fits under the AI Engineering umbrella as discussed in [IEEE Software, Nov.-Dec. 2022](https://www.computer.org/csdl/magazine/so/2022/06).



Cloud Reliability
-----------------

Our current work involves the development of the **next generation of AI-driven
IT Operations tools and platforms**.
This field is generally called [AIOps](https://pt.slideshare.net/JorgeCardoso4/mastering-aiops-with-deep-learning) 
(artificial intelligence for IT operations).
In planet-scale deployments, the Operation and Maintenance (O&M) of cloud platforms
cannot be done any longer manually or simply with off-the-shelf solutions. 

<img src="./images/Cloud_edge_device.png" height="300" width="600" style="float:right;margin:20px 20px 20px 20px;"/>

It requires self-developed automated systems, ideally exploiting the use of AI to provide tools for autonomous cloud operations. Our work looks into how **deep learning**, **machine learning**, **distributed traces**, **graph analysis**, **time-series analysis** (sequence analysis), and **log analysis** can be used to effectively **detect and localize anomalous cloud infrastructure behaviours** during operations to reduce the workload of human operators. 
These techniques are typically applied to Big Data coming from 
microservice observability data:
+ [A Survey of AIOps Methods for Failure Management](/publications/Papers/JA-2021-025-Survey_AIOps_Methods_for_Failure_Management.pdf), ACM TIST, 2021.

We create innovative systems for:

+ **Service health analysis**: Resource utilization (e.g., memory leaks), anomaly detection using KPI and logs
+ **Predictive analytics**: fault prevention, SW/HW failure prediction  
+ **Automated recovery**: fault localization and recovery
+ **Operational risk analysis**: CLI command analysis

We are currently developing the iForesight system which is being used to
evaluate this new O&M approach. [iForesight 7.0](/projects/iforesight) is 
the result of more than 6 years of R&D with the goal to provide an
intelligent new tool aimed at [SRE](https://en.wikipedia.org/wiki/Site_Reliability_Engineering)
cloud maintenance teams. 
It enables them to quickly detect, localize and predict anomalies thanks 
to the use of artificial intelligence when cloud services are slow or 
unresponsive. 
Many of our innovation and system developments is done in collaboration with the [Technical University of Berlin](https://www.dos.tu-berlin.de/menue/datesnews/news/huawei_tub_innovation_lab_kick_off/) and the Huawei-TUB Innovation Lab for AI-driven Autonomous Operations.


## Observability
Design of **Cloud Monitoring Services** for monitoring and managing the performance,
health, and security of global cloud-based infrastructures using machine learning.
+ [Multi-source Distributed System Data for AI-Powered Analytics](/publications/Papers/CP-2020-093-Multi-source_Distributed_System_Data.pdf), ESOCC 2020, 2020.
+ [Observing and Controlling Performance in Microservices](projects/pdf_img/MSc_thesis_Andre_Bento.pdf)
+ [Towards Occupation Inference in Non-instrumented Services](/publications/Papers/CP-2019-092-IEEE_NCA_Towards-Occupation-Inference-in-Non-instrumented-Services.pdf), NCA, 2019. 
+ [On Black-Box Monitoring Techniques for Multi-Component Services](/publications/Papers/CP-2018-083-On-Black-Box-Monitoring Techniques-for-Multi-Component-Services.pdf), NCA, 2018
+ [Self-Supervised Log Parsing](/publications/Papers/CP-2020-095_ECML_Self_Supervised_Log_Parsing.pdf). ECML-PKDD, 2020. (Rank: A)


## Failure Prevention
Design a global, centralized and scalable **Cloud Log Service** to collect,
analyze, and manage petabytes of logs and event data generated by various
cloud-based and on-premises systems. 
+ [QuLog: Data-Driven Approach for Log Instruction Quality Assessment](/publications/Papers/CP-2022-097_ICPC_QuLog.pdf), IEEE/ACM ICPC, 2022. (Rank: A)


## Failure Prediction
Design systems for failure prediction of HDD, SDD, RAM, and Optical network
transceivers using Machine Learning.
+ [Exploring Error Bits for Memory Failure Prediction](/publications/Papers/CP-2023-103_Exploring Error_Bits_for_Memory_Failure_Prediction.pdf), ACM/IEEE ICCAD, 2023. (Rank: A)
+ HiMFP: Hierarchical Intelligent Memory Failure Prediction. IEEE DSN, 2023. (Rank: A)
+ An Optical Transceiver Reliability. IEEE/ACM CCGrid, 2023. (nominated best paper)
+ [Online Memory Leak Detection in the Cloud-based Infrastructures](/publications/Papers/WP-2020-078-AIOPS2020_Online_Memory_Leak_Detection.pdf), [AIOPS 2020](https://aiopsworkshop.github.io/), 2020.
+ [Managing Large-Scale Edge Cluster Over Unstable Network with KubeEdge](https://www.lfasiallc.com/kubecon-cloudnativecon-open-source-summit-china/program/schedule/), CNCF, 2021.


## Anomaly detection
Build a distributed **Cloud Trace Service** to follow and profile the execution
of public cloud services' requests as they travel across multiple infrastructure
services, components, middleware, and systems in a public and private cloud. 
+ [Anomaly Detection and Classification using Distributed Tracing](/publications/Papers/CP-2019-089-CCGrid-Anomaly_Detection_and_Classification_using_DT_and_DL.pdf), IEEE CCGrid, 2019. (Rank: A)
+ [Anomaly Detection and Classification using Distributed Tracing and Deep Learning](/publications/Papers/CP-2019-089-CCGrid-Anomaly_Detection_and_Classification_using_DT_and_DL.pdf), IEEE/ACM CCGrid, 2019. (Rank: A)
+ [Anomaly Detection from System Tracing Data using Multimodal Deep Learning](/publications/Papers/CP-2019-090-IEEECloud-Anomaly_Detection_from_System_Tracing_Data_and_MDL.pdf), IEEE Cloud, 2019. (Rate: 21%)
+ [Self-Supervised Anomaly Detection from Distributed Traces](/publications/Papers/CP-2020-096_UCC_Self_Supervised_Anomaly_Detection_from_Distributed_Traces.pdf), UCC, 2020
+ [Automated Analysis of Distributed Tracing. Journal of Grid Computing](/publications/Papers/JA-2021-026-Automated_Analysis_of_Distributed_Tracing.pdf), 2021, (IF: 4.67).
+ [Self-Attentive Classification-Based Anomaly Detection in Unstructured Logs](/publications/Papers/CP-2020-094-ICDM_Self_Attentive_Classification_Based_Anomaly_Detection.pdf), ICDM, 2020. (Rank: A*)


## Root-cause Analysis
Cloud Root Cause Analysis (RCA) refers to the process of identifying and 
understanding the underlying causes of issues or incidents that occur in
cloud computing environments.
+ [Efficient Failure Diagnosis of OpenStack](/publications/Papers/JA-2018-023-IEEE_Internet_Computing_Nov_Dec_2018.pdf), IEEE Internet Computing, 2018.


## Recovery
Recovery or mitigation of cloud failures involves the use of automated
processes and tools to identify, respond to, and recover from failures
or issues in a cloud computing environment. 
+ To come



News
----
+ Looking for PhD student to work on LLM for Cloud Operations


Patents
-------

While patents have an increasingly relevant role in innovation, I often find that there is a generalized difficulty in understanding 
what is patentable and, especially, what makes a patent different from a research paper in the field of computer science. 
Thus, I prepared a checklist for computer implemented inventions for those writing their first patent.
+ [Checklist](/patents/patent_check_list.pdf)

For those who would like to read more about the topic, the EPO provides an online e-course:
+ [Patent course](https://e-courses.epo.org/wbts/pi_tour/index.html)

A curiosity about patents. *Did you the paper clip has all the ingredients needed for a patent?* It was patented in 1897
+ [Paper Clip patent](https://patents.google.com/patent/US581901A/en)


Open Positions
--------------

Thanks for your interest in working with our applied research group at the 
[Huawei Munich Research Center](https://huawei.eu/research-and-innovation) or at the 
[University of Coimbra](https://www.uc.pt/en). 

If you are curious about systems, want to be challenged and engage in cutting edge research, propose novel ideas not proposed before, and leave your own mark on the academic world, you are probably a good candidate for a PhD.
While a MSc often involves the application of existing models and techniques, a PhD is almost totally independent and involve the creation of novel knowledge not know before. 

Our group has a special in interested in the following fields:

+ AI applied to cloud operations (AIOps)
+ Planet-scale cloud and edge computing
+ Machine learning, Deep learning, MLOps
+ Microservices, lambda functions, containers, distributed systems


Our group thrives to see the larger picture, be innovative and creative, and drive to make a lasting impact 
on planet-scale distributed system design and software systems. *We can't solve problems by using the same kind of thinking we used when we created them* -- Einstein.

We are always looking forward to work with excellent researchers which:

+ Simplify the complexity of existing technical solutions (KISS principle) 
+ Solve difficult technical problems (DIY principle)
+ Focus on the solution, not the obstacle
+ Translate theory into practice


If you need more information explaining what a PhD/MSc thesis is about, you can browse over the following links:

+ [Writing a Thesis Proposal](https://www.sydney.edu.au/content/dam/students/documents/learning-resources/learning-centre/writing-a-thesis-proposal.pdf), Learning Centre, University of Sydney.
+ [How to write a great research paper](http://research.microsoft.com/en-us/um/people/simonpj/papers/giving-a-talk/writing-a-paper-slides.pdf), by Simon Peyton Jones at Microsoft Research.
+ [Understanding Science 101](http://undsci.berkeley.edu/article/0_0_0/us101contents_01), University of California, Berkeley, US.
+ [Academic Writing and Publishing: A Practical Handbook](https://www.amazon.co.uk/Academic-Writing-Publishing-Practical-Handbook/dp/0415453224), by James Hartley.

We are also open to host academic visitors (students or faculty).


About me
--------

After ~15 years of working for different industrial and academic research organizations (e.g., [SAP Research](http://go.sap.com/), [The Boeing Company](http://www.boeing.com), [CCG/Zentrum fur Graphische Datenverarbeitung](http://www.ccg.pt/en/), KIT, University of Dresden, University of Coimbra), Jorge joined [Huawei Munich Research Center](http://www.huawei.eu/research-and-innovation) as a Chief Architect for Ultra-scale AIOps in April 2015 with the mission of building a new team to develop innovative solutions which explore AI/ML to operate and manage the troubleshooting of [HUAWEI CLOUD](https://www.huaweicloud.com/intl/en-us/).

As a strategist, he leads the vision, technical planning and research innovation roadmaps for applied AI to IT operation and maintenance.
As a chief architect, he designs and implements AI-driven systems and algorithms.
As an engineer manager, he leads 3 teams in the fields of AIOps, Edge AI and AI for Networks. 

Jorge enjoys his current role and is always seeking for new technological challenges and breakthroughs in the fields of cloud computing, artificial intelligence and the Internet of Things.

In 2021, he co-founded the Huawei-TUB Innovation Lab for AI-driven Autonomous Operations.
Jorge has published over 180 scientific publications in top peer-reviewed conferences and journals in the field of AI for IT operations, distributed systems, workflow management and semantic web ([10000+ citations, h-index 45+](https://scholar.google.de/citations?user=n9JFmAkAAAAJ&hl=en)), and holds 10 patents on related fields. 
He serves as an associate editor of IEEE Software since 2014. 
His latest book [Fundamentals of Service Systems](http://www.springer.com/de/book/9783319231945) compiles results from his research work in 2010-2015. 
He created and led until 2009 the development of the [W3C Unified Service Description Language (USDL)](https://github.com/linked-usdl).

He participated in European, German, US, and National research projects financed by the  European Commission (FP7, EACEA), the German Ministry for Education and Research (BMBF), SAP Research (SAP)  and Portuguese NSF (FCT). He is a founding member of the IFIP Working Group 12.7 on Social Semantics. 

He is also Professor at the [University of Coimbra](https://www.uc.pt/en/fctuc/dei), and
affiliated to the Information Systems Group.
He has interests in the fields of Cloud Computing, AI, SRE, BPM, Semantic Web, Web Services, and Enterprise Systems (see [Google Scholar](https://scholar.google.de/citations?user=n9JFmAkAAAAJ&hl=en&oi=ao), [DBLP](http://dblp.uni-trier.de/pers/hd/c/Cardoso:Jorge), and [LinkedIn](https://www.linkedin.com/in/jorge-cardoso-75ba40/))

Jorge received his Ph.D. in Computer Science from the [University of Georgia](https://www.uga.edu), USA, and B.S. and M.S. degrees with top honors in Informatics Engineering from the [University of 
Coimbra](https://www.uc.pt/en/fctuc/dei), Portugal.



### Random info

I discovered by a random chance my passion in programming and computing when I was 14. My first computer was a [Timex Computer 2068](https://en.wikipedia.org/wiki/Timex_Sinclair_2068) and [BASIC](https://en.wikipedia.org/wiki/BASIC) was the first language I learned.

Our lab's culture of innovation and R&D is based on 5 main guiding principles:

+ [DIY](https://en.wikipedia.org/wiki/Do_it_yourself),
[KISS](https://en.wikipedia.org/wiki/KISS_principle),
[Deep Work](https://www.amazon.com/gp/product/1455586692)*, 
[KPI-driven Research](https://en.wikipedia.org/wiki/Performance_indicator), 
[Humorful](https://www.forbes.com/sites/jacquelynsmith/2013/05/03/10-reasons-why-humor-is-a-key-to-success-at-work/) 
+ (*) Time Spent x Intensity of Focus
  
> A good researcher says, "Lets find out", others say "Nobody knows". When a good researcher makes a mistake, he says, I was  wrong", others say "It wasn't my fault". A good researcher works harder than others and has more time. Others are always "too busy" to do what is necessary. [Unknown source]

### Contact

+ Prof. Jorge Cardoso
+ [Huawei Munich Research Center](https://huawei.eu/research-and-innovation), Germany
+ [Departamento de Engenharia Informatica](http://www.uc.pt/en/fctuc/dei), University of Coimbra, Portugal
+ `jcardoso [*.A._.T$] dei | uc | pt`
