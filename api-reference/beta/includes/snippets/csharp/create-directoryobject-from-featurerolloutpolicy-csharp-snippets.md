---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = new DirectoryObject
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id"," https://graph.microsoft.com/beta/directoryObjects/2441b489-4f12-4882-b039-8f6006bd66da"}
	}
};

await graphClient.Directory.FeatureRolloutPolicies["{id}"].AppliesTo.References
	.Request()
	.AddAsync(directoryObject);

```