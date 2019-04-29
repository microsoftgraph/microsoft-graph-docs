---
title: "securityAction resource type"
description: "Take immediate action to defend against threats using the Microsoft Graph Security securityAction entity. When a security analyst discovers a new indicator, such as a malicious file, URL, domain, or IP address, protection can be instantly enabled in your Microsoft security solutions. Invoke an action for a specific provider, see all actions taken, and cancel an action if needed. Try security actions with Windows Defender ATP (coming soon) to block malicious activity on your Windows endpoints using properties seen in alerts or identified during investigations."
localization_priority: Normal
author: "preetikr"
ms.prod: "security"
doc_type: resourcePageType
---

# securityAction resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Take immediate action to defend against threats using the Microsoft Graph Security securityAction entity. When a security analyst discovers a new indicator, such as a malicious file, URL, domain, or IP address, protection can be instantly enabled in your Microsoft security solutions. Invoke an action for a specific provider, see all actions taken, and cancel an action if needed. Try security actions with [Windows Defender ATP](https://docs.microsoft.com/windows/security/threat-protection/windows-defender-atp/windows-defender-advanced-threat-protection) to block malicious activity on your Windows endpoints using properties seen in alerts or identified during investigations.

  > **Note:** Currently security actions only support application permissions.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get security action](../api/securityaction-get.md) | [securityAction](securityaction.md) | Read properties and relationships of securityAction object. |
| [Create security action](../api/securityactions-post.md) | [securityAction](securityaction.md) | Create a new securityAction by posting to the securityActions collection. |
| [List security actions](../api/securityactions-list.md) | [securityAction](securityaction.md) collection | Get a securityAction object collection. |
|[Cancel security action](../api/securityaction-cancelsecurityaction.md)|None|Cancel a security operation.|

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|actionReason|String|Reason for invoking this action.|
|appId|String|The Application ID of the calling application that submitted (POST) the action. The appId should be extracted from the auth token and not entered manually by the calling application.|
|azureTenantId|String|Azure tenant ID of the entity to determine which tenant the entity belongs to (multi-tenancy support). The azureTenantId should be extracted from the auth token and not entered manually by the calling application.|
|completedDateTime|DateTimeOffset|Timestamp when the action was completed. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|createdDateTime|DateTimeOffset|Timestamp when the action is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|errorInfo|[resultInfo](resultinfo.md)| Error info when the action fails.|
|id|String| Created by the system when the action is ingested. Generated GUID/unique identifier. Read-only.|
|lastActionDateTime|DateTimeOffset| Timestamp when this action was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|name|String| Action name.|
|parameters|[keyValuePair](keyvaluepair.md) collection| Collection of parameters (key-value pairs) necessary to invoke the action, e.g. URL or fileHash to block, etc.). **Required**|
|states|[securityActionState](securityactionstate.md) collection|Collection of securityActionState to keep the history of an action.|
|status|string| Status of the action. Possible values are: `NotStarted`, `Running`, `Completed`, `Failed`.|
|user|String| The user principal name of the signed-in user that submitted  (POST) the action. The user should be extracted from the auth token and not entered manually by the calling application.|
|vendorInformation|[securityVendorInformation](securityvendorinformation.md)|Complex Type containing details about the Security product/service vendor, provider, and sub-provider (e.g. vendor=Microsoft; provider=Windows Defender ATP; sub-provider=AppLocker).|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.securityAction",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "actionReason": "String",
  "appId": "String",
  "azureTenantId": "String",
  "clientContext": "String",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "errorInfo": {"@odata.type": "microsoft.graph.resultInfo"},
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "name": "String",
  "parameters": [{"@odata.type": "microsoft.graph.keyValuePair"}],
  "states": [{"@odata.type": "microsoft.graph.securityActionState"}],
  "status": "string",
  "user": "String",
  "vendorInformation": {"@odata.type": "microsoft.graph.securityVendorInformation"}
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "securityAction resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->