---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var members = await graphClient.DirectoryRoles["23f3b4b4-8a29-4420-8052-e4950273bbda"].Members
	.Request()
	.GetAsync();

```