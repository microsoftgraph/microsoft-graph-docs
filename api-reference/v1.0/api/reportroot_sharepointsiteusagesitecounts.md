# SharePointSiteUsageSiteCounts function

Get the total number of files across all sites and the number of active files. The number of total files includes both user files and system files.  A file is considered active if it has been saved, synced, modified or shared within the specific time period.

> **Note:** For details about different report views and names, see [Office 365 Reports - SharePoint site usage](https://support.office.com/client/SharePoint-site-usage-4ecfb843-e5d5-464d-8bf6-7ed512a9b213).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :--------------------------------------- |
| Delegated (work or school account)     | Not supported.                           |
| Delegated (personal Microsoft account) | Not supported.                           |
| Application                            | Reports.Read.All                         |

## HTTP request

```http
GET /reports/SharePointSiteUsageSiteCounts(period='{period_value}')
```

## Request parameters

In the request URL, provide the following query parameters with values.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | string | Specifies the aggregate type. The supported values for {period_value} are: D7, D30, D90 and D180. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. Required. |

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Response

If successful, this method returns `302 Found` response redirecting to a pre-authenticated download URL for the report.

To download the contents of the file your application will need to follow the `Location` header in the response.
Many HTTP client libraries will automatically follow the 302 redirection and start downloading the file immediately.

Pre-authenticated download URLs are only valid for a short period of time (a few minutes) and do not require an `Authorization` header to download.

The CSV file has the following headers for columns.

- Report Refresh Date
- Site Type
- Total
- Active
- Report Date
- Report Period

## Example

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/v1.0/reports/SharePointSiteUsageSiteCounts(period='D7')
```

#### Response

The following is an example of the response.

```http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDe
```

Follow the 302 redirection and the downloading CSV file will have the schema as follows.

```http
HTTP/1.1 200 OK
Report Refresh Date,Site Type,Total,Active,Report Date,Report Period
```
