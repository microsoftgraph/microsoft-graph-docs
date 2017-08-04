# Get appReportingOverviewStatus

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Get the [appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md) from the appReportingOverview navigation property.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceAppManagement/appReportingOverview/
```

## Optional query parameters
This method supports the [OData Query Parameters](http://developer.microsoft.com/en-us/graph/docs/overview/query_parameters) to help customize the response.
## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and [appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceAppManagement/appReportingOverview/
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 497

{
  "value": {
    "@odata.type": "#microsoft.graph.appReportingOverviewStatus",
    "id": "0699cad9-cad9-0699-d9ca-9906d9ca9906",
    "applicationCount": 0,
    "failedApplicationCount": 6,
    "appInstallFailures": [
      {
        "@odata.type": "microsoft.graph.appInstallationFailure",
        "applicationId": "Application Id value",
        "appName": "App Name value",
        "platformId": 10,
        "userFailures": 12,
        "deviceFailures": 14
      }
    ]
  }
}
```



