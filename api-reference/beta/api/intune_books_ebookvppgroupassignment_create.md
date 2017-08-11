# Create eBookVppGroupAssignment

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) object.
## Prerequisites
One of the following [permission scopes](https://developer.microsoft.com/en-us/graph/docs/authorization/permission_scopes) is required to execute this API:

*DeviceManagementApps.ReadWrite.All*
## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /deviceAppManagement/managedEBooks/{managedEBookId}/groupAssignments/
```

## Request headers
|Header|Value|
|---|---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation of a eBookVppGroupAssignment object.
The following table shows the properties that are required when you create a eBookVppGroupAssignment.

|Property|Type|Description|
|---|---|---|
|targetGroupId|String|The Id of the AAD group we are targeting the eBook to. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|
|id|String|Key of the entity. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md)|
|installIntent|String|The install intent defined by the admin. Inherited from [eBookGroupAssignment](../resources/intune_books_ebookgroupassignment.md) Possible values are: `notApplicable`, `available`, `required`, `uninstall`, `availableWithoutEnrollment`.|
|useDeviceLicensing|Boolean|Whether or not to use device licensing.|

## Response

If successful, this method returns a `201 Created` response code and a [eBookVppGroupAssignment](../resources/intune_books_ebookvppgroupassignment.md) object in the response body.

## Example

##### Request

Here is an example of the request.
```http
POST https://graph.microsoft.com/beta/deviceAppManagement/managedEBooks/{managedEBookId}/groupAssignments/
Content-type: application/json
Content-length: 174

{
  "@odata.type": "#microsoft.graph.eBookVppGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "installIntent": "available",
  "useDeviceLicensing": true
}
```

##### Response

Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
```http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 223

{
  "@odata.type": "#microsoft.graph.eBookVppGroupAssignment",
  "targetGroupId": "Target Group Id value",
  "id": "5f54e6bf-e6bf-5f54-bfe6-545fbfe6545f",
  "installIntent": "available",
  "useDeviceLicensing": true
}
```



