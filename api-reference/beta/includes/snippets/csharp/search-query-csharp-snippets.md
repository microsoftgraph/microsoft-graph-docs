---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var requests = new List<SearchRequest>()
{
	new SearchRequest
	{
		EntityTypes = new List<EntityType>()
		{
			EntityType.Event
		},
		ContentSources = new List<String>()
		{
			"/external/connections/connectionfriendlyname"
		},
		Query = new SearchQuery
		{
			Query_string = new SearchQueryString
			{
				Query = "contoso product"
			}
		},
		From = 0,
		Size = 25,
		Stored_fields = new List<String>()
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