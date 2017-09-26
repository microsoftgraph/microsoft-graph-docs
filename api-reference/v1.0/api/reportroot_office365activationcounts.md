# Get Office365ActivationCounts report

Get the count of Office 365 activations on desktops and devices.

> **Note:** For details about different report views and names, see [Office 365 Reports - Microsoft Office activations](https://support.office.com/client/Office-activations-87c24ae2-82e0-4d1e-be01-c3bcc3f18c60).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :--------------------------------------- |
| Delegated (work or school account)     | Not supported.                           |
| Delegated (personal Microsoft account) | Not supported.                           |
| Application                            | Reports.Read.All                         |

## HTTP request

```http
GET /reports/Office365ActivationCounts
```

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

| Column headers      |
| :------------------ |
| Report Refresh Date |
| Product Type        |
| Windows             |
| Mac                 |
| Android             |
| iOS                 |
| Windows 10 Mobile   |

## Example

The following example shows how to call this API.

#### Request

The following example shows the request.

```http
GET https://graph.microsoft.com/v1.0/reports/Office365ActivationCounts
```

#### Response

The following example shows the response.
```http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDe
```

Follow the 302 redirection and the CSV file that you download has the column headings that are listed below.

```http
HTTP/1.1 200 OK
Report Refresh Date,Product Type,Windows,Mac,Android,iOS,Windows 10 Mobile
```
