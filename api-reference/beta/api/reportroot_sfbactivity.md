# GET: SfbActivity report

Retrieve the reports of Skype for Business User Activity. The response will be a CSV file in a binary stream.

> Note: You can go to [Office 365 Reports - Skype for Business activity](https://support.office.com/client/Skype-for-Business-Online-activity-8cbe2eb2-1194-4fd7-b1ee-9f9287c82424) to check the meaning of different views.

## Prerequisites

The following **scopes** are required to execute this API:

- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/SfbActivity(view=view-value, period=period-value, date=date-value)/content
```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer <token\>. Required.|

## Request body

In the request URL, provide following query parameters with values.

| Parameter   | Type|Description|
|:---------------|:--------|:----------|
|view|ViewType|View is an enumeration type, used to determine which type of information that current report should return. Can not be null.|
|period|PeriodType|Period is an enumeration type, used to specify the aggregate type.|
|date|String|Specifies the day to a view of the users that performed an activity on that day. Must have a format of YYYY-MM-DD. Only available for the last 30 days and is ignored unless view type is **Detail**|

> Note: When view type is **Detail**, the period parameter will be ignored. For other view types, date parameter will be ignored.
> If you call with **Detail** view along with **PeriodType**, the return data is a list of all users that are licensed for the product with their respective last activity date.

The following **ViewType** are available in this report:

- Detail
- Activity
- Users

The following **PeriodType** are available in this report:

- D7
- D30
- D90
- D180

## Response

If successful, this method returns `302 Found` response redirecting to a pre-authenticated download URL for the report.

To download the contents of the file your application will need to follow the `Location` header in the response.
Many HTTP client libraries will automatically follow the 302 redirection and start downloading the file immedately.

Pre-authenticated download URLs are only valid for a short period of time (a few minutes) and do not require an `Authorization` header to download.

## Example

Here is an example of how to call this API.

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reportroot_sfbactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/SfbActivity(view='Detail',period='D7')/content
```

### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDezYGO-NQw
```

Follow the 302 redirection and the downloading CSV file will have the schema as belowing.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 200 OK
Data as of,User principal name,Deleted,Deleted date,Last activity date (UTC),P2P - total sessions,Conference organized - total sessions,Conference participated - total sessions,P2P - last activity date,Conference organized - last activity date,Conference participated - Last activity date,P2P - IM,P2P - audio,P2P - audio minutes,P2P - video,P2P - video minutes,P2P - app sharing,P2P - file transfers,Conference organized - IM,Conference organized - audio/video,Conference organized - audio/video minutes,Conference organized - app sharing,Conference organized - web,Conference organized dial-in/out 3rd party,Conference organized dial-in/out Microsoft,Conference organized dial-in Microsoft minutes,Conference organized dial-out Microsoft minutes,Conference participated - IM,Conference participated - audio/video,Conference participated - audio/video minutes,Conference participated - app sharing,Conference participated - web,Conference participated - dial-in,Products assigned,Reporting period in days
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_sfbactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/SfbActivity(view='Detail',date='2017-02-02')/content
GET https://graph.microsoft.com/beta/reports/SfbActivity(view='Activity',period='D7')/content
GET https://graph.microsoft.com/beta/reports/SfbActivity(view='Users',period='D7')/content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: SfbActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->