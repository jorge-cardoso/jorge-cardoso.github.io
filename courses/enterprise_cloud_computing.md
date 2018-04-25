---
layout: article
title: "Enterprise Cloud Computing"
date:
modified:
excerpt: "Enterprise Cloud Computing"
tags: []
image:
  feature:
  teaser:
  thumb:
ads: false
toc: true
---

Course Description
------------------

### Prerequisites

+ Programming, operating systems, networks. 

### Textbook

+ Distributed and Cloud Computing: From Parallel Processing to the Internet of Things, Kai Hwang, Jack Dongarra, Geoffrey C. Fox, Morgan Kaufmann, 2013.

### Learning Outcomes

Recall (knowledge), interpret (comprehension), apply, analyse, create (synthesis), evaluate.

1. Understand the main concepts, key technologies, benefits, and characteristics of cloud computing.

2. Identify the architecture associated with cloud computing, including SaaS, PaaS, IaaS, public cloud, private cloud, and hybrid cloud.

3. Write a research paper and present the results.


Chapter 01 __ Introduction
--------------------------

*Summary*. The first chapter provides an introduction to the term 'cloud'. What is the cloud? What is [cloud Computing](https://en.wikipedia.org/wiki/Cloud_computing)? Where is the cloud? Who is providing clouds? These are all questions you have probably heard and asked yourself. The term 'cloud' and 'cloud computing' is being used everywhere and often with a fuzzy meaning. Companies are quickly adopting cloud computing since it enables to outsource IT and allows to use the latest technologies without large invertment on infrastructure, software and IT staff. Examples of cloud services include Microsoft OfficeLive, DropBox, AppEngine, SalesForce VMforce, and Amazon EC2.

*Key points covered*. What are cloud services? What is cloud computing? Business shift. Job market. Examples of cloud services.

*Material*. 
+ Lecture 1: [Introduction](https://www.dropbox.com/s/aszlfp9tjgvuhuh/01_ECC_Lecture_Introduction-2016-09-25.pdf?dl=0). 
+ Lab 1: [Amazon AWS Hands-on](https://www.dropbox.com/s/z9tqepul83qetek/01_ECC_Lab_Amazon_AWS_Hands_On-2016-09-29.pdf?dl=0).


Chapter 02 __ Concepts
----------------------

*Summary*. The second chapter covers important concepts which are fundamental to understand why cloud computing became so quickly widespread. One of the major benefits of the cloud comes for the economic model it delivers. Cloud service providers adopt a "pay as you go" or [OpEx model](https://en.wikipedia.org/wiki/Operating_expense) which allows customers to pay only for what they use (similar to energy or waterwi). Customers do not need to own expensive assets (e.g., data centers, servers, or software), the [CapEx](https://en.wikipedia.org/wiki/Capital_expenditure). Naturally, the benefits of the cloud go beyond the economic model provided and also include additional positive aspects such as on-demand self-service, broad network access, and elasticity. Different types of software are made available to customers. While, nowadays, many classifications exist, one of the first taxonomies developed included only three main classes: 
[Software as a Service (SaaS)](https://en.wikipedia.org/wiki/Software_as_a_service), [Platform as a Service (PaaS)](https://en.wikipedia.org/wiki/Platform_as_a_service), and [Infrastructure as a Service (IaaS)](https://en.wikipedia.org/wiki/Cloud_computing#Infrastructure_as_a_service_.28IaaS.29). Each type identifies which software is made available as a utility. For example, storage, hardware, servers, compilers and development environments, or office applications. Finally, cloud platform can be build for private use, these are called private clouds, or for public usage, these are called public clouds. A use of both types is called a hybrid cloud.

*Key points covered*. Computing shift. Economical driver. Definition. Cloud characteristics. Deployment models. Delivery models. Examples. Inherent problems.

*Material*. 
+ Lecture: [Cloud Computing Concepts](https://www.dropbox.com/s/ntenhyxy480i4x8/02_ECC_Lecture_Cloud_Computing_Concepts_2016-09-25.pdf?dl=0).
+ Chapter 4: Cloud Computing Concepts (pp. 111-140). Mastering Cloud Computing: Foundations and Applications Programming, by Rajkumar Buyya, Christian Vecchiola, S.Thamarai Selvi, 2013.
+ Chapter 2: Electronic Services (pp. XX-XX). Fundamentals of Service Systems, Cardoso et al., Springer, 2015.
+ Lab 1: [Amazon AWS: EC2](https://www.dropbox.com/s/2jbfjpxfg85irlx/02_ECC_Lab_Amazon_AWS_2016-09-25.pdf?dl=0).
+ Lab 2: [Project Description](https://www.dropbox.com/s/u8xqitqaxps2zfw/02_ECC_Lab_Project_Description-2016-09-25.pdf?dl=0).
+ Lab 2: [Project Report Template](https://www.dropbox.com/s/e2kxcq7aodmrsd2/02_ECC_Lab_Project_Description_Written_Report_Template.doc?dl=0).



Chapter 03 __ Web APIs
----------------------

*Summary*. The dissemination and easy of use of web services and [Application Programming Interfaces (API)](https://en.wikipedia.org/wiki/Application_programming_interface) has enables the edification of an API Economy. Companies can seamlessly work together by integrating their information systems using programming interfaces and provide they as web services. The technologies that made this possible live under the umbrella of distributed systems and correspond to two schools of thought: [WS-\* Services](https://en.wikipedia.org/wiki/List_of_web_service_specifications)/[SOAP](https://en.wikipedia.org/wiki/SOAP) and [REST](https://en.wikipedia.org/wiki/Representational_state_transfer). WS-\* Services and SOAP are based on traditional standards (XML, SOAP, HTTP, etc.) and REST where minimal [middleware](https://en.wikipedia.org/wiki/Middleware) is necessary (only HTTP support is required). These two approaches provide the basic building blocks for cloud computing and are used by most platforms available in the market.

*Key points covered*. The API Economy. Distributed Systems. WS-\* Services. What is REST? REST and SOAP. REST principles. REST design guidelines.

*Material*. 
+ Lecture: [Web API](https://www.dropbox.com/s/1it2tyjva8uz1l5/03_ECC_Lecture_Web_API_2016-09-25.pdf?dl=0).
+ Lab 1: [Boto and Amazon AWS](https://www.dropbox.com/s/qewkq7tkcm8amo6/03_ECC_Lab_Boto_Amazon_AWS-2016-09-25.pdf?dl=0).
+ Chapter 1: General Info (pp. 1-10). Python and AWS Cookbook by Mitch Garnaat, O'Reilly Media, 2011.
+ Chapter 2: EC2 Recipes (pp. 11-45). Python and AWS Cookbook by Mitch Garnaat, O'Reilly Media, 2011.
+ Chapter 3: S3 Recipes (pp. 47-63). Python and AWS Cookbook by Mitch Garnaat, O'Reilly Media, 2011.
+ Lab 2: [REST and Django](https://www.dropbox.com/s/ra5r3fw90ex2ky0/03_ECC_Lab_REST_Django_2016-09-25.pdf?dl=0).
+ Chapter 4: Building a REST API (pp. 61-91). Lightweight Django by Julia Elman, Mark Lavin, O'Reilly Media, 2014.
+ Chapter 4: The Resource-Oriented Architecture (pp. 79-105). RESTful Web Services by Leonard Richardson and Sam Ruby, O'Reilly Media, 2007.


Chapter 04 __ Cloud Platforms
-----------------------------

*Summary*. Nowadays, there are three public cloud providers in field of IaaS: Amazon Web Services (AWS), Microsoft Azure, Google Cloud Platform, and IBM Bluemix. Other players are emerging. Examples include [Open Telekom Cloud](https://cloud.telekom.de/en/) from Deutsche Telekom,  [Telefonica's Open Cloud](https://www.business-solutions.telefonica.com/en/information-centre/news/telefonica-and-huawei-reach-a-global-agreement-to-promote-enterprise-migration-to-the-cloud/), Alibaba, BT, NTT, Orange, Rackspace, Salesforce, etc. Amazon AWS is the leader by innovation and market share. Nonetheless, analysts believe that Microsoft Azure will soon overtake AWS. The AWS platform was launched in 2006. In 2016, it is composed of 35 Availability Zones (AZ) within 13 geographic Regions (e.g., Ireland, Frankfurt, Sao Paulo, Singapore, Tokyo, Sydney, Northern Virginia, Oregon). It has a rich spectrum of services from compute, storage, netowrking, analytics, mobile, developer tools, management tools, and security spaces. To programatically manage complex set ups in the AWS, several tools and and SDK libaries exist. For example, [boto](https://github.com/boto/boto) can be used to automate AWS services in Python. It allows to write scripts to provide programmatic connectivity to Amazon Web Services.

*Key points covered*. Cloud Computing Offerings. AWS Platform (Compute Services, Storage Services, Communication Services, Additional Services). Tools and Kits. Billing and Pricing

*Material*. 
+ Lecture: [Cloud Platforms](https://www.dropbox.com/s/3fjregvh27kuqgs/04_ECC_Lecture_Cloud_Platforms_2016-09-25.pdf?dl=0).
+ Chapter 9: Cloud Platforms in Industry (pp. 315-351). Mastering Cloud Computing: Foundations and Applications Programming, by Rajkumar Buyya, Christian Vecchiola, S.Thamarai Selvi, 2013.
+ Lab: [Cloud Platforms: EC2, S3, SNS, SQS](https://www.dropbox.com/s/bwkt1zrftkx6ro6/04_ECC_Lab_Cloud_Platforms_Parallel_Processing_2016-09-25.pdf?dl=0).
+ [Overview of Amazon Web Services, Amazon AWS](https://d0.awsstatic.com/whitepapers/aws-overview.pdf), Dec 31, 2015
+ [AWS Simple Icons for Architecture Diagrams](https://aws.amazon.com/architecture/icons/)
+ [AWS Essentials Student Guide 2.5](http://www.yeeday.org/ninjas/AWSLab.pdf), 2013.


Chapter 05 __ Cloud Application Design
------------------------------------

*Summary*. Cloud computing does not only provides a service-based access to virtual machines, more interestingly, it enables to create so called [cloud-native applications](https://www.cncf.io). Applications that can be developed on a cloud platform, use the many resources available, run at scale with a high reliability, and avoid problems such as the [Slashdot Effect](https://en.wikipedia.org/wiki/Slashdot_effect). This requires new [cloud architectures](https://aws.amazon.com/about-aws/whats-new/2008/07/16/cloud-architectures-white-paper/) that depart from traditional enterprise application design to address requirements such as high availability, scalability, and elasticity. For example, [IBM Cloud Architecture Center](https://developer.ibm.com/architecture/) enables developers to understand how to quickly create new cloud native applications using [Bluemix](https://console.ng.bluemix.net), IBM's PaaS solution. The types of services provided by a cloud platform enable to develop architectures, e.g., with four tiers, which not easily engineered using traditional software platforms. Thus, architectures are evolving into [Multitier architectures](https://en.wikipedia.org/wiki/Multitier_architecture). Amazon AWS provides an infrastructure which contains the necessary ingredients to develop distributed system with high availability, scalability, and elasticity. Examples of key services include multiple zones, [cloudwatch](http://aws.amazon.com/cloudwatch/), [auto-scaling](http://aws.amazon.com/autoscaling/), elastic load balancers, and [message queues](http://aws.amazon.com/sqs). To facilitate the development of native applications, companies and academia is looking into ways to identify and abstract generic architectures which can be reused across domains. Initiatives centered in patterns have been popular. Examples include, Microsoft [Cloud Design Patterns](https://msdn.microsoft.com/en-us/library/dn568099.aspx), AWS [Cloud Design Patterns](http://en.clouddesignpattern.org/index.php/CDP:DB_Replication_Pattern), and the book [Cloud Computing Patterns](http://www.cloudcomputingpatterns.org/book/) coming from the academia. [Dependability](https://en.wikipedia.org/wiki/Dependability), and in particular [reliability](https://en.wikipedia.org/wiki/Reliability_engineering), have gained importance since planet-scale cloud application need often to be available 24x7x52. Since native applications can be seen as complex systems with services, behavior, compositions, which are put together using an architectural style driven by decisions, existing concepts and theories from the field of software engineering can be used to evaluate the reliability of theories.    

*Key points covered*. Cloud-native applications. Cloud Architectures (One tier, Two tiers, Three tiers, Four tiers). High Availability Architectures. Scalable Architectures. AWS elements (EC2 Images, Elastic Load Balancing, Lunch Configurations, Auto Scaling Groups, Cloud Watch). Native cloud applications reliability.

*Material*. 
+ Lecture: [Cloud Application Design](https://www.dropbox.com/s/8z706g9e35j6rpe/05_ECC_Lecture_Cloud_Application_Design_2016-09-25.pdf?dl=0).
+ Lab 1: [Cloud Application Design](https://www.dropbox.com/s/05jem96dru8cy9h/05_ECC_Lab_Cloud_Application_Design_2016-09-25.pdf?dl=0).
+ Lab 2: [Load Balancing](https://www.dropbox.com/s/nuedlqjicnlaarh/05_ECC_Lab_Cloud_Application_Design_Load_Balancing_2016-09-25.pdf?dl=0).



Chapter 06 __ Cloud BPM
-----------------------

*Summary*.

*Key points covered*. Cloud BPM. Concepts (Domains, workflows, activities, workers, deciders and schedulers). How to run a Workflow? Implementing Workflows.

*Material*. 
+ Lecture: [Cloud BPM: Building Large-scale Distributed Systems](https://www.dropbox.com/s/ntenhyxy480i4x8/02_ECC_Lecture_Cloud_Computing_Concepts_2016-09-25.pdf?dl=0).
+ Lab: [Cloud BPM with AWS SWT](https://www.dropbox.com/s/gt3n3td38td09u9/06_ECC_Lab_Cloud_BPM_AWS_SWF_2016-09-25.pdf?dl=0).


Chapter 07 __ NA
-----------------

*Summary*.

*Key points covered*:.

*Material*. 


Chapter 08 __ Cloud BPM
---------------------

*Summary*.

*Key points covered*. Cloud BPM. Workflows Patterns (Sequence, Parallel Split, Synchronization, Exclusive Choice, Simple Merge, Multi-Choice).

*Material*. 
+ Lecture: [Cloud BPM: Workflow Patterns](https://www.dropbox.com/s/g19jjnv82w5eum6/08_ECC_Lecture_Cloud_BPM_Workflow_Patterns_2016-09-25.pdf?dl=0).
+ Lab: [Cloud BPM: Workflow Patterns](https://www.dropbox.com/s/qra0daixkyk8ivp/08_ECC_Lab_Cloud_BPM_Workflow_Patterns_2016-09-25.pdf?dl=0).



Chapter 09 __ Google Platform
---------------------------------

*Summary*.

*Key points covered*:.

*Material*. 
+ Lecture: [Google Cloud Platform and App Engine](https://www.dropbox.com/s/7ncfw9br4ul4a7q/09_ECC_Lecture_Cloud_Application_Design_GoogleAppEngine_2016-09-25.pdf?dl=0).
+ Lab: [Google Cloud Platform and App Engine](https://www.dropbox.com/s/exxh6btvrk39fuj/09_ECC_Lab_Cloud_Application_Design_GoogleAppEngine_2016-09-25.pdf?dl=0).



Chapter 10 __ Monitoring
------------------------

*Summary*. Amazon CloudWatch. Architecture. Terms. Supported AWS Services. Accessing CloudWatch. Regions and Endpoints. CloudWatch Limits. Related AWS Services. Resources.

*Key points covered*. [Prometheus](https://prometheus.io). [OpenTracing](http://opentracing.io)

*Material*. 
+ Lecture: [Cloud Monitoring: Amazon CloudWatch](https://www.dropbox.com/s/evx1yo13lqp2nrd/10_ECC_Lecture_CloudWatch_2016-09-25.pdf?dl=0).


Chapter 11 __ Resilience
------------------------

*Summary*. Desciption from Charter on waking up at 2 in the morning and about INCREASIng the Covereage.

*Key points covered*. Simian Army. Fault Injection.

*Material*. 
+ Lecture: [Cloud Resilience: The Simian Army and Chaos Monkey](https://www.dropbox.com/s/a6evie6ml2hshdy/11_ECC_Lecture_Chaos_Monkey_2016-09-25.pdf?dl=0).
+ DOST presentation
+ Using sequential diagnosis with openstack


Chapter 12 __ OpenStack Platform
---------------------------------

*Summary*.

*Key points covered*:.

*Material*. 
+ See slides from Pluralsight about Introduction To Openstack 2014
+ See course RedHat on OpenStack administration

