---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var disableUserAccounts = true;

await graphClient.Domains["{domain-id}"]
	.ForceDelete(disableUserAccounts)
	.Request()
	.PostAsync();

```