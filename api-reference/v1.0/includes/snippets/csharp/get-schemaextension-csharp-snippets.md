---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schemaExtension = await graphClient.SchemaExtensions["{schemaExtension-id}"]
	.Request()
	.GetAsync();

```