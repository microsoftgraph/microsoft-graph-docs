---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var schema = new Schema
{
	BaseType = "microsoft.graph.externalItem",
	Properties = new List<Property>()
	{
		new Property
		{
			Name = "ticketTitle",
			Type = PropertyType.String,
			IsSearchable = true,
			IsRetrievable = true,
			Labels = new List<Label>()
			{
				Label.Title
			}
		},
		new Property
		{
			Name = "priority",
			Type = PropertyType.String,
			IsQueryable = true,
			IsRetrievable = true,
			IsSearchable = false
		},
		new Property
		{
			Name = "assignee",
			Type = PropertyType.String,
			IsRetrievable = true
		}
	}
};

await graphClient.External.Connections["contosohr"].Schema
	.Request()
	.Header("Prefer","respond-async")
	.AddAsync(schema);

```