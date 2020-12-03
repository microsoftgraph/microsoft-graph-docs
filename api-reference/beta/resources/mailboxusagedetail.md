---
title: "mailboxUsageDetail resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
author: "pranoychaudhuri"
ms.prod: "outlook"
doc_type: resourcePageType
---

# mailboxUsageDetail resource type

Namespace: microsoft.graph

## Properties

| Property                        | Type    |
| :------------------------------ | :------ |
| reportRefreshDate               | Date    |
| userPrincipalName               | String  |
| displayName                     | String  |
| isDeleted                       | Boolean |
| deletedDate                     | Date    |
| createdDate                     | Date    |
| lastActivityDate                | Date    |
| itemCount                       | Int64   |
| storageUsedInBytes              | Int64   |
| deletedItemCount                | Int64   |
| deletedItemSizeInBytes          | Int64   |
| issueWarningQuotaInBytes        | Int64   |
| prohibitSendQuotaInBytes        | Int64   |
| prohibitSendReceiveQuotaInBytes | Int64   |
| reportPeriod                    | String  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mailboxUsageDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "displayName": "String", 
  "isDeleted": true, 
  "deletedDate": "Date", 
  "createdDate": "Date", 
  "lastActivityDate": "Date", 
  "itemCount": 1024, 
  "storageUsedInBytes": 1024, 
  "deletedItemCount": 1024,
  "deletedItemSizeInBytes": 1024, 
  "issueWarningQuotaInBytes": 1024, 
  "prohibitSendQuotaInBytes": 1024, 
  "prohibitSendReceiveQuotaInBytes": 1024, 
  "reportPeriod": "String"
}
```


