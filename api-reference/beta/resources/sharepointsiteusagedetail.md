---
title: "sharePointSiteUsageDetail resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: resourcePageType
author: "JeremyKelley"
---

# sharePointSiteUsageDetail resource type

Namespace: microsoft.graph

## Properties

| Property                | Type    |
| :---------------------- | :------ |
| reportRefreshDate       | Date    |
| siteId                  | Guid  |
| siteUrl                 | String  |
| ownerDisplayName        | String  |
| ownerPrincipalName      | String  |
| isDeleted               | Boolean |
| lastActivityDate        | Date    |
| SiteSensitivityLabelId  | String  |
| ExternalSharing         | Boolean |
| UnmanagedDevicePolicy   | String  |
| GeoLocation             | String  |
| fileCount               | Int64   |
| activeFileCount         | Int64   |
| pageViewCount           | Int64   |
| visitedPageCount        | Int64   |
| AnonymousLinkCount      | Int64   |
| CompanyLinkCount        | Int64   |
| SecureLinkForGuestCount | Int64   |
| SecureLinkForMemberCount| Int64   |
| storageUsedInBytes      | Int64   |
| storageAllocatedInBytes | Int64   |
| rootWebTemplate         | String  |
| reportPeriod            | String  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointSiteUsageDetail"
} -->

```json
{
  "reportRefreshDate": "Date",
  "siteId": "Guid",
  "siteUrl": "String",
  "ownerDisplayName": "String",
  "ownerPrincipalName": "String",
  "isDeleted": true,
  "lastActivityDate": "Date",
  "lastActivityDate": "2017-09-01", 
  "SiteSensitivityLabelId": "String",
  "ExternalSharing": true,
  "UnmanagedDevicePolicy": "String",
  "GeoLocation": "String",
  "fileCount": 1024,
  "activeFileCount": 1024,
  "pageViewCount": 1024,
  "visitedPageCount": 1024,
  "AnonymousLinkCount": 5,
  "CompanyLinkCount": 8,
  "SecureLinkForGuestCount": 13,
  "SecureLinkForMemberCount": 11,
  "storageUsedInBytes": 1024,
  "storageAllocatedInBytes": 1024,
  "rootWebTemplate": "String",
  "reportPeriod": "String"
}
```


