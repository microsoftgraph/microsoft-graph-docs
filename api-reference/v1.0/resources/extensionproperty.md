---
title: "extensionProperty resource type"
description: "Represents a directory extension"
localization_priority: Normal
author: "keylimesoda"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# extensionProperty resource type

Namespace: microsoft.graph

Represents a directory extension that can be used to add a custom property to directory objects without requiring an external data store. For example, if an organization has a line of business (LOB) application that requires a Skype ID for each user in the directory, Microsoft Graph can be used to register a new property named skypeId on the directory’s User object, and then write a value to the new property for a specific user.

Extensions can be added to [user](user.md), [group](group.md), [organization](organization.md), [device](device.md), [application](application.md) resources.

> [!IMPORTANT]
> Azure AD schema extensions described here are available in Microsoft Graph for backwards compatibility reasons only.
> It allows you to use Microsoft Graph to continue to manage extension properties added through Azure AD Graph or 
> [Azure AD Connect](/azure/active-directory/hybrid/whatis-azure-ad-connect).
> For new custom extensions, we recommend that you use Microsoft Graph schema extensions for [adding custom data to resources](/graph/extensibility-overview).

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create extension](../api/application-post-extensionproperty.md) | [extensionProperty](extensionProperty.md) | Create an extension property on an application object. |
| [List extensions](../api/application-list-extensionproperty.md) | [extensionProperty](extensionProperty.md) collection | List extension properties on an application object. |
| [Delete extension](../api/application-delete-extensionproperty.md) | None | Delete an extension property from an application object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|appDisplayName|String| Display name of the application object on which this extension property is defined. Read-only. |
|dataType|String| Specifies the data type of the value the extension property can hold. Following values are supported. Not nullable. <ul><li>`Binary` - 256 bytes maximum</li><li>`Boolean`</li><li>`DateTime` - Must be specified in ISO 8601 format. Will be stored in UTC.</li><li>`Integer` - 32-bit value.</li><li>`LargeInteger` - 64-bit value.</li><li>`String` - 256 characters maximum</li></ul>|
|isSyncedFromOnPremises|Boolean| Indicates if this extension property was sycned from onpremises directory using Azure AD Connect. Read-only. |
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