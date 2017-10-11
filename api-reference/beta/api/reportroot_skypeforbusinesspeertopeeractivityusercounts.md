# SkypeForBusinessPeerToPeerActivityUserCounts function

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Get usage trends on the number of unique users and type of peer-to-peer sessions held in your organization. Types of sessions include IM, audio, video, application sharing, and file transfers in peer-to-peer sessions.

> **Note:** For details about different report views and names, see [Office 365 Reports - Skype for Business peer-to-peer activity](https://support.office.com/client/Skype-for-Business-Online-peertopeer-activity-d3b2d569-4ee9-44b8-92bf-d518142f0713).

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
GET /reports/SkypeForBusinessPeerToPeerActivityUserCounts(period='{period_value}')?$format=application/json
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

If successful, this method returns a `200 OK` response code and a **skypeForBusinessPeerToPeerActivityUserCounts** object in the response body.

The **skypeForBusinessPeerToPeerActivityUserCounts** object has the following properties.

| Property          | Type   |
| :---------------- | :----- |
| im                | Int64  |
| audio             | Int64  |
| video             | Int64  |
| appSharing        | Int64  |
| fileTransfer      | Int64  |
| reportRefreshDate | Date   |
| reportDate        | Date   |
| reportPeriod      | String |

## Example

#### Request

The following is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/SkypeForBusinessPeerToPeerActivityUserCounts(period='D7')?$format=application/json
```

#### Response

The following is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 290

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.skypeForBusinessPeerToPeerActivityUserCounts)", 
  "value": [
    {
      "im": 379, 
      "audio": 42, 
      "video": 2, 
      "appSharing": 34, 
      "fileTransfer": 36, 
      "reportRefreshDate": "2017-09-01", 
      "reportDate": "2017-09-01", 
      "reportPeriod": "7"
    }
  ]
}
```
