---
title: "Create groupPolicyUploadedCategory"
description: "Create a new groupPolicyUploadedCategory object."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: apiPageType
---

# Create groupPolicyUploadedCategory

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Create a new [groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md) object.

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
POST /deviceManagement/groupPolicyCategories
POST /deviceManagement/groupPolicyConfigurations/{groupPolicyConfigurationId}/definitionValues/{groupPolicyDefinitionValueId}/presentationValues/{groupPolicyPresentationValueId}/presentation/definition/category/children
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the groupPolicyUploadedCategory object.

The following table shows the properties that are required when you create the groupPolicyUploadedCategory.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The string id of the category's display name Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|
|isRoot|Boolean|Defines if the category is a root category Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|
|id|String|Key of the entity. Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified. Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|



## Response
If successful, this method returns a `201 Created` response code and a [groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md) object in the response body.

## Example

### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/groupPolicyCategories
Content-type: application/json
Content-length: 128

{
  "@odata.type": "#microsoft.graph.groupPolicyUploadedCategory",
  "displayName": "Display Name value",
  "isRoot": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 241

{
  "@odata.type": "#microsoft.graph.groupPolicyUploadedCategory",
  "displayName": "Display Name value",
  "isRoot": true,
  "id": "7e373e80-3e80-7e37-803e-377e803e377e",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00"
}
```




