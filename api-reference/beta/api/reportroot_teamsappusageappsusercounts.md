# Get TeamsAppUsageAppsUserCounts report

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get a Teams app usage apps user counts report.

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
GET /reports/TeamsAppUsageAppsUserCounts(period='D7')?$format=application/json
```

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

If successful, this method returns a `200 OK` response code and an **teamsAppUsageAppsUserCounts** object in the response body.

The **teamsAppUsageAppsUserCounts** object has the following properties.

| Property          | Type   |
| :---------------- | :----- |
| reportRefreshDate | Date   |
| web               | Int64  |
| windowsPhone      | Int64  |
| androidPhone      | Int64  |
| ios               | Int64  |
| mac               | Int64  |
| windows           | Int64  |
| reportPeriod      | String |

## Example

The following example shows how to call this API.

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/TeamsAppUsageAppsUserCounts(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 302

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(teamsAppUsageAppsUserCounts)", 
    "value": [
        {
            "@odata.type": "#microsoft.graph.teamsAppUsageAppsUserCounts", 
            "reportRefreshDate": "2017-09-01", 
            "web": 51, 
            "windowsPhone": 2, 
            "androidPhone": 34, 
            "ios": 76, 
            "mac": 40, 
            "windows": 491, 
            "reportPeriod": "7"
        }
    ]
}
```
