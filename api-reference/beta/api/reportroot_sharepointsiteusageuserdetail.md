# SharePointSiteUsageUserDetail function

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get user detail about SharePoint site usage.

> **Note:** For details about different report views and names, see [Office 365 Reports - SharePoint site usage](https://support.office.com/client/SharePoint-site-usage-4ecfb843-e5d5-464d-8bf6-7ed512a9b213).

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
GET /reports/SharePointSiteUsageUserDetail(period='{period_value}')?$format=application/json
GET /reports/SharePointSiteUsageUserDetail(date={date_value})?$format=application/json
```

## Request parameters

In the request URL, provide the following query parameters with values.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | string | Specifies the aggregate type. The supported values for {period_value} are: D7, D30, D90 and D180. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. |
| date      | Date   | Specifies the day to a view of the users that performed an activity on that day. {date_value} must have a format of YYYY-MM-DD. Specifies a date that is within the last 30 days, as the this report is only available for the last 30 days. |

> **Note:** You need to set either period or date in the URL.

This method supports the `$top` and `$skipToken` [OData query parameters](../../../concepts/query_parameters.md) to customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and an **sharePointSiteUsageUserDetail** object in the response body.

The **sharePointSiteUsageUserDetail** object has the following properties.

| Property               | Type    |
| :--------------------- | :------ |
| reportRefreshDate      | Date    |
| siteUrl                | String  |
| ownerDisplayName       | String  |
| isDeleted              | Boolean |
| lastActivityDate       | Date    |
| fileCount              | Int64   |
| activeFileCount        | Int64   |
| pageViewCount          | Int64   |
| visitedPageCount       | Int64   |
| storageUsedInByte      | Int64   |
| storageAllocatedInByte | Int64   |
| rootWebTemplate        | String  |
| reportPeriod           | String  |

The default page size for this request is 2000 items.

## Example

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/SharePointSiteUsageUserDetail(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 484

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.sharePointSiteUsageUserDetail)", 
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "siteUrl": "siteUrl-value", 
      "ownerDisplayName": "ownerDisplayName-value", 
      "isDeleted": false, 
      "lastActivityDate": "2017-09-01", 
      "fileCount": 170, 
      "activeFileCount": 25, 
      "pageViewCount": 7, 
      "visitedPageCount": 3, 
      "storageUsedInByte": 63442116, 
      "storageAllocatedInByte": 2748779094400, 
      "rootWebTemplate": "Publishing Site", 
      "reportPeriod": "7"
    }
  ]
}
```
