# organization resource type

Represents an Azure Active Directory tenant. Only the read and update operations are supported on tenants; create and delete are not supported. Inherits from [directoryObject](directoryobject.md).

This resource lets you add your own data to custom properties using [extensions](../../../concepts/extensibility_overview.md).


## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get organization](../api/organization_get.md) | [organization](organization.md) |Read properties and relationships of organization object.|
|[Update](../api/organization_update.md) | [organization](organization.md)  |Update organization object. The only properties that can be updated are: **marketingNotificationMails**, **technicalNotificationMails**, **securityComplianceNotificationMails**, **securityComplianceNotificationPhones** and **privacyProfile**. |
|**Open extensions**| 
|[Create open extension](../api/opentypeextension_post_opentypeextension.md) |[openTypeExtension](opentypeextension.md)| Create an open extension and add custom properties to a new or existing resource.|
|[Get open extension](../api/opentypeextension_get.md) |[openTypeExtension](opentypeextension.md) collection| Get an open extension identified by the extension name.|
|**Schema extensions**| 
|[Add schema extension values](../../../concepts/extensibility_schema_groups.md) || Create a schema extension definition and then use it to add custom typed data to a resource.|

## Properties

| Property                             | Type                                                              | Description                                                                                                                                                                                                                                                                          |
|:-------------------------------------|:------------------------------------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| assignedPlans                        | [assignedPlan](assignedplan.md) collection                        | The collection of service plans associated with the tenant. Not nullable.                                                                                                                                                                                                            |
| city                                 | String                                                            | City name of the address for the organization                                                                                                                                                                                                                                        |
| companyLastDirSyncTime               | DateTimeOffset                                                    | The time and date at which the tenant was last synced with the on-premise directory.The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'` |
| country                              | String                                                            | Country/region name of the address for the organization                                                                                                                                                                                                                              |
| countryLetterCode                    | String                                                            | Country/region abbreviation for the organization                                                                                                                                                                                                                                     |
| deletionTimestamp                    | DateTimeOffset                                                    | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`                                                                                     |
| dirSyncEnabled                       | Boolean                                                           | **true** if this object is synced from an on-premises directory; **false** if this object was originally synced from an on-premises directory but is no longer synced; **null** if this object has never been synced from an on-premises directory (default).                        |
| displayName                          | String                                                            | The display name for the tenant.                                                                                                                                                                                                                                                     |
| id                                   | String                                                            | The unique identifier for the tenant. Inherited from [directoryObject](directoryobject.md). Key. Not nullable. Read-only.                                                                                                                                                            |
| marketingNotificationEmails          | String collection                                                 | Not nullable.                                                                                                                                                                                                                                                                        |
| objectType                           | String                                                            | A string that identifies the object type. For tenants the value is always “Company”.                                                                                                                                                                                                 |
| postalCode                           | String                                                            | Postal code of the address for the organization                                                                                                                                                                                                                                      |
| preferredLanguage                    | String                                                            | The preferred language for the organization. Should follow ISO 639-1 Code; for example "en".                                                                                                                                                                                         |
| privacyProfile                       | [privacyProfile](privacyprofile.md)                               | The privacy profile of an organization.                                                                                                                                                                                                                                              |
| provisionedPlans                     | [ProvisionedPlan](provisionedplan.md) collection                  | Not nullable.                                                                                                                                                                                                                                                                        |
| securityComplianceNotificationMails  | String collection                                                 |                                                                                                                                                                                                                                                                                      |
| securityComplianceNotificationPhones | String collection                                                 |                                                                                                                                                                                                                                                                                      |
| state                                | String                                                            | State name of the address for the organization                                                                                                                                                                                                                                       |
| street                               | String                                                            | Street name of the address for organization                                                                                                                                                                                                                                          |
| technicalNotificationMails           | String collection                                                 | Not nullable.                                                                                                                                                                                                                                                                        |
| telephoneNumber                      | String                                                            | Telephone number for the organization                                                                                                                                                                                                                                                |
| verifiedDomains                      | [VerifiedDomain](verifieddomain.md) collection                    | The collection of domains associated with this tenant. Not nullable.                                                                                                                                                                                                                 |

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|extensions|[extension](extension.md) collection|The collection of open extensions defined for the organization. Read-only. Nullable.|

## JSON representation

Here is a JSON representation of the resource

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
  "companyLastDirSyncTime": "2018-05-12T13:09:20.111Z",
  "country": "string",
  "countryLetterCode": "string",
  "deletionTimestamp": "2018-05-12T15:37:52.763Z",
  "dirSyncEnabled": true,
  "displayName": "string",
  "id": "string (identifier)",
  "marketingNotificationEmails": ["string"],
  "objectType": "string",
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
  "telephoneNumber": "555-555-6568",
  "verifiedDomains": [{"@odata.type": "microsoft.graph.verifiedDomain"}]
}

```

## See also

- [Add custom data to resources using extensions](../../../concepts/extensibility_overview.md)
- [Add custom data to users using open extensions](../../../concepts/extensibility_open_users.md)
- [Add custom data to groups using schema extensions](../../../concepts/extensibility_schema_groups.md)

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
