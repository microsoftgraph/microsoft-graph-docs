---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalGroup = new ExternalGroup
{
	Id = "31bea3d537902000",
	DisplayName = "Contoso Marketing",
	Description = "The product marketing team"
};

await graphClient.External.Connections["contosohr"].Groups
	.Request()
	.AddAsync(externalGroup);

```