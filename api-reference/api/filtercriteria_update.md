# Update filtercriteria

Update the properties of filtercriteria object.
### Prerequisites
The following **scopes** are required to execute this API: 
### HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /workbook/tables(<id|name>)/columns(<id|name>)/filter/criteria
PATCH /workbook/worksheets(<id|name>)/tables(<id|name>)/columns(<id|name>)/filter/criteria
```
### Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization  | Bearer <code>|


### Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|The HTML color string used to filter cells. Used with "cellColor" and "fontColor" filtering.|
|criterion1|string|The first criterion used to filter data. Used as an operator in the case of "custom" filtering.|
|criterion2|string|The second criterion used to filter data. Only used as an operator in the case of "custom" filtering.|
|dynamicCriteria|string|The dynamic criteria from the Excel.DynamicFilterCriteria set to apply on this column. Used with "dynamic" filtering. Possible values are: `Unknown`, `AboveAverage`, `AllDatesInPeriodApril`, `AllDatesInPeriodAugust`, `AllDatesInPeriodDecember`, `AllDatesInPeriodFebruray`, `AllDatesInPeriodJanuary`, `AllDatesInPeriodJuly`, `AllDatesInPeriodJune`, `AllDatesInPeriodMarch`, `AllDatesInPeriodMay`, `AllDatesInPeriodNovember`, `AllDatesInPeriodOctober`, `AllDatesInPeriodQuarter1`, `AllDatesInPeriodQuarter2`, `AllDatesInPeriodQuarter3`, `AllDatesInPeriodQuarter4`, `AllDatesInPeriodSeptember`, `BelowAverage`, `LastMonth`, `LastQuarter`, `LastWeek`, `LastYear`, `NextMonth`, `NextQuarter`, `NextWeek`, `NextYear`, `ThisMonth`, `ThisQuarter`, `ThisWeek`, `ThisYear`, `Today`, `Tomorrow`, `YearToDate`, `Yesterday`.|
|filterOn|string|The property used by the filter to determine whether the values should stay visible. Possible values are: `And`, `Or`.|
|icon|Icon|The icon used to filter cells. Used with "icon" filtering.|
|operator|FilterOperator|The operator used to combine criterion 1 and 2 when using "custom" filtering.|
|values|object[]|The set of values to be used as part of "values" filtering.|

### Response
If successful, this method returns a `200 OK` response code and updated FilterCriteria object in the response body.
### Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_filtercriteria"
}-->
```http
PATCH https://graph.microsoft.com/beta/me/drive/items/<id>/workbook/tables(<id|name>)/columns(<id|name>)/filter/criteria
Content-type: application/json
Content-length: 146

{
  "criterion1": "criterion1-value",
  "criterion2": "criterion2-value",
  "color": "color-value",
  "dynamicCriteria": "dynamicCriteria-value"
}
```
##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.filterCriteria"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 146

{
  "criterion1": "criterion1-value",
  "criterion2": "criterion2-value",
  "color": "color-value",
  "dynamicCriteria": "dynamicCriteria-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update filtercriteria",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->