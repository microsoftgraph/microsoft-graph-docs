---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printer = await graphClient.Print.Printers["{printer-id}"]
	.Request()
	.Select("id,displayName,capabilities")
	.GetAsync();

```