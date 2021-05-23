---
layout: media
permalink: /
title: 
toc: true
ads: false
comments: true
published: true
---


<p><img src="./images/Jorge_Cardoso.png" height="128" width="155" style="float:left;margin:0 20px 0 0;"/></p>

I currently lead the **Ultra-scale AIOps Lab** and I take dual role of Chief Architect and Engineer Manager at the 
[Huawei Munich Research Center](http://www.huawei.eu/research-and-innovation) in Munich, Germany and [Huawei Ireland Research Center](https://huawei.eu/what-we-do/digital-transformation) in Dublin, Ireland.

Today, using machine learning and deep learning techniques, we apply AI to various area of [HUAWEI CLOUD](https://www.huaweicloud.com/intl/en-us/) datacenters such as: anomaly detection, root cause analysis, failure prediction, reliability and availability, risk estimation and security, network verification, and low-latency object tracking.
The areas are explored in three fields:

+ **Ultra-scale AIOps**. We apply analytics and machine learning (ML) techniques to automate IT operations and maintenance. We collect operational data from IT infrastructures, leverage big data and AI platforms to automatically detect and predict failures in datacenters and cloud platforms in real-time. <img src="./images/Cloud_edge_device.png" height="300" width="600" style="float:right;margin:20px 20px 20px 20px;"/>

+ **Edge AI**. We bring ML algorithms, computation and data storage closer to the devices where data is generated. This local computation allows to process data with devices with a very low latency. Examples of use cases include video surveillance and  health monitoring. 

+ **AI for Networks**. We leverage ML to automate routine tasks, such as verification, configuration, optimization and troubleshooting. The new algorithms and tools developed enable network operators and architects with key network insights and actionable information.  

We are also exploring the area of **AI for DevOps** to determine how AI can be leveraged to improve configuration management, continuous verification, service management, scalability analysis, etc. For example, we have developed a intelligent continuous verification tool to ensure software errors are not transferred to production. If a release verification fails, it is automatically kept out of production by doing a rollback. The tool determines whether or not a release can be pushed to production and requires little-to-no human intervention. In this field we have some preliminary work on process mining (e.g., Assessing Software Development Teams Efficiency using Process Mining, [International Conference on Process Mining](https://icpmconference.org), 2019, Germany)


**TUB Innovation Lab**
objectives from the Charter


Ultra-scale AIOps
-----------------

Our current research involves the development of the **next generation of AI-driven IT Operations tools and platforms**.
This field in nowadays generally called [AIOps](https://pt.slideshare.net/JorgeCardoso4/mastering-aiops-with-deep-learning) 
(artificial intelligence for IT operations).
In planet-scale deployments, the Operation and Maintenance (O&M) of cloud platforms cannot be done any longer manually
or simply with off-the-shelf solutions. 
It requires self-developed automated systems, ideally exploiting the use of AI to provide tools for autonomous cloud operations. My research looks into how **deep learning**, **machine learning learning**, **distributed traces**, **graph analysis**, **time-series analysis** (sequence analysis), and **log analysis** can be used to effectively **detect and localize anomalous cloud infrastructure behaviors** during operations to reduce the workload of human operators. 
These techniques are typically applied to Big Data coming from 
microservice [observability data](https://www.mstakx.com/wp-content/uploads/2018/09/A-Practical-Observability-Primer-1.pdf).

They are applied to create new and innovative systems for:

+ AI-driven Cloud Operations
+ Fault prevention, prediction, detection, localization, and recovery.  
+ Planet-scale monitoring of distributed systems
+ Applied machine learning for predictive software maintenance
+ Natural Language Processing for systems’ behaviour analysis.

We are currently developing the iForesight system which is being used to evaluate this new O&M approach. 
[iForesight 3.0](/projects/iforesight) is the result of more than 2 years of research with
the goal to provide an intelligent new tool aimed at [SRE](https://en.wikipedia.org/wiki/Site_Reliability_Engineering)
cloud maintenance teams. 
It enables them to quickly detect, localize and predict anomalies thanks to the use of artificial intelligence when
cloud services are slow or unresponsive. 

We have already published several papers in this field: 

+ [Self-Attentive Classification-Based Anomaly Detection in Unstructured Logs](/publications/Papers/CP-2020-094-ICDM_Self_Attentive_Classification_Based_Anomaly_Detection.pdf)
Nedelkoski, S.; Bogatinovski, J.; Acker, A.; Cardoso, J. and Kao, O.
In 20th IEEE International Conference on Data Mining (ICDM), Italy, 2020.
**(Conference Rank: A+)**
+ [Self-Supervised Log Parsing](/publications/Papers/CP-2020-095_ECML_Self_Supervised_Log_Parsing.pdf)
Nedelkoski, S.; Bogatinovski, J.; Acker, A.; Cardoso, J. and Kao, O.
In European Conf. on Machine Learning and Principles and Practice of Knowledge Discovery in Databases (ECML-PKDD), Belgium, 2020.
**(Conference Rank: A)**
+ [Anomaly Detection and Classification using Distributed Tracing and Deep Learning](/publications/Papers/CP-2019-089-CCGrid-Anomaly_Detection_and_Classification_using_DT_and_DL.pdf)
Nedelkoski, S.; Cardoso, J. and Kao, O.
In 19th IEEE/ACM International Symposium on Cluster, Cloud and Grid Computing ([CCGrid2019](https://www.ccgrid2019.org)), Cyprus, 2019.
**(Conference Rank: A)**
+ [Anomaly Detection from Systegridm Tracing Data using Multimodal Deep Learning](/publications/Papers/CP-2019-090-IEEECloud-Anomaly_Detection_from_System_Tracing_Data_and_MDL.pdf)
Nedelkoski, S.; Cardoso, J. and Kao, O.
[IEEE Cloud 2019](http://conferences.computer.org/cloud/2019/), Italy, 2019.
**(Acceptance Rate: 21%)**
+ [A Systematic Mapping Study in AIOps](/publications/Papers/WP-2020-079-AIOPS2020_A_Systematic_Mapping_Study_in_AIOps.pdf)
Notaro, P.; Cardoso, J. and Gerndt, M.
In [AIOPS 2020](https://aiopsworkshop.github.io/), International Workshop on Artificial Intelligence for IT Operations,
Dubai, 2020.
+ [Online Memory Leak Detection in the Cloud-based Infrastructures](/publications/Papers/WP-2020-078-AIOPS2020_Online_Memory_Leak_Detection.pdf)
Jindal, A.; Staab, P.; Cardoso, J.; Gerndt, M. and Podolskiy, V.
In [AIOPS 2020](https://aiopsworkshop.github.io/), International Workshop on Artificial Intelligence for IT Operations,
Dubai, 2020.
+ [Multi-source Distributed System Data for AI-Powered Analytics](/publications/Papers/CP-2020-093-Multi-source_Distributed_System_Data.pdf)
Nedelkoski, S.; Bogatinovski, J.; Mandapati, A. K.; Becker, S.; Cardoso, J. and Kao, O.
In Service-Oriented and Cloud Computing (ESOCC 2020), online, 2020.
+ [Towards Occupation Inference in Non-instrumented Services](/publications/Papers/CP-2019-092-IEEE_NCA_Towards-Occupation-Inference-in-Non-instrumented-Services.pdf)
Filipe, R.; Correia, J.; Araujo, F. and Cardoso, J.
In IEEE 18th International Symposium on Network Computing and Applications (NCA), online, 2019.

In 2020 we organized an interntional workshop on AIOps which we plan to repeat in 2021

+ AIOPS 2020 International Workshop on Artificial Intelligence for IT Operations, 18th International Conference on Service Oriented Computing, Dubai Virtual, 14 December 2020.


Edge AI
-------

In recent years, cloud computing has become a central part of the AI evolution. To better address requirements, businesses are becoming aware of the need to bring the technology closer to customers. Thus, Edge AI is emerging as a solution that uses ML to process data generated at the local level. The market is expected to grow in value from [$355 million in 2018 to $1.12 trillion by 2023](https://www.marketwatch.com/press-release/global-edge-ai-software-market-size-share-to-expand-at-203-cagr-through-2027-2021-03-18?tesla=y). 

Cloud-centric approaches face several limitations such as network latency and bandwidth constraints. While the edge model considerably reduces transmission costs and latency requirements, it raises questions with respect to computational models, system architectures, AI pipelines and reliability concerns. An example of this technology is Amazon Alexa which learns and stores phrases locally using AI. When a user gives a verbal command, the device sends the voice recording to an edge network where it is transformed to text using AI algorithms. Without an edge network, the response time would be seconds, with edge the latency is reduced to <400 ms. For example, [Intelligent EdgeFabric](https://support.huaweicloud.com/intl/en-us/productdesc-ief/ief_productdesc_0001.html) provides a complete edge computing solution, in which cloud applications are extended to the edge. Edge nodes and applications can be managed remotely (e.g., device monitoring, application monitoring, and log collection) and data process localy. 

As a starting point, our project relies on a use case fromt he field of [video analytics](https://www.mdpi.com/2078-2489/12/1/14). It involves multi-camera surveillance systems, OCR and real-time object tracking. The cameras monitor containers in a transportation chain, while ML compiles data in real time for the container tracking process. The use case is used to identify new computational models at the edge. It is implemented to demonstrate how edge platforms should be designed to manage AI-driven applications.

To support the reference use case, data needs are collected, stored, processed, analyzed, and visualized across the distributed components of edge platforms using AI. The implementation supports training, deployment, and inferencing ML models optimized to provide services with low latency for end users. The output is a set of new computing models, training/inference patterns and libraries/algorithms supporting use 

The final system will be used to experiment and evaluate various computational models and architecture configurations, derive latency and bandwidth constraints, and explore how high levels of reliability can be achieved. Afterwards, the findings, namely the new computing models identified, will be translated into new functionalities of the open source software framework [Sedna](https://github.com/kubeedge/sedna) and [Kubeedge](https://github.com/kubeedge/kubeedge).

Our approach leverages the following techniques: 

+ [Architectures for deep learning inference](http://www.cs.ucr.edu/~jiasi/pub/deep_edge_review.pdf)
+ [Training and inference at the edge](https://arxiv.org/abs/1907.08349)
+ Model selection, pruning, quantization, scarification, parameter tuning, offloading, partitioning, caching, etc.
+ [DL models](https://github.com/onnx/models): CNN, LSTM, AlexNet, Yolo, MXNet, GoogleNet, etc.
+ [Sedna Open source Edge AI frameworks](https://github.com/kubeedge/sedna)

Facebook has written a very intersting paper on [Understanding Inference at the Edge](https://research.fb.com/wp-content/uploads/2018/12/Machine-Learning-at-Facebook-Understanding-Inference-at-the-Edge.pdf) [slides](https://amld-prd.s3.eu-central-1.amazonaws.com/qwe1xb1o1w5361n7ut10q2keqv4o).
The main proposition is that AI models are currently trained in datacenters, but to improve user experience models need run at the edge. This will enable a lower  latency and lower dependency on network connectivity. Vertical integration is key.



AI for Networks
---------------

Gartner research indicates that 70% of network operations are still performed manually. Other surveys indicate that misconfigurations are the root cause of 75% of network outages and performance issues. This leads to high MTTR (mean time to resolve) KPIs since problems are only observed in production. 

Thus, we are building a network monitoring and verification platform driven by AI for real-time intelligent network verification in cloud datacenters. 
Our work is related to  Google [Network Intelligence Center](https://cloud.google.com/network-intelligence-center), formal verification at [AWS](https://link.springer.com/chapter/10.1007/978-3-319-96145-3_3), template inference using [SelfStarter](http://web.cs.ucla.edu/~todd/research/nsdi20.pdf) and active monitoring using [Pingmesh](https://dl.acm.org/doi/pdf/10.1145/2785956.2787496) both from Microsoft.

Our approach leverages the following techniques: 

+ AI/ML
+ Mixed-integer/constraint programming. and SAT constraint solvers
+ Network programmability and programmable switches
+ SmartNICS/FPGAs

As a step in the field of AI for Networks, we are organizing the [1st Network Verification Workshop](https://networkverification-workshop.github.io/) to provide a forum for the community to come together and rethink fundamental questions, breakthrough solutions in Network Verification in summer 2021.



News
----
+ I will serve as Industrial Track Co-Chair for the *[19th edition of the International Conference on Service Oriented Computing (ICSOC 2021)](http://icsoc2021.josueonline.com/)*, November 22nd to 25th, Dubai.
+ My Lecture on [AIOps: Anomalous Span Detection in Distributed Traces Using Deep Learning](https://www.slideshare.net/JorgeCardoso4/aiops-anomalous-span-detection-in-distributed-traces-using-deep-learning) presented at Prof. Joeran Beel's Chair (Intelligent Systems, Trinity College Dublin) on 02.10.2019 is now available.
+ Our article *Towards Occupation Inference in Non-instrumented Services* was accepted to IEEE Network Computing and Applications. Boston, MA, USA, September 2019.
+ Andre Pascoal Bento defended successfully his thesis [Observing and Controlling Performance in Microservices](projects/pdf_img/MSc_thesis_Andre_Bento.pdf)
+ Our article *On Black-Box Monitoring Techniques for Multi-Component Services* was accepted to [17th IEEE International Symposium on Network Computing and Applications (NCA)](http://www.ieee-nca.org/2018/), 1-3.10, 2018, Cambridge, US. **(Conference Rank: A)**
+ This year we are part of the Program Committee of [SREcon 2019](https://www.usenix.org/conference/srecon19emea/), 2–4 October, 2019, Dublin, Ireland.
+ Jorge Cardoso [Mastering AIOps with Deep Learning](https://pt.slideshare.net/JorgeCardoso4/mastering-aiops-with-deep-learning), Presentation at [SRECon18](https://www.usenix.org/conference/srecon18europe), 29–31 August 2018, Dusseldorf, Germany.
+ [International Industry-Academia Workshop on Cloud Reliability and Resilience](https://www.eitdigital.eu/news-events/events/article/international-industry-academia-workshop-on-cloud-reliability-and-resilience/), 7-8 November 2016, Berlin, Germany.


+ Francesco Guerra (Chair) and Jorge Cardoso (Vice-Chair). [COST Action IC1302: semantic KEYword-based Search on sTructured data sOurcEs](http://www.keystone-cost.eu), 2013-2017.



Open Positions
--------------

Thanks for your interest in working with our applied research group at the 
[Huawei Munich Research Center](https://huawei.eu/research-and-innovation) or at the 
[University of Coimbra](https://www.uc.pt/en). 

If you are curious about systems, want to be challenged and engage in cutting edge research, propose novel ideas not proposed before, and leave your own mark on the academic world, you are probably a good candidate for a PhD.
While a MSc involve often involves the application of existing models and techniques, a PhD are almost totally independent and involve the creation of novel knowledge not know before. 

Our group has a special in interested in the following fields:

+ AI applied to cloud operations (AIOps)
+ Planet-scale cloud computing.
+ Machine learning.
+ Distributed systems.
+ Other fields (see my [Google Scholar profile](https://scholar.google.com/citations?user=n9JFmAkAAAAJ&hl=en)).

Our group thrives to see the larger picture, be innovative and creative, and drive to make a lasting impact 
on planet-scale distributed system design and software systems. *We can't solve problems by using the same kind of thinking we used when we created them* -- Einstein.

We are always looking forward to work with excellent researchers which:

+ Simplify the complexity of existing technical solutions (KISS principle) 
+ Solve difficult technical problems (DIY principle)
+ Focus on the solution, not the obstacle
+ Translate theory into practice


If need more information explaining what a PhD/MSc thesis is about, you can browse over the following links:

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
Jorge has published over 180 scientific publications in top peer-reviewed conferences and journals in the field of AI for IT operations, distributed systems, workflow management and semantic web ([9500+ citations, h-index 45](https://scholar.google.de/citations?user=n9JFmAkAAAAJ&hl=en)), and holds 10 patents on related fields. 
He serves as an associate editor of IEEE Software since 2014. 
His latest book [Fundamentals of Service Systems](http://www.springer.com/de/book/9783319231945) compiles results from his research work in 2010-2015. 
He created and led until 2009 the development of the [W3C Unified Service Description Language (USDL)](https://github.com/linked-usdl).

He participated in European, German, US, and National research projects financed by the  European Commission (FP7, EACEA), the German Ministry for Education and Research (BMBF), SAP Research (SAP)  and Portuguese NSF (FCT). He is a founding member of the IFIP Working Group 12.7 on Social Semantics. 

He is also Associate Professor at the [University of Coimbra](https://www.uc.pt/en/fctuc/dei), and
affiliated to the Information Systems Group.
He has interests in the fields of Cloud Computing, AI, SRE, BPM, Semantic Web, Web Services, and Enterprise Systems (see [Google Scholar](https://scholar.google.de/citations?user=n9JFmAkAAAAJ&hl=en&oi=ao), [DBLP](http://dblp.uni-trier.de/pers/hd/c/Cardoso:Jorge), and [LinkedIn](https://www.linkedin.com/in/jorge-cardoso-75ba40/))

Jorge received his Ph.D. in Computer Science from the [University of Georgia](https://www.uga.edu) and B.S. and M.S. degrees with top honors in Informatics Engineering from the [University of Coimbra](https://www.uc.pt/en/fctuc/dei), Portugal.



### Random info

I discovered by a random chance my passion in programming and computing when I was 14. My first computer was a [Timex Computer 2068](https://en.wikipedia.org/wiki/Timex_Sinclair_2068) and [BASIC](https://en.wikipedia.org/wiki/BASIC) was the first language I learned.

Our lab's culture of innovation and R&D is based on 4 main guiding principles:

+ [DIY](https://en.wikipedia.org/wiki/Do_it_yourself),
[KISS](https://pt.wikipedia.org/wiki/Keep_It_Simple),
[Deep Work](https://www.amazon.com/gp/product/1455586692)*, 
[KPI-driven Research](https://en.wikipedia.org/wiki/Performance_indicator), * (Time Spent) x (Intensity of Focus)
  
> A good researcher says, "Lets find out", others say "Nobody knows". When a good researcher makes a mistake, he says, I was  wrong", others say "It wasn't my fault". A good researcher works harder than others and has more time. Others are always "too busy" to do what is necessary. [Unknown source]

Contact
-------
+ Prof. Jorge Cardoso
+ [Huawei Munich Research Center](https://huawei.eu/research-and-innovation), Germany
+ [Departamento de Engenharia Informatica](http://www.uc.pt/en/fctuc/dei), University of Coimbra, Portugal
+ `jcardoso [*.A._.T$] dei | uc | pt`
