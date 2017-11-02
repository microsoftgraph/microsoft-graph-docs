# Create androidDeviceComplianceLocalActionLockDeviceWithPasscode

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md) object.
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/microsoft.graph.androidCompliancePolicy/localActions
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the androidDeviceComplianceLocalActionLockDeviceWithPasscode object.

The following table shows the properties that are required when you create the androidDeviceComplianceLocalActionLockDeviceWithPasscode.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md)|
|gracePeriodInMinutes|Int32|Number of minutes to wait till a local action is enforced. Valid values 0 to 2147483647 Inherited from [androidDeviceComplianceLocalActionBase](../resources/intune_deviceconfig_androiddevicecompliancelocalactionbase.md)|
|passcode|String|Passcode to reset to Android device.|
|passcodeSignInFailureCountBeforeWipe|Int32|Number of sign in failures before wiping device, the value can be 4-11. Valid values 4 to 11|



## Response
If successful, this method returns a `201 Created` response code and a [androidDeviceComplianceLocalActionLockDeviceWithPasscode](../resources/intune_deviceconfig_androiddevicecompliancelocalactionlockdevicewithpasscode.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/microsoft.graph.androidCompliancePolicy/localActions
Content-type: application/json
Content-length: 207

{
  "@odata.type": "#microsoft.graph.androidDeviceComplianceLocalActionLockDeviceWithPasscode",
  "gracePeriodInMinutes": 4,
  "passcode": "Passcode value",
  "passcodeSignInFailureCountBeforeWipe": 4
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 256

{
  "@odata.type": "#microsoft.graph.androidDeviceComplianceLocalActionLockDeviceWithPasscode",
  "id": "828a6271-6271-828a-7162-8a8271628a82",
  "gracePeriodInMinutes": 4,
  "passcode": "Passcode value",
  "passcodeSignInFailureCountBeforeWipe": 4
}
```



