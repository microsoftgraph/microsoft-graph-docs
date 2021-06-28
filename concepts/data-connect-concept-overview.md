---
title: "Overview of Microsoft Graph Data Connect"
description: "Microsoft Graph Data Connect brings Microsoft 365 data to Microsoft Azure, which gives you access to the best development and hosting tools to work with this data."
author: "fercobo-msft"
localization_priority: Priority
ms.prod: "data-connect"
ms.custom: scenarios:getting-started
---

# Overview of Microsoft Graph Data Connect

Microsoft Graph Data Connect augments Microsoft Graph’s transactional model with an intelligent way to access rich data at scale. The data covers how workers communicate, collaborate, and manage their time across all the applications and services in Microsoft 365. Ideal for big data and machine learning, Data Connect allows you to develop applications for analytics, intelligence, and business process optimization by extending Microsoft 365 data into Azure. By integrating in this way, you'll be able to take advantage of the vast suite of compute, storage in Azure while staying compliant with industry standards and keeping your data secure.

![An image that shows the applied data controls between Microsoft 365 data into the Azure cloud, as well as the output data.](images/data-connect-mgdc-capabilities.png)

Microsoft Graph Data Connect uses Azure Data Factory to copy Microsoft 365 data to your application’s storage at configurable intervals. It also provides a set of tools to streamline the delivery of this data to Microsoft Azure, letting you access the most applicable development and hosting tools available. Data Connect also grants a more granular control and consent model: you can manage data, see who is accessing it, and request specific properties of an entity. This enhances the Microsoft Graph model, which grants or denies applications access to entire entities.

You can use Data Connect to enable machine learning scenarios for your organization. In these scenarios, you can create applications that provide valuable information to your stakeholders, train machine learning models, and even perform forecasting based on large amounts of acquired data.

<!--<iframe class="video-iframe" style="width: 960px; height: 540px;" frameborder="0" allowfullscreen="true" src="https://www.microsoft.com/en-us/videoplayer/embed/RWEJsy?autoplay=false"> </iframe>-->

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RWEJsy?autoplay=false]

You can take advantage of Microsoft Graph Data Connect if you agree to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=/graph/context) and the [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/p/?LinkId=123161) and are:

- An ISV building intelligent applications for any Microsoft 365 customer.
- An enterprise developer building intelligent applications for users inside of your organization that access Microsoft 365 data.

## Access to data at scale

Rich applications require access to large amounts of data, often from many users in your organization at once. For this reason, Microsoft Graph’s standard, transactional data model has a tendency to throttle large datasets. Data delivery requires a complex infrastructure and thousands of API calls, any of which might be throttled due to resource limitations. Microsoft Graph Data Connect resolves this challenge by accessing data in bulk and repeatedly copying Microsoft 365 data to your application with Azure Data Factory. Data Connect also allows you to choose between accessing data from everyone in your organization or just specific groups of people.

## Granular data consent

In the traditional Microsoft Graph consent model, an administrator or user can only grant or deny an application’s request to access specific, predefined sets of entities. For example, a request for Mail.Read includes read access to a fixed set of entities that support Outlook mail, including entire [message](/graph/api/resources/message) instances with all the relevant properties. Microsoft Graph Data Connect enables more granular consent, allowing applications to request access to specific properties in an entity or filter the data in those properties. Administrators must give explicit approval before Microsoft Graph data can be accessed. The request must specify the level of access requested, data policy enforcement, the reason for the request, and the schema of the data requested. As a result, applications can only use data that is essential to their function, and any unrelated content is excluded. For example, an app might consume email metadata but exclude body content and attachments.

## Data security and governance

Microsoft is facilitating rich, connected communication between Microsoft Graph Data Connect and Azure that respects customer data. Microsoft Graph Data Connect supports all Azure-native service capabilities, such as encryption, geo-fencing, auditing, and policy enforcement. In order to minimize compliance management overhead for apps you build with Data Connect, you can specify a set of detailed policies that you intend to comply with, which Microsoft 365 administrators can then review. After consent is given for these policies, Microsoft will monitor the application’s adherence to policy. If an application violates (or attempts to violate) a policy established by the organization, Microsoft will stop the flow of data to that application.

## See also

- [Build your first Microsoft Graph Data Connect application tutorial](data-connect-quickstart.yml).
- [Data Connect frequently asked questions](data-connect-faq.md)
- [Datasets, regions, and sinks](data-connect-datasets.md)
