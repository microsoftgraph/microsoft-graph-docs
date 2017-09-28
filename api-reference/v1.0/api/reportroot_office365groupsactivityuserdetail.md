# Office365GroupsActivityUserDetail function

Get user detail about Office 365 groups activity.

> **Note:** For details about different report views and names, see [Office 365 Reports - Office 365 groups](https://support.office.com/client/Office-365-groups-a27f1a99-3557-4f85-9560-a28e3d822a40).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :--------------------------------------- |
| Delegated (work or school account)     | Not supported.                           |
| Delegated (personal Microsoft account) | Not supported.                           |
| Application                            | Reports.Read.All                         |

## HTTP request

```http
GET /reports/Office365GroupsActivityUserDetail(period='{period_value}')
GET /reports/Office365GroupsActivityUserDetail(date={date_value})
```

## Request parameters

In the request URL, provide the following query parameters with values.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | string | Specifies the aggregate type. The supported values for {period_value} are: D7, D30, D90 and D180. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. |
| date      | Date   | Specifies the day to a view of the users that performed an activity on that day. {date_value} must have a format of YYYY-MM-DD. Specifies a date that is within the last 30 days, as the this report is only available for the last 30 days. |

> **Note:** You need to set either period or date in the URL.

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
- Group Display Name
- Is Deleted
- Owner Principal Name
- Last Activity Date
- Group Type
- Member Count
- Guest Count
- Exchange Received Email Count
- SharePoint Active File Count
- Yammer Posted Message Count
- Yammer Read Message Count
- Yammer Liked Message Count
- Exchange Mailbox Total Item Count
- Exchange Mailbox Storage Used (Byte)
- SharePoint Total File Count
- SharePoint Site Storage Used (Byte)
- Report Period

## Example

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/v1.0/reports/Office365GroupsActivityUserDetail(period='D7')
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
Report Refresh Date,Group Display Name,Is Deleted,Owner Principal Name,Last Activity Date,Group Type,Member Count,Guest Count,Exchange Received Email Count,SharePoint Active File Count,Yammer Posted Message Count,Yammer Read Message Count,Yammer Liked Message Count,Exchange Mailbox Total Item Count,Exchange Mailbox Storage Used (Byte),SharePoint Total File Count,SharePoint Site Storage Used (Byte),Report Period
```
