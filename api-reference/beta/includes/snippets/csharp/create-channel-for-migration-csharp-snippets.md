---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var channel = new Channel
{
	DisplayName = "Architecture Discussion",
	Description = "This channel is where we debate all future architecture plans",
	MembershipType = ChannelMembershipType.Standard,
	CreatedDateTime = DateTimeOffset.Parse("2020-03-14T11:22:17.067Z"),
	AdditionalData = new Dictionary<string, object>()
	{
		{"@microsoft.graph.channelCreationMode", "migration"}
	}
};

await graphClient.Teams["57fb72d0-d811-46f4-8947-305e6072eaa5"].Channels
	.Request()
	.AddAsync(channel);

```