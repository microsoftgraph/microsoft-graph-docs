# Get TeamsAppUsageUserDetail report

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get a Teams app usage user detail report.

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
GET /reports/TeamsAppUsageUserDetail(period='D7')?$format=application/json
GET /reports/TeamsAppUsageUserDetail(date=2017-09-01)?$format=application/json
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

If successful, this method returns a `200 OK` response code and an **teamsAppUsageUserDetail** object in the response body.

The **teamsAppUsageUserDetail** object has the following properties.

| Property          | Type    |
| :---------------- | :------ |
| reportRefreshDate | Date    |
| userPrincipalName | String  |
| lastActivityDate  | Date    |
| isDeleted         | Boolean |
| deletedDate       | Date    |
| web               | Boolean |
| windowsPhone      | Boolean |
| ios               | Boolean |
| mac               | Boolean |
| androidPhone      | Boolean |
| windows           | Boolean |
| reportPeriod      | String  |

The default page size for this request is 2000 items.

## Example

The following example shows how to call this API.

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/TeamsAppUsageUserDetail(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 431

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(teamsAppUsageAppsUserCounts)", 
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamsAppUsageUserDetail", 
      "reportRefreshDate": "2017-09-01", 
      "userPrincipalName": "userPrincipalName-value", 
      "lastActivityDate": "2017-09-01", 
      "isDeleted": false, 
      "deletedDate": null, 
      "web": false, 
      "windowsPhone": false, 
      "ios": true, 
      "mac": false, 
      "androidPhone": false, 
      "windows": true, 
      "reportPeriod": "7"
    }
  ]
}
```
