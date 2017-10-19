# syncWithAppleDeviceEnrollmentProgram action

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Makes a request for Apple DEP/ASM to send assigned serial numbers to Intune. This is a fire-and-forget call. Apple will respond to the request at an indeterminate time in the future. By default Apple DEP/ASM will send all assigned serial numbers (Full sync) unless it has been less than 7 days since the last Full Sync, in which case Apple DEP/ASM will only send serial numbers that have not already been sent in a prior sync (Delta Sync). This request also syncs all updated enrollment profiles and their assignments from Intune to Apple.

## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementServiceConfig.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /organization/{organizationId}/syncWithAppleDeviceEnrollmentProgram
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response
If successful, this action returns a `204 No Content` response code.

## Example
### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/organization/{organizationId}/syncWithAppleDeviceEnrollmentProgram
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 204 No Content
```



