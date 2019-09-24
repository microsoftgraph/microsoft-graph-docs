---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var versions = await graphClient.Me.Drive.Items["{item-id}"].Versions["{version-id}"]
	.Request()
	.Select( e => new {
			 e.Content 
			 })
	.GetAsync();

var content = versions.Content;

```