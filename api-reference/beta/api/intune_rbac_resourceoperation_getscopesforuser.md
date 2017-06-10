# getScopesForUser function

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented
## Prerequisites
One of the following **scopes** is required to execute this API:

*DeviceManagementRBAC.ReadWrite.All; DeviceManagementRBAC.Read.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /deviceManagement/resourceOperations/{resourceOperationId}/getScopesForUser
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer {token}. Required.|
|Accept|application/json|

## Request body
In the request body, supply JSON representation of the parameters.
The following table shows the parameters that can be used with this function.

|Property|Type|Description|
|---|---|---|
|userid|String|Not yet documented|



## Response
If successful, this function returns a `200 OK` response code and a String collection in the response body.

## Example
### Request
Here is an example of the request.
```http
GET https://graph.microsoft.com/beta/deviceManagement/resourceOperations/{resourceOperationId}/getScopesForUser

Content-type: application/json
Content-length: 32

{
  "userid": "Userid value"
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 35

[
  "Get Scopes For User value"
]
```



