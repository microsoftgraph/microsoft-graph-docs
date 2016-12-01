# List mobileAppCategories
List properties and relationships of the [mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) objects.
### Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementApps.ReadWrite.All; DeviceManagementApps.Read.All*
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceAppManagement/mobileApps/<id>/categories/
GET /deviceAppManagement/mobileAppCategories/
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
Do not supply a request body for this method.

### Response
If successful, this method returns a `200 OK` response code and a collection of [mobileAppCategory](../resources/intune_apps_mobileAppCategory.md) objects in the response body.

### Example
##### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceAppManagement/mobileApps/<id>/categories/
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 193

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.mobileAppCategory",
      "id": "d85d9cee-9cee-d85d-ee9c-5dd8ee9c5dd8",
      "displayName": "Display Name value"
    }
  ]
}
```



