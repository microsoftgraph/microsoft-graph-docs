---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var transferTarget = new InvitationParticipantInfo
{
	EndpointType = EndpointType.Default,
	Identity = new IdentitySet
	{
		AdditionalData = new Dictionary<string, object>()
		{
			{"phone", "{\"@odata.type\":\"#microsoft.graph.identity\",\"id\":\"+12345678901\"}"}
		}
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"languageId", "languageId-value"},
		{"region", "region-value"}
	}
};

await graphClient.Communications.Calls["{call-id}"]
	.Transfer(transferTarget)
	.Request()
	.PostAsync();

```