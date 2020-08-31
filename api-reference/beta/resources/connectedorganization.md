---
title: "connectedOrganization resource type"
description: "In Azure AD entitlement management, a connected organization is a reference to a directory or domain of another organization whose users can request access."
author: "markwahl-msft"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# connectedOrganization resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

In [Azure AD entitlement management](entitlementmanagement-root.md), a connected organization is a reference to a directory or domain of another organization whose users can request access.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List connectedOrganizations](../api/connectedorganization-list.md) | [connectedOrganization](connectedorganization.md) collection | Retrieve a list of connectedOrganization objects. |
|[Create connectedOrganization](../api/connectedorganization-post.md) | [connectedOrganization](connectedorganization.md) | Create a new connectedOrganization object. |
|[Get connectedOrganization](../api/connectedorganization-get.md) | [connectedOrganization](connectedorganization.md) | Read properties and relationships of a connectedOrganization object. |
|[Update connectedOrganization](../api/connectedorganization-update.md) | | Update a connectedOrganization. |
|[Delete connectedOrganization](../api/connectedorganization-delete.md) |None | Delete a connectedOrganization. |
|[List internalSponsors](../api/connectedorganization-list-internalsponsors.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of a connectedOrganization's internal sponsors. |
|[List externalSponsors](../api/connectedorganization-list-externalsponsors.md) | [directoryObject](directoryobject.md) collection | Retrieve a list of a connectedOrganization's external sponsors. |
|[Add internalSponsors](../api/connectedorganization-post-internalsponsors.md) | None | Add a user or group to a connectedOrganization's internal sponsors. |
|[Add externalSponsors](../api/connectedorganization-post-externalsponsors.md) | None | Add a user or group to a connectedOrganization's external sponsors. |
|[Remove internalSponsors](../api/connectedorganization-delete-internalsponsors.md) | None | Remove a user or group from a connectedOrganization's internal sponsors. |
|[Remove externalSponsors](../api/connectedorganization-delete-externalsponsors.md) | None | Remove a user or group from a connectedOrganization's external sponsors. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|UPN of the user who created this resource. Read-only.|
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|description|String|The description of the connected organization.|
|displayName|String|The display name of the connected organization.|
|id|String| Read-only.|
|modifiedBy|String|UPN of the user who last modified this resource. Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only.|
|state|connectedOrganizationState|The state of a connected organization defines whether assignment policies with requestor scope type `AllConfiguredConnectedOrganizationSubjects` are applicable or not. Possible values are: `configured`, `proposed`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|identitySources|[identitySource](identitySource.md) collection| The identity sources in this connected organization, one of [azureActiveDirectoryTenant](azureactivedirectorytenant.md), [domainIdentitySource](domainidentitysource.md) or [externalDomainFederation](externaldomainfederation.md). Read-only. Nullable.|
|internalSponsors| [directoryObject](directoryobject.md) collection| Nullable.|
|externalSponsors| [directoryObject](directoryobject.md) collection| Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.connectedOrganization",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdBy": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedBy": "String",
  "modifiedDateTime": "String (timestamp)",
  "identitySources": [
    {
      "@odata.type": "microsoft.graph.azureActiveDirectoryTenant",
      "tenantId": "String (identifier)",
      "displayName": "String"
    }
  ],
  "state": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "connectedOrganization resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
