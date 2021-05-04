---
title: "groupPolicyUploadedCategory resource type"
description: "The category entity stores the category of a group policy definition"
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# groupPolicyUploadedCategory resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The category entity stores the category of a group policy definition


Inherits from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyUploadedCategories](../api/intune-grouppolicy-grouppolicyuploadedcategory-list.md)|[groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md) collection|List properties and relationships of the [groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md) objects.|
|[Get groupPolicyUploadedCategory](../api/intune-grouppolicy-grouppolicyuploadedcategory-get.md)|[groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md)|Read properties and relationships of the [groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md) object.|
|[Create groupPolicyUploadedCategory](../api/intune-grouppolicy-grouppolicyuploadedcategory-create.md)|[groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md)|Create a new [groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md) object.|
|[Delete groupPolicyUploadedCategory](../api/intune-grouppolicy-grouppolicyuploadedcategory-delete.md)|None|Deletes a [groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md).|
|[Update groupPolicyUploadedCategory](../api/intune-grouppolicy-grouppolicyuploadedcategory-update.md)|[groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md)|Update the properties of a [groupPolicyUploadedCategory](../resources/intune-grouppolicy-grouppolicyuploadedcategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The string id of the category's display name Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|
|isRoot|Boolean|Defines if the category is a root category Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|
|id|String|Key of the entity. Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified. Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|parent|[groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|The parent category Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|
|children|[groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md) collection|The children categories Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|
|definitions|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md) collection|The immediate GroupPolicyDefinition children of the category Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|
|definitionFile|[groupPolicyDefinitionFile](../resources/intune-grouppolicy-grouppolicydefinitionfile.md)|The id of the definition file the category came from Inherited from [groupPolicyCategory](../resources/intune-grouppolicy-grouppolicycategory.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyUploadedCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyUploadedCategory",
  "displayName": "String",
  "isRoot": true,
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```




