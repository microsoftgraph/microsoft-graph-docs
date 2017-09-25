# Get YammerDeviceUsageUserDetail report

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get a Yammer device usage user detail report.

> **Note:** For details about different report views and names, see [Office 365 Reports - Yammer device usage](https://support.office.com/client/Yammer-device-usage-b793ffdd-effa-43d0-849a-b1ca2e899f38).

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
GET /reports/YammerDeviceUsageUserDetail(period='D7')?$format=application/json
GET /reports/YammerDeviceUsageUserDetail(date=2017-09-01)?$format=application/json
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

If successful, this method returns a `200 OK` response code and an **yammerDeviceUsageUserDetail** object in the response body.

The **yammerDeviceUsageUserDetail** object has the following properties.

| Property          | Type    |
| :---------------- | :------ |
| reportRefreshDate | Date    |
| userPrincipalName | String  |
| displayName       | String  |
| userState         | String  |
| stateChangeDate   | Date    |
| lastActivityDate  | Date    |
| web               | Boolean |
| windowsPhone      | Boolean |
| androidPhone      | Boolean |
| iPhone            | Boolean |
| iPad              | Boolean |
| other             | Boolean |
| reportPeriod      | String  |

The default page size for this request is 2000 items.

## Example

The following example shows how to call this API.

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/YammerDeviceUsageUserDetail(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 601

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.yammerDeviceUsageUserDetail)", 
  "value": [
    {
      "@odata.type": "#microsoft.graph.yammerDeviceUsageUserDetail", 
      "reportRefreshDate": "2017-09-06", 
      "userPrincipalName": "userPrincipalName-value", 
      "displayName": "displayName-value", 
      "userState": "active", 
      "stateChangeDate": "2012-06-26", 
      "lastActivityDate": "2017-09-06", 
      "web": true, 
      "windowsPhone": false, 
      "androidPhone": false, 
      "iPhone": false, 
      "iPad": false, 
      "other": false, 
      "reportPeriod": "7"
    }
  ]
}
```
