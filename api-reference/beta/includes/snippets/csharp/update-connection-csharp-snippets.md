---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalConnection = new ExternalConnection
{
	Name = "Contoso HR Service Tickets",
	Description = "Connection to index HR service tickets"
};

await graphClient.Connections["contosohr"]
	.Request()
	.UpdateAsync(externalConnection);

```