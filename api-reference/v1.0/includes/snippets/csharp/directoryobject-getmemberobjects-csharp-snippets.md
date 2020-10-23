---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var securityEnabledOnly = true;

await graphClient.DirectoryObjects["{object-id}"]
	.GetMemberObjects(securityEnabledOnly)
	.Request()
	.PostAsync();

```