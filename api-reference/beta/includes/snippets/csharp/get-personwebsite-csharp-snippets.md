---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personWebsite = await graphClient.Me.Profile.Websites["{personWebsite-id}"]
	.Request()
	.GetAsync();

```