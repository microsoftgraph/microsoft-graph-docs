---
title: "Datasets, regions, and sinks that Microsoft Graph data connect supports"
description: "Describes the supported datasets and destination storage types that can be used with Microsoft Graph data connect."
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# Datasets, regions, and sinks that Microsoft Graph data connect supports

Microsoft Graph data connect supports a variety of datasets, data regions, and storage locations in Microsoft Azure. This topic describes the supported datasets and how to access the dataset schemas, the Microsoft 365 and Microsoft Azure regions that are supported, and the storage locations that data connect utilizes through Azure Data Factory.

If you would like to request support for additional datasets, regions, or sinks, let us know on [UserVoice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests?category_id=359581).

## Datasets

Data connect supports the following datasets today. To view the schemas for each dataset, create a new dataset in Azure Data Factory and use the Schema tab to view it. 

|Dataset name|Description|
|-------------|-----------|
|BasicDataSet_v0.Contact_v0|Contains contact information from each user's address book. The schema for these entities resembles the [Microsoft Graph personal contacts schema](/graph/api/resources/contact).| 
|BasicDataSet_v0.Event_v0|Contains the events in each user's calendar. The schema for these entities resembles the [Microsoft Graph calendar events schema](/graph/api/resources/event).| 
|BasicDataSet_v0.Message_v0|Contains the message in each user's mailbox. The schema for these entities resembles the [Microsoft Graph messages schema](/graph/api/resources/message).| 
|BasicDataSet_v0.SentItem_v0|Contains the messages sent from each user's mailbox. The schema for these entities resembles the [Microsoft Graph messages schema](/graph/api/resources/message).| 
|BasicDataSet_v0.User_v0|Contains user information (DisplayName, UserPrincipalName, and so on).| 
|BasicDataSet_v0.MailboxSettings_v0|Contains the mailbox settings of each user. The schema for these entities corresponds to the [Microsoft Graph mailbox settings schema](/graph/api/resources/mailboxsettings?view=graph-rest-1.0).| 
|BasicDataSet_v0.MailFolder_v0|Contains the mail folders from each user's mailbox. The schema for these entities corresponds to the [Microsoft Graph mail folders schema](/graph/api/resources/mailfolder).|
|BasicDataSet_v0.Manager_v0|Contains user information for the manager of each user. The schema for these entities corresponds to [Microsoft Graph user schema](/graph/api/resources/user).|
|BasicDataSet_v0.DirectReport_v0|Contains user information about the employees that directly report to each user. The schema for these entities corresponds to the [Microsoft Graph user schema](/graph/api/resources/user).|
|BasicDataSet_v0.CalendarView_v0|Contains the events  The schema for these entities corresponds to the [Microsoft Graph user schema](https://developer.microsoft.com/graph/docs/api-reference/v1.0/resources/events).|
|BasicDataSet_v0.User_v1|This table contains user information. The schema for these entities corresponds to the [Microsoft Graph user schema](/graph/api/resources/user).|
|BasicDataSet_v0.Contact_v1|Contains contact information from each user's address book. The schema for these entities corresponds to the [Microsoft Graph personal contacts schema](/graph/api/resources/contact).|
|BasicDataSet_v0.Event_v1|Contains the events in each user's calendar. The schema for these entities corresponds to the [Microsoft Graph calendar events schema](/graph/api/resources/event).|
|BasicDataSet_v0.Message_v1|Contains the message in each user's mailbox. The schema for these entities corresponds to the [Microsoft Graph messages schema](/graph/api/resources/message).|
|BasicDataSet_v0.SentItem_v1|Contains the message sent from each user's mailbox. The schema for these entities corresponds to the [Microsoft Graph messages schema](/graph/api/resources/message).|

## Regions

Data connect supports extracting data from a variety of different Microsoft 365 regions. To successfully move data from the Microsoft 365 data center into your Microsoft Azure storage, the Azure Data Factory instance and the Azure storage location must both map to a supported region for the location of the Microsoft 365 data. The following table indicates which Microsoft 365 regions are supported and the corresponding Azure regions required for data movement. 

| Office region                    | Azure region                                |
|----------------------------------|---------------------------------------------|
| **North America**                | East US<br/>East US 2<br/>Central US<br/>North Central US<br/>South Central US<br/>West Central US<br/>West US<br/>West US 2|
| **Europe**                       | North Europe<br/>West Europe|
| **Asia-Pacific**                 | East Asia<br/>Southeast Asia|
| **Australia**                    | Australia East<br/>Australia Southeast|

## Sinks

Sinks are the output location Data Factory uses to place data in Azure storage. Data connect supports the following sink storage types:

- Azure Data Lake Storage Gen 2
- Azure Storage Blob
- Azure Data Lake Storage Gen 1

The following characteristics apply to sinks: 

- The output files will be of format JSON lines. The output format is fixed and there is no support for modifying the format of the output. However, you can use Azure Data Factory to copy the result of a data connect pipeline into another storage mechanism (such as Azure SQL DB).
- Service Principal authentication is the only supported authentication mechanism for all sink types in a copy activity with Microsoft 365 as the source.
- When using Azure Storage Blob as the sink, you must ensure that your application has Storage Blob Data Contributor access to the Azure Storage Blob location.

## Next Steps

For more information about how to create data connect pipelines as a part of an Azure Data Factory, see the [Azure Data Factory Office 365 connector documentation](/azure/data-factory/connector-office-365).