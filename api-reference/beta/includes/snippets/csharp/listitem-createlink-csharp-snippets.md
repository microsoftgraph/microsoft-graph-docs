---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "embed";

await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items["{listItem-id}"]
	.CreateLink(type,null,null,null,null)
	.Request()
	.PostAsync();

```