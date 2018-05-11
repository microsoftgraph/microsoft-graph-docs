# dataPolicyOperation resource type

Represents a submitted data policy operation. It contains necessary information for tracking the status of an operation. For example, a company administrator can submit a data policy operation request to export an employee's company data, and then later track that request.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get dataPolicyOperation](../api/datapolicyoperation_get.md) | [dataPolicyOperation](datapolicyoperation.md) |Read properties of the dataPolicyOperation object.|

## Properties

> **Note:** All properties of this resource are read-only.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|completedDateTime|DateTimeOffset|Represents when the request for this data policy operation was completed, in UTC time, using the ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`. Null until the operation completes.|
|id|String| Unique key for this operation. |
|status|string| Possible values are: `notStarted`, `running`, `complete`, `failed`, `unknownFutureValue`.|
|storageLocation|String|The URL location to where data is being exported for export requests.|
|userId|String|The id for the user on whom the operation is performed.|
|submittedDateTime|DateTimeOffset|Represents when the request for this data operation was submitted, in UTC time, using the ISO 8601 format. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|

## Relationships
None


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.dataPolicyOperation"
}-->

```json
{
  "completedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "status": "string",
  "storageLocation": "String",
  "userId": "String",
  "submittedDateTime": "String (timestamp)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "dataPolicyOperation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
