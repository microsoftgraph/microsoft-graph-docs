# GET: Office365GroupsActivity

Retrieve the reports of Office 365 Groups Activity.

> Note: You can go to [Office 365 Reports - Office 365 groups](https://support.office.com/client/Office-365-groups-a27f1a99-3557-4f85-9560-a28e3d822a40) to check the meaning of different views.

## Prerequisites

The following **scopes** are required to execute this API:

- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/Office365GroupsActivity(view=view-value, period=period-value, date=date-value)
```

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
- Activity
- Groups
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
  "name": "reportroot_office365groupsactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/Office365GroupsActivity(view='Detail',period='D7',date=null)
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
ContentDate,Group Name,Group Owner,Type,Last activity date (UTC),Deleted,Message received,Item count,Item size,Members,Guests,Reporting period in days
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_office365groupsactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/Office365GroupsActivity(view='Detail',period=null,date='2017-02-02')
GET https://graph.microsoft.com/beta/reports/Office365GroupsActivity(view='Activity',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/Office365GroupsActivity(view='Groups',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/Office365GroupsActivity(view='Storage',period='D7',date=null)
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: Office365GroupsActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->