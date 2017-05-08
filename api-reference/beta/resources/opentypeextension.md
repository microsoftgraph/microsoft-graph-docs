# openTypeExtension resource type (open extensions) 

Open extensions (formerly known as Office 365 data extensions) gives you an easy way to directly add untyped properties to a resource in Microsoft Graph. 
Open extensions are represented by the **openTypeExtension** resource. Any open extension added to a resource shows up in the **extensions** navigation property, 
which is derived from the [extension](extension.md) abstract type.  Each extension has an **extensionName** property which is the only pre-defined, 
writable property for all extensions, along with your custom data. One way to help make sure extension names are unique is to use a reverse domain name system (DNS) 
format that is dependent on _your own domain_, for example, `Com.Contoso.ContactInfo`. Do not use the Microsoft domain (`Com.Microsoft` or `Com.OnMicrosoft`) in an extension name.

Open extension example: [Add custom data to users using open extensions](../../../concepts/extensibility_open_users.md)

Open extensions are supported by the following resources in the corresponding versions - general availability (GA: /v1.0 and /beta) or preview (/beta).

| Resource | Version |
|---------------|-------|
| [Administrative unit](administrativeunit.md)  | Preview only |
| [Calendar event](event.md) | GA |
| Group [calendar event](event.md) | GA |
| Group conversation thread [post](post.md) | GA |
| [device](device.md) | GA |
| [group](group.md) | GA |
| [message](message.md) | GA |
| [organization](organization.md) | GA |
| [Personal contact](contact.md) | GA |
| [user](user.md) | GA |



### Use open extensions (for Outlook resources) or extended properties?

Open extensions is the recommended solution for most scenarios involving storing and accessing custom data. If, however, 
you need to access custom data for Outlook MAPI properties that are not already exposed through the 
[Microsoft Graph API metadata](http://developer.microsoft.com/en-us/graph/docs/overview/call_api), you can use 
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
|[Post](../api/opentypeextension_post_opentypeextension.md) | [openTypeExtension](opentypeextension.md)(in an existing resource instance), or a new [contact](../resources/contact.md), [event](../resources/event.md), or [message](../resources/message.md) that contains an openTypeExtension object. | Create an openTypeExtension object in an existing or new resource instance.| 
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