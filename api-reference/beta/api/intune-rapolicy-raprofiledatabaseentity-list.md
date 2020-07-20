---
title: "List raProfileDatabaseEntities"
description: "List properties and relationships of the raProfileDatabaseEntity objects."
author: "dougeby"
localization_priority: Normal
ms.prod: "Intune"
doc_type: apiPageType
---

# List raProfileDatabaseEntities

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

List properties and relationships of the [raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md) objects.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementServiceConfig.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementServiceConfig.ReadWrite.All, DeviceManagementServiceConfig.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /resourceAccessProfileEntities
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [raProfileDatabaseEntity](../resources/intune-rapolicy-raprofiledatabaseentity.md) objects in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/resourceAccessProfileEntities
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 908

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.raProfileDatabaseEntity",
      "version": 7,
      "isDeleted": true,
      "softDeletedTime": "2016-12-31T23:59:22.6041454-08:00",
      "displayName": "Display Name value",
      "linkedProfileIds": [
        "5b59ac1a-ac1a-5b59-1aac-595b1aac595b"
      ],
      "profileTypeName": "Profile Type Name value",
      "profileBody": "Profile Body value",
      "profileBodyHash": "Profile Body Hash value",
      "platformType": 12,
      "transformedProfileBody": "Transformed Profile Body value",
      "transformedProfileBodyHash": "Transformed Profile Body Hash value",
      "tenantId": "f9882bcd-2bcd-f988-cd2b-88f9cd2b88f9",
      "profileId": "6389d896-d896-6389-96d8-896396d88963",
      "eTag": "ETag value",
      "schemaVersion": "betaStart",
      "lastModified": "2017-01-01T00:03:14.6651031-08:00"
    }
  ]
}
```



