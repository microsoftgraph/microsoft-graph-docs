---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Groups
	.Delta()
	.Request()
	.Select( e => new {
			 e.DisplayName,
			 e.Description,
			 e.MailNickname 
			 })
	.GetAsync();

```