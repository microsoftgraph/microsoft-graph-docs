---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schema = new Microsoft.Graph.ExternalConnectors.Schema
{
	BaseType = "microsoft.graph.externalItem",
	Properties = new List<Microsoft.Graph.ExternalConnectors.Property>()
	{
		new Microsoft.Graph.ExternalConnectors.Property
		{
			Name = "ticketTitle",
			Type = Microsoft.Graph.ExternalConnectors.PropertyType.String,
			IsSearchable = true,
			IsRetrievable = true,
			Labels = new List<Microsoft.Graph.ExternalConnectors.Label>()
			{
				Microsoft.Graph.ExternalConnectors.Label.Title
			}
		},
		new Microsoft.Graph.ExternalConnectors.Property
		{
			Name = "priority",
			Type = Microsoft.Graph.ExternalConnectors.PropertyType.String,
			IsQueryable = true,
			IsRetrievable = true,
			IsSearchable = false
		},
		new Microsoft.Graph.ExternalConnectors.Property
		{
			Name = "assignee",
			Type = Microsoft.Graph.ExternalConnectors.PropertyType.String,
			IsRetrievable = true
		}
	}
};

await graphClient.External.Connections["{externalConnectors.externalConnection-id}"].Schema
	.Request()
	.Header("Prefer","respond-async")
	.AddAsync(schema);

```