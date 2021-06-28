---
title: "mobileAppContentFile resource type"
description: "Contains properties for a single installer file that is associated with a given mobileAppContent version."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# mobileAppContentFile resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for a single installer file that is associated with a given mobileAppContent version.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List mobileAppContentFiles](../api/intune-apps-mobileappcontentfile-list.md)|[mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) collection|List properties and relationships of the [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) objects.|
|[Get mobileAppContentFile](../api/intune-apps-mobileappcontentfile-get.md)|[mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md)|Read properties and relationships of the [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) object.|
|[Create mobileAppContentFile](../api/intune-apps-mobileappcontentfile-create.md)|[mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md)|Create a new [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) object.|
|[Delete mobileAppContentFile](../api/intune-apps-mobileappcontentfile-delete.md)|None|Deletes a [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md).|
|[Update mobileAppContentFile](../api/intune-apps-mobileappcontentfile-update.md)|[mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md)|Update the properties of a [mobileAppContentFile](../resources/intune-apps-mobileappcontentfile.md) object.|
|[commit action](../api/intune-apps-mobileappcontentfile-commit.md)|None|Commits a file of a given app.|
|[renewUpload action](../api/intune-apps-mobileappcontentfile-renewupload.md)|None|Renews the SAS URI for an application file upload.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureStorageUri|String|The Azure Storage URI.|
|isCommitted|Boolean|A value indicating whether the file is committed.|
|id|String|The File Id.|
|createdDateTime|DateTimeOffset|The time the file was created.|
|name|String|the file name.|
|size|Int64|The size of the file prior to encryption.|
|sizeEncrypted|Int64|The size of the file after encryption.|
|azureStorageUriExpirationDateTime|DateTimeOffset|The time the Azure storage Uri expires.|
|manifest|Binary|The manifest information.|
|uploadState|[mobileAppContentFileUploadState](../resources/intune-apps-mobileappcontentfileuploadstate.md)|The state of the current upload request. Possible values are: `success`, `transientError`, `error`, `unknown`, `azureStorageUriRequestSuccess`, `azureStorageUriRequestPending`, `azureStorageUriRequestFailed`, `azureStorageUriRequestTimedOut`, `azureStorageUriRenewalSuccess`, `azureStorageUriRenewalPending`, `azureStorageUriRenewalFailed`, `azureStorageUriRenewalTimedOut`, `commitFileSuccess`, `commitFilePending`, `commitFileFailed`, `commitFileTimedOut`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mobileAppContentFile"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mobileAppContentFile",
  "azureStorageUri": "String",
  "isCommitted": true,
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "name": "String",
  "size": 1024,
  "sizeEncrypted": 1024,
  "azureStorageUriExpirationDateTime": "String (timestamp)",
  "manifest": "binary",
  "uploadState": "String"
}
```




