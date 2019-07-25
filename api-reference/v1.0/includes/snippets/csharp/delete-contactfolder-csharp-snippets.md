---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.ContactFolders["{id}"]
	.Request()
	.DeleteAsync();

```