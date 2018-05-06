# Create OneNote pages

*__Applies to:__ Consumer notebooks on OneDrive | Enterprise notebooks on Office 365*

To create a OneNote page, you send a POST request to a *pages* endpoint. For example:

`POST ../notes/sections/{id}/pages`</p>

Send the HTML that defines the page in the message body. If the request is successful, Microsoft Graph returns a 201 HTTP status code.


> **Note:**
> To learn about the POST requests you can send to create sections, section groups, and notebooks, see our [interactive REST reference](http://dev.onenote.com/docs).


<a name="request-uri"></a>
## Construct the request URI

To construct the POST request URI, start with the service root URL:

`https://graph.microsoft.com/v1.0/me/onenote`

Then append the *pages* endpoint:

**Create a page in any section (specified by section name)**

`.../pages?sectionName=DefaultSection`

**Create a page in any section (specified by ID)** 

`.../sections/{section-id}/pages` 

If you're creating pages in the user's personal notebook, Microsoft Graph also provides endpoints you can use to create pages in the default notebook:

**Create a page in the default section of the default notebook** 

`../pages` 



Your full request URI will look like one of these examples:
* `https://graph.microsoft.com/v1.0/me/onenote/sections/{id}/pages`
* `https://graph.microsoft.com/v1.0/me/onenote/pages?sectionName=Homework`

Learn more about the [service root URL](../api-reference/v1.0/resources/onenote-api-overview.md#root-url).

<a name="post-pages-section-name"></a>
### Using the *sectionName* URL parameter

The following rules apply when using the *sectionName* parameter to create a page in a named section in the default notebook:

- Only top-level sections can be referenced (not sections within section groups).

- If a section with the specified name doesn't exist in the default notebook, the API creates it. These characters are not allowed for section names: ? * \ / : &lt; &gt; | &amp; # " % ~

- Section names are case-insensitive for matching, but case is preserved when sections are created. So "My New Section" will display like that, but "my new section" would also match on subsequent posts.

- Section names must be URL-encoded. For example, spaces must be encoded as *%20*.

- The *sectionName* parameter is valid only with the `../notes/pages` route (not `../notes/sections/{id}/pages`).

Because sections are created if they don't exist, it's safe to use this call with every page your app creates. Users might rename sections, but the API will create a new section with the section name that you supply. 

> **Note:**
> The links returned by the API for pages in a renamed section will still reach those older pages. 


<a name="message-body"></a>
## Construct the message body

The HTML that defines page content is called *input HTML*. Input HTML supports a [subset of standard HTML and CSS](#supported-html-and-css-for-onenote-pages), with the addition of custom attributes. (Custom attributes, like **data-id** and **data-render-src**, are described in [Input and output HTML](onenote_input_output_html.md).) 

Send the input HTML in the message body of the POST request. You can send the input HTML directly in the message body using the  `application/xhtml+xml` or `text/html` content type, or you can send it in the "Presentation" part of a multipart request. 

The following example sends the input HTML directly in the message body.

```
POST https://graph.microsoft.com/v1.0/me/onenote/pages
Authorization: Bearer {token}
Authorization: Bearer {token}
Content-Type: application/xhtml+xml

<!DOCTYPE html>
<html>
  <head>
    <title>A page with a block of HTML</title>
    <meta name="created" content="2015-07-22T09:00:00-08:00" />
  </head>
  <body>
    <p>This page contains some <i>formatted</i> <b>text</b> and an image.</p>
    <img src="http://..." alt="an image on the page" width="500" />
  </body>
</html>
```

If you're sending binary data, you must use a [multipart request](#example-request). 

>To simplify programming and consistency in your app, you can use multipart requests to create all pages. It's a good idea to use a library to construct multipart messages. This reduces the risk of creating malformed payloads.


<a name="input-html-rules"></a>
### Requirements and limitations for input HTML in POST pages requests

When sending input HTML, be aware of these general requirements and limitations:  

- Input HTML should be UTF-8 encoded and well-formed XHTML. All container start tags require matching closing tags. All attribute values must be surrounded by double- or single-quote marks.  <!--docs say MUST be encoded-->

- JavaScript code, included files, and CSS are removed. 

- HTML forms are removed in their entirety.  

- Microsoft Graph supports a [subset of HTML elements](#supported-html-and-css-for-onenote-pages). 

- Microsoft Graph supports a subset of common HTML attributes and a set of custom attributes, such as the **data-id** attribute used for updating pages. See [Input and output HTML](onenote_input_output_html.md) for supported attributes.


<a name="supported-html"></a>
### Supported HTML and CSS for OneNote pages

Not all elements, attributes, and properties are supported (in HTML4, XHTML, CSS, HTML5, etc.). Instead, Microsoft Graph accepts a limited set of HTML that better fits how people use OneNote. For more information, see [HTML tag support for pages](http://dev.onenote.com/docs#/introduction/html-tag-support-for-pages). If a tag's not listed there, it'll probably be ignored.

<!--Microsoft Graph only accepts UTF-8 data. Be sure that all requests are encoded that way, and your content-type headers indicate that as well. xx our examples don't show this-->

The following list shows the basic element types that Microsoft Graph supports:

- `<head>` and `<body>`</p>
- `<title>` and `<meta>` that set the page title and creation date</p>
- `<h1>` through `<h6>` for section headings</p>
- `<p>` for paragraphs</p>
- `<ul>`, `<ol>`, and `<li>` for lists and list items</p>
- `<table>`, `<tr>` and `<td>`, including nested tables</p>
- `<pre>` for preformatted text (preserves white space and line breaks)</p>
- `<b>` and `<i>` for bold and italic character styles</p>

Microsoft Graph preserves the semantic content and basic structure of the input HTML when it creates pages, but it converts the input HTML to use the supported set of HTML and CSS. Features that don't exist in OneNote have nothing to be translated to, so they might not be recognized in the source HTML. 


<a name="example"></a>
## Example request

This example multipart request creates a page that contains images and an embedded file. The required **Presentation** part contains the input HTML that defines the page. The **imageBlock1** part contains the binary image data 
 and **fileBlock1** contains the binary file data. Data parts can also contain HTML, in which case Microsoft Graph [renders the HTML as an image](onenote_images_files.md#add-an-image-using-binary-data) on the OneNote page. 

```
POST https://graph.microsoft.com/v1.0/me/onenote/pages
Authorization: Bearer {token}
Content-Type: multipart/form-data; boundary=MyPartBoundary198374

--MyPartBoundary198374
Content-Disposition:form-data; name="Presentation"
Content-Type:text/html

<!DOCTYPE html>
<html>
  <head>
    <title>A page with rendered images and an attached file</title>
    <meta name="created" content="2015-07-22T09:00:00-08:00" />
  </head>
  <body>
    <p>Here's an image from an <i>online source</i>:</p>
    <img src="http://..." alt="an image on the page" width="500" />
    <p>Here's an image uploaded as <b>binary data</b>:</p>
    <img src="name:imageBlock1" alt="an image on the page" width="300" />
    <p>Here's a file attachment:</p>
    <object data-attachment="FileName.pdf" data="name:fileBlock1" type="application/pdf" />
  </body>
</html>

--MyPartBoundary198374
Content-Disposition:form-data; name="imageBlock1"
Content-Type:image/jpeg

... binary image data ...

--MyPartBoundary198374
Content-Disposition:form-data; name="fileBlock1"
Content-Type:application/pdf

... binary file data ...

--MyPartBoundary198374--
```

For more examples that show how to create pages that contain images and other files, see [Add images and files](onenote_images_files.md), our [tutorials](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-tutorial), and our [samples](https://github.com/onenotedev). Also, learn how to [create absolute positioned elements](onenote-abs-pos.md), [use note tags](onenote-note-tags.md), and [extract data](onenote-extract-data.md) for business card captures and online recipe and product listings.

Microsoft Graph is strict about some formats, such as CRLF newlines in a multipart message body. To reduce the risk of creating malformed payloads, you should use a library to construct multipart messages. 
 If you do receive a 400 status for a malformed payload, check the formatting of newlines and whitespaces, and check for encoding issues. For example, try using `charset=utf-8` (example: `Content-Type: text/html; charset=utf-8`).

See [requirements and limitations for input HTML](#requirements-and-limitations-for-input-html-in-post-pages-requests) and [size limits for POST requests](onenote_images_files.md#size-limitations-for-post-pages-requests).


<a name="request-response-info"></a>
## Request and response information for *POST pages* requests

| Request data | Description |  
|------|------|  
| Protocol | All requests use the SSL/TLS HTTPS protocol. |  
| Authorization header | <p>`Bearer {token}`, where *{token}* is a valid OAuth 2.0 access token for your registered app.</p><p>If missing or invalid, the request fails with a 401 status code. See [Authentication and permissions](permissions_reference.md).</p> |  
| Content-Type header | <p>`text/html` or `application/xhtml+xml` for the HTML content, whether it's sent directly in the message body or in the required "Presentation" part of multipart requests.</p><p>Multipart requests are required when sending binary data, and use the `multipart/form-data; boundary=part-boundary` content type, where *{part-boundary}* is a string that signals the start and end of each data part.</p> |  
| Accept header | `application/json` | 

| Response data | Description |  
|------|------|  
| Success code | A 201 HTTP status code. |  
| Response body | A OData representation of the new page in JSON format. |  
| Errors | If the request fails, the API returns errors in the **@api.diagnostics** object in the response body. |  
| Location header | The resource URL for the new page. |  
| X-CorrelationId header | A GUID that uniquely identifies the request. You can use this value along with the value of the Date header when working with Microsoft support to troubleshoot issues. |  


<a name="root-url"></a>
### Constructing the Microsoft Graph service root URL

The Microsoft Graph service root URL uses the following format for all calls to Microsoft Graph. `https://graph.microsoft.com/{version}/me/onenote/`  The `version` segment in the URL represents the version of Microsoft Graph that you want to use. Use `v1.0` for stable production code. Use `beta` to try out a feature that's in development. Features and functionality in beta may change, so you shouldn't use it in your production code. Use `me` for OneNote content that the current user can access (owned and shared). Use `users/{id}` for OneNote content that the specified user (in the URL) has shared with the current user. Use the [Microsoft Graph](https://graph.microsoft.com/v1.0/users) to get user IDs. 


<a name="permissions"></a>
## Permissions

To create OneNote pages, you'll need to request appropriate permissions. Choose the lowest level of permissions that your app needs to do its work.

Choose from: 
- Notes.Create
- Notes.ReadWrite
- Notes.ReadWrite.All

For more information about permission scopes and how they work, see [Microsoft Graph permissions reference](permissions_reference.md).




<a name="see-also"></a>
## Additional resources

- [Add images and files](onenote_images_files.md)
- [Create absolute positioned elements](onenote-abs-pos.md)  
- [Extract data](onenote-extract-data.md)
- [Use note tags](onenote-note-tags.md)
- [Integrate with OneNote](integrate_with_onenote.md)
- [OneNote Developer Blog](http://go.microsoft.com/fwlink/?LinkID=390183)
- [OneNote development questions on Stack Overflow](http://go.microsoft.com/fwlink/?LinkID=390182)
- [OneNote GitHub repos](http://go.microsoft.com/fwlink/?LinkID=390178)  


