# openTypeExtension resource type

Office 365 data extensions are represented by the **openTypeExtension** resource. 

**openTypeExtension** is an OData v4 open type which contains properties that you can specify at runtime. You can use
it to extend an instance of an entity type that is already defined in the Entity Data Model (EDM) - for example, a message or 
event - by dynamically specifying custom properties and values in a JSON payload. This makes the definition of such 
entity types more flexible, saving you time to define new entity types just for this purpose.

You can create data extensions of the **openTypeExtension** type in a [message](message.md), [event](event.md), or [contact](contact.md) in the signed-in user's
mailbox, or in an **event** or [post](post.md) for an Office 365 group. In the individual-user context, the user's 
account can be in Office 365 or a Microsoft account (Hotmail.com, Live.com, MSN.com, Outlook.com and Passport.com).

This resource is derived from the [extension](extension.md) abstract type and has the additional **extensionName** property.
The **extensionName** property is the only pre-defined, writable property for all extensions. One way to help make 
sure extension names are unique is to use a reverse domain name system (DNS) method that is dependent on 
_your own domain_, for example, `Com.Contoso.Contact`. Do not use the Microsoft domain in an extension name.


### Use Office 365 data extensions or extended properties?

Data extensions is the recommended solution for most scenarios involving storing and accessing custom data. If, however, 
you need to access custom data for Outlook MAPI properties that are not already exposed through the 
[Microsoft Graph API metadata](http://graph.microsoft.io/en-us/docs/overview/call_api), you can use 
[extended properties and its REST API](extended-properties-overview.md). You can verify which properties the metadata 
exposes at https://graph.microsoft.com/v1.0/$metadata.


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