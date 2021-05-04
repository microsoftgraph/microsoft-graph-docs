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
		User = new Identity
		{
			Id = "550fae72-d251-43ec-868c-373732c2704f",
			DisplayName = "Heidi Steen",
			AdditionalData = new Dictionary<string, object>()
			{
				{"tenantId", "72f988bf-86f1-41af-91ab-2d7cd011db47"}
			}
		}
	},
	ReplacesCallId = "e5d39592-99bd-4db8-bca8-30fb894ec51d",
	AdditionalData = new Dictionary<string, object>()
	{
		{"languageId", "en-us"},
		{"region", "amer"}
	}
};

await graphClient.Communications.Calls["{call-id}"]
	.Transfer(transferTarget)
	.Request()
	.PostAsync();

```