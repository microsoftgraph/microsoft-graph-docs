# Update deviceManagement

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object.
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

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
PATCH /deviceManagement
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object.

The following table shows the properties that are required when you create the [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier|
|settings|[deviceManagementSettings](../resources/intune-deviceconfig-devicemanagementsettings.md)|Account level settings.|
|maximumDepTokens|Int32|Maximum number of dep tokens allowed per-tenant.|
|intuneAccountId|Guid|Intune Account Id for given tenant|
|legacyPcManangementEnabled|Boolean|The property to enable Non-MDM managed legacy PC management for this account. This property is read-only.|



## Response
If successful, this method returns a `200 OK` response code and an updated [deviceManagement](../resources/intune-deviceconfig-devicemanagement.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement
Content-type: application/json
Content-length: 414

{
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings",
    "deviceComplianceCheckinThresholdDays": 4,
    "isScheduledActionEnabled": true,
    "secureByDefault": true,
    "enhancedJailBreak": true,
    "deviceInactivityBeforeRetirementInDay": 5
  },
  "maximumDepTokens": 0,
  "intuneAccountId": "cf1549a1-49a1-cf15-a149-15cfa14915cf",
  "legacyPcManangementEnabled": true
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 518

{
  "@odata.type": "#microsoft.graph.deviceManagement",
  "id": "0b283420-3420-0b28-2034-280b2034280b",
  "settings": {
    "@odata.type": "microsoft.graph.deviceManagementSettings",
    "deviceComplianceCheckinThresholdDays": 4,
    "isScheduledActionEnabled": true,
    "secureByDefault": true,
    "enhancedJailBreak": true,
    "deviceInactivityBeforeRetirementInDay": 5
  },
  "maximumDepTokens": 0,
  "intuneAccountId": "cf1549a1-49a1-cf15-a149-15cfa14915cf",
  "legacyPcManangementEnabled": true
}
```





