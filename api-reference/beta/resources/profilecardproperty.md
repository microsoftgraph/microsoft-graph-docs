---
title: "profileCardProperty resource type"
description: "Used to designate either a new property to surface in a shared, people experience or one that will have a custom display name or annotation applied to it. An administrator can define a default display name string and a set of alternative translations for the languages that they support in their organization."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "resourcePageType"
---

# profileCardProperty resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attribute of a user on the Microsoft 365 profile card for an organization to surface in a shared, people experience.

The attribute can be an Azure Active Directory (Azure AD) built-in attribute, such as `Alias` or `UserPrincipalName`, or it can be a custom attribute. For a custom attribute, an administrator can define an `en-us` default display name string and a set of alternative translations for the languages that they support in their organization.

For more information on adding properties to the profile card for an organization, see [customize the profile card](/graph/add-properties-profilecard).

## Methods

| Method       | Return Type | Description |
|:-------------------------------------------------------------|:----------------------------------------------|:-----------------------------------------------------------------|
| [List](../api/organizationsettings-list-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Get a collection of **profileCardProperty** resources of an organization. |
| [Create](../api/organizationsettings-post-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Create a new **profileCardProperty** resource for an organization. |
| [Get](../api/profilecardproperty-get.md) | [profileCardProperty](profilecardproperty.md) | Read the properties and relationships of a **profileCardProperty** resource, which contains the profile card customizations that exist in a Microsoft 365 organization for a given field. |
| [Update](../api/profilecardproperty-update.md)               | [profileCardProperty](profilecardproperty.md) | Update a **profileCardProperty** object.                               |
| [Delete](../api/profilecardproperty-delete.md)               | None                                          | Delete a **profileCardProperty** object.                               |

## Properties

| Property             | Type                                                        | Description |
|:---------------------|:------------------------------------------------------------|:------------|
|annotations           |[profileCardAnnotation](profilecardannotation.md) collection | Allows an administrator to set a custom display label for the directory property and localize it for the users in their tenant.|
|directoryPropertyName |String                                                       | Identifies a **profileCardProperty** resource in [Get](../api/profilecardproperty-get.md), [Update](../api/profilecardproperty-update.md), or [Delete](../api/profilecardproperty-delete.md) operations. Allows an administrator to surface hidden Azure Active Directory (Azure AD) properties on the Microsoft 365 profile card within their tenant. When present, the Azure AD field referenced in this field will be visible to all users in your tenant on the contact pane of the profile card. Allowed values for this field are: `UserPrincipalName`, `Fax`, `StreetAddress`, `PostalCode`, `StateOrProvince`, `Alias`, `CustomAttribute1`,  `CustomAttribute2`, `CustomAttribute3`, `CustomAttribute4`, `CustomAttribute5`, `CustomAttribute6`, `CustomAttribute7`, `CustomAttribute8`, `CustomAttribute9`, `CustomAttribute10`, `CustomAttribute11`, `CustomAttribute12`, `CustomAttribute13`, `CustomAttribute14`, `CustomAttribute15`. |

## Relationships

None.

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
      "displayName": "String",
      "localizations": [
        {
          "languageTag": "String",
          "displayName": "String"
        }
      ]
    }
  ],
  "directoryPropertyName": "String"
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

