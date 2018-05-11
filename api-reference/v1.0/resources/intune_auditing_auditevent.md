# auditEvent resource type

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

A class containing the properties for Audit Event.
## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List auditEvents](../api/intune_auditing_auditevent_list.md)|[auditEvent](../resources/intune_auditing_auditevent.md) collection|List properties and relationships of the [auditEvent](../resources/intune_auditing_auditevent.md) objects.|
|[Get auditEvent](../api/intune_auditing_auditevent_get.md)|[auditEvent](../resources/intune_auditing_auditevent.md)|Read properties and relationships of the [auditEvent](../resources/intune_auditing_auditevent.md) object.|
|[Create auditEvent](../api/intune_auditing_auditevent_create.md)|[auditEvent](../resources/intune_auditing_auditevent.md)|Create a new [auditEvent](../resources/intune_auditing_auditevent.md) object.|
|[Delete auditEvent](../api/intune_auditing_auditevent_delete.md)|None|Deletes a [auditEvent](../resources/intune_auditing_auditevent.md).|
|[Update auditEvent](../api/intune_auditing_auditevent_update.md)|[auditEvent](../resources/intune_auditing_auditevent.md)|Update the properties of a [auditEvent](../resources/intune_auditing_auditevent.md) object.|
|[getAuditCategories function](../api/intune_auditing_auditevent_getauditcategories.md)|String collection|Not yet documented|
|[getAuditActivityTypes function](../api/intune_auditing_auditevent_getauditactivitytypes.md)|String collection|Not yet documented|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|displayName|String|Event display name.|
|componentName|String|Component name.|
|actor|[auditActor](../resources/intune_auditing_auditactor.md)|AAD user and application that are associated with the audit event.|
|activity|String|Friendly name of the activity.|
|activityDateTime|DateTimeOffset|The date time in UTC when the activity was performed.|
|activityType|String|The type of activity that was being performed.|
|activityOperationType|String|The HTTP operation type of the activity.|
|activityResult|String|The result of the activity.|
|correlationId|Guid|The client request Id that is used to correlate activity within the system.|
|resources|[auditResource](../resources/intune_auditing_auditresource.md) collection|Resources being modified.|
|category|String|Audit category.|

## Relationships
None
## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.auditEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditEvent",
  "id": "String (identifier)",
  "displayName": "String",
  "componentName": "String",
  "actor": {
    "@odata.type": "microsoft.graph.auditActor",
    "type": "String",
    "userPermissions": [
      "String"
    ],
    "applicationId": "String",
    "applicationDisplayName": "String",
    "userPrincipalName": "String",
    "servicePrincipalName": "String",
    "ipAddress": "String",
    "userId": "String"
  },
  "activity": "String",
  "activityDateTime": "String (timestamp)",
  "activityType": "String",
  "activityOperationType": "String",
  "activityResult": "String",
  "correlationId": "<Unknown Primitive Type Edm.Guid>",
  "resources": [
    {
      "@odata.type": "microsoft.graph.auditResource",
      "displayName": "String",
      "modifiedProperties": [
        {
          "@odata.type": "microsoft.graph.auditProperty",
          "displayName": "String",
          "oldValue": "String",
          "newValue": "String"
        }
      ],
      "type": "String",
      "resourceId": "String"
    }
  ],
  "category": "String"
}
```



