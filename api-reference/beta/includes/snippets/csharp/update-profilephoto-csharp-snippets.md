---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = "Binary data for the image"

await graphClient.Me.Photo.Content
	.Request()
	.PutAsync(stream);

```