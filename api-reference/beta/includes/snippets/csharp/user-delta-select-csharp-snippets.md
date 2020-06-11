---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Users
	.Delta()
	.Request()
	.Select("displayName,jobTitle,mobilePhone")
	.GetAsync();

```