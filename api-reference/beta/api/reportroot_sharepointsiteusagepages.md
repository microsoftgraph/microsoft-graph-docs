# SharePointSiteUsagePages function

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get the number of pages viewed across all sites.

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
GET /reports/SharePointSiteUsagePages(period='{period_value}')?$format=application/json
```

## Request parameters

In the request URL, provide the following query parameter with a valid value.

| Parameter | Type   | Description                              |
| :-------- | :----- | :--------------------------------------- |
| period    | string | Specifies the aggregate type. The supported values for {period_value} are: D7, D30, D90, and D180. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. Required. |

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and a **sharePointSiteUsagePages** object in the response body.

The **sharePointSiteUsagePages** object has the following properties.

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| siteType          | String |
| pageViewCount     | Int64  |
| reportDate        | Date   |
| reportPeriod      | String |

## Example

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/SharePointSiteUsagePages(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 243

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.sharePointSiteUsagePages)", 
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "siteType": "All", 
      "pageViewCount": 183, 
      "reportDate": "2017-09-01", 
      "reportPeriod": "7"
    }
  ]
}
```
