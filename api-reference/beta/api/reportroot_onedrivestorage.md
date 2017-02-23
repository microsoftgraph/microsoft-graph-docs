# GET: OneDriveStorage

Retrieve the reports of OneDrive Storage.

> Note: You can go to [Office 365 Reports - OneDrive for Business usage](https://support.office.com/client/OneDrive-for-Business-usage-0de3b312-c4e8-4e4b-a02d-32b2f726a680) to check the meaning of different views.

## Prerequisites

The following **scopes** are required to execute this API:

- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/OneDriveStorage(view=view-value, period=period-value, date=date-value)
```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer. required|

## Request body

In the request URL, provide following query parameters with values.

| Parameter   | Type|Description|
|:---------------|:--------|:----------|
|view|ViewType|View is an enumeration type, used to determine which type of information that current report should return. Can not be null.|
|period|PeriodType|Period is an enumeration type, used to specify the aggregate type.|
|date|String|A string represented date, format YYYY-MM-DD. Only available when view type is **Detail**. If you call in with date parameter, you will only get back the set of users that did an activity on that day in that product and this data is retained only for 30 days.|

> Note: When view type is **Detail**, the period parameter will be ignored. For other view types, date parameter will be ignored.

The following **ViewType** are available in this report:

- Detail
- Account
- Files
- Storage

The following **PeriodType** are available in this report:

- D7
- D30
- D90
- D180

> Note: If you call with **Detail** view along with **PeriodType**, the return data is a list of all users that are licensed for the product with their respective last activity date.

## Response

If successful, this method returns `200, OK` response code and [Report](../resources/report.md) object in the response body.

## Example

Here is an example of how to call this API.

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reportroot_onedrivestorage"
}-->

```http
GET https://graph.microsoft.com/beta/reports/OneDriveStorage(view='Detail',period='D7',date=null)
```

### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.Report"
} -->

```http
HTTP/1.1 200 OK
Data as of,Site URL,Site owner,Deleted,Last activity date (UTC),Files,Files viewed or edited,Storage used (B),Storage allocated (B),Reporting period in days
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_onedrivestorage"
}-->

```http
GET https://graph.microsoft.com/beta/reports/OneDriveStorage(view='Detail',period=null,date='2017-02-02')
GET https://graph.microsoft.com/beta/reports/OneDriveStorage(view='Account',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/OneDriveStorage(view='Files',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/OneDriveStorage(view='Storage',period='D7',date=null)
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: OneDriveStorage",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->