---
title: "Overview of Microsoft Graph data connect"
description: "Microsoft Graph data connect brings Microsoft 365 data to Microsoft Azure, which gives you access to the best development and hosting tools to work with this data."
author: "ajacks-msft"
localization_priority: Priority
ms.prod: "data-connect"
ms.custom: scenarios:getting-started
---

# Overview of Microsoft Graph data connect
Microsoft Graph contains rich data about workers and their workplace, including information about how people work and how they communicate, collaborate, and manage their time. Microsoft Graph data connect provides a set of tools to streamline the delivery of this data to Microsoft Azure, which gives you access to the best development and hosting tools to work with this data. This enables customers to benefit from innovative or industry-specific applications that enhance their productivity, while they keep full control over their Microsoft Graph data. Microsoft is bringing along the more secured control that customers expect.

## Why use Microsoft Graph data connect?
Microsoft 365 administrators must carefully consider the challenges inherent in moving and managing significant amounts of their organizational data. Microsoft Graph data connect is designed to give administrators new controls over their data; you can use that data to build apps that create data-driven insights. 

### Enable granular consent

In the Microsoft Graph consent model, an administrator or user can only grant or deny an application’s request to access specific, predefined sets of entities. For example, a request for Mail.Read includes read access to a fixed set of entities that support Outlook mail, including entire [message](/graph/api/resources/message?view=graph-rest-1.0) instances with all its properties. In contrast, Microsoft Graph data connect enables more granular consent, allowing applications to request access to specific properties in an entity, or filter the data in these properties. Administrators must give explicit approval to access Microsoft Graph data before access is granted. The request must specify the level of access requested and describe data policy enforcement, the reason for the request, and the schema of the data requested. As a result, applications can use only the data that is essential to their function, and unrelated content is excluded. For example, an app might consume email metadata but exclude body content and attachments. 

### Provide data governance
Microsoft is facilitating rich, connected communication between Microsoft Graph and Azure with respect to the status of customers’ data. When you build apps via Microsoft Graph data connect, you can specify a set of detailed policies that you intend to comply with. Microsoft 365 administrators can then review and consent to these policies. This practice minimizes compliance management overhead. When consent is given, Microsoft monitors the application’s adherence to policy. If an application violates (or attempts to violate) a policy established by the organization, Microsoft stops the flow of data to that application. 

### Get access to data at scale
Rich applications require access to large amounts of data, often from many users in your organization at once. With the traditional transactional data model, you need to build a complex infrastructure and make thousands of API calls to orchestrate this data delivery. Microsoft Graph data connect uses the power of Azure Data Factory to deliver Microsoft 365 data from your organization to your application, on a repeatable schedule, with just a few simple steps.

## Next steps
To get started, see [Get started with Microsoft Graph data connect](data-connect-get-started.md).
