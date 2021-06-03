---
title: "Update deviceManagementConfigurationPolicyTemplate"
description: "Update the properties of a deviceManagementConfigurationPolicyTemplate object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update deviceManagementConfigurationPolicyTemplate

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [deviceManagementConfigurationPolicyTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicytemplate.md) object.

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
PATCH /deviceManagement/configurationPolicyTemplates/{deviceManagementConfigurationPolicyTemplateId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagementConfigurationPolicyTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicytemplate.md) object.

The following table shows the properties that are required when you create the [deviceManagementConfigurationPolicyTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicytemplate.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the template document, composed of BaseId and Version. Automatically generated.|
|baseId|String|Template base identifier|
|version|Int32|Template version. Valid values 1 to 2147483647. This property is read-only.|
|displayName|String|Template display name|
|description|String|Template description|
|displayVersion|String|Description of template version|
|lifecycleState|[deviceManagementTemplateLifecycleState](../resources/intune-deviceconfigv2-devicemanagementtemplatelifecyclestate.md)|Indicate current lifecycle state of template. Possible values are: `invalid`, `draft`, `active`, `superseded`, `deprecated`, `retired`.|
|platforms|[deviceManagementConfigurationPlatforms](../resources/intune-deviceconfigv2-devicemanagementconfigurationplatforms.md)|Platforms for this template. Possible values are: `none`, `macOS`, `windows10X`, `windows10`.|
|technologies|[deviceManagementConfigurationTechnologies](../resources/intune-deviceconfigv2-devicemanagementconfigurationtechnologies.md)|Technologies for this template. Possible values are: `none`, `mdm`, `windows10XManagement`, `configManager`, `microsoftSense`.|
|templateFamily|[deviceManagementConfigurationTemplateFamily](../resources/intune-deviceconfigv2-devicemanagementconfigurationtemplatefamily.md)|TemplateFamily for this template. Possible values are: `none`, `endpointSecurityAntivirus`, `endpointSecurityDiskEncryption`, `endpointSecurityFirewall`, `endpointSecurityEndpointDetectionAndResponse`, `endpointSecurityAttackSurfaceReduction`, `endpointSecurityAccountProtection`, `endpointSecurityApplicationControl`.|
|allowUnmanagedSettings|Boolean|Allow unmanaged setting templates|
|settingTemplateCount|Int32|Number of setting templates. Valid values 0 to 2147483647. This property is read-only.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagementConfigurationPolicyTemplate](../resources/intune-deviceconfigv2-devicemanagementconfigurationpolicytemplate.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/configurationPolicyTemplates/{deviceManagementConfigurationPolicyTemplateId}
Content-type: application/json
Content-length: 453

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationPolicyTemplate",
  "baseId": "Base Id value",
  "version": 7,
  "displayName": "Display Name value",
  "description": "Description value",
  "displayVersion": "Display Version value",
  "lifecycleState": "draft",
  "platforms": "macOS",
  "technologies": "mdm",
  "templateFamily": "endpointSecurityAntivirus",
  "allowUnmanagedSettings": true,
  "settingTemplateCount": 4
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 502

{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationPolicyTemplate",
  "id": "424ddb9a-db9a-424d-9adb-4d429adb4d42",
  "baseId": "Base Id value",
  "version": 7,
  "displayName": "Display Name value",
  "description": "Description value",
  "displayVersion": "Display Version value",
  "lifecycleState": "draft",
  "platforms": "macOS",
  "technologies": "mdm",
  "templateFamily": "endpointSecurityAntivirus",
  "allowUnmanagedSettings": true,
  "settingTemplateCount": 4
}
```




