---
title: "process resource type"
description: "Contains stateful information about the process related to the alert."
localization_priority: Normal
author: "preetikr"
ms.prod: ""
doc_type: resourcePageType
---

# process resource type

Namespace: microsoft.graph

Contains stateful information about the process related to the alert.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|accountName|String|User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.|
|commandLine|String|The full process invocation commandline including all parameters.|
|createdDateTime|DateTimeOffset|Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|fileHash|[fileHash](filehash.md)|Complex type containing file hashes (cryptographic and location-sensitive).|
|integrityLevel|processIntegrityLevel|The integrity level of the process. Possible values are: `unknown`, `untrusted`, `low`, `medium`, `high`, `system`.|
|isElevated|Boolean|True if the process is elevated.|
|name|String|The name of the process' Image file.|
|parentProcessCreatedDateTime|DateTimeOffset|DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|parentProcessId|Int32|The Process ID (PID) of the parent process.|
|parentProcessName|String|The name of the image file of the parent process.|
|path|String|Full path, including filename.|
|processId|Int32|The Process ID (PID) of the process.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.process"
}-->

```json
{
  "accountName": "String",
  "commandLine": "String",
  "createdDateTime": "String (timestamp)",
  "fileHash": {"@odata.type": "microsoft.graph.fileHash"},
  "integrityLevel": "@odata.type: microsoft.graph.processIntegrityLevel",
  "isElevated": true,
  "name": "String",
  "parentProcessCreatedDateTime": "String (timestamp)",
  "parentProcessId": 1024,
  "parentProcessName": "String",
  "path": "String",
  "processId": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "process resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

