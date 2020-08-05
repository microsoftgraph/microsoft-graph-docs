---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Users
	.Delta()
	.Request()
	.Header("Prefer","return=minimal")
	.Select("displayName,jobTitle,mobilePhone")
	.GetAsync();

```