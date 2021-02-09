---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.External.Connections["contosohr"].Groups["31bea3d537902000"]
	.Request()
	.DeleteAsync();

```