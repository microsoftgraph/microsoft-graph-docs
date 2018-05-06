# directoryAudit resource type
This is a resource representing the directory Audit items and its collection


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List directoryAudits](../api/directoryaudit_list.md) | [directoryAudit](directoryaudit.md) |List the directory audit items in the collection and their properties.|
|[Get directoryAudit](../api/directoryaudit_get.md) | [directoryAudit](directoryaudit.md) |Get a specific directory audit item and its properties.|


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activityDateTime|DateTimeOffset|Indicates the date and time the activity was performed. The Timestamp type is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|activityDisplayName|String|Indicates the activity name or the operation name (E.g. "Create User", "Add member to group"). For a list of activities logged,refer to [Azure Ad activity list](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-reporting-activity-audit-logs#azure-ad-audit-activity-list).|
|additionalDetails|[keyValue](keyvalue.md) collection|Indicates additional details on the activity.|
|category|String|Indicates which resource category that's targetted by the activity. (For example: User Management, Group Management etc..)|
|correlationId|Guid|Indicates a unique ID that helps correlate activities that span across various services. Can be used to trace logs across services.|
|id|String| Indicates the unique ID for the activity. This is a GUID.|
|initiatedBy|[auditActivityInitiator](auditactivityinitiator.md)|Indicates information about the user or app initiated the activity.|
|loggedByService|String|Indicates information on which service initiated the activity (For example: Self-service Password Management, Core Directory, B2C, Invited Users, Microsoft Identity Manager, Privileged Identity Management.|
|result|string| Indicates the result of the activity.Possible values are: `success`, `failure`, `timeout`, `unknownFutureValue`.||
|resultReason|String|Indicates the reason for failure if the result is "Failure" or "timeout".|
|targetResources|[targetResource](targetresource.md) collection|Indicates information on which resource was changed due to the activity. Target Resource Type can be User, Device, Directory, App, Role, Group, Policy or Other.

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directoryAudit"
}-->

```json
{
  "activityDateTime": "String (timestamp)",
  "activityDisplayName": "String",
  "additionalDetails": [{"@odata.type": "microsoft.graph.keyValue"}],
  "category": "String",
  "correlationId": "Guid",
  "id": "String (identifier)",
  "initiatedBy": {"@odata.type": "microsoft.graph.auditActivityInitiator"},
  "loggedByService": "String",
  "result": "string",
  "resultReason": "String",
  "targetResources": [{"@odata.type": "microsoft.graph.targetResource"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryAudit resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->