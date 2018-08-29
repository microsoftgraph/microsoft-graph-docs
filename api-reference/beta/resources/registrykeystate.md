# registryKeyState resource type

Contains information about registry key changes related to the alert, and the process that changed the registry keys.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|hive|[registryHive](registryhiveenumtype.md) enum|Registry hive (HKEY_CURRENT_CONFIG, HKEY_CURRENT_USER, HKEY_LOCAL_MACHINE\SAM, HKEY_LOCAL_MACHINE\Security, HKEY_LOCAL_MACHINE\Software, HKEY_LOCAL_MACHINE\System, HKEY_USERS\.Default). Possible values are: `unknown`, `currentConfig`, `currentUser`, `localMachineSam`, `localMachineSamSoftware`, `localMachineSystem`, `usersDefault`.|
|key|String|Current (i.e. changed) registry key (excludes HIVE).|
|oldKey|String|Previous (i.e. before changed) registry key (excludes HIVE).|
|oldValueData|String|Previous (i.e. before changed) registry key value data (contents).|
|oldValueName|String|Previous (i.e. before changed) registry key value name.|
|operation|[registryOperation](registryoperationenumtype.md) enum|Operation that changed the registry key name and/or value. Possible values are: `unknown`, `create`, `modify`, `delete`.|
|processId|Int32|Process ID (PID) of the process that modified the registry key (process details will appear in the alert 'processes' collection).|
|valueData|String|Current (i.e. changed) registry key value data (contents).|
|valueName|String|Current (i.e. changed) registry key value name|
|valueType|[registryValueType](registryvaluetypeenumtype.md) enum|Registry key value type (REG_BINARY, REG_DWORD, REG_DWORD_LITTLE_ENDIAN, REG_DWORD_BIG_ENDIAN, REG_EXPAND_SZ, REG_LINK, REG_MULTI_SZ, REG_NONE, REG_QWORD, REG_QWORD_LITTLE_ENDIAN, REG_SZ). Possible values are: `unknown`, `binary`, `dword`, `dwordLittleEndian`, `dwordBigEndian`, `expandSz`, `link`, `multiSz`, `none`, `qword`, `qwordlittleEndian`, `sz`.|

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