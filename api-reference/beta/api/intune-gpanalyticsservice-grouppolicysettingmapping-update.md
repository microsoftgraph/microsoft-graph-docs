---
title: "Update groupPolicySettingMapping"
description: "Update the properties of a groupPolicySettingMapping object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update groupPolicySettingMapping

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [groupPolicySettingMapping](../resources/intune-gpanalyticsservice-grouppolicysettingmapping.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
PATCH /deviceManagement/groupPolicyMigrationReports/{groupPolicyMigrationReportId}/groupPolicySettingMappings/{groupPolicySettingMappingId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [groupPolicySettingMapping](../resources/intune-gpanalyticsservice-grouppolicysettingmapping.md) object.

The following table shows the properties that are required when you create the [groupPolicySettingMapping](../resources/intune-gpanalyticsservice-grouppolicysettingmapping.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Not yet documented|
|parentId|String|Parent Id of the group policy setting.|
|childIdList|String collection|List of Child Ids of the group policy setting.|
|settingName|String|The name of this group policy setting.|
|settingValue|String|The value of this group policy setting.|
|settingValueType|String|The value type of this group policy setting.|
|settingDisplayName|String|The display name of this group policy setting.|
|settingDisplayValue|String|The display value of this group policy setting.|
|settingDisplayValueType|String|The display value type of this group policy setting.|
|settingValueDisplayUnits|String|The display units of this group policy setting value|
|settingCategory|String|The category the group policy setting is in.|
|mdmCspName|String|The CSP name this group policy setting maps to.|
|mdmSettingUri|String|The MDM CSP URI this group policy setting maps to.|
|mdmMinimumOSVersion|Int32|The minimum OS version this mdm setting supports.|
|settingType|[groupPolicySettingType](../resources/intune-gpanalyticsservice-grouppolicysettingtype.md)|The setting type (security or admx) of the Group Policy. Possible values are: `unknown`, `policy`, `account`, `securityOptions`, `userRightsAssignment`, `auditSetting`, `windowsFirewallSettings`.|
|isMdmSupported|Boolean|Indicates if the setting is supported by Intune or not|
|mdmSupportedState|[mdmSupportedState](../resources/intune-gpanalyticsservice-mdmsupportedstate.md)|Indicates if the setting is supported in Mdm or not. Possible values are: `unknown`, `supported`, `unsupported`, `deprecated`.|
|settingScope|[groupPolicySettingScope](../resources/intune-gpanalyticsservice-grouppolicysettingscope.md)|The scope of the setting. Possible values are: `unknown`, `device`, `user`.|
|intuneSettingUriList|String collection|The list of Intune Setting URIs this group policy setting maps to|
|intuneSettingDefinitionId|String|The Intune Setting Definition Id|
|admxSettingDefinitionId|String|Admx Group Policy Id|



## Response
If successful, this method returns a `200 OK` response code and an updated [groupPolicySettingMapping](../resources/intune-gpanalyticsservice-grouppolicysettingmapping.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/groupPolicyMigrationReports/{groupPolicyMigrationReportId}/groupPolicySettingMappings/{groupPolicySettingMappingId}
Content-type: application/json
Content-length: 1023

{
  "@odata.type": "#microsoft.graph.groupPolicySettingMapping",
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
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 1072

{
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
```




