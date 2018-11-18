﻿# Update embeddedSIMActivationCodePool

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Update the properties of a [embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md) object.
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
PATCH /deviceManagement/embeddedSIMActivationCodePools/{embeddedSIMActivationCodePoolId}
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the [embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md) object.

The following table shows the properties that are required when you create the [embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the embedded SIM activation code pool. System generated value assigned when created.|
|displayName|String|The admin defined name of the embedded SIM activation code pool.|
|createdDateTime|DateTimeOffset|The time the embedded SIM activation code pool was created. Generated service side.|
|modifiedDateTime|DateTimeOffset|The time the embedded SIM activation code pool was last modified. Updated service side.|
|activationCodes|[embeddedSIMActivationCode](../resources/intune_esim_embeddedsimactivationcode.md) collection|The activation codes which belong to this pool. This navigation property is used to post activation codes to Intune but cannot be used to read activation codes from Intune.|
|activationCodeCount|Int32|The total count of activation codes which belong to this pool.|



## Response
If successful, this method returns a `200 OK` response code and an updated [embeddedSIMActivationCodePool](../resources/intune_esim_embeddedsimactivationcodepool.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
PATCH https://graph.microsoft.com/beta/deviceManagement/embeddedSIMActivationCodePools/{embeddedSIMActivationCodePoolId}
Content-type: application/json
Content-length: 392

{
  "displayName": "Display Name value",
  "activationCodes": [
    {
      "@odata.type": "microsoft.graph.embeddedSIMActivationCode",
      "integratedCircuitCardIdentifier": "Integrated Circuit Card Identifier value",
      "matchingIdentifier": "Matching Identifier value",
      "smdpPlusServerAddress": "Smdp Plus Server Address value"
    }
  ],
  "activationCodeCount": 3
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 628

{
  "@odata.type": "#microsoft.graph.embeddedSIMActivationCodePool",
  "id": "ec308741-8741-ec30-4187-30ec418730ec",
  "displayName": "Display Name value",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "modifiedDateTime": "2017-01-01T00:00:22.8983556-08:00",
  "activationCodes": [
    {
      "@odata.type": "microsoft.graph.embeddedSIMActivationCode",
      "integratedCircuitCardIdentifier": "Integrated Circuit Card Identifier value",
      "matchingIdentifier": "Matching Identifier value",
      "smdpPlusServerAddress": "Smdp Plus Server Address value"
    }
  ],
  "activationCodeCount": 3
}
```





