---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = "The contents of the file goes here."

await graphClient.Me.Drive.Items["{item-id}"].Content
	.Request()
	.PutAsync(stream);

```