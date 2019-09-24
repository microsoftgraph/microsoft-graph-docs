---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryRoleTemplates = await graphClient.DirectoryRoleTemplates
	.Request()
	.GetAsync();

```