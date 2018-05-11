# Input and output HTML in OneNote pages

The HTML that defines the page content and structure when you [create](../api-reference/v1.0/api/section_post_pages.md) or [update](../api-reference/v1.0/api/page_update.md) a OneNote page is called *input HTML*. 

The HTML that's returned when you [get page content](../api-reference/v1.0/api/page_get.md) is called *output HTML*. Output HTML won't be the same as input HTML.

The OneNote APIs in Microsoft Graph preserve the semantic content and basic structure of the input HTML, but convert it to a set of [supported HTML elements and CSS properties](onenote-create-page.md#supported-html-and-css-for-onenote-pages). The APIs also add custom attributes that support OneNote features.
 
This article describes the principal elements and attributes of input and output HTML. It can be helpful to understand input HTML when you're creating or updating page content, and output HTML when you're parsing returned page content. 

## Body element
The HTML content in the page body represents the page content and structure, including image and file resources. The **body** element can contain the following attributes in the input and output HTML.

**Input attributes**

|Input attribute|Description|
|:------|:------|
| data-absolute-enabled | Indicates whether the input body supports [absolute positioned](onenote-abs-pos.md) elements. |
| style | <p>The CSS [style](#styles) properties of the body. In the output HTML, input settings might be returned inline on appropriate child elements.</p><p>Background color is not currently supported for the **body** element.</p> |
 

**Output attributes**

|Output attribute|Description|
|:------|:------|
| data-absolute-enabled | Indicates whether the body supports [absolute positioned](onenote-abs-pos.md) elements. Always **true** in output HTML. |
| style | The **font-family** and **font-size** properties of the body. |


## Div elements
**Div** elements contain text, images, and other content. A **div** element can contain the following attributes in the input and output HTML.

**Input attributes**

|Input attribute|Description|
|:------|:------|
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| data-render-fallback | The fallback action if the [extraction](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-extract-data) fails: **render** (default) or **none**. |
| data-render-method | The [extraction](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-extract-data) method to perform, for example: `extract.businesscard` or `extract.recipe`. |
| data-render-src | The content source for the [extraction](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-extract-data). |
| style | <p>The position, size, font, and color properties for the div:</p><p> - **position** (**absolute** only), **left**, **top**, and **width**. (Height is auto-configured for divs.)<br />Used to create an [absolute positioned](onenote-abs-pos.md) div, only if the div is a direct child of the body when the body sets `data-absolute-enabled="true"`.<br />Example: `<div style="position:absolute;width:360px;top:350px;left:300px" ... />`</p><p> - The CSS [style](#styles) properties of the element. In the output HTML, these values are returned inline on appropriate child elements.</p> |
 

The OneNote APIs in Microsoft Graph wrap all body content in at least one div. The API creates a default div (attributed with `data-id="_default"`) to contain the body content if:

- The input body element's **data-absolute-enabled** attribute is omitted or set to **false**. In this case, all body content is put in the default div.

- The input body element's **data-absolute-enabled** attribute is **true**, but the input HTML contains direct children that aren't [absolute positioned](onenote-abs-pos.md)&nbsp;**div**, **img**, or **object** elements. In this case, direct children that aren't [absolute positioned](onenote-abs-pos.md)&nbsp;**div**, **img**, or **object** elements are put in the default div.


**Output attributes**

|Output attribute|Description|
|:------|:------|
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| id | A unique, generated ID for the element. Returned by [GET requests to a page's *content* endpoint](../api-reference/v1.0/api/page_get.md) when the `includeIDs=true` query option is used. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| style | The position and size properties of the div. |
 
### Non-contributing divs
When a **div** element in the input HTML does not contribute to the page structure or carry information that OneNote uses, the API moves the div's content into the parent or default div. This is illustrated in the following examples.

#### Input HTML
Contains a non-contributing, nested div.

```html
<html>
    <head>
        <title>Page Title</title>
    </head>
    <body>
        <div>
            <p>Some text</p>
            <div>
                <p>More text inside a div that doesn't define page structure</p>
            </div>
        </div>
    </body>
</html>
```

#### Output HTML

>**Note:** The div's content was moved to the parent div and the nested `<div>` tags have been removed. The div would have been preserved if it defined any semantic information, such as a **data-id** (example: `<div data-id="keep-me">`).

```html
<html htmlns="http://www.w3.org/1999/xhtml" lang="en-US">
    <head>
        <title>Page Title</title>
    </head>
    <body data-absolute-enabled="true" style="font-family:Calibri;font-size:11px">
        <div data-id="_default" style="position:absolute;left:48px;top:120px;width:624px">
            <p>Some text</p>
            <p>More text inside a nested div</p>
        </div>
    </body>
</html>
```


## Img elements
Images on OneNote pages are represented by **img** elements. An **img** element can contain the following attributes in the input and output HTML.

**Input attributes**

|Input attribute|Description|
|:------|:------|
| alt | The supplied alt text for the image. |
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| data-render-src |Either **data-render-src** or **src** is required.<br/><br/>The webpage to render as a bit-mapped image on the OneNote page:<br /> - `data-render-src="http://..."` for a public URL.<br /> - `data-render-src="name:BlockName"` for an image part in the "Presentation" block of a [multipart request](../api-reference/v1.0/api/section_post_pages.md#example).<br/><br/>This method is useful when the webpage is more complex than the OneNote page can faithfully render, or when the page requires login credentials.|
| data-tag | A [note tag](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags) on the element. |
| style |The position and size properties for the image: **position** (**absolute** only), **left**, **top**, **width**, and **height**.<br/><br/>Size can be set on any image. Position properties are used to create an [absolute positioned](onenote-abs-pos.md) image, only if the image is a direct child of the body when the body sets `data-absolute-enabled="true"`.<br />Example: `<img style="position:absolute;width:360px;top:350px;left:300px" ... />`<br/><br/>In the output HTML, the image size is returned separately in **width** and **height** attributes. |
| src |Either **src** or **data-render-src** is required.<br/><br/>The image to render on the OneNote page:<br /> - `src="http://..."` for a URL to a publicly available image on the internet.<br /> - `src="name:BlockName"` for a named part in a multipart request that represents the image.|
| width, height | The width or height of the image, in pixels but without the px. Example: `width="400"` |
 
>**Note:** The OneNote APIs automatically detect the input image type, and returns it as the **data-fullres-src-type** in the output HTML. The API also returns the image type of the optimized image in **data-src-type**.
 

**Output attributes**

|Output attribute|Description|
|:------|:------|
| alt | The supplied alt text for the image. |
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| data-index | The position of the image. For [split image](#split-images) support. |
| data-fullres-src | The endpoint for the version of the image resource that was originally embedded in the page. |
| data-fullres-src-type | The media type of the **data-fullres-src** resource, for example: `image/png` or `image/jpeg`. |
| data-options | The source type: **printout** for PDF files or **splitimage** for all others. Applies only to [split images](#split-images) created with the **data-render-src** attribute. |
| data-render-original-src | The original source URL of the image, if the source image is from the public internet and was created with the **data-render-src** attribute. |
| data-src-type | The media type of the **src** resource, for example: `image/png` or `image/jpeg`. |
| data-tag | A [note tag](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags) on the element. |
| id | A unique, generated ID for the element. Returned by [GET requests to a page's *content* endpoint](../api-reference/v1.0/api/page_get.md) when the `includeIDs=true` query option is used. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| src | The endpoint for the version of the image resource that has been optimized for web browsers and mobile and tablet form factors. |
| style | The position properties of the image. |
| width, height | The width or height of the image, in pixels. |
 

### Output HTML examples for images
Output **img** elements contain endpoints for image file resources and the image type, as shown below. You can make separate [GET requests to image resource endpoints](../api-reference/v1.0/api/resource_get.md) to retrieve their binary contents.

```http
<img 
    src="https://graph.microsoft.com/v1.0/me/onenote/resources/{image-id}/$value"  
    data-src-type="image/png"
    data-fullres-src="https://graph.microsoft.com/v1.0/me/onenote/resources/{image-id}/$value"  
    data-fullres-src-type="image/png" ... />
```

By default, images won't render directly in a browser because they are private and require authorization to retrieve them, like the rest of the page contents. To get public URLs to the image resources on a page, include **preAuthenticated=true** in the query string when you retrieve the page content (example: `GET ../pages/{page-id}/content?preAuthenticated=true`). The public URLs that are returned are valid for one hour. 

**Image with public URL when _preAuthenticated=true_ is included in the request**

```html
<img 
    width="170" height="128" 
    src="https://graph.microsoft.com/v1.0/me/onenote/resources/{image-id}/content?publicAuth=true&mimeType=image/jpeg" 
    data-src-type="image/{type}" 
    data-fullres-src="https://graph.microsoft.com/v1.0/me/onenote/resources/{image-id}/content?publicAuth=true&mimeType=image/jpeg" 
    data-fullres-src-type="image/{type}"
/>
```

The following examples show the information an **img** element might contain in the output HTML.

**Image with web-ready and high resolution resources**

```html
<img
    src="{web-ready-image-resource-url}/$value"
    data-src-type="image/{type}"
    data-fullres-src="{high-resolution-image-resource-url}/$value"
    data-fullres-src-type="image/{type}"
    [data-render-original-src="{original-source-url-or-named-part}"]
    [data-id="{image-id}"]
    [alt="supplied alt text"]
    [width="345"] [height="180"]
    [style="..."] />
```

**Image created by using the *data-render-src* attribute**

```html
<img
    src="{web-ready-image-resource-url}/$value"
    data-src-type="image/{type}"
    data-fullres-src="{high-resolution-image-resource-url}/$value"
    data-fullres-src-type="image/{type}"
    data-render-original-src="{original-source-url-or-named-part}"
    [data-id="{image-id}"]
    [data-index="{index-of-split-image}"]
    [data-options="{printout-or-splitimage}"]
    [alt="supplied alt text"]
    [width="1024"] [height="1900"]
    [style="..."] />
```

### Split images

Images that are created using the **data-render-src** attribute (from a webpage URL or a named part) might be split into multiple component images for performance and rendering reasons. Component images are all assigned the same **data-id** value. Each component image has a zero-based data-index attribute that defines the original vertical layout.

**Split image with three component images**

```html
<div data-id="multi-component-image" style="position:absolute;left:48px;top:120px;width:624px">
    <img
        src="{image-resource0-url}/$value"
        data-src-type="image/{type}"
        data-fullres-src="{image-resource0-url}/$value" 
        data-fullres-src-type="image/{type}" 
        data-index="0" 
        data-render-original-src="{original-source-url-or-named-part}"
        data-id="{same-image-id}" ... />
    <img 
        src="{image-resource1-url}/$value" 
        data-src-type="image/{type}" 
        data-fullres-src="{image-resource1-url}/$value" 
        data-fullres-src-type="image/{type}" 
        data-index="1" 
        data-render-original-src="{original-source-url-or-named-part}"
        data-id="{same-image-id}" ... />
    <img 
        src="{image-resource2-url}/$value" 
        data-src-type="image/{type}" 
        data-fullres-src="{image-resource2-url}/$value" 
        data-fullres-src-type="image/{type}" 
        data-index="2" 
        data-render-original-src=""{original-source-url-or-named-part}"
        data-id="{same-image-id}" ... />
</div>
```

Because users can move the images on the page, the returned indexes might be out of order. Ordering should be in top to bottom y-order, then left to right x-order if there are y-order conflicts.

## iframe elements
OneNote pages can contain embedded videos represented by **iframe** elements. 

>**Note:** You can also [attach a video file using an **object** element](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-images-files#files).

**Input attributes**

|Input attribute|Description|
|:------|:------|
| data-original-src | Required. The URL of the video source. See the [list of supported video sources](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-images-files#videos). Example: `data-original-src="https://www.youtube.com/watch?v=3Ztr44aKmQ8"` |
| width, height | The width or height of the iframe, in pixels. Example: `width=300` |

**Output attributes**

|Output attribute|Description|
|:------|:------|
| data-original-src | The URL of the video source. |
| src | A link to the video that is embedded in the OneNote page. |
| width, height | The width or height of the iframe, in pixels. Example: `width=300` |
 
**Output HTML** example for videos

Output **iframe** elements contain endpoints that link to the source page and video, as shown. 

```html
<iframe 
    width="340" height="280" 
    data-original-src="https://www.youtube.com/watch?v=3Ztr44aKmQ8" 
    src="https://www.youtube.com/embed/3Ztr44aKmQ8?feature=oembed&autoplay=true" />
``` 

## Object elements
OneNote pages can contain file attachments represented by **object** elements. An **object** element can contain the following attributes in the input and output HTML.

>**Note:** The OneNote APIs can also render file content as images in a page when the file is sent as an image and uses the **data-render-src** attribute. Example: `<img data-render-src="name:part-name" ... />`
 

**Input attributes**

|Input attribute|Description|
|:------|:------|
| data | Required. The name of the part that represents the file in the [multipart request](../api-reference/v1.0/api/section_post_pages.md#example). |
| data-attachment | Required. The file name. |
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| style | <p>The position and size properties for the object: **position** (**absolute** only), **left**, **top**, and **width**.</p><p>Used to create an [absolute positioned](onenote-abs-pos.md) object, only if the object is a direct child of the body when the body sets `data-absolute-enabled="true"`.<br />Example: `<object style="position:absolute;top:350px;left:300px" ... />`</p> |
| type | Required. The standard media file type. Known file types display the icon associated with the file type on the OneNote page. Unknown file types display a generic file icon. |
<!--todo: add link to known file types--> 

**Output attributes**

|Output attribute|Description|
|:------|:------|
| data | The endpoint for the file resource. |
| data-attachment | The file name. |
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| id | A unique, generated ID for the element. Returned by [GET requests to a page's *content* endpoint](../api-reference/v1.0/api/page_get.md) when the `includeIDs=true` query option is used. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| style | The position properties of the object. |
| type | The standard media file type. |
 

**Output HTML** example for objects

Output **object** elements contain endpoints that link to the file resources in the page, as shown. You can make separate [GET requests to file resource endpoints](../api-reference/v1.0/api/resource_get.md) to retrieve their binary contents.

```html
<object
    data="https://graph.microsoft.com/v1.0/me/onenote/resources/{file-id}/$value"
    data-attachment="fileName.pdf" 
    type="application/pdf" 
    [style="..."] />
``` 

## Paragraphs and headings

Paragraphs, headings, and other text containers can contain the following attributes in the input and output HTML.

**Input attributes**

|Input attribute|Description|
|:------|:------|
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| data-tag | A [note tag](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags) on a **p** or **h1** - **h6** element. |
| style | The CSS [style](#styles) properties of the element. |
 

**Output attributes**

|Output attribute|Description|
|:------|:------|
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| data-tag | A [note tag](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags) on a **p** or **h1** - **h6** element. |
| id | A unique, generated ID for the element. Returned by [GET requests to a page's *content* endpoint](../api-reference/v1.0/api/page_get.md) when the `includeIDs=true` query option is used. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| style | The CSS [style](#styles) properties of the element. In the output HTML, these values may be returned inline on appropriate child elements or on **span** elements. |
 

The following examples show input HTML that uses different ways to define styles on text containers and the output HTML that's returned.

**Input HTML** with styles defined using inline character styles, in the start tag, and within a **span** element.

```html
<h1>Heading <i>One</i> text</h1>
<p style="font-size:8pt;color:green;font-family:Courier;text-align:center">Some text</p>
<p>Some <span  style="font-size:16px;color:#ff0000;font-family:Segoe UI Black">more</span> text</p>
``` 

**Output HTML** with the `<i>` character style and the font settings in the `<p>` start tag returned as inline CSS styles on **span** elements.

```html
<h1 style="font-size:16pt;color:#1e4e79;margin-top:11pt;margin-bottom:11pt">Heading <span style="font-style:italic">One</span> text</h1>
<p style="text-align:center"><span style="font-family:Courier;font-size:8pt;color:green">Some text</span></p>
<p>Some <span style="font-family:Segoe UI Black;font-size:12pt;color:red">more</span> text</p>
``` 


## Lists
Lists are represented as **ol** or **ul** elements that contain list items represented as **li** elements.

Lists and list items can contain the following attributes in the input and output HTML.

**Input attributes**

|Input attribute|Description|
|:------|:------|
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| data-tag | A [note tag](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags) on a **ul**, **ol**, or **li** element. |
| style | The **list-style-type** and the CSS [style](#styles) properties for the list or list item. |
 

**Output attributes**

|Output attribute|Description|
|:------|:------|
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| data-tag |  A [note tag](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags) on a span in a **li** element. |
| id | A unique, generated ID for the element. Returned by [GET requests to a page's *content* endpoint](../api-reference/v1.0/api/page_get.md) when the `includeIDs=true` query option is used. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| style | The **list-style-type** and CSS [style](#styles) properties of the element. In the output HTML, list-level settings are returned on list items. Default properties are not returned. |
 

The OneNote APIs in Microsoft Graph support the following list styles:

|Ordered list|Unordered list|
|:------|:------|
| none | none |
| decimal (default) | disc (default) |
| lower-alpha | circle |
| lower-roman | square |
| upper-alpha | &nbsp; |
| upper-roman | &nbsp; |
 
You can apply global styles for a list on the **ol** or **ul** element in the input HTML, but styles are returned on the **li** elements.

**Homogenous list style**

This example shows input HTML that sets the list style type on the **ol** element and CSS styles on individual list items.

```html
<ol style="list-style-type:upper-roman;color:blue">
    <li style="font-weight:bold">Jacksonville</li>
    <li style="text-decoration:line-through">Orlando</li>
    <li style="font-family:Courier">Naples</li>
</ol>
``` 

This is the output HTML. Notice that styles are returned inline on the individual **li** or **span** elements.

```html
<ol>
    <li style="list-style-type:upper-roman"><span style="color:blue;font-weight:bold">Jacksonville</span></li>
    <li style="list-style-type:upper-roman"><span style="color:blue;text-decoration:line-through">Orlando</span></li>
    <li style="list-style-type:upper-roman"><span style="font-family:Courier;color:blue">Naples</span></li>
</ol>
``` 

**Variable list styles**

This example shows input HTML that sets different list style types on the **li** elements.

```html
<ul style="font-style:italic">
    <li style="list-style-type:square">square style</li>
    <li style="list-style-type:circle">circle style</li>
    <li style="list-style-type:disc">disc style (default)</li>
</ul>
``` 

This is the output HTML. Notice that styles are returned inline on the individual **li** or **span** elements.

```html
<ul>
    <li style="list-style-type:square"><span style="font-style:italic">square style</span></li>
    <li style="list-style-type:circle"><span style="font-style:italic">circle style</span></li>
    <li><span style="font-style:italic">disc style (default)</span></li>
</ul>
``` 


## Tables
Tables are represented as **table** elements that can contain **tr** and **td** elements. Nested tables are supported.

Tables can contain the following attributes in the input and output HTML. The OneNote APIs do not support **rowspan** or **colspan** attributes. 

**Input attributes**

|Input attribute|Description|
|:------|:------|
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| style | The CSS [style](#styles) properties of the element, and also:<br/> - **border**. Can be either 0px or 1px.<br /> - **width**. Supported by **table** and **td** as pixels or percentage of page width.<br />Example: `width="100px"` or `width="60%"` |
 

**Output attributes**

|Output attribute|Description|
|:------|:------|
| data-id | A reference for the element. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| id | A unique, generated ID for the element. Returned by [GET requests to a page's *content* endpoint](../api-reference/v1.0/api/page_get.md) when the `includeIDs=true` query option is used. Used to [update page content](../api-reference/v1.0/api/page_update.md). |
| style | The CSS [style](#styles) properties of the element. |
 

The following examples show input HTML that uses different ways to define styles on tables and the output HTML that's returned.

**Input HTML** with optional settings at different levels.

```html
<table style="border:0px;width:500px;background-color:green">
    <tr> 
        <td>Cell 1</td> 
        <td>Cell 2</td> 
        <td>Cell 3</td> 
    </tr> 
    <tr style="background-color:blue"> 
        <td style="text-align:right;background-color:red">Left</td> 
        <td style="text-align:center">Middle</td> 
        <td>Right</td> 
    </tr> 
</table>
```
 
**Output HTML** with CSS styles returned inline on the **td** elements.

```html
<table style="border:0px">
    <tr>
        <td style="background-color:green;width:166;border:0px">Cell 1</td>
        <td style="background-color:green;width:166;border:0px">Cell 2</td>
        <td style="background-color:green;width:166;border:0px">Cell 3</td>
    </tr>
    <tr>
        <td style="background-color:red;width:166;border:0px;text-align:right">Left</td>
        <td style="background-color:blue;width:166;border:0px;text-align:center">Middle</td>
        <td style="background-color:blue;width:166;border:0px">Right</td>
    </tr>
</table>
``` 


## Styles
OneNote APIs in Microsoft Graph support the following inline CSS **style** properties for elements in the page body, such as **body**, **div**, **p**, **li**, and **span**.

|Property|Example|
|:------|:------|
| background-color | `style="background-color:#66cc66"` (defaults to white)<br />Both hexadecimal format and named colors are supported. |
| color | `style="color:#ffffff"` (defaults to black) |
| font-family | `style="font-family:Courier"` (defaults to Calibri) |
| font-size | `style="font-size:10pt"` (defaults to 11pt)<br />The APIs accept font size in *pt* or *px*, but converts *px* to *pt*. Decimal values are rounded to the nearest n.0pt or n.5pt. |
| font-style | `style="font-style:italic"` (normal or italic only) |
| font-weight | `style="font-weight:bold"` (normal or bold only) |
| strike-through | `style="text-decoration:line-through"` |
| text-align | `style="text-align:center"` (for block elements only) |
| text-decoration | `style="text-decoration:underline"` (none or underline only) |
 

The following inline character styles and are also supported:

<table id="simpletable">
<tr>
<td id="simplecell">&lt;b&gt;</td>
<td id="simplecell">&lt;i&gt;</td>
<td id="simplecell">&lt;u&gt;</td>
</tr>
<tr>
<td id="simplecell">&lt;em&gt;</td>
<td id="simplecell">&lt;strong&gt;</td>
<td id="simplecell">&lt;strike&gt;</td>
</tr>
<tr>
<td id="simplecell">&lt;sup&gt;</td>
<td id="simplecell">&lt;sub&gt;</td>
<td id="simplecell">&lt;del&gt;</td>
</tr>
<tr>
<td id="simplecell">&lt;cite&gt;</td>
<td id="simplecell">&nbsp;</td>
<td id="simplecell">&nbsp;</td>
</tr>
</table>

 
## Input and output HTML example
The following image shows a simple page that was created with Microsoft Graph.

![Image of a OneNote page with study notes of content from Wikipedia](images/onenote-sample-image.png)

This is the input HTML sent in the message body to create the page.

```html
<html lang="en-US">
    <head>
        <title>Sample Study Notes</title>
        <meta name="created" content="2015-01-01T01:01"/>
    </head>
    <body>
        <h1>Aurora Borealis</h1>
        <p>Dancing lights in the sky. Also called <i>Northern Lights</i>. Caused by solar radiation.</p>
        <br />
        <p><b>Intersting facts</b></p>
        <table>
            <tr>
                <td>Neil Armstrong</td>
                <td>Commander</td>
            </tr>
            <tr>
                <td>Buzz Aldrin</td>
                <td>LM Pilot</td>
            </tr>
            <tr>
                <td>Michael Collins</td>
                <td>Command Module Pilot</td>
            </tr>
        </table>
        <img alt="Apollo 11 commemorative stamp." src="http://upload.wikimedia.org/wikipedia/commons/a/a4/First_Man_on_Moon_1969_Issue-10c.jpg"  width="400"/>
        <p>References:</p>
        <p><a href="http://en.wikipedia.org/wiki/Apollo_11">http://en.wikipedia.org/wiki/Apollo_11</a></p>
        <p><a href="http://www.nasa.gov/mission_pages/apollo/missions/apollo11.html">http://www.nasa.gov/mission_pages/apollo/missions/apollo11.html</a></p>
    </body>
</html>
``` 

This is the output HTML that Microsoft Graph returns when you [get page content](../api-reference/v1.0/api/page_get.md).

>**Note:** When you [create a page](../api-reference/v1.0/api/section_post_pages.md) or [get page metadata](../api-reference/v1.0/api/page_get.md), the API returns the *content* endpoint URL of the page in the **contentUrl** property.

```html
<html htmlns="http://www.w3.org/1999/xhtml" lang="en-US">
    <head>
        <title>Sample Study Notes</title>
    </head>
    <body data-absolute-enabled="true" style="font-family:Calibri;font-size:11pt">
        <div data-id="_default" style="position:absolute;left:48px;top:120px;width:624px">
            <h1 style="font-size:16pt;color:#1e4e79;margin-top:11pt;margin-bottom:11pt">American History 101: Moon Landing</h1>
            <p>First moon landing - July 20, 1969 with Apollo 11 (Eagle)</p>
            <br />
            <p><span style="font-weight:bold">Apollo 11 Astronauts</span></p>
            <table style="border:0px">
                <tr>
                    <td style="border:0px">Neil Armstrong</td>
                    <td style="border:0px">Commander</td>
                </tr>
                <tr>
                    <td style="border:0px">Buzz Aldrin</td>
                    <td style="border:0px">LM Pilot</td>
                </tr>
                <tr>
                    <td style="border:0px">Michael Collins</td>
                    <td style="border:0px">Command Module Pilot</td>
                </tr>
            </table>
            <br />
            <img alt="Apollo 11 commemorative stamp." width="400" height="248" src="https://graph.microsoft.com/v1.0/me/onenote/resources/0-f717b5fa5eaa454da7ecdf72a8c137fe!1-73DBAF9B7E5C4B4C!10456/$value"
                 data-src-type="image/jpeg" data-fullres-src="https://graph.microsoft.com/v1.0/me/onenote/resources/0-f717b5fa5eaa454da7ecdf72a8c137fe!1-73DBAF9B7E5C4B4C!10456/$value" data-fullres-src-type="image/jpeg" />
            <p>References:</p>
            <p><a href="http://en.wikipedia.org/wiki/Apollo_11">http://en.wikipedia.org/wiki/Apollo_11</a></p>
            <p><a href="http://www.nasa.gov/mission_pages/apollo/missions/apollo11.html">http://www.nasa.gov/mission_pages/apollo/missions/apollo11.html</a></p>
        </div>
    </body>
</html>
``` 

## See also

- [Get OneNote content and structure](../api-reference/v1.0/api/page_get.md)
- [Create OneNote pages](../api-reference/v1.0/api/section_post_pages.md)
- [Update OneNote page content](../api-reference/v1.0/api/page_update.md)
- [Add images and files](https://msdn.microsoft.com/en-us/office/office365/howto/onenote-note-tags)
