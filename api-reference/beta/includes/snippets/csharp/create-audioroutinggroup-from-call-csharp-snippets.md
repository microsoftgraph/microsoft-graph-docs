---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var audioRoutingGroup = new AudioRoutingGroup
{
	Id = "oneToOne",
	RoutingMode = RoutingMode.OneToOne,
	Sources = new List<String>()
	{
		"632899f8-2ea1-4604-8413-27bd2892079f"
	},
	Receivers = new List<String>()
	{
		"550fae72-d251-43ec-868c-373732c2704f"
	}
};

await graphClient.Communications.Calls["{id}"].AudioRoutingGroups
	.Request()
	.AddAsync(audioRoutingGroup);

```