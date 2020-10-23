---
title: "registryKeyState resource type"
description: "Contains information about registry key changes related to the alert, and the process that changed the registry keys."
localization_priority: Normal
author: "preetikr"
ms.prod: ""
doc_type: resourcePageType
---

# registryKeyState resource type

Namespace: microsoft.graph

Contains information about registry key changes related to the alert, and the process that changed the registry keys.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hive|registryHive|A [Windows registry hive](/windows/desktop/sysinfo/registry-hives) : <ul><li>HKEY_CURRENT_CONFIG</li> <li>HKEY_CURRENT_USER</li> <li>HKEY_LOCAL_MACHINE\SAM</li> <li>HKEY_LOCAL_MACHINE\Security</li> <li>HKEY_LOCAL_MACHINE\Software</li> <li>HKEY_LOCAL_MACHINE\System</li> <li>HKEY_USERS\\.Default.</li></ul> Possible values are: `unknown`, `currentConfig`, `currentUser`, `localMachineSam`, `localMachineSecurity`, `localMachineSoftware`, `localMachineSystem`, `usersDefault`.|
|key|String|Current (i.e. changed) registry key (excludes HIVE).|
|oldKey|String|Previous (i.e. before changed) registry key (excludes HIVE).|
|oldValueData|String|Previous (i.e. before changed) registry key value data (contents).|
|oldValueName|String|Previous (i.e. before changed) registry key value name.|
|operation|registryOperation|Operation that changed the registry key name and/or value. Possible values are: `unknown`, `create`, `modify`, `delete`.|
|processId|Int32|Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).|
|valueData|String|Current (i.e. changed) registry key value data (contents).|
|valueName|String|Current (i.e. changed) registry key value name|
|valueType|registryValueType|[Registry key value type](/windows/desktop/sysinfo/registry-value-types) <ul><li>REG_BINARY</li> <li>REG_DWORD</li> <li>REG_DWORD_LITTLE_ENDIAN</li> <li>REG_DWORD_BIG_ENDIAN</li><li>REG_EXPAND_SZ</li> <li>REG_LINK</li> <li>REG_MULTI_SZ</li> <li>REG_NONE</li> <li>REG_QWORD</li> <li>REG_QWORD_LITTLE_ENDIAN</li> <li>REG_SZ</li></ul> Possible values are: `unknown`, `binary`, `dword`, `dwordLittleEndian`, `dwordBigEndian`, `expandSz`, `link`, `multiSz`, `none`, `qword`, `qwordlittleEndian`, `sz`.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.registryKeyState"
}-->

```json
{
  "hive": "@odata.type: microsoft.graph.registryHive",
  "key": "String",
  "oldKey": "String",
  "oldValueData": "String",
  "oldValueName": "String",
  "operation": "@odata.type: microsoft.graph.registryOperation",
  "processId": 1024,
  "valueData": "String",
  "valueName": "String",
  "valueType": "@odata.type: microsoft.graph.registryValueType"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "registryKeyState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

