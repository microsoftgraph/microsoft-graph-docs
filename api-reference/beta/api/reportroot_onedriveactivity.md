# Get OneDriveActivity report

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Retrieve the reports of OneDrive User Activity. The response will be a CSV file in a binary stream.

> Note: You can go to [Office 365 Reports - OneDrive for Business activity](https://support.office.com/client/OneDrive-for-Business-user-activity-8bbe4bf8-221b-46d6-99a5-2fb3c8ef9353) to check the meaning of different views.

## Prerequisites

The following **scopes** are required to execute this API:

- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/OneDriveActivity(view=view-value, period=period-value, date=date-value)/content
```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |

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
- Users
- Files

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

##### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reportroot_onedriveactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/OneDriveActivity(view='Detail',period='D7')/content
```

##### Response

Here is an example of the response.
<!-- {
  "blockType": "response",
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDe
```

Follow the 302 redirection and the downloading CSV file will have the schema as follows.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 200 OK
Data as of,User principal name,Deleted,Deleted date,Last activity date (UTC),Files viewed or edited,Files synced,Files shared internally,Files shared externally,Products assigned,Reporting period in days
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_onedriveactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/OneDriveActivity(view='Detail',date='2017-02-02')/content
GET https://graph.microsoft.com/beta/reports/OneDriveActivity(view='Files',period='D7')/content
GET https://graph.microsoft.com/beta/reports/OneDriveActivity(view='Users',period='D7')/content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: OneDriveActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->