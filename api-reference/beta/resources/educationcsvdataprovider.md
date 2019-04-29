---
title: "educationCsvDataProvider resource type"
description: "Used to set up the school data synchronization profile when CSV files are the input source.  "
author: "mmast-msft"
localization_priority: Normal
ms.prod: "education"
doc_type: resourcePageType
---

# educationCsvDataProvider resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to set up the school data synchronization profile when CSV files are the input source.  

Derived from [educationSynchronizationDataProvider](educationsynchronizationdataprovider.md).

## Properties

| Property | Type | Description |
|:-|:-|:-|
| **customizations** | [educationSynchronizationCustomizations](educationsynchronizationcustomizations.md) | Optional customizations to be applied to the synchronization profile.|

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationCsvDataProvider"
}-->

```json
{
    "@odata.type": "microsoft.graph.educationCsvDataProvider",
    "customizations": { "@odata.type": "microsoft.graph.educationSynchronizationCustomizations" }
}
```
