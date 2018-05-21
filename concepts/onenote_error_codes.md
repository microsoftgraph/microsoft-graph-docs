# Error codes for OneNote APIs in Microsoft Graph

This article describes error codes that are returned by the OneNote APIs in Microsoft Graph whenever a request sent through the API fails.

## Error response example
When your request generates an error, the OneNote API stops performing the request and returns an error response as a JSON object. An error response contains the associated error code, a message, and a link to the appropriate section of this article. The following example shows how an error response looks.

```json
{
   "error":{
      "code":"10002",
      "message":"The service is currently unavailable. Please try again later.",
      "innerError": {
        "requestId": "request-id",
        "date": "date-time"
      }
   }
}
```

For more information about Microsoft Graph errors, see [Microsoft Graph error responses and resource types](errors.md).

## Codes from 10001 to 19999
The service is having problems or is sending information to the application.

### 10001
An unexpected error occurred and the request failed.

### 10002
The service is not currently available.

### 10003
The current user's account has exceeded the maximum number of active requests. Your app will have to repeat the request.

### 10004
The service can't create a page in the requested section because that section is protected by a password.

### 10005
The request contains more than the maximum number of image tags in which the **data-render-src** attribute contains a PDF. See [Add images and files](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-images-files).

### 10006
The OneNote API was unable to create a page in the specified section because that section is corrupt.

### 10007
The server is too busy to handle the incoming request at this moment. Please try again later.

### 10008
One or more of the document libraries on the user or group's OneDrive contains more than 5000 OneNote items (notebooks, sections, section groups), and cannot be queried using the API. Please make sure that none of the user or group's document libraries contains more than 5000 OneNote items. See the [OneNote Dev blog](https://blogs.msdn.microsoft.com/onenotedev/2016/09/11/onenote-api-calls-fail-with-a-large-number-of-items-in-a-sharepoint-document-library/) for mitigation steps.

### 10012
Unable to create or update the entity because the library that contains the notebook requires items to be checked out before they can be edited. For more information, see https://support.office.com/en-us/article/Configure-a-site-library-to-require-check-out-of-files-f63fcbdc-1db6-4eb7-a3eb-dd815500c9e7.

Either remove the check-out requirement from the library, or move the notebook.

### 10013
One or more of the document libraries on the user or group's OneDrive contains more than 20,000 items and cannot be indexed for querying using the API. Please make sure that none of the user or group's document libraries contains more than 20,000 items. See the [OneNote Dev blog](https://blogs.msdn.microsoft.com/onenotedev/2016/09/11/onenote-api-calls-fail-with-a-large-number-of-items-in-a-sharepoint-document-library/) for mitigation steps.

### 10014
Azure Key Vault is too busy to handle the incoming request at this moment. Please try again later.

### 10015
SharePoint is currently unavailable. Please try again later.

### 10016
Document library on the user or group’s OneDrive exceeded unique security scopes threshold limit. The maximum number of unique security scopes set for a library cannot exceed 50,000.

### 10017
Bad Request.

### 19999
The request failed because an undetermined error occurred.

## Codes from 20001 to 29999
The application code has done something wrong.

### 20001

The request is missing the required "Presentation" part. Exactly one is required. 

### 20002
The request contains two or more "Presentation" parts. Exactly one is required.

### 20003
The content type of the "Presentation" part can be only text/HTML or application/XHTML+XML. 

### 20004
The "Presentation" part HTML contains an image tag with both the **src** and the **data-render-src** properties set. The API will ignore the **src** property and use the **data-render-src** property. 

### 20005
The request URI is too long. The maximum size of the URI (including all parameters and data) is 16 KB or 16,384 characters.

### 20006
The "Presentation" part HTML contains an image tag with neither the src nor the **data-render-src** properties set. The API will ignore the **image** tag. 

### 20007
The "Presentation" part HTML contains a created date/time string that does not match any of the allowed formats. 

### 20008
The size of the request is too large. 

### 20009
The request contains parts with duplicate names. Part names must be unique. 

### 20010
The Content-Disposition header was not supplied for the specified content type. 

### 20011
The request contains a malformed multipart payload. Problems could include missing blank lines, a missing last line, incorrectly formatted part separators, and so on. If you're building the multipart message by hand, carefully check the logic, or consider using a third-party library. 

### 20012
The request doesn't supply a content type for the specified part. 
### 20013
The request doesn't supply Content-Type and Content-Disposition headers for the specified part. 

### 20014
The length of a part in the multipart message exceeds the maximum size of 25 MB. 

### 20015
The count of parts in the multipart message exceeds the limit of 500. 

### 20016
The length of the multipart message exceeds the limit of 75 MB. 

### 20017
The email MIME was malformed. 

### 20018
The meeting MIME or ICal was malformed. 

### 20019
No ICal was found. 

### 20020
Encountered malformed Json in request body. 

### 20100
Something is wrong with the syntax of your request. 
### 20101
The property that you requested doesn't exist.

### 20102
You requested a resource that doesn't exist.

### 20103
The **expand** query is not supported for this request. See [Supported OData query string options](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-get-content#query-options).

### 20104
The **pagelevel** query option is supported only when querying for the pages collection in a section or for a specific page. For example:  

```http
GET ../sections/{id}/pages?pagelevel=true
GET ../pages/{id}?pagelevel=true
```

### 20106
Your request contains a query operator that is not supported. 

### 20108
Your request contains unsupported OData query parameters.

### 20109
The payload in the PATCH request is not constructed correctly.

### 20110
Page create requests with data parts require the content to be multipart, with a "Presentation" part. 

### 20111
Your request uses an OData feature that isn't supported.

### 20112
Your request contains an invalid ID for the target notebook, section group, section, or page entity.

### 20113
The resource specified in the request has been deleted.

### 20115
The name contains invalid characters. A notebook name cannot contain any of the following characters: `? * \ / : < > | ' "`

### 20117
An item with the name you specified already exists in the location that you specified.

### 20119
The HTML in the "Presentation" part contains a **data-attachment** attribute that either doesn't have a valid format or includes one or more of these invalid characters for a file name: `\ / : * ? < > | "`. The request substituted the value indicated in the error message.

### 20120
Your request specifies a PATCH target that can't be located.

### 20121
Your request contains an invalid PATCH argument. See [Update page content](../api-reference/v1.0/api/page_update.md).

### 20122
Your request specifies an unsupported PATCH action. See [Update page content](../api-reference/v1.0/api/page_update.md).

### 20123
The PATCH request is unable to alter the specified page.

### 20124
Your multipart PATCH request doesn't include a "commands" part with the PATCH action JSON structure. See [Update page content](../api-reference/v1.0/api/page_update.md).

### 20125
Your PATCH request contains no actions. See [Update page content](../api-reference/v1.0/api/page_update.md).

### 20126
The message body contains either incorrectly formatted JSON or fields that are not supported for this operation.

### 20127
Your request specifies the name of an unknown property.

### 20128
Your request contains an OData syntax error at the position indicated in the message.

### 20129
Your request contains a **top** query string option whose value is too high. For page queries, the maximum value is 100, and the default value is 20.

### 20130
Your request contains a URI that points to an HTTP resource that can't be found.

### 20131
Your request contains an invalid value for Content-Type. Use the value indicated in the message. 

### 20132
Your request contains invalid content. Common causes for this are a missing Content-Type request header and/or no content in the body of the request. 

### 20133
Your request specifies a PATCH target that is not supported. See [Update page content](../api-reference/v1.0/api/page_update.md).

### 20134
Your request specifies an invalid element as the target of the PATCH action. If the target uses the **data-id** identifier, make sure it's prefixed with a # symbol. See [Update page content](../api-reference/v1.0/api/page_update.md).

### 20135
Your request specifies an entity type that is not supported for the PATCH operation. See [Update page content](../api-reference/v1.0/api/page_update.md).

### 20136
Your request contains an invalid or missing **data-render-src** or **data-render-method** attribute. See [Extract data from captures](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-extract-data).

### 20137
The target page does not support PATCH requests.

### 20138
The target element type in your PATCH request doesn't support the **append** action. See [Update page content](../api-reference/v1.0/api/page_update.md).

### 20139
Your request contains an invalid **data-tag** attribute value. See [Use note tags](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags).

### 20140
Your request contains an invalid **data-tag** status value. Check box note tags can have a **completed** status. Example:
```html
    <p data-tag="to-do:completed">To-do note tag in completed state (checked box in the UI)</p>
```
See [Use note tags](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags).

### 20141
The target in your PATCH request doesn't support the specified action. See [Update page content](../api-reference/v1.0/api/page_update.md).

### 20142
Your request contains an **expand** expression for a parent of child entities or a child of parent entities, which is not supported. See [Supported OData query string options](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-get-content#query-options).

### 20143
The OData query is invalid.

### 20144
Your request contains an **expand** expression for a non-navigation property. Only navigation properties can be expanded.

### 20145
The **select** or **expand** expression in your request contains an invalid term.

### 20146
The `style="position:absolute"` attribute is specified on an element, but the **body** element does not specify `data-absolute-enabled="true"`, which is required to support positioning. All position settings will be ignored. See [Create absolute positioned elements](onenote-abs-pos.md).

### 20147
The `style="position:absolute"` attribute is specified on an element that is not a direct child of the **body** element, which is not supported. If the element is a **div**, **img**, or **object**, make it a direct child of the body; otherwise the position settings will be ignored and its content will render inside an absolute positioned div. See [Create absolute positioned elements](onenote-abs-pos.md).

### 20148
The `style="position:absolute"` attribute is specified on an element type that does not support it. Only **div**, **img**, and **object** elements that are direct children of the page body support positioning. See [Create absolute positioned elements](onenote-abs-pos.md).

### 20149
Your request specifies a target element that cannot be found.

### 20150
The request is not valid for this authentication type. Use the `../me/onenote/` path instead.

### 20151
The request is not valid for this authentication type. Use the `../me/onenote/section/{id}/pages` endpoint to create a page in a specific section.

### 20152
There is no name value specified for the entity. The name must be defined, and it cannot contain whitespaces only.

### 20153
The entity name contains invalid characters. The name cannot contain the following characters: `? * \ / : < > | & # " % ~`

### 20154
The entity name cannot start with a space.

### 20155
The entity name is too long. Notebook names have a 128-character limit. Other entity names have a 50-character limit.

### 20156
The specified ID for the destination resource does not exist.

### 20157
The specified ID for the destination entity is invalid.

### 20158
Unable to get metadata for the site URL specified in the request. Check the format of the supplied URL. Supported formats include `https://domain.sharepoint.com/site-a` and `https://domain.com/sites/site-a`.

### 20160
Unable to find an Office 365 unified group that has the specified ID.

### 20161
The context does not specify a valid user ID. One common error is that PUID/CID was passed in as a long instead of a hex.

### 20166
The application has issued too many requests on behalf of a user in a short period of time. To help ensure that the OneNote API remains stable and responsive, the API returns a 429 status code and this error when it detects that an application is using too many resources. 

For more information, see [OneNote API throttling and how to avoid it](http://blogs.msdn.com/b/onenotedev/archive/2016/01/13/onenote-api-throttling-and-best-practices.aspx).

### 20168
The video source specified in the request is not supported. See [Supported video sites](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-images-files#videos) for the current list.


## Codes from 30001 to 39999
Something is wrong with the user's account.

### 30101
The user account has exceeded its OneDrive quota. See [OneDrive](https://onedrive.live.com/about/en-us/).

### 30102
Nothing more can be added to the requested section because it has reached its maximum size.

### 30103
Resource consumption is too high for the request. Either the target user account has a large dataset, or the service is receiving a high number of concurrent requests to the same site (for example, the user's personal site or a team site).

### 30104
The user account has been suspended.

### 30105
The user's personal OneDrive for Business site is not provisioned, which is required to access notebooks. The OneNote service will provision the site now. This process may take several minutes.

### 30106
OneDrive for Business is being provisioned for the user.

### 30108
The user's personal OneDrive for Business could not be retrieved. The following table lists some possible causes.

| Cause | Resolution |
|:------|:------|
| The user's personal site has not been provisioned. | The user should open OneDrive for Business and follow any instructions to provision the site. If this fails, they should contact their Office 365 tenant administrator. |
| The user's personal site is currently being provisioned. | Try the request later. |
| The user does not have a valid OneDrive for Business license. | The user should contact their Office 365 tenant administrator. |
| A network issue prevented the request from being successfully sent. | Try the request later. |

### 30109
Some users in the request do not exist.

### 30110
Student Information Services has not been registered for this tenant.

### 30111
There is a generic error with Student Information Services.

### 30112
Multiple users affected by the request had the same username.

### 30113
The notebook is not configured to allow invites.

### 30114
There is a required parameter missing.

## Codes from 40001 to 49999
The user or application does not have the correct permissions.

### 40001
The request doesn't contain a valid OAuth token. See [Notes permissions](permissions_reference.md#notes-permissions).

### 40002
The user doesn't have permission to write to the requested location.

### 40003
The user doesn't have permission to access the requested resource.

### 40004
The OAuth token doesn't have the required scopes to perform the requested action. See [Notes permissions](permissions_reference.md#notes-permissions).

### 40006 
The OAuth token doesn't have the required scopes to perform the requested action. Specifically the edit permission. See [Notes permissions](permissions_reference.md#notes-permissions).

### 40007
The user does not have permissions to access this resource.

### 40008
Access is Forbidden for this resource.

### 40009
The container is already in use by another resource.

## See also

- [Microsoft Graph error responses and resource types](errors.md)
- [OneNote reference](../api-reference/v1.0/resources/onenote.md)

