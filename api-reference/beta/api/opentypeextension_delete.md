# Delete open extension

Delete an open extension ([openTypeExtension](../resources/openTypeExtension.md) object) from the specified instance of a resource. 

## Prerequisites

One of the following **permissions** is required to execute this API, depending on the resource you're
deleting the extension from:

|**Supported resource**|**Permission**|**Supported resource**|**Permission** |
|:-----|:-----|:-----|:-----|
| [administrativeunit](../resources/administrativeunit.md) | _Directory.AccessAsUser.All_ | [device](../resources/device.md) | _Device.ReadWrite.All_ |
| [event](../resources/event.md) | _Calendars.ReadWrite_ | [group](../resources/group.md) | _Group.ReadWrite.All_ |
| [group event](../resources/event.md) | _Group.ReadWrite.All_ | [group post](../resources/post.md) | _Group.ReadWrite.All_ |
| [message](../resources/message.md) | _Mail.ReadWrite_ | [organization](../resources/organization.md) | _Directory.AccessAsUser.All_ |
| [personal contact](../resources/contact.md) | _Contacts.ReadWrite_ | [user](../resources/user.md) | _Directory.AccessAsUser.All_ |
 
## HTTP request

In the request, identify the resource instance, use the **extensions** 
navigation property of that instance to identify the extension, and do a `DELETE` on that extension instance.

<!-- { "blockType": "ignored" } -->
```http
DELETE /administrativeUnits/{Id}/extensions/{extensionId}
DELETE /devices/{Id}/extensions/{extensionId}
DELETE /users/{id|userPrincipalName}/events/{id}/extensions/{extensionId}
DELETE /groups/{id}/extensions/{extensionId}
DELETE /groups/{id}/events/{id}/extensions/{extensionId}
DELETE /groups/{id}/threads/{id}/posts/{id}/extensions/{extensionId}
DELETE /users/{id|userPrincipalName}/messages/{id}/extensions/{extensionId}
DELETE /organization/{Id}/extensions/{extensionId}
DELETE /users/{id|userPrincipalName}/contacts/{id}/extensions/{extensionId}
DELETE /users/{id|userPrincipalName}/extensions/{extensionId}
```

>**Note:** The above syntax shows some common ways to identify a resource instance, in order to delete an extension from it. 
All other syntax that allows you to identify these resource instances supports deleting open extensions from them in a similar way.

## Parameters
|**Parameter**|**Type**|**Description**|
|:-----|:-----|:-----|
|_URL parameters_|
|id|string|A unique identifier for an instance in the corresponding collection. Required.|
|extensionId|string|This can be an extension name which is a unique text identifier for the extension, or a fully qualified name which concatenates the extension type and unique text identifier. The fully qualified name is returned in the `id` property when you create the extension. Required.|


## Request headers
| Name       | Value |
|:---------------|:----------|
| Authorization | Bearer %token%|


## Request body
Do not supply a request body for this method.


## Response
If successful, this method returns `204, No Content` response code. It does not return anything in the response body.

## Example
##### Request
The first example references an extension by its name and deletes the extension in the specified message.
<!-- {
  "blockType": "request",
  "name": "delete_opentypeextension"
}-->
```http
DELETE https://graph.microsoft.com/beta/me/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')/extensions('Com.Contoso.Referral')
```

The second example deletes an extension in the specified group event.

<!-- { "blockType": "ignored" } -->
```http
DELETE https://graph.microsoft.com/beta/groups('f5480dfd-7d77-4d0b-ba2e-3391953cc74a')/events('AAMkADVlN17IsAAA=')/extensions('Com.Contoso.Referral')
```

 

##### Response
Here is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": false
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete opentypeextension",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->