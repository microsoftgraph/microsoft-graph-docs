---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = new Team
{
	DisplayName = "My Sample Team",
	Description = "My Sample Team’s Description",
	AdditionalData = new Dictionary<string, object>()
	{
		{"template@odata.bind", "https://graph.microsoft.com/beta/teamsTemplates('standard')"},
		{"members@odata.bind", "[{\"@odata.type\":\"#microsoft.graph.aadUserConversationMember\",\"roles\":[\"owner\"],\"userId\":\"0040b377-61d8-43db-94f5-81374122dc7e\"}]"}
	}
};

await graphClient.Teams
	.Request()
	.AddAsync(team);

```