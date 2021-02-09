---
title: "groupPolicyDefinitionValue resource type"
description: "The definition value entity stores the value for a single group policy definition."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# groupPolicyDefinitionValue resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The definition value entity stores the value for a single group policy definition.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyDefinitionValues](../api/intune-grouppolicy-grouppolicydefinitionvalue-list.md)|[groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md) collection|List properties and relationships of the [groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md) objects.|
|[Get groupPolicyDefinitionValue](../api/intune-grouppolicy-grouppolicydefinitionvalue-get.md)|[groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md)|Read properties and relationships of the [groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md) object.|
|[Create groupPolicyDefinitionValue](../api/intune-grouppolicy-grouppolicydefinitionvalue-create.md)|[groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md)|Create a new [groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md) object.|
|[Delete groupPolicyDefinitionValue](../api/intune-grouppolicy-grouppolicydefinitionvalue-delete.md)|None|Deletes a [groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md).|
|[Update groupPolicyDefinitionValue](../api/intune-grouppolicy-grouppolicydefinitionvalue-update.md)|[groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md)|Update the properties of a [groupPolicyDefinitionValue](../resources/intune-grouppolicy-grouppolicydefinitionvalue.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time the object was created.|
|enabled|Boolean|Enables or disables the associated group policy definition.|
|configurationType|[groupPolicyConfigurationType](../resources/intune-grouppolicy-grouppolicyconfigurationtype.md)|Specifies how the value should be configured. This can be either as a Policy or as a Preference. Possible values are: `policy`, `preference`.|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|presentationValues|[groupPolicyPresentationValue](../resources/intune-grouppolicy-grouppolicypresentationvalue.md) collection|The associated group policy presentation values with the definition value.|
|definition|[groupPolicyDefinition](../resources/intune-grouppolicy-grouppolicydefinition.md)|The associated group policy definition with the value.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyDefinitionValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyDefinitionValue",
  "createdDateTime": "String (timestamp)",
  "enabled": true,
  "configurationType": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)"
}
```




