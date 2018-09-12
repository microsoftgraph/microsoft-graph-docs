# TeamsChannelTabSettings open type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The settings that determine the content of a [tab](teamschanneltab.md). 
When a tab is interactively configured, this information is set by the tab provider application.
In addition to the properties below, some tab provider applications specify additional custom properties.

## Properties

|Property|Type|Required|ReadOnly|Description|
|-|-|-|-|-|
|  entityId   |   string | | |  Identifier for the entity hosted by the tab provider     |
|  contentUrl |   string |✓| |  Url used for rendering tab contents in Teams     |
|  removeUrl  |   string | | |  Url called by Teams client when a Tab is removed using the Teams Client     |
|  websiteUrl |   string | | |  Url for showing tab contents outside of Teams     |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.team"
}-->

```json
{  
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
