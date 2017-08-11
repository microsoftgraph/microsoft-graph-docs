# Update appReportingOverviewStatus

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/appReportingOverview/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md) object.
The following table shows the properties that are required when you create a [appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|applicationCount|Int64|Number of device failures across all apps.|
|failedApplicationCount|Int64|Number of users with failed devices across all apps.|
|appInstallFailures|[appInstallationFailure](../resources/intune_apps_appinstallationfailure.md) collection|Individual status of app installation failures.|

## Response

If successful, this method returns a `200 OK` response code and an updated [appReportingOverviewStatus](../resources/intune_apps_appreportingoverviewstatus.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/appReportingOverview/
Content-type: application/json
Content-length: 336

{
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
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 450

{
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
```



