# GET: ExchangeUserActivity
Retrieve the reports of Exchange User Activity.

### Prerequisites
The following **scopes** are required to execute this API: 
- Reports.Read.All
> Note: Permission scopes are listed in least privilege required order.

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /reports/ExchangeUserActivity(view=view-value, period=period-value, date=date-value)
```
### Request headers
| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer. required|

### Request body
In the request URL, provide following query parameters with values.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|view|ViewType|View is an enumeration type, used to determine which type of information that current report should return. Can not be null.|
|period|PeriodType|Period is an enumeration type, used to specify the aggregate type.|
|date|String|A string represented date, format YYYY-MM-DD. Only available when view type is **Detail**, report would provide data for activity happening on that day.|

> Note: When view type is **Detail**, the period parameter will be ignored. For other view types, date parameter will be ignored.

The following **ViewType** are available in this report:

- Detail
- Activity
- Users

The following **PeriodType** are available in this report:

- D7
- D30
- D90
- D180

### Response
If successful, this method returns `200, OK` response code and [Report](../resources/report.md) object in the response body.

### Example
Here is an example of how to call this API.
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reportroot_exchangeuseractivity"
}-->
```http
GET https://graph.microsoft.com/beta/reports/ExchangeUserActivity(view='Detail',period='D7',date=null)
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.Report"
} -->
```http
HTTP/1.1 200 OK
Data as of,User principal name,User display name,Deleted,Deleted date,Last activity date (UTC),Send actions,Receive actions,Read actions,Products assigned,Reporting period in days
```

##### Other valid requests
<!-- {
  "blockType": "request",
  "name": "reportroot_exchangeuseractivity"
}-->
```http
GET https://graph.microsoft.com/beta/reports/ExchangeUserActivity(view='Detail',period=null,date='2017-02-02')
GET https://graph.microsoft.com/beta/reports/ExchangeUserActivity(view='Activity',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/ExchangeUserActivity(view='Users',period='D7',date=null)
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: ExchangeUserActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->