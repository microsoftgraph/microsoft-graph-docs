---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Groups
	.Delta()
	.Request()
	.Select("displayName,description,mailNickname")
	.GetAsync();

```