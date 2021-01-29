---
title: "openTypeExtension resource type (open extensions)"
description: "Open extensions (formerly known as Office 365 data extensions) provide an easy way to directly add untyped properties to a resource in Microsoft Graph."
localization_priority: Normal
author: "dkershaw10"
doc_type: resourcePageType
ms.prod: "extensions"
---

# openTypeExtension resource type (open extensions)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Open extensions (formerly known as Office 365 data extensions) provide an easy way to directly add untyped properties to a resource in Microsoft Graph.
Open extensions are represented by the **openTypeExtension** resource. Any open extension added to a resource shows up in the **extensions** navigation property,
which is derived from the [extension](extension.md) abstract type.  Each extension has an **extensionName** property which is the only pre-defined,
writable property for all extensions, along with your custom data. One way to help make sure extension names are unique is to use a reverse domain name system (DNS)
format that is dependent on _your own domain_, for example, `Com.Contoso.ContactInfo`. Do not use the Microsoft domain (`Com.Microsoft` or `Com.OnMicrosoft`) in an extension name.

Open extension example: [Add custom data to users using open extensions](/graph/extensibility-open-users)

Open extensions are supported by the following resources in the corresponding versions - general availability (GA: /v1.0 and /beta) or preview (/beta).

| Resource | Version |
|---------------|-------|
| [Administrative unit](administrativeunit.md)  | Preview only |
| [Calendar event](event.md) | GA |
| Group [calendar event](event.md) | GA |
| Group conversation thread [post](post.md) | GA |
| [Device](device.md) | GA |
| [Group](group.md) | GA |
| [Message](message.md) | GA |
| [Organization](organization.md) | GA |
| [Personal contact](contact.md) | GA |
| [User](user.md) | GA |
| [Task](todotask.md)  | GA ||
| [Task list](todotasklist.md)  | GA ||

## Outlook-specific considerations

Each open extension present on an Outlook resource (event, message, or personal contact) is stored in a [MAPI named property](/office/client-developer/outlook/mapi/mapi-named-properties). When you create open extensions for Outlook, consider that MAPI named properties are a finite resource in a user's mailbox. When a user's named property quota is exhausted, you can't create any more named properties for that user. This can result in unexpected behavior from clients that rely on named properties to function.

Apply the following guidelines when you create open extensions on Outlook resources:

- Create the minimum number of extensions required. Most applications should require no more than one extension. Extensions have no set defined properties or structure, so you can store multiple values in a single extension.
- Avoid naming extensions in a variable manner (such as based on user input, etc.). Each time an open extension is created with a new name that has not been used in a user's mailbox before, a new MAPI named property is created. Removing the extension does not remove the named property.

### Use open extensions (for Outlook resources) or extended properties

Open extensions are the recommended solution for most scenarios involving storing and accessing custom data. If, however,
you need to access custom data for Outlook MAPI properties that are not already exposed through the
[Microsoft Graph API metadata](../index.md), you can use
[extended properties and its REST API](extended-properties-overview.md). You can verify which properties the metadata
exposes at [https://graph.microsoft.com/v1.0/$metadata](https://graph.microsoft.com/v1.0/$metadata).

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openTypeExtension"
}-->

```json
{
  "extensionName": "string",
  "id": "string (identifier)"
}
```

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|extensionName|String|A unique text identifier for an open type data extension. Required.|
|id|String| A fully qualified identifier that concatenates the extension type with the **extensionName**. Read-only.|

## Relationships

None

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
|[Create](../api/opentypeextension-post-opentypeextension.md) | [openTypeExtension](opentypeextension.md)(in an existing resource instance), or a new [contact](contact.md), [event](event.md), [message](message.md), [post](post.md), [todoTask](todotask.md), or [todoTaskList](todotasklist.md) that contains an openTypeExtension object. | Create an openTypeExtension object in an existing or new resource instance.||[Get](../api/opentypeextension-get.md) | [openTypeExtension](opentypeextension.md) |Read properties and relationships of openTypeExtension object.|
|[Update](../api/opentypeextension-update.md) | [openTypeExtension](opentypeextension.md) |Update openTypeExtension object. |
|[Delete](../api/opentypeextension-delete.md) | None |Delete openTypeExtension object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "openTypeExtension resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
