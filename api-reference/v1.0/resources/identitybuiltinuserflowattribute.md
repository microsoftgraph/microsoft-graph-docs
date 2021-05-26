---
title: "identityBuiltInUserFlowAttribute resource type"
description: "Represents a built-in user flow attribute in Azure Active Directory tenants that can be used in a self-service sign-up user flow."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# identityBuiltInUserFlowAttribute resource type

Namespace: microsoft.graph

Represents a built-in user flow attribute in Azure Active Directory tenants that can be used in a self-service sign-up user flow. These attributes cannot be modified and are read-only.

Inherits from [identityUserFlowAttribute](../resources/identityuserflowattribute.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the user flow attribute. This is a read-only attribute that is automatically created. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md)|
|displayName|String|The display name of the user flow attribute. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md). Read-only.|
|description|String|The description of the user flow attribute that's shown to the user at the time of sign-up. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md). Read-only.|
|userFlowAttributeType|identityUserFlowAttributeType|The type of the user flow attribute. This is a read-only attribute that is automatically set. The value for this property will be `builtIn`. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md). Read-only.|
|dataType|identityUserFlowAttributeDataType|The data type of the user flow attribute. This cannot be modified after the custom user flow attribute is created. The supported values for **dataType** are: `string` , `boolean` , `int64` , `stringCollection` , `dateTime`. Inherited from [identityUserFlowAttribute](../resources/identityuserflowattribute.md). Read-only.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityBuiltInUserFlowAttribute",
  "baseType": "microsoft.graph.identityUserFlowAttribute",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.identityBuiltInUserFlowAttribute",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "userFlowAttributeType": "String",
  "dataType": "String"
}
```
