
# Add images, videos, and files to OneNote pages

*__Applies to:__ Consumer notebooks on OneDrive | Enterprise notebooks on Office 365*

You can use **img**, **object**, and **iframe** elements to add images, videos, and files to a OneNote page when you're [creating](onenote-create-page.md) or [updating](onenote_update_page.md) the page. 

- Use **img** to render an image on the page.
- Use **iframe** to embed a video on the page.
- Use **object** to add a file attachment to the page.


<a name="images"></a>
## Adding images

Images can be added by URL reference or by sending raw data. Microsoft Graph supports the following methods of adding images, logos, and photos to OneNote pages. 

[Add a public image from the web](#add-a-public-image-from-the-web)  
Use `img` with `src="http://image-url"` and specify the URL of a publicly accessible image. Renders the image on the OneNote page.</p>
[Add an image using binary data](#add-an-image-using-binary-data)</p>
Use `img` with `src="name:image-block-name"` and send the image file in a data part of a multipart request. Renders the image on the OneNote page.</p>
[Add a webpage snapshot](#add-a-webpage-snapshot)</p>
Use `img` with `data-render-src="http://webpage-url"` and specify the URL of a webpage. Renders a snapshot of the whole webpage on the OneNote page.</p>
[Add an image rendered from HTML](#add-an-image-rendered-from-html)</p>
Use `img` with `data-render-src="name:html-block-name"` and send HTML in the data part of a multipart request. Renders the HTML as an image on the OneNote page.</p>
[Add images of PDF file contents](#add-images-of-pdf-file-contents)</p>
Use `<img data-render-src="name:part-name" />` and send the PDF file in the data part of a multipart request. Renders each PDF page as a separate image on the OneNote page.</p>
[Add an image file as a file attachment](#add-an-image-file-as-an-attachment)</p>
Use `object` with `data="name:file-block-name" data-attachment="file-name.file-ext" type="media-type"` and send an image file in the data part of a multipart request. Adds a file attachment to the OneNote page and displays a file icon.</p>

> **Note:**
> To get images on a OneNote page, first send a [GET request for the page content](onenote-get-content.md#page-html-content). This returns the URLs to the image resources on the page. Then you separate [GET requests to the image resources](onenote-get-content.md#image-or-other-file-resource).


**Image attributes** 

An **img** element can optionally include **alt**, **height**, and **width** attributes, and the style attributes **max-width** and **max-height**.

**Image media types**

Microsoft Graph supports TIFF, PNG, GIF, JPEG, and BMP image types. To capture an image that uses a different format that you don't want to convert, [send the binary data](#add-an-image-using-binary-data) in a multipart request. You don't need to use Base64 or otherwise encode the binary data that you send.

> **Note:**
> The API detects the original input image type, and returns it as the **data-fullres-src-type** attribute in the [output HTML](onenote_input_output_html.md#output-html). The API also returns the image type of the optimized image in **data-src-type**.
 
See [limitations](#size-limitations-for-post-pages-requests) that apply when creating pages that contain media.


<a name="image-img-url-src"></a>
### Add a public image from the web

In the input HTML of your request, include  `<img src="http://..." />` and specify the URL of a publicly accessible image for the **src** attribute.

```
Content-Type: multipart/form-data; boundary=MyAppPartBoundary
Authorization: Bearer {access-token}

--MyAppPartBoundary
Content-Disposition: form-data; name="Presentation"
Content-Type: text/html

<!DOCTYPE html>
<html>
  <head>
    <title>A page with an image: Public URL</title>
    <meta name="created" value="2015-11-11T12:45:00.000-8:00"/>
  </head>
  <body>
    <p>This page displays an image from the web.</p>
    <img src="http://..." width="300"/>
  </body>
</html>

--MyAppPartBoundary--  
```

<a name="image-img-binary-src"></a>
### Add an image using binary data

In the input HTML of your request's **Presentation** part, include  `<img src="name:part-name" />`, where *part-name* is the unique identifier for the data part in your [multipart request](onenote-create-page.md#example-request) 
 that contains the binary image data. Just send the binary data, don't use Base64 or otherwise encode it.

```
Content-Type: multipart/form-data; boundary=MyAppPartBoundary
Authorization: Bearer {access-token}

--MyAppPartBoundary
Content-Disposition: form-data; name="Presentation"
Content-Type: text/html

<!DOCTYPE html>
<html>
  <head>
    <title>A page with an image: Image binary data</title>
    <meta name="created" value="2015-11-11T12:45:00.000-8:00"/>
  </head>
  <body>
    <p>This page displays the uploaded image.</p>
    <img src="name:image-block-name" alt="a cool image" width="500"/>
  </body>
</html>

--MyAppPartBoundary
Content-Disposition: form-data; name="MyAppPictureId"
Content-Type: image/jpeg

... image binary data ...

--MyAppPartBoundary--  
```


<a name="image-img-url-data-render-src"></a>
### Add a webpage snapshot

You can use Microsoft Graph to snapshot entire webpages and insert them into new pages. This method is useful to archive webpages or capture complex webpages that have features that OneNote doesn't support (like some CSS).  

In the input HTML of your request, include  `<img src="http://..." />` and specify the URL of the webpage you want to insert for the **src** attribute.

```
Content-Type: multipart/form-data; boundary=MyAppPartBoundary
Authorization: Bearer {access-token}

--MyAppPartBoundary
Content-Disposition: form-data; name="Presentation"
Content-Type: text/html

<!DOCTYPE html>
<html>
  <head>
    <title>A page with an image: Webpage capture</title>
    <meta name="created" value="2015-11-11T12:45:00.000-8:00"/>
  </head>
  <body>
    <p>This page displays an image of the webpage.</p>
    <img data-render-src="http://www.onenote.com" width="200"/>
  </body>
</html>

--MyAppPartBoundary--  
```


<a name="image-img-binary-data-render-src"></a>
### Add an image rendered from HTML
When you pass the HTML as a data-block, be sure there is no active content that would require user credentials, or a pre-loaded browser plug-in. The engine that Microsoft Graph uses to render the HTML page into an image has no ability to log in a user, and doesn't include plug-ins like Adobe Flash, Apple QuickTime, and so-on. That also means that dynamically-loaded content, like might come with an AJAX script, won't appear if getting the data requires user login credentials or cookies.

In the input HTML of your request's **Presentation** part, include  `<img data-render-src="name:part-name" />`, where *part-name* is the unique identifier for the data part in your [multipart request](onenote-create-page.md#example-request) 
 that contains the HTML.

```
Content-Type: multipart/form-data; boundary=MyAppPartBoundary
Authorization: Bearer {access-token}

--MyAppPartBoundary
Content-Disposition: form-data; name="Presentation"
Content-Type: text/html

<!DOCTYPE html>
<html>
  <head>
    <title>A page with an image: HTML block</title>
    <meta name="created" value="2015-11-11T12:45:00.000-8:00"/>
  </head>
  <body>
    <p>This page displays the block of HTML as an image.</p>
    <img data-render-src="name:html-block-name" alt="a cool image" width="500"/>
  </body>
</html>

--MyAppPartBoundary
Content-Disposition: form-data; name="html-block-name"
Content-Type: text/html

<html>
<body>
<h1>This HTML will render as an image</h1>
<p><b>Don't</b> try to embed another <i>data-render-src</i> type-image inside the HTML part--
it won't work. Instead, use URL-based real images like this:</p>
<img src="http://cdn.onenote.net/1664161560_Images/OneNote.ico" />
</body>
</html>

--MyAppPartBoundary--  
```


<a name="image-object"></a>
### Add an image file as an attachment

In the input HTML of your request's **Presentation** part, include  `<object data="name:part-name" data-attachment="file-name.file-ext" type="media-type/media-subtype" />`, where *part-name* is the unique identifier for the data part in your [multipart request](onenote-create-page.md#example-request) 
 that contains the binary image data. Just send the binary data, don't use Base64 or otherwise encode it.

```
Content-Type: multipart/form-data; boundary=MyAppPartBoundary
Authorization: Bearer {access-token}

--MyAppPartBoundary
Content-Disposition: form-data; name="Presentation"
Content-Type: text/html

<!DOCTYPE html>
<html>
  <head>
    <title>A page with an image: Binary image data as file attachment</title>
    <meta name="created" value="2015-11-11T12:45:00.000-8:00"/>
  </head>
  <body>
    <p>This page contains the image as a file attachment.</p>
    <object data-attachment="image-file.jpg" data="name:image-block-name" type="image/jpeg" />
  </body>
</html>

--MyAppPartBoundary
Content-Disposition: form-data; name="logo1-file"
Content-Type: image/jpeg

... binary file data ...

--MyAppPartBoundary--
```

Learn more about [file media types](#file-media-types).



<a name="videos"></a>
## Adding videos

You can embed videos in OneNote pages using `<iframe data-original-src="http://..." />` in the input HTML. 

**Supported video sites**

- Dailymotion
- Office Mix
- Sway
- Sketchfab
- TED
- YouTube
- Vimeo
- Vine

**iframe attributes**

**data-original-src**</p>
Required. The URL of the video.<br />Example: `data-original-src="https://www.youtube.com/watch?v=3Ztr44aKmQ8"`</p>
**width**</p>
Optional. The width of the iframe that contains the video. Default is 480.<br />Example: `width="300"`</p>
**height**</p>
Optional. The height of the iframe that contains the video. Default is 360.<br />Example: `height="300"`</p>

**Example**

In the input HTML of your request, include `<iframe data-original-src="http://..." />` and specify the URL of the video for the **data-original-src** attribute.

```
Content-Type: multipart/form-data; boundary=MyAppPartBoundary
Authorization: Bearer {access-token}

--MyAppPartBoundary
Content-Disposition: form-data; name="Presentation"
Content-Type: text/html

<!DOCTYPE html>
<html>
    <head>
        <title>A page with an embedded video</title>
    </head>
    <body>
        <iframe data-original-src="https://www.youtube.com/watch?v=3Ztr44aKmQ8" width="340" height="280"/>
    </body>
</html>

--MyAppPartBoundary--
```


<a name="files"></a>
## Adding files

You can add file attachments to OneNote pages using an **object** element in the input HTML. If you're adding a PDF file, you can use an **img** element to render the PDF pages as images. 

[Add a file attachment](#add-a-file-attachment)</p>
Use `<object .../>` and send the file in a data part of a multipart request. Adds a file attachment that displays a file icon on the OneNote page.</p>
[Add images of PDF file contents](#add-images-of-pdf-file-contents)</p>
Use `<img data-render-src="name:part-name" />` and send a PDF file in the data part of a multipart request. Renders each PDF page as a separate image on the OneNote page.</p>

**File attributes**

The **object** element requires the following attributes.

**data-attachment**</p>
The file name and extension to display on the OneNote page.<br />Example: `data-attachment="filename.docx"`</p>
**data**</p>
The name of the body part in the multipart request that contains the binary file data. Microsoft Graph does not support passing a URL reference here.<br />Example: `data="name:part-name"`</p>
**type**</p>
The file media type, used to determine the file icon to use on the page, and which application starts when the user activates the file on the device from OneNote.<br />Example: `type="application/pdf"`</p>


<a name="file-media-types"></a>

### File media types  
Microsoft Graph uses predefined file-types icon for attached files, or a generic icon when the API doesn't recognize the file type. The following table shows some common file types that are recognized by the API.

- application/pdf  
- application/vnd.openxmlformats-officedocument.wordprocessingml.document  
- application/vnd.openxmlformats-officedocument.presentationml.presentation
- application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
- image/png
- image/jpeg
- image/gif
- audio/wav
- video/mp4
- application/msword
- application/mspowerpoint
- application/excel

See [limitations](#size-limitations-for-post-pages-requests) that apply when creating pages that contain media.


<a name="file-object"></a>
### Add a file attachment

In the input HTML of your request's **Presentation** part, include  `<object data="name:part-name" data-attachment="file-name.file-ext" type="media-type/media-subtype" />`, where *part-name* is the unique identifier for the data part in your [multipart request](onenote-create-page.md#example-request) 
 that contains the binary file data. Just send the binary data, don't use Base64 or otherwise encode it.

```
Content-Type: multipart/form-data; boundary=MyAppPartBoundary
Authorization: Bearer {access-token}

--MyAppPartBoundary
Content-Disposition: form-data; name="Presentation"
Content-Type: text/html

<!DOCTYPE html>
<html>
  <head>
    <title>A page with an image file attachment</title>
  </head>
  <body>
    <p>This is an image file attachment.</p>
    <object data-attachment="Logo.jpg" data="name:logo1-file" type="image/jpeg" />
  </body>
</html>

--MyAppPartBoundary
Content-Disposition: form-data; name="logo1-file"
Content-Type: image/jpeg

... binary file data ...

--MyAppPartBoundary--
```


<a name="file-binary-data-render-src"></a>
### Add images of PDF file contents

In the input HTML of your request's **Presentation** part, include  `<img data-render-src="name:part-name" ... />`, where *part-name* is the unique identifier for the data part in your [multipart request](onenote-create-page.md#example-request) 
 that contains the binary file data. Just send the binary data, don't use Base64 or otherwise encode it.

```
Content-Type: multipart/form-data; boundary=MyAppPartBoundary
Authorization: Bearer {access-token}

--MyAppPartBoundary
Content-Disposition: form-data; name="Presentation"
Content-Type: text/html

<!DOCTYPE html>
<html>
  <head>
    <title>A page with images of the pages of a PDF file</title>
  </head>
  <body>
    <p>The pages of this PDF file render as images.</p>
    <img data-render-src="name:file-part" alt="PDF file as images" width="500"/>
  </body>
</html>

--MyAppPartBoundary
Content-Disposition: form-data; name="file-part"
Content-Type: application/pdf

... binary file data ...

--MyAppPartBoundary--  
```


<a name="size-limits"></a>
## Size limitations for POST pages requests

When sending image and file data, be aware of these limitations: <!--TODO: check these-->

- The total POST size limit is ~70 MB, including images, files, and other data. The actual limit is affected by downstream encoding, so there's no fixed byte-count limit. Requests that exceed the limit may produce unreliable results.

- The limit for each data part is 25 MB, including the part headers. Data parts that exceed the limit are rejected by Microsoft Graph. 

- The maximum number of images per page is 150. When using the `src="http://..."` attribute, the API ignores **img** tags beyond the limit.

- The maximum number of data parts is 6 per POST, including the required **Presentation** part.

- Each request can contain up to five **img** elements that use **data-render-src** and one **object** elements that uses **data-render-src**. Additional image and file references are ignored.

- The maximum number of images in a single POST is 30, no matter which method you use to send them to the API. Additional images are ignored. If you want to capture a webpage that contains a lot of images, consider [capturing the whole page as a snapshot](#add-a-webpage-snapshot).


## When to use HTML versus *data-render-src* 
When trying to decide between putting HTML directly onto the OneNote page instead of using the **data-render-src** attribute, consider the following:

- Complex HTML is probably best sent to the rendering engine via **data-render-src**, rather than attempting to modify the HTML to fit into what Microsoft Graph can accept. This is also true when your HTML includes tags that aren't supported supported.

- Accurate page rendering to preserve the layout and look of the page is probably best done with the rendering engine via **data-render-src**.

- Directly-editable text is often best done with inserting the HTML directly onto the page. The rendered images are scanned by an optical character recognition (OCR) system, but it's just not the same.

- Snapshot-in-time for historical or archival purposes is usually best done with the data-render-src method.

- Marking-up a web page design for revisions is one place the **data-render-src** truly shines. Using OneNote's inking capabilities, you can draw on the image to indicate changes or call out important areas. Having the web page as an image makes that a lot easier.

- Very large images, or images in formats that OneNote doesn't directly accept can sometimes be thumbnailed and converted with the **data-render-src** attribure more easily than by doing it in your own code. Even if the image is also available onlinet, embedding the data in your POST can sometimes make the captured page available to OneNote user sooner, by reducing the total number of round-trips needed to build the OneNote page.

Sometimes, the best way to determine which method will work best for your users is to try it both ways as you develop your app.


<a name="permissions"></a>
## Permissions

To create or update OneNote pages, you'll need to request appropriate permissions. Choose the lowest level that your app needs to do its work.

**Permissions for _POST pages_**

- Notes.Create
- Notes.ReadWrite
- Notes.ReadWrite.All 

**Permissions for _PATCH pages_**

- Notes.ReadWrite
- Notes.ReadWrite.All

For more information about permission scopes and how they work, see [OneNote permission scopes](permissions_reference.md#notes-permissions).


<a name="see-also"></a>
## Additional resources

- [Integrate with OneNote](integrate_with_onenote.md)
- [OneNote Developer Blog](http://go.microsoft.com/fwlink/?LinkID=390183)
- [OneNote development questions on Stack Overflow](http://go.microsoft.com/fwlink/?LinkID=390182)
- [OneNote GitHub repos](http://go.microsoft.com/fwlink/?LinkID=390178)  
