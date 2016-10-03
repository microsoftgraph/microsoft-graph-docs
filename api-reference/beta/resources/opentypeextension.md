# openTypeExtension resource type

Office 365 data extensions are represented by the **openTypeExtension** resource. 

**openTypeExtension** is an OData v4 open type which 
allows you to specify at runtime custom data in instances of resources 
defined in the Entity Data Model. This saves you time in defining new entity types just for this purpose.

You can create data extensions of the **openTypeExtension** type in a [message](message.md), [event](event.md), or [contact](contact.md) in the signed-in user's
mailbox, or in an **event** in a group calendar of an organization. In the individual-user context, the user's 
account can be in Office 365 or a Microsoft account (Hotmail.com, Live.com, MSN.com, Outlook.com and Passport.com).

This resource is derived from the [extension](extension.md) abstract type and has the additional **extensionName** property.
The **extensionName** property is the only pre-defined, writable property for all extensions. One way to help make 
sure extension names are unique is to use a reverse domain name system (DNS) method that is dependent on 
_your own domain_, for example, `Com.Contoso.Contact`. Do not use the Microsoft domain in an extension name.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.opentypeextension"
}-->

```json
{
  "extensionName": "string",
  "id": "string (identifier)"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|extensionName|String|A unique text identifier for an open type data extension. Required.|
|id|String| A fully qualified identifier that concatenates the extension type with the **extensionName**. Read-only.|

## Relationships
None


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Post](../api/opentypeextension_post_opentypeextension.md) | [openTypeExtension](opentypeextension.md), or [message](../resources/message.md), [event](../resources/event.md), or [contact](../resources/contact.md) that contains an openTypeExtension object. | Create an openTypeExtension object in an existing or new resource instance.| 
|[Get](../api/opentypeextension_get.md) | [openTypeExtension](opentypeextension.md) |Read properties and relationships of openTypeExtension object.|
|[Update](../api/opentypeextension_update.md) | [openTypeExtension](opentypeextension.md)	|Update openTypeExtension object. |
|[Delete](../api/opentypeextension_delete.md) | None |Delete openTypeExtension object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openTypeExtension resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->