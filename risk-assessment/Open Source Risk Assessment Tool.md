This repository has moved to www.riskassessments.io.

Cyber Risk Assessment Tool
========================================================
author: Open Source
date: June 2020
autosize: true
font-family: 'Helvetica'


Project Background
========================================================

This project is looking to achive the following:

 + Transform cyber risk and threat assessment within our industry
 + Industry leader in the space, promoting industry excellence and behaviours
 + Develop open tool sets and frameworks for next generation cyber risk assessment
 + Open tool sets Community-developed Open Source framework

    
Problem Space
========================================================

The As-Is Industry'* current state: 

+ Manual
+ Qualitative
+ Existing cyber risk and threat assessment is no longer fit for purpose – an industry-wide challenge
    + Technology advancement
    + Risk complexity
    + Professionals (humans) cannot keep up with the complexity
    + Low ability to connect risk assessment with useful data/analysis/simulation
    + Low ability for clients to grow risk capability incrementally
    + linkage with business risk!
+ Risks derived on a system component space
+ No holistic view of scenario based risks
+ Hard to reuse/refine current documentation and tool sets
+ Difficult to use

'* It should be noted that there are a small number of organisations that are working on adding quantification to this problem.

Solution Space
========================================================
The To-Be future state:

+ Semi-Automated
+ Quantitative
+ Predictive Analytics
  + Data Flow diagrams or equivalent
  + Vulnerability/Threat Profiles and supporting automated feeds (CVSS, OSINT, Pen Testing)
  + Risk Estimation and simulation
+ Reusable documentation and tool sets

Project Objectives
========================================================

This project aims to use an open framework, that will be publicly available, leveraging the existing ISO 27K framework approach, to provide an enhanced enterprise ready risk assessment solution.

Create a collaborative approach using agile open source technologies and development initiatives.

Ability for tool to be used in either an on-line or off-line mode.

There are three themes that cover the objectives of this project:

Themes
========================================================
1. Visualisation
+ Visualisation of Cyber Risks of interconnected systems. (System of Systems).

2. Data Analytics

+ Prototype of one or more analytical methods based on the data inputs and agreed visual model.
+ Develop a tool to provide structured analsysis of existing data source and frameworks to provide a data-driven cyber risk assessment
        
3. Data Inputs

+ Detrermine that the chosen data inputs, visual models and analystical techniques are feasable.


Goal to achieve objectives
========================================================
The goal is to develop an effective approach to modelling the risk of a system using these concepts:

  * Greater accuracy
  * Greater consistency
  * Repeatability
  * Speed of analysis

Potential Steps to achieve objectives - 1
========================================================  
<small>To achieve these goals the project will start with a pre-defined set of inputs:

+ Define a set of Known Vulnerabilities for the assets
+ Define a set of Potential vulnerabilities for the assets
+ Define a set of threat actors
+ Define an Impact Assessment for the asset register

Create a model that can dynamically assess the information security risks based on the following changes:

+ Threat Actors characteristics
+ Vulnerability Characteristics
+ Confidentiality, Integrity and Availability characteristics

  + How does the risk profile change if the threat actor characteristics change?
  + How does the risk profile change if the vulnerability characteristics change?
  + How does the risk profile change if the impact assessment changes?
  + How does the risk profile change if additional security controls are implemented?
  + How will the changes to the information risk profile be presented visually?
  + What are the best modelling techniques to use to assess the change in information security risk profile? 
 </small> 

***

<small>Develop a prototype software tool that is usable online or offline to enable this modelling 

  + It must be usable by online or offline to carry out a risk assessment
  + It must articulate the risk of compromise to the system based on risk scenarios
  + It must automate the creation of a risk register
  + It must automate the creation of a risk treatment plan
  + It must use an acceptable analytics approach based statistical/data analysis techniques
  + It should be easy to update the model/dataset/input feeds
  
Viaualisation Representation

+ Describe the known or potential vulnerability status 
+ Describe the importance of the data/info on the system
+ What is the best way to describe or represent information security risk within the system? 
+ What is the best way to model the behaviour of a threat actor? (threat modelling)
+ Display the nature of the connection between assets/nodes
+ Articulate the relationship between the assets (i.e. threat modelling?)
+ Group or arrange the assets in a table format and visual format that best describes how they interact with each other?
  
	+ Does Asset A directly communicate with Asset B or vice versa
	+ Does Asset A use a service of Asset B 
  + Explain the nature of the connection between assets/nodes - 
    + what are the possibilities? 
	    + High level vs Fine grained detail
  + Define the asset/group taxonomy?
  + Identify and define all the potential asset types and categories out there that could come up in a risk assessment?
</small>

Potential Steps to achieve objectives - 2
========================================================  

__Additional Future Requirements__

+ Assess the risk of an attack for particular scenarios? (e.g. web-based attack, phishing attack, networking)
+ Identify the technical security gaps, aligning them with controls defined in key security standards  
+ Develop an analytically engine that produces the risks and risk treatment plan 
+ add a threat actor or event to the nodes
+ identify linking data sources that extend the model 

***

__Potential next technical steps__

1. Creation of a starter data set
	- "node + edge" CVS file
	- "threat" CVS file 
	- "vulnerability CVS file
	- "asset impact"
2. Define vignette (a generic model for consideration)
3. Define an attack scenario
4. Define supporting documentation - standards, taxonomies, overview of statistical techniques 
5. Define goal/challenges 
	- split across teams?  



Identifying Potential Input Collateral
========================================================
System types categories:

Asset categories/hierarchy 

	- define the asset taxonomy

Threat modelling frameworks + approaches? 
What are they?

	- e.g. OWASP/SEI/ATT&CK Mitre
	- e.g. HARM Taxonomy(https://www.researchgate.net/publication/315459761_Cyber_Harm_Concepts_Taxonomy_and_Measurement)

Asset relationships (i.e. edges)

	- asset A communicates with asset B
	- asset A uses browser to communicate with Asset B web server

Vulnerability descriptions 

	- e.g. process vulnerability
	- e.g. misconfiguration
	- e.g. software flaw 

Use standards as an input Risk taxonomy

	-ISO 93 - risk management definition. 

Explanation/examples of risk (probability + impact + vulnerability etc)

Show them an existing risk assessment approach?

+ Risk taxonomy of harm
+ Risk treatment taxonomy 

Potential analytically approaches e.g. 

	- Bayesian
	- Frequentest 

Vignette - example of org with associated risks
	(here is one way it could look like)
