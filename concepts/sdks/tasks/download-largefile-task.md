---
title: "Download a large file from OneDrive"
description: "Describes how you download a large file from OneDrive."
localization_priority: Normal
author: MichaelMainer
---

# Download a large file from OneDrive

# [C#](#tab/CS)

```csharp

const long DefaultChunkSize = 1024 * 1024;
long ChunkSize = DefaultChunkSize;
long offset = 0;         // cursor location for updating the Range header.
byte[] bytesInStream;    // bytes in range returned by chunk download.

// Get the collection of drive items. We'll only use one.
IDriveItemChildrenCollectionPage driveItems = await graphClient.Me.Drive.Root.Children.Request().GetAsync();

foreach (var item in driveItems)
{
    // Let's download the first file we get in the response.
    if (item.File != null)
    {
        // We'll use the file metadata to determine size and the name of the downloaded file
        // and to get the download URL.
        var driveItemInfo = await graphClient.Me.Drive.Items[item.Id].Request().GetAsync();

        // Get the download URL. This URL is preauthenticated and has a short TTL.
        object downloadUrl;
        driveItemInfo.AdditionalData.TryGetValue("@microsoft.graph.downloadUrl", out downloadUrl);

        // Get the number of bytes to download. calculate the number of chunks and determine
        // the last chunk size.
        long size = (long)driveItemInfo.Size;
        int numberOfChunks = Convert.ToInt32(size / DefaultChunkSize);
        // We are incrementing the offset cursor after writing the response stream to a file after each chunk.
        // Subtracting one since the size is 1 based, and the range is 0 base. There should be a better way to do
        // this but I haven't spent the time on that.
        int lastChunkSize = Convert.ToInt32(size % DefaultChunkSize) - numberOfChunks - 1;
        if (lastChunkSize > 0) { numberOfChunks++; }

        // Create a file stream to contain the downloaded file.
        using (FileStream fileStream = System.IO.File.Create((@"C:\Temp\" + driveItemInfo.Name)))
        {
            for (int i = 0; i < numberOfChunks; i++)
            {
                // Setup the last chunk to request. This will be called at the end of this loop.
                if (i == numberOfChunks - 1)
                {
                    ChunkSize = lastChunkSize;
                }

                // Create the request message with the download URL and Range header.
                HttpRequestMessage req = new HttpRequestMessage(HttpMethod.Get, (string)downloadUrl);
                req.Headers.Range = new System.Net.Http.Headers.RangeHeaderValue(offset, ChunkSize + offset);

                // We can use the the client library to send this although it does add an authentication cost.
                // HttpResponseMessage response = await graphClient.HttpProvider.SendAsync(req);
                // Since the download URL is preauthenticated, and we aren't deserializing objects,
                // we'd be better to make the request with HttpClient.
                var client = new HttpClient();
                HttpResponseMessage response = await client.SendAsync(req);

                using (Stream responseStream = await response.Content.ReadAsStreamAsync())
                {
                    bytesInStream = new byte[ChunkSize];
                    int read;
                    do
                    {
                        read = responseStream.Read(bytesInStream, 0, (int)bytesInStream.Length);
                        if (read > 0)
                            fileStream.Write(bytesInStream, 0, bytesInStream.Length);
                    }
                    while (read > 0);
                }
                offset += ChunkSize + 1; // Move the offset cursor to the next chunk.
            }
        }
        return;
    }
}
```

# [Javascript](#tab/Javascript)

<!-- TODO -->

# [Android](#tab/Android)

<!-- TODO -->

# [Objective-C](#tab/Objective-C)

<!-- TODO -->

# [PHP](#tab/PHP)

<!-- TODO -->

# [Ruby](#tab/Ruby)

<!-- TODO -->