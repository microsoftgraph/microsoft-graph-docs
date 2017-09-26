# Get MailboxUsageUserDetail report

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get a mailbox usage user detail report.

> **Note:** For details about different report views and names, see [Office 365 Reports - Mailbox usage](https://support.office.com/client/Mailbox-usage-beffbe01-ce2d-4614-9ae5-7898868e2729).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :--------------------------------------- |
| Delegated (work or school account)     | Not supported.                           |
| Delegated (personal Microsoft account) | Not supported.                           |
| Application                            | Reports.Read.All                         |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/MailboxUsageUserDetail(period='D7')?$format=application/json
```

## Optional query parameters

This method supports the `$top` and `$skipToken` [OData query parameters](../../../concepts/query_parameters.md) to customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

In the request URL, provide following query parameters with values.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | String | Specifies the aggregate type. The value must be one of the following: D7, D30, D90, or D180. D7 represents a report on the last 7 days. |

## Response

If successful, this method returns a `200 OK` response code and an **mailboxUsageUserDetail** object in the response body.

The **mailboxUsageUserDetail** object has the following properties.

| Property                       | Type    |
| :----------------------------- | :------ |
| reportRefreshDate              | Date    |
| userPrincipalName              | String  |
| displayName                    | String  |
| isDeleted                      | Boolean |
| deletedDate                    | Date    |
| createdDate                    | Date    |
| lastActivityDate               | Date    |
| itemCount                      | Int64   |
| storageUsedInByte              | Int64   |
| issueWarningQuotaInByte        | Int64   |
| prohibitSendQuotaInByte        | Int64   |
| prohibitSendReceiveQuotaInByte | Int64   |
| reportPeriod                   | String  |

The default page size for this request is 2000 items.

## Example

The following example shows how to call this API.

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/MailboxUsageUserDetail(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 526

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.mailboxUsageUserDetail)", 
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "userPrincipalName": "userPrincipalName-value", 
      "displayName": "displayName-value", 
      "isDeleted": false, 
      "deletedDate": null, 
      "createdDate": "2016-03-30", 
      "lastActivityDate": "2017-09-01", 
      "itemCount": 138481, 
      "storageUsedInByte": 10414748704, 
      "issueWarningQuotaInByte": 10522698752, 
      "prohibitSendQuotaInByte": 10630040576, 
      "prohibitSendReceiveQuotaInByte": 10737418240, 
      "reportPeriod": "7"
    }
  ]
}
```
