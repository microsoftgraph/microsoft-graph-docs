---
title: "Upload large files using the Microsoft Graph SDKs"
description: "Provides guidance for uploading large files using the Microsoft Graph SDKs."
localization_priority: Normal
author: DarrelMiller
---

# Upload large files using the Microsoft Graph SDKs

A number of entities in Microsoft Graph support [resumable file uploads](/graph/api/driveitem-createuploadsession?view=graph-rest-1.0&preserve-view=true) to make it easier to upload large files. Instead of trying to upload the entire file in a single request, the file is sliced into smaller pieces and a request is used to upload a single slice. In order to simplify this process, the Microsoft Graph SDKs implement a large file upload task that manages the uploading of the slices.

## Upload large file to OneDrive

## [C#](#tab/csharp)

```csharp
using (var fileStream = System.IO.File.OpenRead(filePath))
{
    // Use properties to specify the conflict behavior
    // in this case, replace
    var uploadProps = new DriveItemUploadableProperties
    {
        ODataType = null,
        AdditionalData = new Dictionary<string, object>
        {
            { "@microsoft.graph.conflictBehavior", "replace" }
        }
    };

    // Create the upload session
    // itemPath does not need to be a path to an existing item
    var uploadSession = await graphClient.Me.Drive.Root
        .ItemWithPath(itemPath)
        .CreateUploadSession(uploadProps)
        .Request()
        .PostAsync();

    // Max slice size must be a multiple of 320 KiB
    int maxSliceSize = 320 * 1024;
    var fileUploadTask =
        new LargeFileUploadTask<DriveItem>(uploadSession, fileStream, maxSliceSize);

    // Create a callback that is invoked after each slice is uploaded
    IProgress<long> progress = new Progress<long>(prog => {
        Console.WriteLine($"Uploaded {prog} bytes of {fileStream.Length} bytes");
    });

    try
    {
        // Upload the file
        var uploadResult = await fileUploadTask.UploadAsync(progress);

        if (uploadResult.UploadSucceeded)
        {
            // The ItemResponse object in the result represents the
            // created item.
            Console.WriteLine($"Upload complete, item ID: {uploadResult.ItemResponse.Id}");
        }
        else
        {
            Console.WriteLine("Upload failed");
        }
    }
    catch (ServiceException ex)
    {
        Console.WriteLine($"Error uploading: {ex.ToString()}");
    }
}
```

## [TypeScript](#tab/typescript)

```typescript
const options: OneDriveLargeFileUploadOptions = {
  // Relative path from root to destination folder
  path: itemPath,
  // file is a File object, typically from an <input type="file"/>
  fileName: file.name,
  rangeSize: 1024 * 1024,
  uploadEventHandlers: {
    // Called as each "slice" of the file is uploaded
    progress: (range, e) => {
      console.log(`Uploaded ${range?.minValue} to ${range?.maxValue}`);
    }
  }
};

try {
  // Create FileUpload object
  const fileObject = new FileUpload(file, file.name, file.size);
  // Create a OneDrive upload task
  const uploadTask = await OneDriveLargeFileUploadTask
    .createTaskWithFileObject(client, fileObject, options);

  // Do the upload
  const uploadResult: UploadResult = await uploadTask.upload();

  // The response body will be of the corresponding type of the
  // item being uploaded. For OneDrive, this is a DriveItem
  const driveItem = uploadResult.responseBody as DriveItem;
  console.log(`Uploaded file with ID: ${driveItem.id}`);
  return `Uploaded file with ID: ${driveItem.id}`;
} catch (err) {
  console.log(`Error uploading file: ${JSON.stringify(err)}`);
  return `Error uploading file: ${JSON.stringify(err)}`;
}
```

As alternatives to using a `File` object to create a `FileUpload`, you can use a `ReadStream` object to create a `StreamUpload`.

```typescript
const fileName = "<FILE_NAME>";
const stats = fs.statSync(`./test/sample_files/${fileName}`);
const totalsize = stats.size;
const readStream = fs.createReadStream(`./test/sample_files/${fileName}`);
const fileObject = new StreamUpload(readStream, fileName, totalsize);
```

You can also create a custom implementation of the `FileObject` interface.

```typescript
interface FileObject<T> {
  content: T;
  name: string;
  size: number;
  sliceFile(range: Range): Promise<ArrayBuffer | Blob | Buffer>;
}
```

## [Java](#tab/java)

```java
// Get an input stream for the file
File file = new File(localFilePath);
InputStream fileStream = new FileInputStream(file);
long streamSize = file.length();

// Create a callback used by the upload provider
IProgressCallback callback = new IProgressCallback() {
    @Override
    // Called after each slice of the file is uploaded
    public void progress(final long current, final long max) {
        System.out.println(
            String.format("Uploaded %d bytes of %d total bytes", current, max)
        );
    }
};

DriveItemCreateUploadSessionParameterSet uploadParams =
    DriveItemCreateUploadSessionParameterSet.newBuilder()
        .withItem(new DriveItemUploadableProperties()).build();

// Create an upload session
UploadSession uploadSession = graphClient
    .me()
    .drive()
    .root()
    // itemPath like "/Folder/file.txt"
    // does not need to be a path to an existing item
    .itemWithPath(itemPath)
    .createUploadSession(uploadParams)
    .buildRequest()
    .post();

LargeFileUploadTask<DriveItem> largeFileUploadTask =
    new LargeFileUploadTask<DriveItem>
        (uploadSession, graphClient, fileStream, streamSize, DriveItem.class);

// Do the upload
largeFileUploadTask.upload(0, null, callback);
```

---

## Resuming a file upload

The Microsoft Graph SDKs support [resuming in-progress uploads](/graph/api/driveitem-createuploadsession?view=graph-rest-1.0&preserve-view=true#resuming-an-in-progress-upload). If your application encounters a connection interruption or a 5.x.x HTTP status during upload, you can resume the upload.

<!-- markdownlint-disable MD024 -->
### [C#](#tab/csharp)

```csharp
fileUploadTask.ResumeAsync(progress);
```

### [TypeScript](#tab/typescript)

```typescript
const resumedFile: DriveItem = await uploadTask.resume() as DriveItem;
```

### [Java](#tab/java)

> [!NOTE]
> The Java SDK does not currently support resuming in-progress downloads.

---

## Upload large attachment to Outlook message

### [C#](#tab/csharp)

```csharp
// TODO
```

### [TypeScript](#tab/typescript)

```typescript
// Create an attachment item payload
// file is a File object
const payload = {
  AttachmentItem: {
    attachmentType: 'file',
    name: file.name,
    size: file.size
  }
};

const options: LargeFileUploadTaskOptions = {
  rangeSize: 1024 * 1024,
  // Called as each "slice" of the file is uploaded
  uploadEventHandlers: {
    progress: (range, e) => {
      console.log(`Uploaded ${range?.minValue} to ${range?.maxValue}`);
    }
  }
};

try {
  // Create a draft message
  const draftMsg: Message = await client.api('/me/messages')
    .post({
      subject: 'Large file attachment'
    });

  // Create upload session using draft message's ID
  const uploadSession = await LargeFileUploadTask
    .createUploadSession(client,
      `/me/messages/${draftMsg.id}/attachments/createUploadSession`,
      payload);

  // Create file upload
  // Note you can use StreamUpload or custom implementation of FileObject instead
  const fileObject = new FileUpload(file, file.name, file.size);

  // Create upload task
  const uploadTask = new LargeFileUploadTask(client, fileObject, uploadSession, options);

  // Upload the file
  const uploadResult: UploadResult = await uploadTask.upload();
  return 'Attachment uploaded';
} catch (err) {
  console.log(`Error uploading file: ${JSON.stringify(err)}`);
  return `Error uploading file: ${JSON.stringify(err)}`;
}
```

### [Java](#tab/java)

```java
// TODO
```

---

<!-- markdownlint-enable MD024 -->
