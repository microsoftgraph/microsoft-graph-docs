# Get Office365ActiveUserDetail report

Get an Office 365 active user detail report.

> **Note:** For details about different report views and names, see [Office 365 Reports - Active Users](https://support.office.com/client/Active-Users-fc1cf1d0-cd84-43fd-adb7-a4c4dfa8112d).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :--------------------------------------- |
| Delegated (work or school account)     | Not supported.                           |
| Delegated (personal Microsoft account) | Not supported.                           |
| Application                            | Reports.Read.All                         |

## HTTP request

```http
GET /reports/Office365ActiveUserDetail(period='D7')
GET /reports/Office365ActiveUserDetail(date=2017-09-01)
```

## Optional query parameters

This method supports the `$top` and `$skipToken` [OData query parameters](../../../concepts/query_parameters.md) to customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

In the request URL, provide following query parameters with values.

| Parameter | Type       | Description                              |
| :-------- | :--------- | :--------------------------------------- |
| period    | PeriodType | Specifies the aggregate type. The value must be one of the following: D7, D30, D90, or D180. D7 represents a report on the last 7 days. |
| date      | Date       | Specifies the day to a view of the users that performed an activity on that day. Must have a format of YYYY-MM-DD. Only available for the last 30 days. |

> **Note:** You need to set either period or date in the URL.

The following **PeriodType** are available in this report:

- D7
- D30
- D90
- D180

## Response

If successful, this method returns `302 Found` response redirecting to a pre-authenticated download URL for the report.

To download the contents of the file your application will need to follow the `Location` header in the response.
Many HTTP client libraries will automatically follow the 302 redirection and start downloading the file immediately.

Pre-authenticated download URLs are only valid for a short period of time (a few minutes) and do not require an `Authorization` header to download.

The CSV file has the following headers for columns.

| Property                               |
| :------------------------------------- |
| Report Refresh Date                    |
| User Principal Name                    |
| Display Name                           |
| Is Deleted                             |
| Deleted Date                           |
| Has Exchange License                   |
| Has OneDrive License                   |
| Has SharePoint License                 |
| Has Skype For Business License         |
| Has Yammer License                     |
| Exchange Last Activity Date            |
| OneDrive Last Activity Date            |
| SharePoint Last Activity Date          |
| Skype For Business Last Activity Date  |
| Yammer Last Activity Date              |
| Exchange License Assign Date           |
| OneDrive License Assign Date           |
| SharePoint License Assign Date         |
| Skype For Business License Assign Date |
| Yammer License Assign Date             |
| Assigned Products                      |

The default page size for this request is 2000 items.

## Example

The following example shows how to call this API.

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/v1.0/reports/Office365ActiveUserDetail(period='D7')
```

#### Response

The following example shows the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 302 Found
Content-Type: text/plain
Location: https://reports.office.com/data/download/JDFKdf2_eJXKS034dbc7e0t__XDe
```

Follow the 302 redirection and the downloading CSV file will have the schema as follows.

```http
HTTP/1.1 200 OK
Report Refresh Date,User Principal Name,Display Name,Is Deleted,Deleted Date,Has Exchange License,Has OneDrive License,Has SharePoint License,Has Skype For Business License,Has Yammer License,Exchange Last Activity Date,OneDrive Last Activity Date,SharePoint Last Activity Date,Skype For Business Last Activity Date,Yammer Last Activity Date,Exchange License Assign Date,OneDrive License Assign Date,SharePoint License Assign Date,Skype For Business License Assign Date,Yammer License Assign Date,Assigned Products
```
