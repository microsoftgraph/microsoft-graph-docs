---
title: "Get cloudPcOverview"
description: "Read the properties and relationships of a cloudPcOverview object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Get cloudPcOverview
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/cloudPcsOverview/{cloudPcOverviewId}
```

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response, including `$apply`, `$count`, `$filter`, `$orderBy`, `$select`, `$skip`, and `$top`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcOverview](../resources/managedtenants-cloudpcoverview.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_cloudpcoverview"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/cloudPcsOverview/{cloudPcOverviewId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.cloudPcOverview"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.managedTenants.cloudPcOverview",
  "id": "34298981-4fc8-4974-9486-c8909ed1521b",
  "tenantDisplayName": "Fourth Coffee",
  "totalCloudPcStatus": 18,
  "numberOfCloudPcStatusNotProvisioned": 4,
  "numberOfCloudPcStatusProvisioning": 0,
  "numberOfCloudPcStatusProvisioned": 14,
  "numberOfCloudPcStatusUpgrading": 0,
  "numberOfCloudPcStatusInGracePeriod": 0,
  "numberOfCloudPcStatusDeprovisioning": 0,
  "numberOfCloudPcStatusFailed": 0,
  "numberOfCloudPcStatusUnknown": 0,
  "totalCloudPcConnectionStatus": 25,
  "numberOfCloudPcConnectionStatusPending": 0,
  "numberOfCloudPcConnectionStatusRunning": 0,
  "numberOfCloudPcConnectionStatusPassed": 17,
  "numberOfCloudPcConnectionStatusFailed": 6,
  "numberOfCloudPcConnectionStatusUnkownFutureValue": 0,
  "lastRefreshedDateTime": "2021-07-11T17:18:46.4830816Z"
}
```
