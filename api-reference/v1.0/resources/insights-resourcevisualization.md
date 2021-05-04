---
title: "resourceVisualization resource type"
description: "Complex type containing properties of Insights."
author: "simonhult"
localization_priority: Normal
ms.prod: "insights"
doc_type: resourcePageType
---

# resourceVisualization resource type

Namespace: microsoft.graph

Complex type containing properties of [officeGraphInsights](officegraphinsights.md).

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
  ],  
  "@odata.type": "microsoft.graph.resourceVisualization"
}-->
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
| mediaType    			| String		| The item's media type. Can be used for filtering for a specific type of file based on supported IANA Media Mime Types. Note that not all Media Mime Types are supported. |
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
- Spsite
-	Other

Example query:
`https://graph.microsoft.com/v1.0/me/insights/trending?$filter=ResourceVisualization/Type eq 'PowerPoint'`

Notes:
For `spsite` you may need to sort by `lastUsed/lastAccessedDateTime` desc in order to retrieve valid results

## containerType property values
The supported types can differ based on containers from which [officeGraphInsights](officegraphinsights.md) returns files. For example, only the [sharedInsight](insights-shared.md) insight returns files from 'DropBox', 'Box', and 'GDrive'.

-	OneDriveBusiness
-	Site
-	Mail
-	DropBox
-	Box
-	GDrive

Example query:
`https://graph.microsoft.com/v1.0/me/insights/trending?$filter=ResourceVisualization/containerType eq 'OneDriveBusiness'`

