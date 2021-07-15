---
title: "orgContact resource type"
description: "Represents an organizational contact"
localization_priority: Normal
author: "dkershaw10"
ms.prod: "directory-management"
doc_type: resourcePageType
---

# orgContact resource type

Namespace: microsoft.graph

Represents an organizational contact. Organizational contacts are managed by an organization's administrators and are different from [personal contacts](contact.md). Additionally, organizational contacts are either synchronized from on-premises directories or from Exchange Online, and are read-only.

Inherits from [directoryObject](directoryobject.md).

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/orgcontact-delta.md) function.

## Methods

| Method                                                                  | Return Type                                      | Description                                                                                                                 |
|:------------------------------------------------------------------------|:-------------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------|
| [List organizational contacts](../api/orgcontact-list.md)               | [orgContact](orgcontact.md)                      | List properties of organizational contacts.                                                                                 |
| [Get organizational contact](../api/orgcontact-get.md)                  | [orgContact](orgcontact.md)                      | Read properties and relationships of an organizational contact.                                                             |
| [Get manager](../api/orgcontact-get-manager.md)                         | [directoryObject](directoryobject.md)            | Get the organizational contact's manager.                                                                                   |
| [List directReports](../api/orgcontact-list-directreports.md)           | [directoryObject](directoryobject.md) collection | List the organizational contact's direct reports.                                                                           |
| [List memberOf](../api/orgcontact-list-memberof.md)                     | [directoryObject](directoryobject.md) collection | List the groups an organizational contact is a member of.                                                                   |
| [List transitiveMemberOf](../api/orgcontact-list-transitivememberof.md) | [directoryObject](directoryobject.md) collection | List the groups an organizational contact is a member of, including groups that the organizational contact is nested under. |
| [checkMemberGroups](../api/orgcontact-checkmembergroups.md)             | String collection                                | Check for group membership.                                                                                                 |
| [getMemberGroups](../api/orgcontact-getmembergroups.md)                 | String collection                                | Return all the groups that the specified organizational contact is a member of.                                             |
| [getMemberObjects](../api/orgcontact-getmemberobjects.md)               | String collection                                | Returns a list of directoryObjects the organizational contact is a member of.                                               |

## Properties

> [!IMPORTANT]
> Specific usage of `$filter` and the `$search` query parameter is supported only when you use the **ConsistencyLevel** header set to `eventual` and `$count`. For more information, see [Advanced query capabilities on Azure AD directory objects](/graph/aad-advanced-queries).

| Property                     | Type                                                                     | Description                                                                                                                                                                                                                                                                                                                        |
|:-----------------------------|:-------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| addresses                    | [physicalOfficeAddress](physicalofficeaddress.md) collection             | Postal addresses for this organizational contact. For now a contact can only have one physical address.                                                                                                                                                                                                                            |
| companyName                  | String                                                                   | Name of the company that this organizational contact belongs to.  Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`).                                                                                                                                                                                          |
| department                   | String                                                                   | The name for the department in which the contact works.  Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`).                                                                                                                                                                                                   |
| displayName                  | String                                                                   | Display name for this organizational contact. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`), `$search`, and `$orderBy`.                                                                                                                                                                                   |
| givenName                    | String                                                                   | First name for this organizational contact. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`).                                                                                                                                                                                                                |
| id                           | String                                                                   | Unique identifier for this organizational contact.  Supports `$filter` (`eq`, `ne`, `NOT`, `in`).                                                                                                                                                                                                                                  |
| jobTitle                     | String                                                                   | Job title for this organizational contact. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`).                                                                                                                                                                                                                 |
| mail                         | String                                                                   | The SMTP address for the contact, for example, "jeff@contoso.onmicrosoft.com". Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`).                                                                                                                                                                             |
| mailNickname                 | String                                                                   | Email alias (portion of email address pre-pending the @ symbol) for this organizational contact. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`).                                                                                                                                                           |
| onPremisesLastSyncDateTime   | DateTimeOffset                                                           | Date and time when this organizational contact was last synchronized from on-premises AD. This date and time information uses ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`).                             |
| onPremisesProvisioningErrors | [onPremisesProvisioningError](onpremisesprovisioningerror.md) collection | List of any synchronization provisioning errors for this organizational contact. Supports `$filter` (`eq`, `NOT`).                                                                                                                                                                                                                 |
| onPremisesSyncEnabled        | Boolean                                                                  | `true` if this object is synced from an on-premises directory; `false` if this object was originally synced from an on-premises directory but is no longer synced and now mastered in Exchange; `null` if this object has never been synced from an on-premises directory (default). Supports `$filter` (`eq`, `ne`, `NOT`, `in`). |
| phones                       | [phone](phone.md) collection                                             | List of phones for this organizational contact. Phone types can be mobile, business, and businessFax. Only one of each type can ever be present in the collection.                                                                                                                                                                 |
| proxyAddresses               | String collection                                                        | For example: "SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com". The **any** operator is required for filter expressions on multi-valued properties. Supports `$filter` (`eq`, `NOT`, `ge`, `le`, `startsWith`).                                                                                                               |
| surname                      | String                                                                   | Last name for this organizational contact. Supports `$filter` (`eq`, `ne`, `NOT`, `ge`, `le`, `in`, `startsWith`).                                                                                                                                                                                                                 |

## Relationships

| Relationship       | Type                                             | Description                                                                                                                                            |
|:-------------------|:-------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------|
| directReports      | [directoryObject](directoryobject.md) collection | The contact's direct reports. (The users and contacts that have their manager property set to this contact.)  Read-only. Nullable. Supports `$expand`. |
| manager            | [directoryObject](directoryobject.md)            | The user or contact that is this contact's manager. Read-only. Supports `$expand`.                                                                     |
| memberOf           | [directoryObject](directoryobject.md) collection | Groups that this contact is a member of. Read-only. Nullable. Supports `$expand`.                                                                      |
| transitiveMemberOf | [directoryObject](directoryobject.md) collection | Groups that this contact is a member of, including groups that the contact is nested under. Read-only. Nullable.                                       |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "directReports",
    "manager",
    "memberOf"
  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",
  "@odata.type": "microsoft.graph.orgcontact"
}-->

```json
{
  "addresses": [{"@odata.type": "microsoft.graph.physicalOfficeAddress"}],
  "companyName": "string",
  "department": "string",
  "displayName": "string",
  "givenName": "string",
  "id": "string (identifier)",
  "jobTitle": "string",
  "mail": "string",
  "mailNickname": "string",
  "onPremisesLastSyncDateTime": "string (timestamp)",
  "onPremisesProvisioningErrors": [{"@odata.type": "microsoft.graph.onPremisesProvisioningError"}],
  "onPremisesSyncEnabled": true,
  "phones": [{"@odata.type": "microsoft.graph.phone"}],
  "proxyAddresses": ["string"],
  "surname": "string"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "orgContact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

