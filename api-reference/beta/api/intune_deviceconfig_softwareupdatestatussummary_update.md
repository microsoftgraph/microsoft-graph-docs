# Update softwareUpdateStatusSummary

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md) object.
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /deviceManagement/softwareUpdateStatusSummary/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a [softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md) object.
The following table shows the properties that are required when you create a [softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md).

|Property|Type|Description|
|---|---|---|
|id|String|Key of the entity.|
|displayName|String|The name of the policy.|
|compliantDeviceCount|Int32|Number of compliant devices.|
|nonCompliantDeviceCount|Int32|Number of non compliant devices.|
|remediatedDeviceCount|Int32|Number of remediated devices.|
|errorDeviceCount|Int32|Number of devices had error.|
|unknownDeviceCount|Int32|Number of unknown devices.|
|conflictDeviceCount|Int32|Number of conflict devices.|
|notApplicableDeviceCount|Int32|Number of not applicable devices.|
|compliantUserCount|Int32|Number of compliant users.|
|nonCompliantUserCount|Int32|Number of non compliant users.|
|remediatedUserCount|Int32|Number of remediated users.|
|errorUserCount|Int32|Number of users had error.|
|unknownUserCount|Int32|Number of unknown users.|
|conflictUserCount|Int32|Number of conflict users.|
|notApplicableUserCount|Int32|Number of not applicable users.|



## Response
If successful, this method returns a `200 OK` response code and an updated [softwareUpdateStatusSummary](../resources/intune_deviceconfig_softwareupdatestatussummary.md) object in the response body.

## Example
### Request
Here is an example of the request.
```http
PATCH https://graph.microsoft.com/beta/deviceManagement/softwareUpdateStatusSummary/
Content-type: application/json
Content-length: 452

{
  "displayName": "Display Name value",
  "compliantDeviceCount": 4,
  "nonCompliantDeviceCount": 7,
  "remediatedDeviceCount": 5,
  "errorDeviceCount": 0,
  "unknownDeviceCount": 2,
  "conflictDeviceCount": 3,
  "notApplicableDeviceCount": 8,
  "compliantUserCount": 2,
  "nonCompliantUserCount": 5,
  "remediatedUserCount": 3,
  "errorUserCount": 14,
  "unknownUserCount": 0,
  "conflictUserCount": 1,
  "notApplicableUserCount": 6
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 567

{
  "@odata.type": "#microsoft.graph.softwareUpdateStatusSummary",
  "id": "4f71421f-421f-4f71-1f42-714f1f42714f",
  "displayName": "Display Name value",
  "compliantDeviceCount": 4,
  "nonCompliantDeviceCount": 7,
  "remediatedDeviceCount": 5,
  "errorDeviceCount": 0,
  "unknownDeviceCount": 2,
  "conflictDeviceCount": 3,
  "notApplicableDeviceCount": 8,
  "compliantUserCount": 2,
  "nonCompliantUserCount": 5,
  "remediatedUserCount": 3,
  "errorUserCount": 14,
  "unknownUserCount": 0,
  "conflictUserCount": 1,
  "notApplicableUserCount": 6
}
```



