---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var transferTarget = new InvitationParticipantInfo
{
	Identity = new IdentitySet
	{
		User = new Identity
		{
			Id = "550fae72-d251-43ec-868c-373732c2704f",
			DisplayName = "Heidi Steen"
		}
	},
	ReplacesCallId = "replacesCallId-value",
	AdditionalData = new Dictionary<string, object>()
	{
		{"endpointType", "default"}
	}
};

await graphClient.Communications.Calls["{call-id}"]
	.Transfer(transferTarget)
	.Request()
	.PostAsync();

```