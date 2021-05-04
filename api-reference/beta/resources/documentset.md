---
author: swapnil1993
title: "documentSet resource type"
description: "Contains metadata about document set settings."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sites-and-lists"
---

# documentSet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Contains metadata about document set settings.

## Properties

| Property name  | Type    | Description
|:---------------|:--------|:--------------------------------------------------
| shouldPrefixNameToFile | Boolean  | Add the name of the Document Set to each file name.
| allowedContentTypes | Collection(microsoft.graph.contentTypeInfo) | Content types allowed in document set.
| defaultContents     | Collection(microsoft.graph.documentSetContent) | Default contents of document set.  
| propagateWelcomePageChanges | Boolean | Specifies whether to push welcome page changes to inherited content types.  
| sharedColumns       | Collection(microsoft.graph.columnDefinition) | Columns edited on the document set that synchronize to all documents in the set. These are read-only on the documents themselves. 
| welcomePageColumns  | Collection(microsoft.graph.columnDefinition)  | Specifies columns to show on the welcome page for the document set.  
| welcomePageUrl      | string | Welcome page absolute URL.  

## JSON representation

The following is a JSON representation of a **documentSet** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.documentSet" } -->

```json
{
  "shouldPrefixNameToFile": true,
  "allowedContentTypes": [{ "@type": "microsoft.graph.contentTypeInfo" }],
  "defaultContents": [{ "@type": "microsoft.graph.documentSetContent" }],
  "propagateWelcomePageChanges": false,
  "sharedColumns": [{ "@type": "microsoft.graph.columnDefinition" }],
  "welcomePageColumns": [{ "@type": "microsoft.graph.columnDefinition" }],
  "welcomePageUrl": "string"
}
```

[contentTypeInfo]: contentTypeInfo.md
[documentSetContent]: documentsetcontent.md
