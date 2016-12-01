# Update managedAppStatusRaw
Update the properties of a [managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /managedAppStatuses/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md) object.
The following table shows the properties that are required when you create a [managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md).

|Property|Type|Description|
|---|---|---|
|displayName|String|Friendly name of the status report. Inherited from [managedAppStatus](intune_mam_managedAppStatus.md).|
|id|String|Key of the entity. Inherited from [managedAppStatus](intune_mam_managedAppStatus.md).|
|version|String|Version of the entity. Inherited from [managedAppStatus](intune_mam_managedAppStatus.md).|
|content|[managedAppSummary](../resources/intune_mam_managedAppSummary.md)|Status report content.|



### Response
If successful, this method returns a `200 OK` response code and an updated [managedAppStatusRaw](../resources/intune_mam_managedAppStatusRaw.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/managedAppStatuses/<id>
Content-type: application/json
Content-length: 152

{
  "displayName": "Display Name value",
  "version": "Version value",
  "content": {
    "@odata.type": "microsoft.graph.managedAppSummary"
  }
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 259

{
  "@odata.type": "#microsoft.graph.managedAppStatusRaw",
  "displayName": "Display Name value",
  "id": "80847581-7581-8084-8175-848081758480",
  "version": "Version value",
  "content": {
    "@odata.type": "microsoft.graph.managedAppSummary"
  }
}
```



