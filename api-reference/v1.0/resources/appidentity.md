---
title: "appIdentity resource type"
description: "Indicates the identity of the application that performed the action or was changed. Includes Application Id, Name, Service Principal ID and Name. This resource is called by the directoryAudit API"
localization_priority: Normal
author: "dhanyahk"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# appIdentity resource type

Namespace: microsoft.graph

Indicates the identity of the application that performed the action or was changed. Includes application ID, name, and service principal ID and name. This resource is used by the [Get directoryAudit](../api/directoryaudit-get.md) operation.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|appId|String|Refers to the Unique GUID representing Application Id in the Azure Active Directory.|
|displayName|String|Refers to the Application Name displayed in the Azure Portal.|
|servicePrincipalId|String|Refers to the Unique GUID indicating Service Principal Id in Azure Active Directory for the corresponding App.|
|servicePrincipalName|String|Refers to the Service Principal Name is the Application name in the tenant. |

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.appIdentity"
}-->

```json
{
  "appId": "String",
  "displayName": "String",
  "servicePrincipalId": "String",
  "servicePrincipalName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "appIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

