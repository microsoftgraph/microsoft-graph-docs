---
title: "profileCardAnnotation resource type"
description: "The profileCardAnnotion resource allows an administrator to customize the appearance of selected fields in the Microsoft 365 Profile Card."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# profileCardAnnotation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The profileCardAnnotation type is used to set a custom displayName for fields which surface in a shared Microsoft 365 people experieence. An administrator can define a default displayName string and a set of alternative translations for the languages that they wish to have support for within their organization.

## Properties

| Property     | Type                                                            | Description                                                                                                                       |
|:-------------|:----------------------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------|
|displayName   |String                                                           | If present the value of this field is used by the profile card as the default property label in the experience. (ie: Cost Center) |
|localizations |[displayNameLocalization](displaynamelocalization.md) collection | If present the the localized value for a given language will be used as the default property label in the experience. (ie: a user with no-NB client will receive "Kostnads Senter" as their label, rather than "Cost Center")|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profileCardAnnotation",
  "baseType": null
}-->

```json
{
  "displayName": "Cost Center",
  "localizations": [
    {
      "displayName": "ru-RU",
      "languageTag": "центр затрат"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "profileCardAnnotation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->