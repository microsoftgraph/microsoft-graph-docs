---
title: "profileCardProperty resource type"
description: "The profileCardProperty type is used to designate either a new property to surface in a shared people experience or one which will have a custom displayName or annotation applied to it. An administrator can define a default displayName string and a set of alternative translations for the languages that they wish to have support for within their organization."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# profileCardProperty resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The profileCardProperty type is used to designate either a new property to surface in a shared people experience or one which will have a custom displayName or annotation applied to it. An administrator can define a default displayName string and a set of alternative translations for the languages that they wish to have support for within their organization.

## Methods

| Method       | Return Type | Description |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [Get profileCardProperty](../api/profilecardproperty-get.md) | [profileCardProperty](profilecardproperty.md) | Read properties and relationships of profileCardProperty object. |
| [Update](../api/profilecardproperty-update.md)               | [profileCardProperty](profilecardproperty.md) | Update profileCardProperty object.                               |
| [Delete](../api/profilecardproperty-delete.md)               | None                                          | Delete profileCardProperty object.                               |

## Properties

| Property             | Type                                                        | Description |
|:---------------------|:------------------------------------------------------------|:------------|
|annotations           |[profileCardAnnotation](profilecardannotation.md) collection | Allows an administrator to set a custom display label for the directory property and localize it for the users in their tenant.|
|directoryPropertyName |String                                                       | Allows an administrator to surface hidden Azure Active Directory properties on the M365 profile card within their tenant. When present the AAD field referenced in this field will be visible to all users in your tenant on the contact pane of the profile card. Allowed values for this field are: `UserPrincipalName`, `Fax`, `StreetAddress`, `PostalCode`, `StateOrProvince`, `Alias`, `CustomAttribute1`,  `CustomAttribute2`, `CustomAttribute3`, `CustomAttribute4`, `CustomAttribute5`, `CustomAttribute6`, `CustomAttribute7`, `CustomAttribute8`, `CustomAttribute9`, `CustomAttribute10`, `CustomAttribute11`, `CustomAttribute12`, `CustomAttribute13`, `CustomAttribute14`, `CustomAttribute15`. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.profileCardProperty",
  "baseType": ""
}-->

```json
{
  "annotations": [
    {
      "displayName": "Cost Center",
      "localizations": [
        {
          "languageTag": "ru-RU",
          "displayName": "центр затрат"
        }
      ]
    }
  ],
  "directoryPropertyName": "CustomAttribute1"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "profileCardProperty resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->