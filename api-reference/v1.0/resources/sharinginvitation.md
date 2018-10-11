---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: SharingInvitation
---
# SharingInvitation resource type

The **SharingInvitation** resource groups invitation-related data items into a single structure.

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.sharingInvitation"
}-->

```json
{
  "email": "string",
  "invitedBy": {"@odata.type": "microsoft.graph.identitySet" },
  "signInRequired": true
}
```

## Properties

| Property Name  | Type            | Description
|:---------------|:----------------|:------------------------------------------
| email          | String          | The email address provided for the recipient of the sharing invitation. Read-only.
| invitedBy      | [identitySet][] | Provides information about who sent the invitation that created this permission, if that information is available. Read-only.
| signInRequired | Boolean         | If `true` the recipient of the invitation needs to sign in in order to access the shared item. Read-only.

## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

[DriveItem]: driveItem.md
[IdentitySet]: identitySet.md

<!-- {
  "type": "#page.annotation",
  "description": "The sharing invitation facet describes details of a sharing invitation associated with a permission.",
  "keywords": "image,width,height,item,facet",
  "section": "documentation",
  "tocPath": "Facets/SharingInvitation"
} -->
