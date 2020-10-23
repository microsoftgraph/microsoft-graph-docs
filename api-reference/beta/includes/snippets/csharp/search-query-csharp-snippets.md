---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var requests = new List<SearchRequestObject>()
{
	new SearchRequestObject
	{
		EntityTypes = new List<EntityType>()
		{
			EntityType.ExternalItem
		},
		ContentSources = new List<String>()
		{
			"/external/connections/connectionfriendlyname"
		},
		Query = new SearchQuery
		{
			QueryString = "contoso product"
		},
		From = 0,
		Size = 25,
		Fields = new List<String>()
		{
			"title",
			"description"
		}
	}
};

await graphClient.Search
	.Query(requests)
	.Request()
	.PostAsync();

```