---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var id = "id-value";

var groupId = "groupId-value";

await graphClient.Me.Onenote.Pages["{id}"]
	.CopyToSection(id,groupId,null,null)
	.Request()
	.PostAsync();

```