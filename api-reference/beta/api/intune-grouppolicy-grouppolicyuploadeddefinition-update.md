---
title: "Update groupPolicyUploadedDefinition"
description: "Update the properties of a groupPolicyUploadedDefinition object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Update groupPolicyUploadedDefinition

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update the properties of a [groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md) object.

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
PATCH /deviceManagement/groupPolicyDefinitions/{groupPolicyDefinitionId}
PATCH /deviceManagement/groupPolicyConfigurations/{groupPolicyConfigurationId}/definitionValues/{groupPolicyDefinitionValueId}/definition
PATCH /deviceManagement/groupPolicyConfigurations/{groupPolicyConfigurationId}/definitionValues/{groupPolicyDefinitionValueId}/presentationValues/{groupPolicyPresentationValueId}/presentation/definition
PATCH /deviceManagement/groupPolicyConfigurations/{groupPolicyConfigurationId}/definitionValues/{groupPolicyDefinitionValueId}/presentationValues/{groupPolicyPresentationValueId}/presentation/definition/category/definitions/{groupPolicyDefinitionId}
PATCH /deviceManagement/groupPolicyConfigurations/{groupPolicyConfigurationId}/definitionValues/{groupPolicyDefinitionValueId}/presentationValues/{groupPolicyPresentationValueId}/presentation/definition/definitionFile/definitions/{groupPolicyDefinitionId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md) object.

The following table shows the properties that are required when you create the [groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md).

|Property|Type|Description|
|:---|:---|:---|
|classType|[groupPolicyDefinitionClassType](../resources/intune-grouppolicy-grouppolicydefinitionclasstype.md)|Identifies the type of groups the policy can be applied to. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md). Possible values are: `user`, `machine`.|
|displayName|String|The localized policy name. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|explainText|String|The localized explanation or help text associated with the policy. The default value is empty. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|categoryPath|String|The localized full category path for the policy. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|supportedOn|String|Localized string used to specify what operating system or application version is affected by the policy. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|policyType|[groupPolicyType](../resources/intune-grouppolicy-grouppolicytype.md)|Specifies the type of group policy. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md). Possible values are: `admxBacked`, `admxIngested`.|
|groupPolicyCategoryId|Guid|The category id of the parent category Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|id|String|Key of the entity. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified. Inherited from [groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|



## Response
If successful, this method returns a `200 OK` response code and an updated [groupPolicyUploadedDefinition](../resources/intune-grouppolicy-grouppolicyuploadeddefinition.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/groupPolicyDefinitions/{groupPolicyDefinitionId}
Content-type: application/json
Content-length: 361

{
  "@odata.type": "#microsoft.graph.groupPolicyUploadedDefinition",
  "classType": "machine",
  "displayName": "Display Name value",
  "explainText": "Explain Text value",
  "categoryPath": "Category Path value",
  "supportedOn": "Supported On value",
  "policyType": "admxIngested",
  "groupPolicyCategoryId": "4d1e97a2-97a2-4d1e-a297-1e4da2971e4d"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 474

{
  "@odata.type": "#microsoft.graph.groupPolicyUploadedDefinition",
  "classType": "machine",
  "displayName": "Display Name value",
  "explainText": "Explain Text value",
  "categoryPath": "Category Path value",
  "supportedOn": "Supported On value",
  "policyType": "admxIngested",
  "groupPolicyCategoryId": "4d1e97a2-97a2-4d1e-a297-1e4da2971e4d",
  "id": "a5f83119-3119-a5f8-1931-f8a51931f8a5",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00"
}
```




