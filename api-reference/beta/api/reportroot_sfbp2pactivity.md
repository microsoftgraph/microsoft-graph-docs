# GET: SfbP2PActivity

Retrieve the reports of Sky for Business Peer to Peer Activity.

> Note: You can go to [Office 365 Reports - Skype for Business peer-to-peer activity](https://support.office.com/client/Skype-for-Business-Online-peertopeer-activity-d3b2d569-4ee9-44b8-92bf-d518142f0713) to check the meaning of different views.

## Prerequisites

The following **scopes** are required to execute this API:

- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/SfbP2PActivity(view=view-value, period=period-value, date=null)
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
|date|String|Date parameter is not available here, should set to null.|

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

## Response

If successful, this method returns `200, OK` response code and [Report](../resources/report.md) object in the response body.

## Example

Here is an example of how to call this API.

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reportroot_sfbp2pactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/SfbP2PActivity(view='Users',period='D7',date=null)
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
Data as of,IM,Audio,Video,Application sharing,File transfers
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_sfbp2pactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/SfbP2PActivity(view='Activity',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/SfbP2PActivity(view='Minutes',period='D7',date=null)
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: SfbP2PActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->