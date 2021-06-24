---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domainNameReferences = await graphClient.Domains["{domain-id}"].DomainNameReferences
	.Request()
	.GetAsync();

```