# Update directoryObject
Update the properties of a [directoryObject](../resources/intune_mam_directoryObject.md) object.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /managedAppPolicies/<id>/targetedSecurityGroups/<id>
PATCH /managedAppPolicies/<id>/microsoft.graph.targetedManagedAppProtection/targetedSecurityGroups/<id>
PATCH /managedAppPolicies/<id>/microsoft.graph.targetedManagedAppConfiguration/targetedSecurityGroups/<id>
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply a JSON representation of a [directoryObject](../resources/intune_mam_directoryObject.md) object.
The following table shows the properties that are required when you create a [directoryObject](../resources/intune_mam_directoryObject.md).

|Property|Type|Description|
|---|---|---|
|id|String|The directory object identifier|



### Response
If successful, this method returns a `200 OK` response code and an updated [directoryObject](../resources/intune_mam_directoryObject.md) object in the response body.

### Example
##### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/managedAppPolicies/<id>/targetedSecurityGroups/<id>
Content-type: application/json
Content-length: 2

{}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 106

{
  "@odata.type": "#microsoft.graph.directoryObject",
  "id": "67d4444d-444d-67d4-4d44-d4674d44d467"
}
```



