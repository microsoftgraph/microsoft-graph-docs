---
title: "List windowsProtectionStates"
description: "Get a list of the windowsProtectionState objects and their properties."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# List windowsProtectionStates
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementManagedDevices.Read.All, DeviceManagementManagedDevices.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/windowsProtectionStates
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

If successful, this method returns a `200 OK` response code and a collection of [windowsProtectionState](../resources/managedtenants-windowsprotectionstate.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_windowsprotectionstate"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/windowsProtectionStates
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-windowsprotectionstate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-windowsprotectionstate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/list-windowsprotectionstate-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-windowsprotectionstate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---



### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.windowsProtectionState)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/managedTenants/windowsProtectionStates",
    "value": [
        {
            "id": "34298981-4fc8-4974-9486-c8909ed1521b_95378ac4-eded-4671-8fa2-4e42e5de3463",
            "managedDeviceId": "95378ac4-eded-4671-8fa2-4e42e5de3463",
            "managedDeviceName": "vm11",
            "malwareProtectionEnabled": true,
            "managedDeviceHealthState": "Clean",
            "realTimeProtectionEnabled": true,
            "networkInspectionSystemEnabled": true,
            "quickScanOverdue": false,
            "fullScanOverdue": false,
            "signatureUpdateOverdue": false,
            "rebootRequired": false,
            "attentionRequired": false,
            "fullScanRequired": false,
            "engineVersion": "1.1.18300.4",
            "signatureVersion": "1.343.642.0",
            "antiMalwareVersion": "4.18.2106.6",
            "lastQuickScanDateTime": "2021-06-24T14:50:28Z",
            "lastFullScanDateTime": null,
            "lastQuickScanSignatureVersion": "1.341.1288.0",
            "lastFullScanSignatureVersion": "0.0.0.0",
            "lastReportedDateTime": "2021-07-09T14:43:45Z",
            "devicePropertiesRefreshTime": "2021-07-09T14:44:28Z",
            "deviceDeleted": false,
            "lastRefreshedDateTime": "2021-07-11T02:02:35.9816065Z",
            "tenantId": "34298981-4fc8-4974-9486-c8909ed1521b",
            "tenantDisplayName": "Fourth Coffee",
            "devicePropertiesRefreshDateTime": "2021-07-09T14:44:28Z"
        },
        {
            "id": "38227791-a88b-4fcc-81c5-58cf77668320_49ed91f1-32ac-4881-9c1b-b709ba29e31b",
            "managedDeviceId": "49ed91f1-32ac-4881-9c1b-b709ba29e31b",
            "managedDeviceName": "VM4511",
            "malwareProtectionEnabled": true,
            "managedDeviceHealthState": "Clean",
            "realTimeProtectionEnabled": true,
            "networkInspectionSystemEnabled": true,
            "quickScanOverdue": false,
            "fullScanOverdue": false,
            "signatureUpdateOverdue": false,
            "rebootRequired": false,
            "attentionRequired": false,
            "fullScanRequired": false,
            "engineVersion": "1.1.18300.4",
            "signatureVersion": "1.343.618.0",
            "antiMalwareVersion": "4.18.2105.5",
            "lastQuickScanDateTime": "2021-06-21T15:05:41Z",
            "lastFullScanDateTime": "2021-04-19T20:03:26Z",
            "lastQuickScanSignatureVersion": "1.341.1157.0",
            "lastFullScanSignatureVersion": "1.303.25.0",
            "lastReportedDateTime": "2021-07-09T14:43:52Z",
            "devicePropertiesRefreshTime": "2021-07-09T14:44:28Z",
            "deviceDeleted": false,
            "lastRefreshedDateTime": "2021-07-11T02:02:35.9816065Z",
            "tenantId": "38227791-a88b-4fcc-81c5-58cf77668320",
            "tenantDisplayName": "Consolidated Messenger",
            "devicePropertiesRefreshDateTime": "2021-07-09T14:44:28Z"
        }
    ]
}
```
