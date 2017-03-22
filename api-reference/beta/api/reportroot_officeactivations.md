# ReportRoot: OfficeActivations

Retrieve the reports of Office Activations.

> Note: You can go to [Office 365 Reports - Microsoft Office activations](https://support.office.com/client/Office-activations-87c24ae2-82e0-4d1e-be01-c3bcc3f18c60) to check the meaning of different views.

## Prerequisites

The following **scopes** are required to execute this API:

- Reports.Read.All

> Note: Permission scopes are listed in least privilege required order.

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/OfficeActivations(view=view-value)
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

The following **ViewType** are available in this report:

- Detail
- Activations
- Users

## Response

If successful, this method returns `200, OK` response code and [Report](../resources/report.md) object in the response body.

## Example

Here is an example of how to call this API.

### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reportroot_officeactivations"
}-->

```http
GET https://graph.microsoft.com/beta/reports/OfficeActivations(view='Detail')
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
Data as of,User principal name,User display name,Product license,Last activity date (UTC),Windows OS,Mac OS,Windows 10 Mobile,iOS,Android
```

### Other valid requests

<!-- {
  "blockType": "request",
  "name": "reportroot_officeactivations"
}-->

```http
GET https://graph.microsoft.com/beta/reports/OfficeActivations(view='Activations',period='D7',date=null)
GET https://graph.microsoft.com/beta/reports/OfficeActivations(view='Users',period='D7',date=null)
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "ReportRoot: OfficeActivations",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->