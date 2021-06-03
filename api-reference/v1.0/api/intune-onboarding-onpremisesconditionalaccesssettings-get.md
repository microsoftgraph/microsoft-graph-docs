---
title: "Get onPremisesConditionalAccessSettings"
description: "Read properties and relationships of the onPremisesConditionalAccessSettings object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get onPremisesConditionalAccessSettings

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [onPremisesConditionalAccessSettings](../resources/intune-onboarding-onpremisesconditionalaccesssettings.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.Read.All, DeviceManagementServiceConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.Read.All, DeviceManagementServiceConfig.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/conditionalAccessSettings
```

## Optional query parameters
This method supports the [OData Query Parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [onPremisesConditionalAccessSettings](../resources/intune-onboarding-onpremisesconditionalaccesssettings.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/v1.0/deviceManagement/conditionalAccessSettings
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 363

{
  "value": {
    "@odata.type": "#microsoft.graph.onPremisesConditionalAccessSettings",
    "id": "a0efde21-de21-a0ef-21de-efa021deefa0",
    "enabled": true,
    "includedGroups": [
      "77c9d466-d466-77c9-66d4-c97766d4c977"
    ],
    "excludedGroups": [
      "2a0afae4-fae4-2a0a-e4fa-0a2ae4fa0a2a"
    ],
    "overrideDefaultRule": true
  }
}
```




