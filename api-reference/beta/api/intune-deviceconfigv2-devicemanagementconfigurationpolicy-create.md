---
title: "Create deviceManagementConfigurationPolicy"
description: "Create a new deviceManagementConfigurationPolicy object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create deviceManagementConfigurationPolicy

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md) object.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|DeviceManagementConfiguration.Read.All, DeviceManagementConfiguration.ReadWrite.All|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/configurationPolicies
POST /deviceManagement/reusablePolicySettings/{deviceManagementReusablePolicySettingId}/referencingConfigurationPolicies
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the deviceManagementConfigurationPolicy object.

The following table shows the properties that are required when you create the deviceManagementConfigurationPolicy.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the policy document. Automatically generated.|
|name|String|Policy name|
|description|String|Policy description|
|platforms|[deviceManagementConfigurationPlatforms](../resources/intune-deviceconfigv2-devicemanagementconfigurationplatforms.md)|Platforms for this policy. Possible values are: `none`, `macOS`, `windows10X`, `windows10`.|
|technologies|[deviceManagementConfigurationTechnologies](../resources/intune-deviceconfigv2-devicemanagementconfigurationtechnologies.md)|Technologies for this policy. Possible values are: `none`, `mdm`, `windows10XManagement`, `configManager`, `microsoftSense`.|
|createdDateTime|DateTimeOffset|Policy creation date and time. This property is read-only.|
|lastModifiedDateTime|DateTimeOffset|Policy last modification date and time. This property is read-only.|
|settingCount|Int32|Number of settings. This property is read-only.|
|creationSource|String|Policy creation source|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance.|
|isAssigned|Boolean|Policy assignment status. This property is read-only.|
|templateReference|[deviceManagementConfigurationPolicyTemplateReference](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicytemplatereference.md)|Template reference information|



## Response
If successful, this method returns a `201 Created` response code and a [deviceManagementConfigurationPolicy](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicy.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/configurationPolicies
Content-type: application/json
Content-length: 685

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationPolicy",
  "name": "Name value",
  "description": "Description value",
  "platforms": "macOS",
  "technologies": "mdm",
  "settingCount": 12,
  "creationSource": "Creation Source value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "isAssigned": true,
  "templateReference": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationPolicyTemplateReference",
    "templateId": "Template Id value",
    "templateFamily": "endpointSecurityAntivirus",
    "templateDisplayName": "Template Display Name value",
    "templateDisplayVersion": "Template Display Version value"
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 857

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationPolicy",
  "id": "3ffd7cd0-7cd0-3ffd-d07c-fd3fd07cfd3f",
  "name": "Name value",
  "description": "Description value",
  "platforms": "macOS",
  "technologies": "mdm",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "settingCount": 12,
  "creationSource": "Creation Source value",
  "roleScopeTagIds": [
    "Role Scope Tag Ids value"
  ],
  "isAssigned": true,
  "templateReference": {
    "@odata.type": "microsoft.graph.deviceManagementConfigurationPolicyTemplateReference",
    "templateId": "Template Id value",
    "templateFamily": "endpointSecurityAntivirus",
    "templateDisplayName": "Template Display Name value",
    "templateDisplayVersion": "Template Display Version value"
  }
}
```




