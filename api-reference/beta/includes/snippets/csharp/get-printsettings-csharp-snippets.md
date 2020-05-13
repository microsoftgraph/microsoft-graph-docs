---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var print = await graphClient.Print
	.Request()
	.Select( e => new {
			 e.Settings 
			 })
	.GetAsync();

var settings = print.Settings;

```