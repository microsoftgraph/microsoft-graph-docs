# Create directoryObject

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [directoryObject](../resources/intune_mam_directoryobject.md) object.
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementApps.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceAppManagement/iosManagedAppProtections/{iosManagedAppProtectionId}/targetedSecurityGroups
POST /deviceAppManagement/androidManagedAppProtections/{androidManagedAppProtectionId}/targetedSecurityGroups
POST /deviceAppManagement/targetedManagedAppConfigurations/{targetedManagedAppConfigurationId}/targetedSecurityGroups
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the directoryObject object.

The following table shows the properties that are required when you create the directoryObject.

|Property|Type|Description|
|:---|:---|:---|
|id|String|The directory object identifier|



## Response
If successful, this method returns a `201 Created` response code and a [directoryObject](../resources/intune_mam_directoryobject.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceAppManagement/iosManagedAppProtections/{iosManagedAppProtectionId}/targetedSecurityGroups
Content-type: application/json
Content-length: 57

{
  "@odata.type": "#microsoft.graph.directoryObject"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 106

{
  "@odata.type": "#microsoft.graph.directoryObject",
  "id": "67d4444d-444d-67d4-4d44-d4674d44d467"
}
```



