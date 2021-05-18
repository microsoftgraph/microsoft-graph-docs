---
title: "Datasets, regions, and sinks that Microsoft Graph Data Connect supports"
description: "Describes the supported datasets and destination storage types that can be used with Microsoft Graph Data Connect."
author: "fercobo-msft"
localization_priority: Priority
ms.prod: "data-connect"
---

# Datasets, regions, and sinks that Microsoft Graph Data Connect supports

Microsoft Graph Data Connect supports a variety of datasets, data regions, and storage locations in Microsoft Azure. This topic describes the supported datasets and how to access the dataset schemas, the Microsoft 365 and Microsoft Azure regions that are supported, and the storage locations that data connect utilizes through Azure Data Factory.

## Datasets

Data connect supports the following datasets today. To view the schemas for each dataset, create a new dataset in Azure Data Factory and use the Schema tab to view it.

<!-- Fernando's note: Samples are pending Nik Charlebois update -->
| Dataset name                       | Description                                                                        | Sample |
| ---------------------------------- | ---------------------------------------------------------------------------------- | ------ |
| BasicDataSet_v0.CalendarView_v0    | Contains the events from the Calendar view.                                        |        |
| BasicDataSet_v0.Contact_v0         | Contains the available information from each user’s address book.                  |        |
| BasicDataSet_v0.Contact_v1         | Contains contact information from each user's address book.                        |        |
| BasicDataSet_v0.DirectReport_v0    | Contains user information about the employees that directly report to each user.   |        |
| BasicDataSet_v0.Event_v0           | Contains the information from a user’s calendar events.                            |        |
| BasicDataSet_v0.Event_v1           | Contains the events in each user's calendar.                                       |        |
| BasicDataSet_v0.MailboxSettings_v0 | Contains the mailbox settings of each user.                                        |        |
| BasicDataSet_v0.MailFolder_v0      | Contains the mail folders from each user's mailbox.                                |        |
| BasicDataSet_v0.Manager_v0         | Contains user information for the manager of each user.                            |        |
| BasicDataSet_v0.Message_v0         | Contains the messages from a user’s mailbox.                                       |        |
| BasicDataSet_v0.Message_v1         | Contains the message in each user's mailbox.                                       |        |
| BasicDataSet_v0.SentItem_v0        | Contains the messages sent from each user's mailbox.                               |        |
| BasicDataSet_v0.SentItem_v1        | Contains the message sent from each user's mailbox.                                |        |
| BasicDataSet_v0.User_v0            | Contains user information (DisplayName, UserPrincipalName, and other information). |        |
| BasicDataSet_v0.User_v1            | Contains user information.                                                         |        |

## Regions

Data Connect supports extracting data from a variety of different Microsoft 365 regions. To successfully move data from the Microsoft 365 data center into your Microsoft Azure storage, the Azure Data Factory instance and the Azure storage location must both map to a supported region for the location of the Microsoft 365 data. The following table indicates which Microsoft 365 regions are supported and the corresponding Azure regions required for data movement.

| Office region      | Azure region                                                                                                                                                               |
| ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Asia-Pacific**   | <ul><li>East Asia</li><li>Southeast Asia</li></ul>                                                                                                                         |
| **Australia**      | <ul><li>Australia East</li><li>Australia Southeast</li></ul>                                                                                                               |
| **Europe**         | <ul><li>North Europe</li><li>West Europe</li></ul>                                                                                                                         |
| **North America**  | <ul><li>Central US</li><li>East US</li><li>East US 2</li><li>North Central US</li><li>South Central US</li><li>West Central US</li><li>West US</li><li>West US 2</li></ul> |
| **United Kingdom** | <ul><li>UK South</li><li>UK West</li></ul>                                                                                                                                 |

## Sinks

Sinks are the output location Data Factory uses to place data in Azure storage. Data Connect supports the following sink storage types:

- [Azure Data Lake Storage Gen 1](https://docs.microsoft.com/azure/data-lake-store/data-lake-store-overview)
- [Azure Data Lake Storage Gen 2](/azure/storage/blobs/data-lake-storage-introduction)
- [Azure Storage Blob](/azure/storage/blobs/storage-blobs-overview)

The following characteristics apply to sinks:

- The output files will be of format JSON lines. The output format is fixed and there is no support for modifying the format of the output. However, you can use Azure Data Factory to copy the result of a data connect pipeline into another storage mechanism (such as Azure SQL DB).
- Service Principal authentication is the only supported authentication mechanism for all sink types in a copy activity with Microsoft 365 as the source.
- When using Azure Storage Blob as the sink, you must ensure that your application has Storage Blob Data Contributor access to the Azure Storage Blob location.

## Next Steps

For more information about how to create data connect pipelines as a part of an Azure Data Factory, see the [Azure Data Factory Office 365 connector documentation](/azure/data-factory/connector-office-365).
