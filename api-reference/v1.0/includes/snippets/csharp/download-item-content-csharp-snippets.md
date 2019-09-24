---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var items = await graphClient.Me.Drive.Items["{item-id}"]
	.Request()
	.Select( e => new {
			 e.Content 
			 })
	.GetAsync();

var content = items.Content;

```