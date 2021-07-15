---
title: "countryNamedLocation resource type"
description: "Represents an Azure Active Directory named location defined by countries and regions. Named locations are custom rules that define network locations which can then be used in a Conditional Access policy."
localization_priority: Normal
author: "videor"
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# countryNamedLocation resource type

Namespace: microsoft.graph

Represents an Azure Active Directory named location defined by countries and regions. Named locations are custom rules that define network locations which can then be used in a Conditional Access policy.

Inherits from [namedLocation](../resources/namedLocation.md)

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List countryNamedLocations](../api/conditionalaccessroot-list-namedlocations.md) | [countryNamedLocation](countryNamedLocation.md) collection | Get all the **countryNamedLocation** objects in the organization. |
| [Create countryNamedLocation](../api/conditionalaccessroot-post-namedlocations.md) | [countryNamedLocation](countryNamedLocation.md) | Create a new **countryNamedLocation** object. |
| [Get countryNamedLocation](../api/countrynamedlocation-get.md) | [countryNamedLocation](countrynamedlocation.md) | Read the properties and relationships of a **countryNamedLocation** object. |
| [Update countryNamedLocation](../api/countrynamedlocation-update.md) | [countryNamedLocation](countrynamedlocation.md) | Update a **countryNamedLocation** object. |
| [Delete countryNamedLocation](../api/countrynamedlocation-delete.md) | None | Delete a **countryNamedLocation** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|countriesAndRegions|String collection|List of countries and/or regions in two-letter format specified by ISO 3166-2.|
|countryLookupMethod|countryLookupMethodType|Determines what method is used to decide which country the user is located in. Possible values are `clientIpAddress` and `authenticatorAppGps`.|
|createdDateTime|DateTimeOffset|The Timestamp type represents creation date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [namedLocation](../resources/namedLocation.md).|
|displayName|String|Human-readable name of the location. Inherited from [namedLocation](../resources/namedLocation.md).|
|id|String|Identifier of a namedLocation object. Read-only. Inherited from [namedLocation](../resources/namedLocation.md).|
|includeUnknownCountriesAndRegions|Boolean|True if IP addresses that don't map to a country or region should be included in the named location.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents last modified date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only. Inherited from [namedLocation](../resources/namedLocation.md).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.countryNamedLocation"
}-->

```json
{
  "countriesAndRegions": ["String"],
  "countryLookupMethod": "String",
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "includeUnknownCountriesAndRegions": true,
  "modifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "countryNamedLocation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
