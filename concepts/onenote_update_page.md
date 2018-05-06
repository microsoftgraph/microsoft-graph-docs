# Update OneNote page content

*__Applies to:__ Consumer notebooks on OneDrive | Enterprise notebooks on Office 365*


To update the content of a OneNote page, you send a PATCH request to the page's *content* endpoint:

`PATCH ../notes/pages/{id}/content`</p>

Send a JSON change object in the message body. If the request is successful, the Microsoft Graph returns a 204 HTTP status code.


<a name="request-uri"></a>
## Construct the request URI

To construct the request URI, start with the service root URL:

`https://graph.microsoft.com/v1.0/me/onenote`

Then append the page's *content* endpoint:

**Get the page HTML and all defined *data-id* values**</p>
`../pages/{id}/content`   

**Get the page HTML, all defined *data-id* values, and all generated *id* values**  
`../pages/{page-id}/content?includeIDs=true` 

The **data-id** and **id** values are used as **target** identifiers for the elements you want to update.

 
Your full request URI will look like this:

`https://graph.microsoft.com/v1.0/me/onenote/pages/{id}/content`


Learn more about the [service root URL](../api-reference/v1.0/resources/onenote-api-overview.md#root-url).


<a name="message-body"></a>
## Construct the message body

The HTML of a OneNote page contains text, images, and other content organized into structures such as **div**, **img**, and **ol** elements. To update OneNote page content, you add and replace HTML elements on the page.

Your changes are sent in the message body as an array of JSON change objects. Each object specifies the target element, new HTML content, and what to do with the content.

The following array defines two changes. The first inserts an image above a paragraph as a sibling, and the second appends an item to a list as a last child.

```json
[
   {
    'target':'#para-id',
    'action':'insert',
    'position':'before',
    'content':'<img src="image-url-or-part-name" alt="Image above the target paragraph" />'
  }, 
  {
    'target':'#list-id',
    'action':'append',
    'content':'<li>Item at the end of the list</li>'
  }
]
```

See [more examples](#example-requests).


### Attributes for JSON change objects

Use the **target**, **action**, **position**, and **content** attributes to define JSON objects for PATCH requests.

**target**  
The element to update. The value must be one of the following identifiers:

| Identifier | Description |  
|------|------|  
| #{data-id} | <p>This ID is optionally defined on elements in the input HTML when [creating a page](onenote-create-page.md) or [updating a page](onenote_update_page.md). Prefix the value with a #.</p><p> Example: `'target':'#intro'` targets the element `<div data-id="intro" ...>`</p> |  
| id | <p>This is the [generated ID](#generated-ids) from Microsoft Graph, and is required for most replace operations. Do not prefix with a #.</p><p> Example: `'target':'div:{33f8a2...}{37}'` targets the element `<div id="div:{33f8a2...}{37}" ...>`</p><p>Don't confuse these with any **id** values defined in the [input HTML](onenote_input_output_html.md). All **id** values sent in the input HTML are discarded.</p> |  
| body | The keyword that targets the first div on the page. Do not prefix with a #. |  
| title | The keyword that targets the page title. Do not prefix with a #. |  
 
**action**  
The action to perform on the target element. See [supported actions for elements](#supported-elements-and-actions).

| Action | Description |  
|------|------|  
| append | <p>Adds the supplied content to the target as a first or last child, as determined by the **position** attribute.</p><p>Applies only to **body**, **div**, **ol**, and **ul** elements.</p> |  
| insert | Adds the supplied content as a sibling before or after the target, as determined by the **position** attribute. |  
| prepend | <p>Adds the supplied content to the target as a first child. Shortcut for **append** + **before**.</p><p>Applies only to **body**, **div**, **ol**, and **ul** elements.</p> |  
| replace | <p>Replaces the target with the supplied content.</p><p>Most **replace** actions require using the [generated ID](#generated-ids) for the target (except **img** and **object** elements within a div, which also support using **data-id**).</p> |  
 
**position**  
The location to add the supplied content, relative to the target element. Defaults to **after** if omitted.

| Position | Description |  
|------|------|  
| after (default) | <p>- With **append**: The last child of the target element.</p><p>- With **insert**: The subsequent sibling of the target element.</p> |
| before | <p>- With **append**: The first child of the target element.</p><p>- With **insert**: The preceding sibling of the target element.</p> |

**content**  
A string of well-formed HTML to add to the page, and any image or file binary data. If the content contains binary data, the request must be sent using the `multipart/form-data` content type with a "Commands" part (see an [example](#multipart-request-with-binary-content)). 
 

<a name="generated-ids"></a>

### Generated IDs
Microsoft Graph generates **id** values for the elements on the page that can be updated. To get generated IDs, use the `includeIDs=true` query string expression in your GET request:

`GET ../notes/pages/{page-id}/content?includeIDs=true` 

> **Note:**
> The API discards all **id** values that are defined in the [input HTML](onenote_input_output_html.md) of create-page and update-page requests.

The following example shows generated IDs for a paragraph and an image in the [output HTML](onenote_input_output_html.md) of a page.

```html
<p id="p:{33f8a242-7c33-4bb2-90c5-8425a68cc5bf}{40}">Some text on the page</p>
<img id="img:{33f8a242-7c33-4bb2-90c5-8425a68cc5bf}{45}" ... />
```

Generated **id** values might change after a page update, so you should get the current values before building a PATCH request that uses them.
 
You can specify target elements by using the **data-id** or **id** value, as follows:

- For **append** and **insert** actions, you can use either ID as the target value.
- For **replace** actions, you must use the generated ID for all elements except for the page title and images and objects that are within a div. 
    - To replace a title, use the **title** keyword. 
    - To replace images and objects that are within a div, use either **data-id** or **id**.

The following example uses the **id** value for the target. Don't use the # prefix with a generated ID.

```json
[
   {
    'target':'p:{33f8a242-7c33-4bb2-90c5-8425a68cc5bf}{40}',
    'action':'insert',
    'position':'before',
    'content':'<p>This paragraph goes above the target paragraph.</p>'
  }
]
```

<a name="support-matrix"></a>

## Supported elements and actions
Many elements on the page can be updated, but each element type supports specific actions. The following table shows supported target elements and the update actions that they support.

| Element | Replace | Append child | Insert sibling |  
|------|------|------|------|  
| body<br /> (targets first div on the page) | no | **yes** | no |  
| div<br /> ([absolute positioned](onenote-abs-pos.md)) | no | **yes** | no |  
| div<br /> (within a div) | **yes** (id only) | **yes** | **yes** |   
| img, object<br /> (within a div) | **yes** | no | **yes** |   
| ol, ul | **yes** (id only) | **yes** | **yes** |   
| table | **yes** (id only) | no | **yes** |   
| p, li, h1-h6 | **yes** (id only) | no | **yes** |   
| title | **yes** | no | no |  
 

The following elements do not support any update actions.

- img ([absolute positioned](onenote-abs-pos.md))
- object ([absolute positioned](onenote-abs-pos.md))
- tr, td
- meta
- head
- span
- a
- style tags


<a name="examples"></a>
## Example requests
An update request contains one or more changes represented as JSON change objects. These objects can define different targets on the page and different actions and content for the targets.

The following examples include JSON objects used in PATCH requests and complete PATCH requests:

[Append child elements](#append-child-elements)&nbsp;&nbsp;|&nbsp;&nbsp;[Insert sibling elements](#insert-sibling-elements)&nbsp;&nbsp;|&nbsp;&nbsp;[Replace elements](#replace-elements)&nbsp;&nbsp;|&nbsp;&nbsp;[Complete PATCH requests](#complete-patch-request-examples)


<a name="append-examples"></a>

### Append child elements
The **append** action adds a child to a **body**, **div** (within a div), **ol**, or **ul** element. The **position** attribute determines whether to append the child before or after the target. The default position is **after**.

#### Append to a div

The following example adds two child nodes to the **div1** element. It adds an image as the first child and a paragraph as the last child. 

```json
[
 {
    'target':'#div1',
    'action':'append',
    'position':'before',
    'content':'<img data-id="first-child" src="image-url-or-part-name" />'
  },
  {
    'target':'#div1',
    'action':'append',
    'content':'<p data-id="last-child">New paragraph appended to the div</p>'
  }
]
```
 

#### Append to the *body* element

You can use the **body** shortcut to append a child element inside the first div on any page.

The following example adds two paragraphs as the first child and the last child to the first div on the page. Don't use a # with the **body** target. This example uses the **prepend** action as a shortcut for **append** + **before**.

```json
[
  {
    'target':'body',
    'action':'prepend',
    'content':'<p data-id="first-child">New paragraph as first child in the first div</p>'
  },
  {
    'target':'body',
    'action':'append',
    'content':'<p data-id="last-child">New paragraph as last child in the first div</p>'
  }
]
```
 

#### Append to a list

The following example adds a list item as a last child to the target list. The **list-style-type** property is defined because the item uses a non-default list style.

```json
[
  {
    'target':'#circle-ul',
    'action':'append',
    'content':'<li style="list-style-type:circle">Item at the end of the list</li>'
  }
]
```
 

<a name="insert-examples"></a>

### Insert sibling elements
The **insert** action adds a sibling to the target element. The **position** attribute determines whether to insert the sibling before or after the target. The default position is **after**. See [elements that support **insert**](#supported-elements-and-actions).

**Insert siblings**

The following example adds two sibling nodes to the page. It adds an image above the **para1** element and a paragraph below the **para2** element.

```json
[
  {
     'target':'#para1',
     'action':'insert',
     'position':'before',
     'content':'<img src="image-url-or-part-name" alt="Image inserted above the target" />'
  },
  {
    'target':'#para2',
     'action':'insert',
     'content':'<p data-id="next-sibling">Paragraph inserted below the target</p>'
  }
]
```
 

<a name="replace-examples"></a>

### Replace elements

You can use either the **data-id** or generated **id** as the target value to replace **img** and **object** elements that are within a div. To replace the page title, use the **title** keyword. For all other [elements that support **replace**](#supported-elements-and-actions), you must use the generated ID.

#### Replace an image

The following example replaces an image with a div by using the image's **data-id** as the target. 

```json
[
  {
    'target':'#img1',
    'action':'replace',
    'content':'<div data-id="new-div"><p>This div replaces the image</p></div>'
  }
]
```
 

#### Update a table 

This example shows how to update a table by using its generated ID. Replacing **tr** and **td** elements is not supported, but you can replace the entire table.

```json
[
  {
    'target':'table:{de3e0977-94e4-4bb0-8fee-0379eaf47486}{11}',
    'action':'replace',
    'content':'<table data-id="football">
      <tr><td><p><b>Brazil</b></p></td><td><p>Germany</p></td></tr>
      <tr><td><p>France</p></td><td><p><b>Italy</b></p></td></tr>
      <tr><td><p>Netherlands</p></td><td><p><b>Spain</b></p></td></tr>
      <tr><td><p>Argentina</p></td><td><p><b>Germany</b></p></td></tr></table>'
  }
]
```
 

#### Change the title 

This example shows how to change the title of a page. To change the title, use the **title** keyword as the target value. Don't use a # with the title target.

```json
[
  {
    'target':'title',
    'action':'replace',
    'content':'New title'
  }
]
```
 

#### Update a to-do item

The following example uses the replace action to change a to-do check box item to a completed state.

```json
[
  {
    'target':'#task1',
    'action':'replace',
    'content':'<p data-tag="to-do:completed" data-id="task1">First task</p>'
  }
]
```

See [Use note tags](onenote-note-tags.md) for more about using the **data-tag** attribute.


<a name="complete-requests"></a>

### Complete PATCH request examples

The following examples show complete PATCH requests.

#### Request with text content only  
The following example shows a PATCH request that uses the **application/json** content type. You can use this format when your content doesn't contain binary data.

```
PATCH https://graph.microsoft.com/v1.0/me/onenote/notebooks/pages/{page-id}/content

Content-Type: application/json
Authorization: Bearer {token}

[
   {
    'target':'#para-id',
    'action':'insert',
    'position':'before',
    'content':'<img src="image-url" alt="New image from a URL" />'
  }, 
  {
    'target':'#list-id',
    'action':'append',
    'content':'<li>Item at the bottom of the list</li>'
  }
]
```
 
<a name="multipart"></a>

#### Multipart request with binary content 

The following example shows a multipart PATCH request that includes binary data. Multipart requests require a "Commands" part that specifies the **application/json** content type and contains the array of JSON change objects. Other data parts can contain binary data. Part names typically are strings appended with the current time in milliseconds or a random GUID.

```
PATCH https://graph.microsoft.com/v1.0/me/onenote/notebooks/pages/{page-id}/content

Content-Type: multipart/form-data; boundary=PartBoundary123
Authorization: Bearer {token}

--PartBoundary123
Content-Disposition: form-data; name="Commands"
Content-Type: application/json

[
  {
    'target':'img:{2998967e-69b3-413f-a221-c1a3b5cbe0fc}{42}',
    'action':'replace',
    'content':'<img src="name:image-part-name" alt="New binary image" />'
  }, 
  {
    'target':'#list-id',
    'action':'append',
    'content':'<li>Item at the bottom of the list</li>'
  }
]

--PartBoundary123
Content-Disposition: form-data; name="image-part-name"
Content-Type: image/png

... binary image data ...

--PartBoundary123--
```

<a name="request-response-info"></a>

## Request and response information for PATCH requests

| Request data | Description |  
|------|------|  
| Protocol | All requests use the SSL/TLS HTTPS protocol. |  
| Authorization header | <p>`Bearer {token}`, where *{token}* is a valid OAuth 2.0 access token for your registered app.</p><p>If missing or invalid, the request fails with a 401 status code. See [Authentication and permissions](permissions_reference.md).</p> |  
| Content-Type header | <p>`application/json` for the array of JSON change objects, whether sent directly in the message body or in the required "Commands" part of [multipart requests](#multipart-request-with-binary-content).</p><p>Multipart requests are required when sending binary data, and use the `multipart/form-data; boundary=part-boundary` content type, where *{part-boundary}* is a string that signals the start and end of each data part.</p> |  
 

| Response data | Description |  
|------|------|  
| Success code | A 204 HTTP status code. No JSON data is returned for a PATCH request. |  
| Errors | Read [Error codes for OneNote APIs in Microsoft Graph](onenote_error_codes.md) to learn about OneNote errors that Microsoft Graph can return. |  
 
 

<a name="root-url"></a>

### Constructing the Microsoft Graph service root URL

<a name="root-url"></a>

## Root URL
The OneNote service root URL uses the following format for all calls to the OneNote API.
`https://graph.microsoft.com/{version}/me/onenote/`

The `version` segment in the URL represents the version of Microsoft Graph that you want to use.
- `v1.0` is for stable production code.
- `beta` is to try out a feature that's in development. Features and functionality in beta may change, so you shouldn't use it in your production code.
- `me` is for OneNote content that the current user can access (owned and shared).
- `users/{id}` is for OneNote content that the specified user (in the URL) has shared with the current user. Use the [Azure AD Graph API](https://msdn.microsoft.com/library/azure/ad/graph/api/api-catalog)


> **Note:**
> You can get user ids by making a GET request on `https://graph.microsoft.com/v1.0/users`.



<a name="permissions"></a>

## Permissions

To update OneNote pages, you'll need to request appropriate permissions. Choose the lowest level of permissions that your app needs to do its work.

- Notes.ReadWrite
- Notes.ReadWrite.All

For more information about permission scopes and how they work, see [OneNote permission scopes](permissions_reference.md).
   

<a name="see-also"></a>

## Additional resources

- [Add images and files](onenote_images_files.md)
- [Integrate with OneNote](integrate_with_onenote.md)
- [OneNote Developer Blog](http://go.microsoft.com/fwlink/?LinkID=390183)
- [OneNote development questions on Stack Overflow](http://go.microsoft.com/fwlink/?LinkID=390182)
- [OneNote GitHub repos](http://go.microsoft.com/fwlink/?LinkID=390178)  
