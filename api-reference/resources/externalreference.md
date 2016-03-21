# externalReference resource type

The ExternalReference resource represents the metadata of a reference (attachments such as file, URL). It is the value of property-value pairs in the [externalReferenceCollection](externalreferencecollection.md).

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.externalReference"
}-->

```json
{
  "alias": "string",
  "lastModifiedBy": "string",
  "lastModifiedDateTime": "String (timestamp)",
  "previewPriority": "string",
  "type": "string"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|alias|String| A name alias to describe the reference. |
|lastModifiedBy|String| Read-only. User id by which this is last modified. |
|lastModifiedDateTime|DateTimeOffset| Read-only. Date and time at which this is last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|previewPriority|String| Used to set the relative priority order in which the reference will be shown as a preview on the task. |
|type|String| Used to describe the type of the reference. Types include: `PowerPoint`, `Word`, `Excel`, `Other`.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "externalReference resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->