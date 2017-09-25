# Get Office365GroupsActivityUserDetail 

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get an Office 365 groups activity user detail report.

> **Note:** For details about different report views and names, see [Office 365 Reports - Office 365 groups](https://support.office.com/client/Office-365-groups-a27f1a99-3557-4f85-9560-a28e3d822a40).

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
GET /reports/Office365GroupsActivityUserDetail(period='D7')?$format=application/json
GET /reports/Office365GroupsActivityUserDetail(date=2017-09-01)?$format=application/json
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
| date      | Date   | Specifies the day to a view of the users that performed an activity on that day. Must have a format of YYYY-MM-DD. Only available for the last 30 days. |

> **Note:** You need to set either period or date in the URL.

## Response

If successful, this method returns a `200 OK` response code and an **office365GroupsActivityUserDetail** object in the response body.

The **office365GroupsActivityUserDetail** object has the following properties.

| Property                         | Type    |
| :------------------------------- | :------ |
| reportRefreshDate                | Date    |
| groupDisplayName                 | String  |
| isDeleted                        | Boolean |
| ownerPrincipalName               | String  |
| lastActivityDate                 | Date    |
| groupType                        | String  |
| memberCount                      | Int64   |
| guestCount                       | Int64   |
| exchangeReceivedEmailCount       | Int64   |
| sharePointActiveFileCount        | Int64   |
| yammerPostedMessageCount         | Int64   |
| yammerReadMessageCount           | Int64   |
| yammerLikedMessageCount          | Int64   |
| exchangeMailboxTotalItemCount    | Int64   |
| exchangeMailboxStorageUsedInByte | Int64   |
| sharePointTotalFileCount         | Int64   |
| sharePointSiteStorageUsedInByte  | Int64   |
| reportPeriod                     | String  |

The default page size for this request is 2000 items.

## Example

The following example shows how to call this API.

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/Office365GroupsActivityUserDetail(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 858

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.office365GroupsActivityUserDetail)", 
  "value": [
    {
      "@odata.type": "#microsoft.graph.office365GroupsActivityUserDetail", 
      "reportRefreshDate": "2017-09-01", 
      "groupDisplayName": "groupDisplayName-value", 
      "isDeleted": false, 
      "ownerPrincipalName": "ownerDisplayName-value", 
      "lastActivityDate": "2017-08-31", 
      "groupType": "Private", 
      "memberCount": 5, 
      "guestCount": 0, 
      "exchangeReceivedEmailCount": 341, 
      "sharePointActiveFileCount": 0, 
      "yammerPostedMessageCount": 0, 
      "yammerReadMessageCount": 0, 
      "yammerLikedMessageCount": 0, 
      "exchangeMailboxTotalItemCount": 343, 
      "exchangeMailboxStorageUsedInByte": 3724609, 
      "sharePointTotalFileCount": 0, 
      "sharePointSiteStorageUsedInByte": 0, 
      "reportPeriod": "30"
    }
  ]
}
```
