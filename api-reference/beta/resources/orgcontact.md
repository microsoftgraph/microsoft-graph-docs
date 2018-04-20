# orgContact resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "directReports",
    "manager",
    "memberOf"
  ],
  "@odata.type": "microsoft.graph.orgcontact"
}-->

```json
{
  "businessPhones": ["string"],
  "city": "string",
  "companyName": "string",
  "country": "string",
  "department": "string",
  "displayName": "string",
  "givenName": "string",
  "id": "string (identifier)",
  "jobTitle": "string",
  "mail": "string",
  "mailNickname": "string",
  "mobilePhone": "string",
  "officeLocation": "string",
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesProvisioningErrors": [{"@odata.type": "microsoft.graph.onPremisesProvisioningError"}],
  "onPremisesSyncEnabled": true,
  "postalCode": "string",
  "proxyAddresses": ["string"],
  "state": "string",
  "streetAddress": "string",
  "surname": "string"
}

```
## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|city|String| The city in which the contact is located. |
|country|String| The country/region in which the contact is located. |
|department|String| The name for the department in which the contact works. |
|onPremisesSyncEnabled|Boolean|**true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default).|
|displayName|String| The display name for the contact. |
|givenName|String| The given name (first name) of the contact. |
|jobTitle|String| The contact's job title. |
|onPremisesLastSyncDateTime|DateTimeOffset|Indicates the last time at which the object was synced with the on-premises directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|onPremisesProvisioningErrors|[onPremisesProvisioningError](onpremisesprovisioningerror.md) collection| Errors when using Microsoft synchronization product (including Azure AD Connect, DirSync and MIM + Connector) during provisioning. |
|mail|String| The SMTP address for the contact, for example, "jeff@contoso.onmicrosoft.com". |
|mailNickname|String| The mail alias for the contact. |
|mobilePhone|String| The primary cellular telephone number for the contact. |
|id|String| The unique identifier for the contact. Read-only.|
|officeLocation|String| The office location in the contact's place of business. |
|postalCode|String| The postal code for the contact's postal address. The postal code is specific to the contact's country/region. In the United States of America, this attribute contains the ZIP code. |
|proxyAddresses|String collection| For example: `["SMTP: bob@contoso.com", "smtp: bob@sales.contoso.com"]` The **any** operator is required for filter expressions on multi-valued properties. Read-only. Not nullable. Supports $filter. |
|state|String| The state or province in the contact's address. |
|streetAddress|String| The street address of the contact's place of business. |
|surname|String| The contact's surname (family name or last name). |
|businessPhones|String| The primary telephone number of the contact's place of business. |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|directReports|[directoryObject](directoryobject.md) collection| The contact's direct reports. (The users and contacts that have their manager property set to this contact.)  Read-only. Nullable.|
|manager|[directoryObject](directoryobject.md)| The user or contact that is this contact's manager. Read-only.|
|memberOf|[directoryObject](directoryobject.md) collection| Groups that this contact is a member of. Read-only. Nullable.|

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get orgContact](../api/orgcontact_get.md) | [orgContact](orgcontact.md) |Read properties and relationships of orgContact object.|
|[Get manager](../api/orgcontact_get_manager.md) |[directoryObject](directoryobject.md)| Get the contact's manager.|
|[List directReports](../api/orgcontact_list_directreports.md) |[directoryObject](directoryobject.md) collection| List the contact's direct reports.|
|[List memberOf](../api/orgcontact_list_memberof.md) |[directoryObject](directoryobject.md) collection| Get a memberOf object collection.|
|[Delete](../api/orgcontact_delete.md) | None |Delete orgContact object. |
|[checkMemberGroups](../api/orgcontact_checkmembergroups.md)|String collection| Check for group membership. |
|[getMemberGroups](../api/orgcontact_getmembergroups.md)|String collection| Return all the groups that the specified contact is a member of. |
|[getMemberObjects](../api/orgcontact_getmemberobjects.md)|String collection| Returns a list of directoryObjects the contact is a member of. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "orgContact resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->