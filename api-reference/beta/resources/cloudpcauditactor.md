---
title: "cloudPcAuditActor resource type"
description: "The audit actor represented by the Azure AD user and application associated with the audit event."
author: "ecmadao"
localization_priority: Normal
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAuditActor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The audit actor represented by the Azure AD user and application associated with the audit event.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|type|[cloudPcAuditActorType](#cloudpcauditactortype-values)|The actor type. Possible values include `ItPro`, `Application`, `Partner` and `Unknown`.|
|userPermissions|String collection|List of user permissions and application permissions when the audit event was performed.|
|applicationId|String|Azure AD application ID.|
|applicationDisplayName|String|Name of the application.|
|userPrincipalName|String|User Principal Name (UPN).|
|servicePrincipalName|String|Service Principal Name (SPN).|
|ipAddress|String|IP address.|
|userId|String|Azure AD user ID.|
|userRoleScopeTags|[cloudPcUserRoleScopeTagInfo](../resources/cloudpcuserrolescopetaginfo.md) collection|List of role scope tags.|
|remoteTenantId|String|The delegated partner tenant ID.|
|remoteUserId|String|The delegated partner user ID.|

### cloudPcAuditActorType values

|Member|Description|
|:---|:---|
|itPro|The operation was performed by an IT pro.|
|application|The operation was performed by the application.|
|partner|The operation was performed by a partner.|
|unknown|Unknown actor.|

## Relationships

None.

## JSON Representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAuditActor"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAuditActor",
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
}
```
