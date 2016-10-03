# Workbook resource type

Workbook is the top level object which contains related workbook objects such as worksheets, tables, ranges, etc.

## Properties
None

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|names|[NamedItem](nameditem.md) collection|Represents a collection of workbook scoped named items (named ranges and constants). Read-only.|
|tables|[Table](table.md) collection|Represents a collection of tables associated with the workbook. Read-only.|
|worksheets|[Worksheet](worksheet.md) collection|Represents a collection of worksheets associated with the workbook. Read-only.|

## Functions

[Excel functions](#functions): Invoke a workbook function using the syntax `POST /workbook/functions/{function-name}` and providing the function argument(s) in the body using a JSON object. The function's resulting `value` and any `error` strings are returned in the function result object. The `error` value of `null` indicates successful execution of the function. 

The complete list of supported functions are listed [here](https://support.office.com/en-us/article/Excel-functions-alphabetical-b3944572-255d-4efb-bb96-c6d90033e188). Refer to the function signature for specific parameter names and data types.

_Important notes:_ 
* The range input parameter is supplied using a range object instead of the range address string.  
* The index parameter is 1-indexed unlike the 0-index used in most of the APIs. 

Example: 

In the below example, `vlookup` function is called by passing lookup value, input range and the value to be returned. 

Request: 

```http 
POST https://graph.microsoft.com/v1.0/me/drive/root:/book1.xlsx:/workbook/functions/vlookup
content-type: Application/Json 
authorization: Bearer {access-token} 
workbook-session-id: {session-id}

{
    "lookupValue": "Temperature",
    "tableArray": { "Address": "Sheet1!E1:G5" },
    "colIndexNum": 2,
    "rangeLookup": false
}
```

Response:

```http
HTTP code: 200, OK
content-type: application/json;odata.metadata 

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#workbookFunctionResult",
    "@odata.type": "#microsoft.graph.workbookFunctionResult",
    "@odata.id": "/users('f6d92604-4b76-4b70-9a4c-93dfbcc054d5')/drive/root/workbook/functions/vlookup()",
    "error": null,
    "value": "28.3"
}
```

Example: 

In the below example, `median` function is called by passing the input range(s) in an array. 

Request: 

```http 
POST https://graph.microsoft.com/v1.0/me/drive/root:/book1.xlsx:/workbook/functions/median
content-type: Application/Json 
authorization: Bearer {access-token} 
workbook-session-id: {session-id}

{
"values" :  [
        { "address": "Sheet2!A1:A5" },
        { "address": "Sheet2!B1:B5" },
      ] 
}
```

Response:

```http
HTTP code: 200, OK
content-type: application/json;odata.metadata 

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#workbookFunctionResult",
  "@odata.type": "#microsoft.graph.workbookFunctionResult",
  "@odata.id": "/users('2abcad6a-2fca-4b6e-9577-e358a757d77d')/drive/root/workbook/functions/median()",
  "error": null,
  "value": 30
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Workbook resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
