---
title: "User selection and filtering Microsoft Graph data connect supports"
description: "Describes how to use Microsoft Graph data connect to select users to extract data for and filter the data returned."
author: "tlenig"
localization_priority: Priority
ms.prod: "data-connect"
---

# User selection and filtering Microsoft Graph data connect supports

You can use Microsoft Graph data connect to select the users that you want to extract data for, and to include filters to limit the data returned. This article describes the user selection options that data connect provides and the filtering that it supports. 

## User selection 

You can run pipelines on a set of users. The following are the options for user selection:
- All users within the organization
- Up to 10 groups of users within the organization to run on 
- A set of users based on a predicate consisting of Azure Active Directory user properties

Specify your user selection in the SourceDataSet of the Azure Data Factory copy activity. To run on a list of groups, add a new field **allowedGroups** under **typeProperties** and set this to a list of up to 10 groups' **Object Ids** separated by commas. If no groups are specified by default, data will be extracted for the entire organization. 

To specify a predicate to run on the entire tenant, add a new field **userScopeFilterUri** under **typeProperties** and set this to the predicate. The predicate format should match the query format of Microsoft Graph APIs. For example, if you want to limit the selection to users who work in the Finance department, you can use `https://graph.microsoft.com/v1.0/users?$filter=Department eq 'Finance'`. If you want to limit the selection to one user, you can use `https://graph.microsoft.com/v1.0/users?$filter=mail eq 'contosouser1@contoso.com'`.

Your query will only return users within the Microsoft 365 organization that you're querying. Guest users and non-user mailboxes will not be returned.

## Filtering 

You can limit the results extracted for your query using DateTime properties. Depending on the type of data requested, a DateTime filter might be required. The DateTime filter is provided using properties in the SourceDataSet of the Azure Data Factory copy activity. To specify a DateTime filter, add a new field **dateFilterColumn** under **typeProperties** and set this to one of the properties that support filtering in the following table. Next, add a **startTime** and **endTime** that represent the DateTime values that the property will be filtered upon. 

The following datasets require a filter to be provided on one of the corresponding DateTime properties.

| Dataset name                                                   | Properties that support filtering                                           | 
|----------------------------------------------------------------|-----------------------------------------------------------------------------| 
| BasicDataSet_v0.Event_v0<br>BasicDataSet_v0.Event_v1           | CreatedDateTime<br>LastModifiedDateTime                                     | 
| BasicDataSet_v0.Message_v0<br>BasicDataSet_v0.Message_v1       | CreatedDateTime<br>LastModifiedDateTime<br>ReceivedDateTime<br>SentDateTime | 
| BasicDataSet_v0.SentItem_v0<br>BasicDataSet_v0.SentItem_v1     | CreatedDateTime<br>LastModifiedDateTime<br>ReceivedDateTime<br>SentDateTime |

>**Note** Pipelines requesting BasicDataSet_v0.CalendarView_v0 also require a DateTime filter, but no **dateFilterColumn** is specified in the SourceDataSet. However, a **startTime** and **endTime** are required and only events that begin after the **startTime** and finish before the **endTime** are provided.

## Next Steps 

For more information about how to modify the user selected for extractoin and filtering in data connect pipelines, see the [Azure Data Factory Office 365 connector documentation](/azure/data-factory/connector-office-365).  

