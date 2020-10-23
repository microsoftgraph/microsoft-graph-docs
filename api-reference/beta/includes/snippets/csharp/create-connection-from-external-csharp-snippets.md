---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalConnection = new ExternalConnection
{
	Id = "contosohr",
	Name = "Contoso HR",
	Description = "Connection to index Contoso HR system"
};

await graphClient.External.Connections
	.Request()
	.AddAsync(externalConnection);

```