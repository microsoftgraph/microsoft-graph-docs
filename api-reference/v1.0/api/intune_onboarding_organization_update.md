# Update organization

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [organization](../resources/intune_onboarding_organization.md) object.
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
PATCH /organization/{organizationId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [organization](../resources/intune_onboarding_organization.md) object.

The following table shows the properties that are required when you create the [organization](../resources/intune_onboarding_organization.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|The GUID for the object.|
|mobileDeviceManagementAuthority|[mdmAuthority](../resources/intune_onboarding_mdmauthority.md)|Mobile device management authority. Possible values are: `unknown`, `intune`, `sccm`, `office365`.|



## Response
If successful, this method returns a `200 OK` response code and an updated [organization](../resources/intune_onboarding_organization.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/v1.0/organization/{organizationId}
Content-type: application/json
Content-length: 51

{
  "mobileDeviceManagementAuthority": "intune"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 151

{
  "@odata.type": "#microsoft.graph.organization",
  "id": "9efe224a-224a-9efe-4a22-fe9e4a22fe9e",
  "mobileDeviceManagementAuthority": "intune"
}
```



