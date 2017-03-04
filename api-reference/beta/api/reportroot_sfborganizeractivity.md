# GET: SfbOrganizerActivity report

Retrieve the reports of Skype for Business Organizer Activity. The response will be a CSV file in a binary stream.

> Note: You can go to [Office 365 Reports - Skype for Business conference organizer activity](https://support.office.com/client/Skype-for-Business-Online-conference-organized-activity-03a255d4-0e1d-4b24-b73d-7a62fae36254) to check the meaning of different views.

## Prerequisites

The following **scopes** are required to execute this API:

- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/SfbOrganizerActivity(view=view-value, period=period-value)/content
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

> Note: All the **Detail** reports of Sky for Business have been merged into [SfbActivity](reportroot_sfbactivity.md).

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
  "name": "reportroot_sfborganizeractivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/SfbOrganizerActivity(view='Users',period='D7')/content
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
Location: https://reports.office.com/data/download/dfbJ_HdfauiYRg4sXTiKqdfeXU0t__XDezYGO-NQw
```

Follow the 302 redirection and the downloading CSV file will have the schema as belowing.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 200 OK
Data as of,IM,Audio/Video,Application sharing,Web,Dial-in/out-3rd party,Dial-in/out Microsoft
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_sfborganizeractivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/SfbOrganizerActivity(view='Activity',period='D7')/content
GET https://graph.microsoft.com/beta/reports/SfbOrganizerActivity(view='Minutes',period='D7')/content
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