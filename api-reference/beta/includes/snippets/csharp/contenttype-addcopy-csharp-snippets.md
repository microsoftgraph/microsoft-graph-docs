---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contentType = "https://graph.microsoft.com/beta/sites/id/contentTypes/0x0101";

await graphClient.Sites["{site-id}"].Lists["{list-id}"].ContentTypes
	.AddCopy(contentType)
	.Request()
	.PostAsync();

```