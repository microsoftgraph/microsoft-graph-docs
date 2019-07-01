---
title: "Use the HttpClient to send and retrieve Graph objects"
description: "Contains an example of how to configure an HttpClient to work with Microsoft Graph."
localization_priority: Normal
author: MichaelMainer
---

# Send HTTP requests with the native HttpClient

Sometimes, the functionality that you want to use isn't a part of the client library. In this case, you can still use the client library to make your life easier. The client library can authenticate your requests and provide you the serializers. Here's an example of using the client library to create a OneNote page and deserialize the response object.

# [C#](#tab/CS)

```csharp

public async Task OneNoteAddPageHtml()
{
    // Get a page of OneNote sections.
    IOnenoteSectionsCollectionPage sectionPage = await graphClient.Me.Onenote.Sections.Request().GetAsync();

    // Get a handle to the first section.
    string sectionId = sectionPage[0].Id;

    // Get the request URL for adding a page.
    string requestUrl = graphClient.Me.Onenote.Sections[sectionId].Pages.Request().RequestUrl;

    string htmlBody = @"<!DOCTYPE html><html><head><title>OneNoteAddPageHtml created this</title></head>
                        <body>Generated with love</body></html> ";

    // Create the request message and add the content.
    HttpRequestMessage hrm = new HttpRequestMessage(HttpMethod.Post, requestUrl);
    hrm.Content = new StringContent(htmlBody, System.Text.Encoding.UTF8, "text/html");

    // Authenticate (add access token) our HttpRequestMessage
    await graphClient.AuthenticationProvider.AuthenticateRequestAsync(hrm);

    // Send the request and get the response.
    HttpResponseMessage response = await graphClient.HttpProvider.SendAsync(hrm);

    // Get the OneNote page that we created.
    if (response.IsSuccessStatusCode)
    {
        // Deserialize into OneNotePage object.
        var content = await response.Content.ReadAsStringAsync();
        OnenotePage page = graphClient.HttpProvider.Serializer.DeserializeObject<OnenotePage>(content);
    }
    else
        throw new ServiceException(
            new Error
            {
                Code = response.StatusCode.ToString(),
                Message = await response.Content.ReadAsStringAsync()
            });
}
```

# [Javascript](#tab/Javascript)

<!-- TODO -->

# [Java](#tab/Java)

<!-- TODO -->

# [Android](#tab/Android)

<!-- TODO -->

# [Objective-C](#tab/Objective-C)

<!-- TODO -->

# [PHP](#tab/PHP)

<!-- TODO -->

# [Ruby](#tab/Ruby)

<!-- TODO -->