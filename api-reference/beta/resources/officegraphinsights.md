---
title: "officeGraphInsights resource type"
description: "Represents the base type for itemInsights. officeGraphInsights is for backward compatibility from earlier versions of the insights API. Use only itemInsights when accessing the insights API."
author: "simonhult"
localization_priority: Priority
ms.prod: "insights"
doc_type: resourcePageType
---

# officeGraphInsights resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Use [itemInsights](iteminsights.md) in place of **officeGraphInsights** to access the insights API.

**officeGraphInsights** is for backward compatibility from earlier versions of the insights API. It is the base type for [itemInsights](iteminsights.md).

Insights are relationships calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive for Business documents trending around users.

Insights are returned by the following APIs:

- [Trending](insights-trending.md) - returns documents from OneDrive for Business and from SharePoint sites trending around a user.
- [Used](insights-used.md) - returns documents viewed or modified by a user. Includes documents the user used in OneDrive for Business, and SharePoint.
- [Shared](insights-shared.md) - returns documents shared with or by the user. Documents can be shared as URLs, file attachments, reference attachments to OneDrive for Business and SharePoint files found in Outlook messages and meetings.

Each insight is returned with a **resourceVisualization** and **resourceReference** complex value type (CVT). The **resourceVisualization** CVT contains properties such as **title** and **previewImageUrl**. Microsoft uses the visualization properties to render the files in experiences like Office Delve.

## Relationships

| Relationship      | Type          | Description  |
| ------------- |---------------| -------------|
| trending    	| [trending](insights-trending.md) collection		| Access this property from the derived type [itemInsights](iteminsights.md).|
| used    	| [usedInsight](insights-used.md) collection		| Access this property from the derived type [itemInsights](iteminsights.md).|
| shared    	| [sharedInsight](insights-shared.md) collection		| Access this property from the derived type [itemInsights](iteminsights.md).|


## JSON representation

Here is a JSON representation of the resource
<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "baseType":"microsoft.graph.entity",
  "optionalProperties": [
    "trending",
    "used",
    "shared"
  ],
  "@odata.type": "microsoft.graph.officeGraphInsights"
}-->

```json
{
  "id": "string",
  "trending": [ { "@odata.type": "microsoft.graph.trending" } ],
  "used": [ { "@odata.type": "microsoft.graph.used" } ],
  "shared": [ { "@odata.type": "microsoft.graph.shared" } ]
}
```



