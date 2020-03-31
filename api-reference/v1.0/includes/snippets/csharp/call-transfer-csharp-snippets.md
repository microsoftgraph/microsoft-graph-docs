---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var transferTarget = new InvitationParticipantInfo
{
	EndpointType = "default",
	Identity = new IdentitySet
	{
		User = new Identity
		{
			Id = "550fae72-d251-43ec-868c-373732c2704f",
			DisplayName = "Heidi Steen"
		}
	},
	ReplacesCallId = "replacesCallId-value"
};

var clientContext = "9e90d1c1-f61e-43e7-9f75-d420159aae08";

await graphClient.Communications.Calls["{id}"]
	.Transfer(transferTarget)
	.Request()
	.PostAsync();

```