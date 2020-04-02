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
			TenantId = "72f988bf-86f1-41af-91ab-2d7cd011db47",
			DisplayName = "Heidi Steen"
		}
	},
	LanguageId = "languageId-value",
	Region = "region-value",
	ReplacesCallId = "replacesCallId-value"
};

var clientContext = "9e90d1c1-f61e-43e7-9f75-d420159aae08";

await graphClient.Communications.Calls["{id}"]
	.Transfer(transferTarget)
	.Request()
	.PostAsync();

```