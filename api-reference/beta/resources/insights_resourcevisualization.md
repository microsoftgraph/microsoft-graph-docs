# resourceVisualization resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Complex type containing properties of [Insights](insights.md).

## JSON representation

Here is a JSON representation of the resource

```json
{
  "title": "string",
  "type"  : "string",
  "mediaType": "string",
  "previewImageUrl": "string",
  "previewText": "string",
  "containerWebUrl": "string",
  "containerDisplayName": "string",
  "containerType": "string"
}
```

## Properties

| Property      		| Type          | Description  |
| ------------- 		|---------------| -------------|
| title      			| String		| The item's title text.	   		   |
| type    			| String		| The item's media type. Can be used for filtering for a specific file based on a specific type. See below for supported types. |
| mediaType    			| String		| The item's media type. Can be used for for filtering for a specific type of file based on supported IANA Media Mime Types. Note that not all Media Mime Types are supported. |
| previewImageUrl   	| String		| A URL leading to the preview image for the item. |
| previewText      		| String		| A preview text for the item. |
| containerWebUrl      	| String		| A path leading to the folder in which the item is stored. |
| containerDisplayName  | String		| A string describing where the item is stored. For example, the name of a SharePoint site or the user name identifying the owner of the OneDrive storing the item.  |
| containerType    		| String | Can be used for filtering by the type of container in which the file is stored. Such as Site or OneDriveBusiness.	   |

## Type property values
-	PowerPoint
-	Word
-	Excel
-	Pdf
-	OneNote
-	OneNotePage
-	InfoPath
-	Visio
-	Publisher
-	Project
-	Access
-	Mail
-	Csv
-	Archive
-	Xps
-	Audio
-	Video
-	Image
-	Web
-	Text
-	Xml
-	Story
-	ExternalContent
-	Folder
-	Other

Example query:
`https://graph.microsoft.com/beta/me/insights/trending?$filter=ResourceVisualization/Type eq 'PowerPoint'`

## containerType property values
The supported types can differ based on containers from which the [Insight](insights.md) returns files. For example, only the [Shared](insights_shared.md) insight returns files from 'DropBox', 'Box', and 'GDrive'.

-	OneDriveBusiness
-	Site
-	Mail
-	DropBox
-	Box
-	GDrive

Example query:
`https://graph.microsoft.com/beta/me/insights/trending?$filter=ResourceVisualization/containerType eq 'OneDriveBusiness'`