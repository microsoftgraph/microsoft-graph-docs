---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

using var stream = new System.IO.MemoryStream(Encoding.UTF8.GetBytes("Binary data for the image"));

await graphClient.Me.Photo.Content
	.Request()
	.PutAsync(stream);

```