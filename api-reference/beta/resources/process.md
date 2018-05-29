# process resource type

 > **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Contains stateful information about the process related to the alert.

## Properties

| Property   | Type|Description|
|:---------------|:--------|:----------|
|accountName|String|User account identifier (user account context the process ran under) for example, AccountName, SID, and so on.|
|authenticodeHash256|String|Authenticode 256 hash of image file (used by AppLocker and others).|
|commandLine|String|The full process invocation commandline including all parameters.|
|createdDateTime|DateTimeOffset|Time at which the process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|integrityLevel|String|The integrity level of the process. Possible values are: `unknown`, `untrusted`, `low`, `medium`, `high`, `system`.|
|isElevated|Boolean|True if the process is elevated.|
|name|String|The name of the process' Image file.|
|parentProcessCreatedDateTime|DateTimeOffset|DateTime at which the parent process was started. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`.|
|parentProcessId|Int32|The Process ID (PID) of the parent process.|
|parentProcessName|String|The name of the image file of the parent process.|
|path|String|Full path, including filename.|
|processId|Int32|The Process ID (PID) of the process.|
|sha256|String|Sha256 cryptographic hash of process image file.|

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
  "authenticodeHash256": "String",
  "commandLine": "String",
  "createdDateTime": "String (timestamp)",
  "integrityLevel": "String",
  "isElevated": true,
  "name": "String",
  "parentProcessCreatedDateTime": "String (timestamp)",
  "parentProcessId": 1024,
  "parentProcessName": "String",
  "path": "String",
  "processId": 1024,
  "sha256": "String"
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