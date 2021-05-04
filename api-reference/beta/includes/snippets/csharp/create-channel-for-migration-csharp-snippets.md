---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channel = new Channel
{
	DisplayName = "Import_150958_99z",
	Description = "Import_150958_99z",
	CreatedDateTime = DateTimeOffset.Parse("2020-03-14T11:22:17.067Z"),
	AdditionalData = new Dictionary<string, object>()
	{
		{"@microsoft.graph.channelCreationMode", "migration"}
	}
};

await graphClient.Teams["{team-id}"].Channels
	.Request()
	.AddAsync(channel);

```