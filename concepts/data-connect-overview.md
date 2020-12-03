---
title: "Microsoft Graph data connect"
description: "Microsoft Graph data connect brings Microsoft 365 data and Microsoft Azure resources to you through a core data pipeline. You can use Microsoft Graph data connect to build intelligent applications that access valuable data using the best development tools offered by Microsoft, all within the Microsoft secure cloud. All businesses are interested in improving productivity, which means that building products that make knowledge workers more productive presents tremendous opportunities. "
author: "ajacks-msft"
localization_priority: Priority
ms.prod: "data-connect"
ms.custom: scenarios:getting-started
---

# Microsoft Graph data connect

Microsoft Graph data connect brings Microsoft 365 data and Microsoft Azure resources to you through a toolset. You can use Microsoft Graph data connect to build intelligent applications that access valuable data using the best development tools offered by Microsoft, all within the Microsoft secure cloud. All businesses are interested in improving productivity, which means that building products that make knowledge workers more productive presents tremendous opportunities.

> [!VIDEO https://www.youtube-nocookie.com/embed/J1WGFRGnc7g]

You can take advantage of Microsoft Graph data connect if you agree to the [Microsoft APIs Terms of Use](/legal/microsoft-apis/terms-of-use?context=/graph/context) and the [Microsoft Privacy Statement](https://go.microsoft.com/fwlink/p/?LinkId=123161) and are:

- An ISV building intelligent applications for any Microsoft 365 customer.
- An enterprise developer building intelligent applications for users inside of your organization that access Microsoft 365 data.

## Develop a pipeline with Microsoft 365 data
You can use Microsoft Graph data connect to create new types of applications based on Microsoft 365 data, while taking advantage of the best tooling inside Microsoft Azure. You can use Azure Data Factory to move Microsoft 365 data into popular Azure data stores: Azure Data Lake Gen 1 or Gen 2, or Azure Blob Storage. Then, you can process the data (using Azure Data Lake Analytics, for example) or move it into an additional store, like Azure SQL Database. You can then use the data to service your application's end user scenario.

Before the Azure Data Factory pipeline can move data from Microsoft 365, a data request consent is sent to the customer's Microsoft 365 administrator-designated data approvers. Data movement begins only upon approval by the data approvers.

## Publish your app as an Azure managed application
After you develop an application using Microsoft Graph data connect, you can make your application available to others (either in your organization or more broadly). Microsoft Graph data connect uses [Azure managed applications](/azure/managed-applications/overview) to make these applications available to others through the Microsoft Azure Marketplace. Azure Managed Applications allows ISVs and enterprise developers to deliver turnkey solutions to their customers. Customers deploy these managed applications in their subscriptions, while the vendors (ISVs and enterprise developers) manage and support them. Application vendors can also apply [policies](/azure/managed-applications/overview#azure-policy) to their applications, such as encryption at rest, to give their customers the peace of mind that their data is being handled more securely. Applications can be published either to the [Azure Marketplace](/azure/managed-applications/publish-marketplace-app) or the [Azure service catalog](/azure/managed-applications/publish-service-catalog-app).

Customers who install the application can see the terms of service, the data that is required, the price for each application SKU, and the approximate cost for resource consumption. When required deployment properties are specified by the purchaser, the resources are provisioned. This includes the Data Factory pipeline that begins extracting data. You provide a readme for your application that explains when to expect the installation to be complete, how to use the application, and how to get support.

## Next Steps
To get started developing Microsoft Graph data connect applications, see [Overview of Microsoft Graph data connect](data-connect-concept-overview.md).