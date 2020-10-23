---
title: "logonUser resource type"
description: "Contains stateful information about the logged on user on this host"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
author: "preetikr"
---

# logonUser resource type

Namespace: microsoft.graph

Contains stateful information about the logged on user on this host

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|accountDomain|String|Domain of user account used to logon.|
|accountName|String|Account name of user account used to logon.|
|accountType|String|User Account type, per Windows definition. Possible values are: `unknown`, `standard`, `power`, `administrator`.|
|firstSeenDateTime|DateTimeOffset|DateTime at which the earliest logon by this user account occurred (provider-determined period). The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|lastSeenDateTime|DateTimeOffset|DateTime at which the latest logon by this user account occurred. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|logonId|String|User logon ID.|
|logonTypes|String collection|Collection of the logon types observed for the logged on user from when first to last seen. Possible values are: `unknown`, `interactive`, `remoteInteractive`, `network`, `batch`, `service`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.logonUser"
}-->

```json
{
  "accountDomain": "String",
  "accountName": "String",
  "accountType": "String",
  "firstSeenDateTime": "String (timestamp)",
  "lastSeenDateTime": "String (timestamp)",
  "logonId": "String",
  "logonTypes": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "logonUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


