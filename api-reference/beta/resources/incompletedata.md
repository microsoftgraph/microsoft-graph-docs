---
author: daspek
description: "The incompleteData facet indicates that a resource was generated with incomplete data."
ms.date: 10/06/2017
title: IncompleteData
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# incompleteData resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The **incompleteData** facet indicates that a resource was generated with incomplete data.
The properties within may provide information about why there is incomplete data.

## JSON representation

<!-- { "blockType": "resource", "@type": "microsoft.graph.incompleteData" } -->

```json
{
  "missingDataBeforeDateTime": "String (timestamp)",
  "wasThrottled": false
}
```

## Properties

| Property                  | Type           | Description
|:--------------------------|:---------------|:--------------------------------
| missingDataBeforeDateTime | DateTimeOffset | The service does not have source data before the specified time.
| wasThrottled              | Boolean        | Some data was not recorded due to excessive activity.

<!--
{
  "type": "#page.annotation",
  "section": "documentation",
  "tocPath": "Facets/IncompleteData",
  "suppressions": []
}
-->


