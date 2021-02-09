---
title: "Get groupPolicySettingMapping"
description: "Read properties and relationships of the groupPolicySettingMapping object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Get groupPolicySettingMapping

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Read properties and relationships of the [groupPolicySettingMapping](../resources/intune-gpanalyticsservice-grouppolicysettingmapping.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.ReadWrite.All, DeviceManagementConfiguration.Read.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/groupPolicyMigrationReports/{groupPolicyMigrationReportId}/groupPolicySettingMappings/{groupPolicySettingMappingId}
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
If successful, this method returns a `200 OK` response code and [groupPolicySettingMapping](../resources/intune-gpanalyticsservice-grouppolicysettingmapping.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
GET https://graph.microsoft.com/beta/deviceManagement/groupPolicyMigrationReports/{groupPolicyMigrationReportId}/groupPolicySettingMappings/{groupPolicySettingMappingId}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1143

{
  "value": {
    "@odata.type": "#microsoft.graph.groupPolicySettingMapping",
    "id": "8fa04560-4560-8fa0-6045-a08f6045a08f",
    "parentId": "Parent Id value",
    "childIdList": [
      "Child Id List value"
    ],
    "settingName": "Setting Name value",
    "settingValue": "Setting Value value",
    "settingValueType": "Setting Value Type value",
    "settingDisplayName": "Setting Display Name value",
    "settingDisplayValue": "Setting Display Value value",
    "settingDisplayValueType": "Setting Display Value Type value",
    "settingValueDisplayUnits": "Setting Value Display Units value",
    "settingCategory": "Setting Category value",
    "mdmCspName": "Mdm Csp Name value",
    "mdmSettingUri": "Mdm Setting Uri value",
    "mdmMinimumOSVersion": 3,
    "settingType": "policy",
    "isMdmSupported": true,
    "mdmSupportedState": "supported",
    "settingScope": "device",
    "intuneSettingUriList": [
      "Intune Setting Uri List value"
    ],
    "intuneSettingDefinitionId": "Intune Setting Definition Id value",
    "admxSettingDefinitionId": "Admx Setting Definition Id value"
  }
}
```




