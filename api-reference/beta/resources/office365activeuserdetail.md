---
title: "office365ActiveUserDetail resource type"
description: "The following is a JSON representation of the resource."
localization_priority: Normal
ms.prod: "reports"
author: "pranoychaudhuri"
doc_type: resourcePageType
---

# office365ActiveUserDetail resource type

Namespace: microsoft.graph

## Properties

| Property                          | Type              | Description                              |
| :-------------------------------- | :---------------- | ---------------------------------------- |
| reportRefreshDate                 | Date              | The latest date of the content.          |
| userPrincipalName                 | String            | The user principal name (UPN) of the user. The UPN is an Internet-style login name for the user based on the Internet standard RFC 822. By convention, this should map to the user's email name. The general format is alias@domain, where domain must be present in the tenant’s collection of verified domains. This property is required when a user is created. |
| displayName                       | String            | The name displayed in the address book for the user. This is usually the combination of the user's first name, middle initial, and last name. This property is required when a user is created and it cannot be cleared during updates. |
| isDeleted                         | Boolean           | Whether this user has been deleted or soft deleted. |
| deletedDate                       | Date              | The date when the delete operation happened. Default value is "null" when the user has not been deleted. |
| hasExchangeLicense                | Boolean           | Whether the user has been assigned an Exchange license. |
| hasOneDriveLicense                | Boolean           | Whether the user has been assigned a OneDrive license. |
| hasSharePointLicense              | Boolean           | Whether the user has been assigned a SharePoint license. |
| hasSkypeForBusinessLicense        | Boolean           | Whether the user has been assigned a Skype For Business license. |
| hasYammerLicense                  | Boolean           | Whether the user has been assigned a Yammer license. |
| hasTeamsLicense                   | Boolean           | Whether the user has been assigned a Teams license. |
| exchangeLastActivityDate          | Date              | The date when user last read or sent email. |
| oneDriveLastActivityDate          | Date              | The date when user last viewed or edited files, shared files internally or externally, or synced files. |
| sharePointLastActivityDate        | Date              | The date when user last viewed or edited files, shared files internally or externally, synced files, or viewed SharePoint pages. |
| skypeForBusinessLastActivityDate  | Date              | The date when user last organized or participated in conferences, or joined peer-to-peer sessions. |
| yammerLastActivityDate            | Date              | The date when user last posted, read, or liked message. |
| teamsLastActivityDate             | Date              | The date when user last posted messages in team channels, sent messages in private chat sessions, or participated in meetings or calls. |
| exchangeLicenseAssignDate         | Date              | The last date when the user was assigned an Exchange license. |
| oneDriveLicenseAssignDate         | Date              | The last date when the user was assigned a OneDrive license. |
| sharePointLicenseAssignDate       | Date              | The last date when the user was assigned a SharePoint license. |
| skypeForBusinessLicenseAssignDate | Date              | The last date when the user was assigned a Skype For Business license. |
| yammerLicenseAssignDate           | Date              | The last date when the user was assigned a Yammer license. |
| teamsLicenseAssignDate            | Date              | The last date when the user was assigned a Teams license. |
| assignedProducts                  | String collection | All the products assigned for the user.  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365ActiveUserDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "displayName": "String", 
  "isDeleted": true, 
  "deletedDate": "Date", 
  "hasExchangeLicense": true, 
  "hasOneDriveLicense": true, 
  "hasSharePointLicense": true, 
  "hasSkypeForBusinessLicense": true, 
  "hasYammerLicense": true, 
  "hasTeamsLicense": true, 
  "exchangeLastActivityDate": "Date", 
  "oneDriveLastActivityDate": "Date", 
  "sharePointLastActivityDate": "Date", 
  "skypeForBusinessLastActivityDate": "Date", 
  "yammerLastActivityDate": "Date", 
  "teamsLastActivityDate": "Date", 
  "exchangeLicenseAssignDate": "Date", 
  "oneDriveLicenseAssignDate": "Date", 
  "sharePointLicenseAssignDate": "Date", 
  "skypeForBusinessLicenseAssignDate": "Date", 
  "yammerLicenseAssignDate": "Date", 
  "teamsLicenseAssignDate": "Date", 
  "assignedProducts": ["String"]
}
```


