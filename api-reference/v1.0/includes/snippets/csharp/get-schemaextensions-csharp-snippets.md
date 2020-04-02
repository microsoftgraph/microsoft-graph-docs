---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schemaExtensions = await graphClient.SchemaExtensions
	.Request()
	.Filter("id eq 'graphlearn_test'")
	.GetAsync();

```