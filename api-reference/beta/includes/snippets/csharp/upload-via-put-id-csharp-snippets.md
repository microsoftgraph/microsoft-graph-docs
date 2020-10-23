---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

using var stream = new System.IO.MemoryStream(Encoding.UTF8.GetBytes("The contents of the file goes here."));

await graphClient.Me.Drive.Items["{item-id}"].Content
	.Request()
	.PutAsync<DriveItem>(stream);

```