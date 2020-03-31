---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Contacts
	.Delta()
	.Request()
	.Select( e => new {
			 e.DisplayName,
			 e.JobTitle,
			 e.Mail 
			 })
	.GetAsync();

```