---
title: "iosVppEBook resource type"
description: "A class containing the properties for iOS Vpp eBook."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# iosVppEBook resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties for iOS Vpp eBook.


Inherits from [managedEBook](../resources/intune-books-managedebook.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List iosVppEBooks](../api/intune-books-iosvppebook-list.md)|[iosVppEBook](../resources/intune-books-iosvppebook.md) collection|List properties and relationships of the [iosVppEBook](../resources/intune-books-iosvppebook.md) objects.|
|[Get iosVppEBook](../api/intune-books-iosvppebook-get.md)|[iosVppEBook](../resources/intune-books-iosvppebook.md)|Read properties and relationships of the [iosVppEBook](../resources/intune-books-iosvppebook.md) object.|
|[Create iosVppEBook](../api/intune-books-iosvppebook-create.md)|[iosVppEBook](../resources/intune-books-iosvppebook.md)|Create a new [iosVppEBook](../resources/intune-books-iosvppebook.md) object.|
|[Delete iosVppEBook](../api/intune-books-iosvppebook-delete.md)|None|Deletes a [iosVppEBook](../resources/intune-books-iosvppebook.md).|
|[Update iosVppEBook](../api/intune-books-iosvppebook-update.md)|[iosVppEBook](../resources/intune-books-iosvppebook.md)|Update the properties of a [iosVppEBook](../resources/intune-books-iosvppebook.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|displayName|String|Name of the eBook. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|description|String|Description. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|publisher|String|Publisher. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|publishedDateTime|DateTimeOffset|The date and time when the eBook was published. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|largeCover|[mimeContent](../resources/intune-shared-mimecontent.md)|Book cover. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|createdDateTime|DateTimeOffset|The date and time when the eBook file was created. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time when the eBook was last modified. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|informationUrl|String|The more information Url. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|privacyInformationUrl|String|The privacy statement Url. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|vppTokenId|Guid|The Vpp token ID.|
|appleId|String|The Apple ID associated with Vpp token.|
|vppOrganizationName|String|The Vpp token's organization name.|
|genres|String collection|Genres.|
|language|String|Language.|
|seller|String|Seller.|
|totalLicenseCount|Int32|Total license count.|
|usedLicenseCount|Int32|Used license count.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[managedEBookAssignment](../resources/intune-books-managedebookassignment.md) collection|The list of assignments for this eBook. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|installSummary|[eBookInstallSummary](../resources/intune-books-ebookinstallsummary.md)|Mobile App Install Summary. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|deviceStates|[deviceInstallState](../resources/intune-books-deviceinstallstate.md) collection|The list of installation states for this eBook. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|
|userStateSummary|[userInstallStateSummary](../resources/intune-books-userinstallstatesummary.md) collection|The list of installation states for this eBook. Inherited from [managedEBook](../resources/intune-books-managedebook.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iosVppEBook"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosVppEBook",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "publisher": "String",
  "publishedDateTime": "String (timestamp)",
  "largeCover": {
    "@odata.type": "microsoft.graph.mimeContent",
    "type": "String",
    "value": "binary"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "informationUrl": "String",
  "privacyInformationUrl": "String",
  "vppTokenId": "Guid",
  "appleId": "String",
  "vppOrganizationName": "String",
  "genres": [
    "String"
  ],
  "language": "String",
  "seller": "String",
  "totalLicenseCount": 1024,
  "usedLicenseCount": 1024
}
```




