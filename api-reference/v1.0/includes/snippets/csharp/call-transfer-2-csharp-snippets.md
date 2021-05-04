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
	ReplacesCallId = "e5d39592-99bd-4db8-bca8-30fb894ec51d",
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