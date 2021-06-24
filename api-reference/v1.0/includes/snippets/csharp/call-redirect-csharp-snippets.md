---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var targets = new List<InvitationParticipantInfo>()
{
	new InvitationParticipantInfo
	{
		Identity = new IdentitySet
		{
			AdditionalData = new Dictionary<string, object>()
			{
				{"phone", "{\"@odata.type\":\"#microsoft.graph.identity\",\"id\":\"+12345678901\"}"}
			}
		}
	}
};

var callbackUri = "https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039";

await graphClient.Communications.Calls["{call-id}"]
	.Redirect(targets,null,callbackUri)
	.Request()
	.PostAsync();

```