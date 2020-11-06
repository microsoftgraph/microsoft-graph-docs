---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = new Team
{
	DisplayName = "My Sample Team",
	Description = "My Sample Team’s Description",
	Members = (ITeamMembersCollectionPage)new List<ConversationMember>()
	{
		new AadUserConversationMember
		{
			Roles = new List<String>()
			{
				"owner"
			},
			UserId = "0040b377-61d8-43db-94f5-81374122dc7e"
		}
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"template@odata.bind", "https://graph.microsoft.com/beta/teamsTemplates('standard')"}
	}
};

await graphClient.Teams
	.Request()
	.AddAsync(team);

```