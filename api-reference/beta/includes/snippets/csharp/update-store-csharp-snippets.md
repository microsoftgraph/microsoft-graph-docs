---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var store = new Store
{
	DefaultLanguageTag = "en-US"
};

await graphClient.TermStore
	.Request()
	.UpdateAsync(store);

```