# GET: SfbParticipantActivity report

Retrieve the reports of Skype for Business Participant Activity. The response will be a CSV file in a binary stream.

> Note: You can go to [Office 365 Reports - Skype for Business conference participant activity](https://support.office.com/client/Skype-for-Business-Online-conference-participant-activity-c3c89995-65dd-4715-9e38-bb244c742c6b) to check the meaning of different views.

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
|date|String|Date parameter is not available here, should set to null.|

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
  "name": "reportroot_sfbparticipantactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/SfbParticipantActivity(view='Users',period='D7')/content
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
Location: https://reports.office.com/data/download/I0bJ_HpgnSeYRg4sXTiKqdfeXU0t__XDezYGO-NQw
```

Follow the 302 redirection and the downloading CSV file will have the schema as belowing.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 200 OK
Data as of,IM,Audio/Video,Application sharing,Web,Dial-in/out-3rd party
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_sfbparticipantactivity"
}-->

```http
GET https://graph.microsoft.com/beta/reports/SfbParticipantActivity(view='Activity',period='D7')/content
GET https://graph.microsoft.com/beta/reports/SfbParticipantActivity(view='Minutes',period='D7')/content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: SfbParticipantActivity",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->