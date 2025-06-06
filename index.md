---
layout: media
permalink: /
title: 
toc: true
ads: false
comments: true
published: true
---



<p>
    <img src="./images/Jorge_Cardoso_2024.jpg" 
        height="128" 
        width="155" 
        style="float:left;margin:30px 30px 0 0; border-radius: 50%">
</p>

I recently joined [NVIDIA](https://www.nvidia.com/en-us/) (2025) to work with technologies that support [AI Factories](https://blogs.nvidia.com/blog/ai-factory/).
This includes the [Blackwell](https://www.nvidia.com/en-us/data-center/technologies/blackwell-architecture/) 
and the [Hopper](https://www.nvidia.com/en-us/data-center/h100/) architectures, 
and platforms like  [NVIDIA DGX](https://www.nvidia.com/en-us/data-center/dgx-platform/) and 
[NVIDIA HGX](https://www.nvidia.com/en-us/data-center/hgx/). 
I also work on observability solutions to ensure scalable and reliable AI deployments. 
High-speed interconnects such as [NVLink](https://www.nvidia.com/en-us/data-center/nvlink/) and 
[InfiniBand Networking](https://www.nvidia.com/en-us/networking/products/infiniband/) are central to the performance and efficiency of these systems. 



## AI for Operations

In my previous role (2015-2024), I led the **Ultra-scale AIOps Lab** at [HUAWEI CLOUD](https://www.huaweicloud.com/intl/en-us/), wearing several hats — Director, Chief Architect, Principal Engineer, and Tech Lead — balancing strategic vision with hands-on technical leadership.
My team was distributed accross Munich, Dublin, Shenzhen, and Xian.
You can find more information about our work here: [AIOps for Cloud Operations](/pdf/2023-05-23-AS_AIOps_for_Cloud_Operations_R&D.pdf) (2023).

Our work involved the development of the **next generation of AI-driven IT Operations tools and platforms**.
We applied machine learning and deep learning techniques to various areas related to public clouds such as: anomaly detection, root cause analysis, failure prediction, reliability
and availability, risk estimation and security, network verification, and
low-latency object tracking.
Our efforts fell under the AI Engineering umbrella as discussed in [IEEE Software, Nov.-Dec. 2022](https://www.computer.org/csdl/magazine/so/2022/06).
This field was generally called [AIOps](https://pt.slideshare.net/JorgeCardoso4/mastering-aiops-with-deep-learning) 
(artificial intelligence for IT operations) or ML for Systems.

<img src="./images/Cloud_edge_device.png" height="300" width="600" style="float:right;margin:40px 20px 20px 20px;"/>

In planet-scale deployments, the Operation and Maintenance (O&M) of cloud platforms could no longer be done manually or simply with off-the-shelf solutions. 
It required self-developed automated systems, ideally exploiting the use of AI to provide tools for autonomous cloud operations.
Our work explored into how **deep learning**, **machine learning**, **distributed traces**, **graph analysis**, **time-series analysis** (sequence analysis), and **log analysis** could be used to effectively **detect and localize anomalous cloud infrastructure behaviours** during operations to reduce the workload of human operators. 
These techniques were typically applied to Big Data coming from microservice observability data:
+ [A Survey of AIOps Methods for Failure Management](/rd/Papers/JA-2021-025-Survey_AIOps_Methods_for_Failure_Management.pdf), ACM TIST, 2021.

We created innovative systems for:

+ **Service health analysis**: Resource utilization (e.g., memory leaks), anomaly detection using KPI and logs
+ **Predictive analytics**: fault prevention, SW/HW failure prediction  
+ **Automated recovery**: fault localization and recovery
+ **Operational risk analysis**: CLI command analysis

We developed the iForesight system which was used to evaluate this new O&M approach.
iForesight 7.0 was the result of 10 years of development with the goal of providing an
intelligent new tool aimed at [SRE](https://en.wikipedia.org/wiki/Site_Reliability_Engineering)
cloud maintenance teams. 
It enabled them to quickly detect, localize and predict anomalies thanks 
to the use of artificial intelligence when cloud services were slow or unresponsive. 
Many of our innovation and system developments were carried out as part of the 
[Huawei-TUB Innovation Lab for AI-driven Autonomous Operations](https://www.dos.tu-berlin.de/menue/datesnews/news/huawei_tub_innovation_lab_kick_off/).

<img src="./images/2024_huawei_cloud_world.png" height="300" width="600" style="float:right;margin:40px 20px 20px 20px;"/>

Typically, the systems we develop in Munich were deployed in **93 availability zones** across **33 regions** in Asia Pacific, Latin America, Africa, Europe, and the Middle East. 
Monitoring, observability, operational risk analysis, anomaly detection, and predictive maintenance systems supported over 220+ cloud services from Huawei Cloud.
If you are interested, you can look at how the various hyperscale providers (e.g., AWS, Azure, Google, Huawei, Alibaba) compared with respect to the location of their data centers [here](https://www.cloudinfrastructuremap.com/#/cloud-service-provider/amazon-web-services). 


## Technologies

Over the years, I designed and implemented various types of systems, including service systems, workflow systems, and distributed systems.
As my expertise in each field grew, I authored a book for each area to solidify my understanding.
Currently, I am working on a book about [Kubernetes Networking](https://jorge-cardoso.github.io/kubernetes/kubernetes/kubernetes.html#).

<div class="image-row">
  <div class="image-column">
    <figure>
      <img src="/images/Cover-FSS.jpg" alt="Service System" class="image-1">
      <figcaption>Service Systems</figcaption>
    </figure>
  </div>
  <div class="image-column">
    <figure>
      <img src="/images/Cover-GW.png" alt="Workflow Systems">
      <figcaption>Workflow Systems</figcaption>
    </figure>
  </div>
  <div class="image-column">
    <figure>
      <img src="/images/Cover-PSDJ.png" alt="Distributed Systems">
      <figcaption>Distributed Systems</figcaption>
    </figure>
  </div>
</div>

<style>
  .image-1 {
    width: 92%; /* Adjust size of the first image */
  }
  .image-row {
    display: flex;
    /* justify-content: space-between; Optional: Adjusts spacing between columns */
    justify-content: flex-start; /* Align all columns to the left */
    margin: 0 auto;
    padding: 0; /* Remove padding around the row */
  }
  .image-column {
    flex: 1; /* Distribute the space evenly */
    padding: 0px; /* Optional: Add padding around each column */
    /* display: block;  Ensure no extra space around the image */
    max-width: 15%; /* Adjust this percentage to control the image size */
    margin-right: 175px; /* Increase space between columns */
  }
</style>



<!-- 
About me
--------
After ~15 years of working for different industrial and academic research organizations (e.g., [SAP Research](http://go.sap.com/), [The Boeing Company](http://www.boeing.com), [CCG/Zentrum fur Graphische Datenverarbeitung](http://www.ccg.pt/en/), KIT, University of Dresden, University of Coimbra), Jorge joined [Huawei Munich Research Center](http://www.huawei.eu/research-and-innovation) as a Chief Architect for Ultra-scale AIOps in April 2015 with the mission of building a new team to develop innovative solutions which explore AI/ML to operate and manage the troubleshooting of [HUAWEI CLOUD](https://www.huaweicloud.com/intl/en-us/).

- As a strategist, he leads the vision, technical planning and research innovation roadmaps for applied AI to IT operation and maintenance.
- As a chief architect, he designs and implements AI-driven systems and algorithms.
- As an engineer manager, he leads 3 teams in the fields of AIOps, Edge AI and AI for Networks. 

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

Jorge received his Ph.D. in Computer Science from the [University of Georgia](https://www.uga.edu), USA, and 
B.S. and M.S. degrees with top honors in Informatics Engineering from the [University of Coimbra](https://www.uc.pt/en/fctuc/dei), Portugal.
-->

<!-- 
### Random info

I discovered by a random chance my passion in programming and computing when I was 14. My first computer was a [Timex Computer 2068](https://en.wikipedia.org/wiki/Timex_Sinclair_2068) and [BASIC](https://en.wikipedia.org/wiki/BASIC) was the first language I learned.

Our lab's culture of innovation and R&D is based on 5 main guiding principles:

+ [DIY](https://en.wikipedia.org/wiki/Do_it_yourself),
[KISS](https://en.wikipedia.org/wiki/KISS_principle),
[Deep Work](https://www.amazon.com/gp/product/1455586692)*, 
[KPI-driven Research](https://en.wikipedia.org/wiki/Performance_indicator), 
[Humorful](https://www.forbes.com/sites/jacquelynsmith/2013/05/03/10-reasons-why-humor-is-a-key-to-success-at-work/) 

+ (*) Time Spent x Intensity of Focus

*A good researcher says, "Lets find out", others say "Nobody knows". When a good researcher makes a mistake,
he says, I was  wrong", others say "It wasn't my fault". A good researcher works harder than others and has
more time. Others are always "too busy" to do what is necessary. [Unknown source]*
-->

## Contact

+ Jorge Cardoso, PhD
+ [NVIDIA Munich](https://www.nvidia.com/en-us/contact/europe/), Germany
<!-- + [Departamento de Engenharia Informatica](http://www.uc.pt/en/fctuc/dei), University of Coimbra, Portugal -->
+ `jcardoso [*.A._.T$] dei | uc | pt`
