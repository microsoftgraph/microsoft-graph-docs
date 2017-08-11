# Create windowsInformationProtectionAppLockerFile

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/windowsInformationProtectionPolicies/{windowsInformationProtectionPolicyId}/exemptAppLockerFiles/
POST /deviceAppManagement/windowsInformationProtectionPolicies/{windowsInformationProtectionPolicyId}/allowedAppLockerFiles/
POST /deviceAppManagement/mdmWindowsInformationProtectionPolicies/{mdmWindowsInformationProtectionPolicyId}/exemptAppLockerFiles/
POST /deviceAppManagement/mdmWindowsInformationProtectionPolicies/{mdmWindowsInformationProtectionPolicyId}/allowedAppLockerFiles/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a windowsInformationProtectionAppLockerFile object.
The following table shows the properties that are required when you create a windowsInformationProtectionAppLockerFile.

|Property|Type|Description|
|---|---|---|
|displayName|String|The friendly name|
|fileHash|String|SHA256 hash of the file|
|file|Binary|File as a byte array|
|id|String|Key of the entity.|
|version|String|Version of the entity.|

## Response

If successful, this method returns a `201 Created` response code and a [windowsInformationProtectionAppLockerFile](../resources/intune_mam_windowsinformationprotectionapplockerfile.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/windowsInformationProtectionPolicies/{windowsInformationProtectionPolicyId}/exemptAppLockerFiles/
Content-type: application/json
Content-length: 211

{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionAppLockerFile",
  "displayName": "Display Name value",
  "fileHash": "File Hash value",
  "file": "ZmlsZQ==",
  "version": "Version value"
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 260

{
  "@odata.type": "#microsoft.graph.windowsInformationProtectionAppLockerFile",
  "displayName": "Display Name value",
  "fileHash": "File Hash value",
  "file": "ZmlsZQ==",
  "id": "d81f0e40-0e40-d81f-400e-1fd8400e1fd8",
  "version": "Version value"
}
```



