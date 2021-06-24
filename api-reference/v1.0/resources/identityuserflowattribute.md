---
title: "identityUserFlowAttribute resource type"
description: "Represents user flow attributes in an Azure Active Directory tenant and an Azure AD B2C tenant."
localization_priority: Priority
doc_type: resourcePageType
ms.prod: "identity-and-sign-in"
author: "jkdouglas"
---

# identityUserFlowAttribute resource type

Namespace: microsoft.graph

Represents user flow attributes in an Azure Active Directory (Azure AD) tenant.

Configuring user flow attributes in your Azure AD tenant allows you to collect information about a user during sign-up. You can choose to collect a built-in set of attributes. For example, given name, surname, city, and postal code. You can also configure custom user flow attributes to collect information from a user that is not built in to the directory. Custom user flow attributes are an abstraction over [Azure Active Directory schema extensions](/azure/active-directory/develop/active-directory-schema-extensions).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/identityuserflowattribute-list.md)|identityUserFlowAttributes collection|Retrieve all built-in and custom user flow attributes.|
|[Create](../api/identityuserflowattribute-post.md)|identityUserFlowAttribute|Create a new custom user flow attribute.|
|[Get](../api/identityuserflowattribute-get.md) |identityUserFlowAttribute|Retrieve properties of a user flow attribute.|
|[Update](../api/identityuserflowattribute-update.md)|None|Update a custom user flow attribute.|
|[Delete](../api/identityuserflowattribute-delete.md)|None|Delete a custom user flow attribute.|

## Properties

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The identifier of the user flow attribute. This is a read-only attribute that is automatically created.|
|displayName|String|The display name of the user flow attribute.|
|description|String|The description of the user flow attribute that's shown to the user at the time of sign-up.|
|userFlowAttributeType|identityUserFlowAttributeType|The type of the user flow attribute. This is a read-only attribute that is automatically set. Depending on the type of attribute, the values for this property will be `builtIn`, `custom`, or `required`.|
|dataType|identityUserFlowAttributeDataType|The data type of the user flow attribute. This cannot be modified after the custom user flow attribute is created. The supported values for **dataType** are: `string` , `boolean` , `int64` , `stringCollection` , `dateTime`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityUserFlowAttribute"
} -->

```json
{
    "@odata.type": "#microsoft.graph.identityUserFlowAttribute",
    "id": "String (identifier)",
    "displayName": "String",
    "description": "String",
    "userFlowAttributeType": "String",
    "dataType": "String"
}
```
