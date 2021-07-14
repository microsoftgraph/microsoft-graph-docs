---
title: "Get deviceCompliancePolicySettingStateSummary"
description: "Read the properties and relationships of a deviceCompliancePolicySettingStateSummary object."
author: "isaiahwilliams"
localization_priority: Normal
ms.prod: "microsoft-365-lighthouse"
doc_type: apiPageType
---

# Get deviceCompliancePolicySettingStateSummary
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/deviceCompliancePolicySettingStateSummarys/{deviceCompliancePolicySettingStateSummaryId}
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

If successful, this method returns a `200 OK` response code and a [deviceCompliancePolicySettingStateSummary](../resources/managedtenants-devicecompliancepolicysettingstatesummary.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_devicecompliancepolicysettingstatesummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/deviceCompliancePolicySettingStateSummarys/{deviceCompliancePolicySettingStateSummaryId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.managedTenants.deviceCompliancePolicySettingStateSummary",
    "id": "34298981-4fc8-4974-9486-c8909ed1521b_277f9230-81f7-ffc3-af78-4662ec3dca09",
    "intuneAccountId": "6f3e6534-b466-4fac-9a31-4c305cc40833",
    "intuneSettingId": "277f9230-81f7-ffc3-af78-4662ec3dca09",
    "policyType": "DefaultDeviceCompliancePolicy",
    "settingName": "RequireDeviceCompliancePolicyAssigned",
    "failedDeviceCount": 0,
    "errorDeviceCount": 4,
    "conflictDeviceCount": 0,
    "lastRefreshedDateTime": "2021-07-11T00:00:00Z",
    "tenantId": "34298981-4fc8-4974-9486-c8909ed1521b",
    "tenantDisplayName": "Fourth Coffee"
}
```
