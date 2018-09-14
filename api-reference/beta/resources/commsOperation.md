# commsOperation resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The status of certain long-running operations.

## Methods
| Method                                             | Return Type                         | Description                                               |
|:---------------------------------------------------|:------------------------------------|:----------------------------------------------------------|

## Properties

| Property           | Type                        | Description                                                                     |
| :----------------- | :-------------------------- | :-------------------------------------------------------------------------------|
| clientContext      | String                      | The client context.                                                             |
| createdDateTime    | DateTimeOffset              | The start time of the operation.                                                |
| id                 | String                      | The operation id. Read Only.                                                    |
| lastActionDateTime | DateTimeOffset              | The time of the last action of the operation.                                   |
| resultInfo         | [resultInfo](resultInfo.md) | The result information. Read Only.                                              |
| status             | String                      | Possible values are: `NotStarted`, `Running`, `Completed`, `Failed`. Read Only. |

## Relationships
None

## Json Representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.commsOperation",
  "openType": true
}-->

```json
{
  "@odata.type": "String",
  "clientContext": "String",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "resultInfo": {"@odata.type": "microsoft.graph.resultInfo"},
  "status": "String"
}
```

## Example

``` json
{
    "id": "ABB33D04-3A2C-4D78-996F-9EEEF55EF119",
    "status": "completed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "commsOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
