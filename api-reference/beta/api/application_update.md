# Update application

> **Important**: APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Update the properties of application object.
## Prerequisites
One of the following **scopes** is required to execute this API: *Directory.ReadWrite.All* or *Directory.AccessAsUser.All*

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /applications/{id}
```
## Request headers
| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required.  |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowPublicClient|Boolean| Specifies if the application can act as a public client. For example,  an installed application running on a mobile device. Default value is *false*. |
|api|[api](../resources/api.md)| Specifies settings for an API application. |
|appRoles|[appRole](../resources/approle.md) collection|The collection of application roles that an application may declare. These roles can be assigned to users, groups, or service principals. Not nullable.|
|applicationAliases|String collection| The URIs that identify the application. For more information see, [Application Objects and Service Principal Objects](https://azure.microsoft.com/documentation/articles/active-directory-application-objects/). The *any* operator is required for filter expressions on multi-valued properties. Not nullable. |
|createdDateTime|DateTimeOffset| The date and time the application was registered. |
|deletedDateTime|DateTimeOffset| The date and time the application was deleted. |
|displayName|String|The display name for the application. |
|id|String|The unique identifier for the application. Inherited from [directoryObject](../resources/directoryobject.md). Key. Not nullable. Read-only. |
|info|[informationalUrl](../resources/informationalurl.md)| Basic profile information of the application. |
|installedClients|[installedClient](../resources/installedclient.md)| Specifies settings for installed clients such as desktop or mobile devices. |
|keyCredentials|[keyCredential](../resources/keycredential.md) collection|The collection of key credentials associated with the application Not nullable. |
|logo|Stream|The main logo for the application. Not nullable. |
|orgRestrictions|String collection| The organizational tenantIds to which the application is restricted.  If the collection is empty, the application is multi-tenant (not restricted). If the collection contains tenantIds, the application is restricted to the organizational tenantIds in the collection. Specifying other tenants but not the tenantId where the application is registered implies that the application's own tenantId is indirectly included. |
|passwordCredentials|[passwordCredential](../resources/passwordcredential.md) collection|The collection of password credentials associated with the application. Not nullable.|
|preAuthorizedApplications|[preAuthorizedApplication](../resources/preauthorizedapplication.md) collection| Lists applications and requested permissions for implicit consent. Requires an admin to have provided consent to the application. preAuthorizedApplications do not require the user to consent to the requested permissions. Permissions listed in preAuthorizedApplications do not require user consent. However, any additional requested permissions not listed in preAuthorizedApplications require user consent. |
|requiredResourceAccess|[requiredResourceAccess](../resources/requiredresourceaccess.md) collection|Specifies resources that this application requires access to and the set of OAuth permission scopes and application roles that it needs under each of those resources. This pre-configuration of required resource access drives the consent experience. Not nullable.|
|tags|String collection| Custom strings that can be used to categorize and identify the application. |
|web|[web](../resources/web.md)| Specifies settings for a web application. |

## Response

If successful, this method returns a `204 No Content` response code and does not return anything in the response body.
## Example
##### Request
Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_application"
}-->
```http
PATCH https://graph.microsoft.com/beta/applications/{id}
Content-type: application/json
Content-length: 72

{
  "allowPublicClient": false,
  "displayName": "New display name"
}
```
##### Response
Note: The response object shown here may be truncated for brevity. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update application",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->