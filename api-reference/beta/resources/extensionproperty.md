---
title: "extensionProperty resource type"
description: "Represents a directory extension"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# extensionProperty resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a directory extension that can be used to add a custom property to directory objects without requiring an external data store. For example, if an organization has a line of business (LOB) application that requires a Skype Id for each user in the directory, the Graph API can be used to register a new property named skypeId on the directory’s User object, and then write a value to the new property for a specific user.

Extensions can be added to [user](user.md), [group](group.md), [organization](organization.md), [device](device.md), [application](application.md) resources.

> [!IMPORTANT]
> The directory extensions described here is available in Microsoft Graph for compatibility reasons
> to help developers interact with the extension properties they added through ADGraph 1.6 API. 
> Microsoft Graph support more modern way of adding custom data to resources. If you are looking 
> to add new custom data, please refer [Add custom data to resources using extensions](../../../concepts/extensibility-overview.md)

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create extension](../api/application-post-extensionproperty.md) | extensionProperty | Create an extension property on an application object. |
| [List extensions](../api/application-list-extensionproperty.md) | extensionProperty collection | List extension properties on an application object. |
| [Delete extension](../api/application-delete-extensionproperty.md) | None | Delete an extension property from an application object. |
| [Write extension value](../api/application-post-extensionpropertyvalue.md) | None | Assign a value to an extension property of an application object. |
| [Read extension value](../api/application-get-extensionpropertyvalue.md) | application | Read the value of an extension property on an application object. |

Extensions created using [Create extension](../api/application-post-extensionproperty.md) can be seen on the application object by calling [Get application](../api/application-get.md) method.

Please use [Update application](../api/application-update.md) method to assign a value to an extension property.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appDisplayName|String| Display name of the application object on which this extension property is defined. Read-only. |
|dataType|String| Specifies the data type of the value the extension property can hold. Following values are supported. Not nullable. <ul><li>`Binary` - 256 bytes maximum</li><li>`Boolean`</li><li>`DateTime` - Must be specified in ISO 8601 format. Will be stored in UTC.</li><li>`Integer` - 32-bit value.</li><li>`LargeInteger` - 64-bit value.</li><li>`String` - 256 characters maximum</li></ul>|
|isSyncedFromOnPremises|Boolean| Indicates if this extension property was sycned from onpremises directory using AAD Connect. Read-only. |
|name|String| Name of the extension property. Not nullable. |
|targetObjects|String collection| Following values are supported. Not nullable. <ul><li>`User`</li><li>`Group`</li><li>`Organization`</li><li>`Device`</li><li>`Application`</li></ul>|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.extensionProperty",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "appDisplayName": "String",
  "dataType": "String",
  "isSyncedFromOnPremises": true,
  "name": "String",
  "targetObjects": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "extensionProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->