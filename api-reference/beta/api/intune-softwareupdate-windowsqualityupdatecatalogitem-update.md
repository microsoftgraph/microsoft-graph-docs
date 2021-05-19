---
title: "Update windowsQualityUpdateCatalogItem"
description: "Update the properties of a windowsQualityUpdateCatalogItem object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update windowsQualityUpdateCatalogItem

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /deviceManagement/windowsUpdateCatalogItems/{windowsUpdateCatalogItemId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) object.

The following table shows the properties that are required when you create the [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The catalog item id. Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|displayName|String|The display name for the catalog item. Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|releaseDateTime|DateTimeOffset|The date the catalog item was released Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|endOfSupportDate|DateTimeOffset|The last supported date for a catalog item Inherited from [windowsUpdateCatalogItem](../resources/intune-softwareupdate-windowsupdatecatalogitem.md)|
|kbArticleId|String|Knowledge base article id|
|classification|[windowsQualityUpdateClassification](../resources/intune-softwareupdate-windowsqualityupdateclassification.md)|Classification of the quality update. Possible values are: `all`, `security`, `nonSecurity`.|
|isExpeditable|Boolean|Flag indicating if update qualifies for expedite|



## Response
If successful, this method returns a `200 OK` response code and an updated [windowsQualityUpdateCatalogItem](../resources/intune-softwareupdate-windowsqualityupdatecatalogitem.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/windowsUpdateCatalogItems/{windowsUpdateCatalogItemId}
Content-type: application/json
Content-length: 332

{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateCatalogItem",
  "displayName": "Display Name value",
  "releaseDateTime": "2017-01-01T00:01:34.7470482-08:00",
  "endOfSupportDate": "2017-01-01T00:02:08.3437725-08:00",
  "kbArticleId": "Kb Article Id value",
  "classification": "security",
  "isExpeditable": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 381

{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateCatalogItem",
  "id": "8eb831ba-31ba-8eb8-ba31-b88eba31b88e",
  "displayName": "Display Name value",
  "releaseDateTime": "2017-01-01T00:01:34.7470482-08:00",
  "endOfSupportDate": "2017-01-01T00:02:08.3437725-08:00",
  "kbArticleId": "Kb Article Id value",
  "classification": "security",
  "isExpeditable": true
}
```




