# List termsAndConditionsGroupAssignments

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

List properties and relationships of the [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) objects.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementServiceConfig.ReadWrite.All; DeviceManagementServiceConfig.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/termsAndConditions/{termsAndConditionsId}/groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [termsAndConditionsGroupAssignment](../resources/intune_companyterms_termsandconditionsgroupassignment.md) objects in the response body.

## Example

##### Request

Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/termsAndConditions/{termsAndConditionsId}/groupAssignments/
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 214

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.termsAndConditionsGroupAssignment",
      "id": "2eb1aab7-aab7-2eb1-b7aa-b12eb7aab12e",
      "targetGroupId": "Target Group Id value"
    }
  ]
}
```



