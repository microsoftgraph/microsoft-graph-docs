---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sites = await graphClient.Sites
	.Request()
	.Filter("siteCollection/root ne null")
	.Select( e => new {
			 e.SiteCollection,
			 e.WebUrl 
			 })
	.GetAsync();

```