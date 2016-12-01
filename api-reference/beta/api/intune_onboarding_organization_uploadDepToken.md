# uploadDepToken action
Not yet documented
### Prerequisites
One of the following **scopes** is required to execute this API:

**TODO: Determine scopes **
### HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /organization/<id>/uploadDepToken
```

### Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

### Request body
In the request body, supply JSON representation of the parameters.
The following table shows the parameters that can be used with this action.

|Property|Type|Description|
|---|---|---|
|appleId|String|** TODO: Add parameter description **|
|depToken|String|** TODO: Add parameter description **|



### Response
If successful, this action returns a `204 No Content` response code.

### Example
##### Request
Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/organization/<id>/uploadDepToken

Content-type: application/json
Content-length: 69

{
  "appleId": "Apple Id value",
  "depToken": "Dep Token value"
}
```

##### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 204 No Content
```



