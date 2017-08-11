# assign action

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementConfiguration.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}assign
POST /deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}/groupAssignments/{deviceCompliancePolicyGroupAssignmentId}/deviceCompliancePolicy/assign
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.
The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|---|---|---|
|deviceCompliancePolicyGroupAssignments|[deviceCompliancePolicyGroupAssignment](../resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) collection|Not yet documented|

## Response

If successful, this action returns a `200 OK` response code and a [deviceCompliancePolicyAssignment](../resources/intune_deviceconfig_devicecompliancepolicyassignment.md) collection in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceManagement/deviceCompliancePolicies/{deviceCompliancePolicyId}assign

Content-type: application/json
Content-length: 280

{
  "deviceCompliancePolicyGroupAssignments": [
    {
      "@odata.type": "#microsoft.graph.deviceCompliancePolicyGroupAssignment",
      "id": "fe44007c-007c-fe44-7c00-44fe7c0044fe",
      "targetGroupId": "Target Group Id value",
      "excludeGroup": true
    }
  ]
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 164

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.deviceCompliancePolicyAssignment",
      "id": "92dc3fef-3fef-92dc-ef3f-dc92ef3fdc92"
    }
  ]
}
```



