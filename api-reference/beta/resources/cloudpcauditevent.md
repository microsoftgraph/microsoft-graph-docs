---
title: "cloudPcAuditEvent resource type"
description: "Represents the audit event entity."
author: "ecmadao"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the audit event entity.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List auditEvents](../api/virtualendpoint-list-auditevents.md)|[cloudPcAuditEvent](../resources/cloudpcauditevent.md) collection|List all the [cloudPcAuditEvent](../resources/cloudpcauditevent.md) objects in a tenant.|
|[Get cloudPcAuditEvent](../api/cloudpcauditevent-get.md)|[cloudPcAuditEvent](../resources/cloudpcauditevent.md)|Read the properties and relationships of a [cloudPcAuditEvent](../resources/cloudpcauditevent.md) object.|
|[getAuditActivityTypes function](../api/cloudpcauditevent-getauditactivitytypes.md)|String collection|Get audit activity types.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the audit entity. Read-only.|
|displayName|String|Event display name. Read-only.|
|componentName|String|Component name. Read-only.|
|actor|[cloudPcAuditActor](../resources/cloudpcauditactor.md)|Azure AD user and application associated with the audit event. Read-only.|
|activity|String|Friendly name of the activity. Optional.|
|activityDateTime|DateTimeOffset|The date time in UTC when the activity was performed. Read-only.|
|activityType|String|The type of activity that was performed. Read-only.|
|activityOperationType|[cloudPcAuditActivityOperationType](#cloudpcauditactivityoperationtype-values)|The HTTP operation type of the activity. Possible values include `create`, `delete`, `patch` and `other`. Read-only.|
|activityResult|[cloudPcAuditActivityResult](#cloudpcauditactivityresult-values)|The result of the activity. Read-only.|
|correlationId|String|The client request identifier, used to correlate activity within the system. Read-only.|
|resources|[cloudPcAuditResource](../resources/cloudpcauditresource.md) collection|List of cloudPcAuditResource objects. Read-only.|
|category|[cloudPcAuditCategory](#cloudpcauditcategory-values)|Audit category. Read-only.|

### cloudPcAuditActivityOperationType values

|Member|Description|
|:---|:---|
|create|Create operation.|
|delete|Delete operation.|
|patch|Patch operation.|
|other|Other operation.|

### cloudPcAuditActivityResult values

|Member|Description|
|:---|:---|
|success|Operation succeeded.|
|clientError|Operation failed with client error.|
|failure|Operation failed.|
|timeExceeded|Operation failed with timeout.|
|other|Other result.|

### cloudPcAuditCategory values

|Member|Description|
|:---|:---|
|cloudPC|Cloud PC category.|
|other |Other category.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcAuditEvent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAuditEvent",
  "id": "String (identifier)",
  "displayName": "String",
  "componentName": "String",
  "actor": {
    "@odata.type": "microsoft.graph.cloudPcAuditActor",
    "type": "String",
    "userPermissions": [
      "String"
    ],
    "applicationId": "String",
    "applicationDisplayName": "String",
    "userPrincipalName": "String",
    "servicePrincipalName": "String",
    "ipAddress": "String",
    "userId": "String",
    "userRoleScopeTags": [
      {
        "@odata.type": "microsoft.graph.cloudPcUserRoleScopeTagInfo",
        "displayName": "String",
        "roleScopeTagId": "String"
      }
    ],
    "remoteTenantId": "String",
    "remoteUserId": "String"
  },
  "activity": "String",
  "activityDateTime": "String (timestamp)",
  "activityType": "String",
  "activityOperationType": "String",
  "activityResult": "String",
  "correlationId": "String",
  "resources": [
    {
      "@odata.type": "microsoft.graph.cloudPcAuditResource",
      "displayName": "String",
      "modifiedProperties": [
        {
          "@odata.type": "microsoft.graph.cloudPcAuditProperty",
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
