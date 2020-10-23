---
title: "organization resource type"
description: " create and delete are not supported. Inherits from directoryObject."
localization_priority: Priority
author: "adimitui"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# organization resource type

Namespace: microsoft.graph

Represents the Azure Active Directory tenant that the user or application is signed in to. Only the read and update operations are supported on this resource; create and delete are not supported. Inherits from [directoryObject](directoryobject.md).

This resource lets you add your own data to custom properties using [extensions](/graph/extensibility-overview).

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get organization](../api/organization-get.md) | [organization](organization.md) collection|Read properties and relationships of organization object.|
|[Update](../api/organization-update.md) | [organization](organization.md)  |Update organization object. The only properties that can be updated are: **marketingNotificationMails**, **technicalNotificationMails**, **securityComplianceNotificationMails**, **securityComplianceNotificationPhones** and **privacyProfile**. |
|**Open extensions**| 
|[Create open extension](../api/opentypeextension-post-opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension-get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| 
|[Add schema extension values](/graph/extensibility-schema-groups) || Create a schema extension definition and then use it to add custom typed data to a resource.|

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| assignedPlans | [assignedPlan](assignedplan.md) collection | The collection of service plans associated with the tenant. Not nullable. |
| businessPhones | String collection | Telephone number for the organization. NOTE: Although this is a string collection, only one number can be set for this property. |
| city | String | City name of the address for the organization. |
| country | String | Country/region name of the address for the organization. |
| countryLetterCode | String | Country/region abbreviation for the organization. |
| createdDateTime | DateTimeOffset | Timestamp of when the organization was created. The value cannot be modified and is automatically populated when the organization is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. |
| deletedDateTime | DateTimeOffset | Represents date and time of when the Azure AD tenant was deleted using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. |
| createdDateTime | DateTimeOffset | Timestamp of when the organization was created. The value cannot be modified and is automatically populated when the organization is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. |
| displayName | String | The display name for the tenant. |
| id | String | The tenant ID, a unique identifier representing the organization (or tenant). Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only. |
| isMultipleDataLocationsForServicesEnabled | Boolean | **true** if organization is Multi-Geo enabled; **false** if organization is not Multi-Geo enabled; **null** (default). Read-only. For more information, see [OneDrive Online Multi-Geo](/sharepoint/dev/solution-guidance/multigeo-introduction). |
| marketingNotificationEmails | String collection | Not nullable. |
| onPremisesLastSyncDateTime | DateTimeOffset | The time and date at which the tenant was last synced with the on-premise directory. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Read-only. |
| onPremisesSyncEnabled | Boolean | **true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default). |
| postalCode | String | Postal code of the address for the organization. |
| preferredLanguage | String | The preferred language for the organization. Should follow ISO 639-1 Code; for example "en". |
| privacyProfile | [privacyProfile](privacyprofile.md) | The privacy profile of an organization. |
| provisionedPlans | [ProvisionedPlan](provisionedplan.md) collection | Not nullable. |
| securityComplianceNotificationMails | String collection ||
| securityComplianceNotificationPhones | String collection||
| state | String | State name of the address for the organization. |
| street | String | Street name of the address for organization. |
| technicalNotificationMails | String collection | Not nullable. |
| verifiedDomains | [VerifiedDomain](verifieddomain.md) collection | The collection of domains associated with this tenant. Not nullable. |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|certificateBasedAuthConfiguration|[certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) collection| Navigation property to manage certificate-based authentication configuration. Only a single instance of certificateBasedAuthConfiguration can be created in the collection.  |
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the organization. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "openType": true,
  "optionalProperties": [
    "extensions"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.directoryObject",
  "@odata.type": "microsoft.graph.organization"
}-->

```json
{
  "assignedPlans": [{"@odata.type": "microsoft.graph.assignedPlan"}],
  "businessPhones": ["string"],
  "city": "string",
  "country": "string",
  "countryLetterCode": "string",
  "createdDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "displayName": "string",
  "id": "string (identifier)",
  "isMultipleDataLocationsForServicesEnabled": "boolean",
  "marketingNotificationEmails": ["string"],
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSyncEnabled": true,
  "postalCode": "string",
  "preferredLanguage": "string",
  "privacyProfile": {"@odata.type": "microsoft.graph.privacyProfile"},
  "provisionedPlans": [{"@odata.type": "microsoft.graph.provisionedPlan"}],
  "securityComplianceNotificationMails": ["string"],
  "securityComplianceNotificationPhones": ["string"],
  "state": "string",
  "street": "string",
  "technicalNotificationMails": ["string"],
  "verifiedDomains": [{"@odata.type": "microsoft.graph.verifiedDomain"}]
}
```

## See also

- [Add custom data to resources using extensions](/graph/extensibility-overview)
- [Add custom data to users using open extensions](/graph/extensibility-open-users)
- [Add custom data to groups using schema extensions](/graph/extensibility-schema-groups)

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "organization resource",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/organization.md:
      Property 'businessPhones' found in resource definition for 'microsoft.graph.organization', but not described in markdown table.",
    "Warning: /api-reference/v1.0/resources/organization.md:
      Property 'onPremisesLastSyncDateTime' found in resource definition for 'microsoft.graph.organization', but not described in markdown table.",
    "Warning: /api-reference/v1.0/resources/organization.md:
      Property 'onPremisesSyncEnabled' found in resource definition for 'microsoft.graph.organization', but not described in markdown table.",
    "Warning: /api-reference/v1.0/resources/organization.md:
      Property 'securityComplianceNotificationMails' found in resource definition for 'microsoft.graph.organization', but not described in markdown table.",
    "Warning: /api-reference/v1.0/resources/organization.md:
      Property 'securityComplianceNotificationPhones' found in resource definition for 'microsoft.graph.organization', but not described in markdown table."
  ],
  "tocPath": ""
}-->