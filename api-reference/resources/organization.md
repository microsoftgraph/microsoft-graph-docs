# organization resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get organization](../api/organization_get.md) | [organization](organization.md) |Read properties and relationships of organization object.|
|[Update](../api/organization_update.md) | [organization](organization.md)	|Update organization object. |
|[Delete](../api/organization_delete.md) | None |Delete organization object. |
|[Checkmembergroups](../api/organization_checkmembergroups.md)|string collection||
|[Getmembergroups](../api/organization_getmembergroups.md)|string collection||
|[Getmemberobjects](../api/organization_getmemberobjects.md)|string collection||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedPlans|[assignedPlan](assignedplan.md) collection||
|businessPhones|string collection||
|city|string||
|country|string||
|countryLetterCode|string||
|displayName|string||
|id|string| Read-only.|
|marketingNotificationEmails|string collection||
|onPremisesLastSyncDateTime|[dateTimeOffset](datetimeoffset.md)||
|onPremisesSyncEnabled|boolean||
|postalCode|string||
|preferredLanguage|string||
|provisionedPlans|[provisionedPlan](provisionedplan.md) collection||
|securityComplianceNotificationMails|string collection||
|securityComplianceNotificationPhones|string collection||
|state|string||
|street|string||
|technicalNotificationMails|string collection||
|verifiedDomains|[verifiedDomain](verifieddomain.md) collection||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.organization"
}-->

```json
{
  "assignedPlans": [{"@odata.type": "microsoft.graph.assignedPlan"}],
  "businessPhones": ["string"],
  "city": "string",
  "country": "string",
  "countryLetterCode": "string",
  "displayName": "string",
  "id": "string (identifier)",
  "marketingNotificationEmails": ["string"],
  "onPremisesLastSyncDateTime": "String (timestamp)",
  "onPremisesSyncEnabled": true,
  "postalCode": "string",
  "preferredLanguage": "string",
  "provisionedPlans": [{"@odata.type": "microsoft.graph.provisionedPlan"}],
  "securityComplianceNotificationMails": ["string"],
  "securityComplianceNotificationPhones": ["string"],
  "state": "string",
  "street": "string",
  "technicalNotificationMails": ["string"],
  "verifiedDomains": [{"@odata.type": "microsoft.graph.verifiedDomain"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "organization resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->