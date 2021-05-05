---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tagsToAdd = new List<Microsoft.Graph.Ediscovery.Tag>()
{
	new Microsoft.Graph.Ediscovery.Tag
	{
		Id = "b4798d14-748d-468e-a1ec-96a2b1d49677"
	}
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].ReviewSets["{ediscovery.reviewSet-id}"].Queries["{ediscovery.reviewSetQuery-id}"]
	.ApplyTags(tagsToAdd,null)
	.Request()
	.PostAsync();

```