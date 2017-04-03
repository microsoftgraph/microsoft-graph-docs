# Create managedAppStatus

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [managedAppStatus](../resources/intune_mam_managedappstatus.md) by posting to the managedAppStatuses collection.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /managedAppStatuses/
POST /deviceAppManagement/managedAppStatuses/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a managedAppStatus object.
The following table shows the properties that are required when you create a managedAppStatus.

|Property|Type|Description|
|---|---|---|
|displayName|String|Friendly name of the status report.|
|id|String|Key of the entity.|
|version|String|Version of the entity.|



## Response
If successful, this method returns a `201 Created` response code and a [managedAppStatus](../resources/intune_mam_managedappstatus.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/managedAppStatuses/
Content-type: application/json
Content-length: 129

{
  "@odata.type": "#microsoft.graph.managedAppStatus",
  "displayName": "Display Name value",
  "version": "Version value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 178

{
  "@odata.type": "#microsoft.graph.managedAppStatus",
  "displayName": "Display Name value",
  "id": "ad1f7541-7541-ad1f-4175-1fad41751fad",
  "version": "Version value"
}
```



