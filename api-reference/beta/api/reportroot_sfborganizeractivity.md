# GET: SfbOrganizerActivity
Retrieve the reports of Sky for Business Organizer Activity.

### Prerequisites
The following **scopes** are required to execute this API: 
- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

### HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /reports/SfbOrganizerActivity(view=view-value, period=period-value, date=null)
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

> Note: All the **Detail** reports of Sky for Business have been merged into [SfbUserActivity](reportroot_sfbuseractivity.md).

The following **ViewType** are available in this report:

- Activity
- Users
- Minutes

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
  "name": "reportroot_sfborganizeractivity"
}-->
```http
GET https://graph.microsoft.com/beta/reports/SfbOrganizerActivity(view='Users',period='D7',date=null)
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
Data as of,IM,Audio/Video,Application sharing,Web,Dial-in/out-3rd party,Dial-in/out Microsoft
```

##### Other valid requests
<!-- {
  "blockType": "request",
  "name": "reportroot_sfborganizeractivity"
}-->
```http
GET https://graph.microsoft.com/beta/reports/SfbOrganizerActivity(view='Activity',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/SfbOrganizerActivity(view='Minutes',period='D7',date=null)
```
<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: SfbOrganizerActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->