# Get Office365ActivationCount report

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> Note: You can go to [Office 365 Reports - Microsoft Office activations](https://support.office.com/client/Office-activations-87c24ae2-82e0-4d1e-be01-c3bcc3f18c60) to check the meaning of different views and names.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Reports.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/Office365ActivationCount
```

## Request headers

| Name       | Description|
|:---------------|:----------|
| Authorization  | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and office365ActivationCount object in the response body.

The **office365ActivationCount** object has the following properties.
| Property	   | Type	|
|:---------------|:--------|
|reportRefreshDate|Date|
|productType|String|
|windows|Int64|
|mac|Int64|
|android|Int64|
|ios|Int64|
|windows10Mobile|Int64|

## Example

Here is an example of how to call this API.

#### Request

Here is an example of the request.

```http
GET https://graph.microsoft.com/beta/reports/Office365ActivationCount
```

#### Response

Here is an example of the response.
Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 312

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.office365ActivationCount)", 
  "value": [
    {
      "reportRefreshDate": "2017-09-01", 
      "productType": "Office 365 ProPlus", 
      "windows": 487484, 
      "mac": 10725, 
      "android": 21390, 
      "ios": 57193, 
      "windows10Mobile": 147314
    }
  ]
}
```