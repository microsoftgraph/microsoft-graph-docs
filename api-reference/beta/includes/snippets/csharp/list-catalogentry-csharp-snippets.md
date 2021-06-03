---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var entries = await graphClient.Admin.Windows.Updates.Catalog.Entries
	.Request()
	.GetAsync();

```