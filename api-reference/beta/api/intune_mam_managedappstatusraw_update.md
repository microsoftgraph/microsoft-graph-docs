# Update managedAppStatusRaw

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [managedAppStatusRaw](../resources/intune_mam_managedappstatusraw.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceAppManagement/managedAppStatuses/{managedAppStatusId}
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [managedAppStatusRaw](../resources/intune_mam_managedappstatusraw.md) object.
The following table shows the properties that are required when you create a [managedAppStatusRaw](../resources/intune_mam_managedappstatusraw.md).

|Property|Type|Description|
|---|---|---|
|displayName|String|Friendly name of the status report. Inherited from [managedAppStatus](../resources/intune_mam_managedappstatus.md)|
|id|String|Key of the entity. Inherited from [managedAppStatus](../resources/intune_mam_managedappstatus.md)|
|version|String|Version of the entity. Inherited from [managedAppStatus](../resources/intune_mam_managedappstatus.md)|
|content|[Json](../resources/intune_mam_json.md)|Status report content.|



## Response
If successful, this method returns a `200 OK` response code and an updated [managedAppStatusRaw](../resources/intune_mam_managedappstatusraw.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceAppManagement/managedAppStatuses/{managedAppStatusId}
Content-type: application/json
Content-length: 139

{
  "displayName": "Display Name value",
  "version": "Version value",
  "content": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 246

{
  "@odata.type": "#microsoft.graph.managedAppStatusRaw",
  "displayName": "Display Name value",
  "id": "80847581-7581-8084-8175-848081758480",
  "version": "Version value",
  "content": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```



