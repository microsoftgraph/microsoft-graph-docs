---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var print = await graphClient.Print
	.Request()
	.Select("Settings")
	.GetAsync();

var settings = print.Settings;

```