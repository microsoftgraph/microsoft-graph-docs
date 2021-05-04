---
title: "itemInsights resource type"
description: "Relationships between a user and items such as OneDrive for Business documents, calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive for Business documents trending around users."
author: "simonhult"
localization_priority: Priority
ms.prod: "insights"
doc_type: resourcePageType
---

# itemInsights resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Relationships between a user and items such as OneDrive for Business documents, calculated using advanced analytics and machine learning techniques. You can, for example, identify OneDrive for Business documents trending around users. Derived from [officeGraphInsights](officegraphinsights.md).

Insights are returned by the following APIs:

- [Trending](insights-trending.md) - returns documents from OneDrive for Business and from SharePoint sites trending around a user.
- [Used](insights-used.md) - returns documents viewed and modified by a user. Includes documents the user used in OneDrive for Business, and SharePoint.
- [Shared](insights-shared.md) - returns documents shared with a user. Documents can be shared as email attachments or as OneDrive for Business links sent in emails.

Each insight is returned with a `resourceVisualization` and `resourceReference` complex value type (CVT). The resourceVisualization CVT contains properties such as `title` and `previewImageUrl`. Microsoft uses the visualization properties to render the files in experiences like Office Delve.

### Limiting item insights

Update [itemInsightsSettings](iteminsightssettings.md) to disable item insights for a specific Azure AD group or an entire organization. For more details, see [customize insights privacy](/graph/insights-customize-item-insights-privacy?view=graph-rest-1.0).

## Relationships

| Relationship      | Type          | Description  |
| ------------- |---------------| -------------|
| trending    	| [trending](insights-trending.md) collection		| Calculated relationship identifying documents trending around a user. Trending documents are calculated based on activity of the user's closest network of people and include files stored in OneDrive for Business and SharePoint. Trending insights help the user to discover potentially useful content that the user has access to, but has never viewed before.|
| used    	| [usedInsight](insights-used.md) collection		| Calculated relationship identifying the latest documents viewed and modified by a user, including OneDrive for Business and SharePoint documents, ranked by recency of use.|
| shared    	| [sharedInsight](insights-shared.md) collection		| Calculated relationship identifying documents shared with or by the user, includes file attachments in emails and meetings, as well as URLs and Reference attachments to OneDrive for Business and SharePoint files found in emails, meetings, and Teams conversations. Ordered by recency of share.|


## JSON representation

Here is a JSON representation of the resource
<!-- {
  "blockType": "resource",
  "keyProperty":"id",
  "baseType":"microsoft.graph.officeGraphInsights",
  "optionalProperties": [
    "trending",
    "used",
    "shared"
  ],
  "@odata.type": "microsoft.graph.itemInsights"
}-->

```json
{
  "id": "string",
  "trending": [ { "@odata.type": "microsoft.graph.trending" } ],
  "used": [ { "@odata.type": "microsoft.graph.used" } ],
  "shared": [ { "@odata.type": "microsoft.graph.shared" } ]
}
```


