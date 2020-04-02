---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var users = await graphClient.Users
	.Request()
	.Select( e => new {
			 e.DisplayName,
			 e.GivenName,
			 e.PostalCode 
			 })
	.GetAsync();

```