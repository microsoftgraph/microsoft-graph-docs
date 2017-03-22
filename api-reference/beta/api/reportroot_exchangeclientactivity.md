# Get: ExchangeClientActivity

Retrieve the reports of Exchange Client Activity.

> Note: You can go to [Office 365 Reports - Email apps usage](https://support.office.com/client/Email-apps-usage-c2ce12a2-934f-4dd4-ba65-49b02be4703d) to check the meaning of different views.

## Prerequisites

The following **scopes** are required to execute this API:

- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/ExchangeClientActivity(view=view-value, period=period-value, date=date-value)
```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer. Required|

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
- Apps
- Users
- Versions

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

Here is an example of the request to get **detail** view with period of 7 days.
<!-- {
  "blockType": "request",
  "name": "reportroot_exchangeclientactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/ExchangeClientActivity(view='Detail',period='D7',date=null)
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
Data as of,User principal name,User display name,Deleted,Deleted date,Last activity date (UTC),Mail (iOS/Mac),Outlook (Mac),Outlook (Windows),Outlook (mobile),Other (mobile),Outlook on the web,POP3,IMAP4,SMTP,Reporting period in days
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_exchangeclientactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/ExchangeClientActivity(view='Detail',period=null,date='2017-02-02')
GET https://graph.microsoft.com/beta/reports/ExchangeClientActivity(view='Apps',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/ExchangeClientActivity(view='Users',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/ExchangeClientActivity(view='Versions',period='D7',date=null)
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: ExchangeClientActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->