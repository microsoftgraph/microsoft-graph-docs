# ReportRoot: Office365Activations report

Retrieve the reports of Office 365 Activations. The response will be a CSV file in a binary stream.

> Note: You can go to [Office 365 Reports - Microsoft Office activations](https://support.office.com/client/Office-activations-87c24ae2-82e0-4d1e-be01-c3bcc3f18c60) to check the meaning of different views.

## Prerequisites

The following **scopes** are required to execute this API:

- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/Office365Activations(view=view-value)/content
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

The following **ViewType** are available in this report:

- Detail
- Activations
- Users

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
  "name": "reportroot_office365activations"
}-->

```http
GET https://graph.microsoft.com/beta/reports/Office365Activations(view='Detail')/content
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
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDe
```

Follow the 302 redirection and the downloading CSV file will have the schema as belowing.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
} -->

```http
HTTP/1.1 200 OK
Data as of,User principal name,User display name,Product license,Last activity date (UTC),Windows OS,Mac OS,Windows 10 Mobile,iOS,Android
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_office365activations"
}-->

```http
GET https://graph.microsoft.com/beta/reports/Office365Activations(view='Activations')/content
GET https://graph.microsoft.com/beta/reports/Office365Activations(view='Users')/content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: Office365Activations",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->