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
		{"owners@odata.bind", "[\"https://graph.microsoft.com/beta/users('userId')\"]"}
	}
};

await graphClient.Teams
	.Request()
	.AddAsync(team);

```