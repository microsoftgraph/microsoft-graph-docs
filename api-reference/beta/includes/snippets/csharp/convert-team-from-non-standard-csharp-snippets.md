---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var team = new Team
{
	DisplayName = "My Class Team",
	Description = "My Class Team’s Description",
	AdditionalData = new Dictionary<string, object>()
	{
		{"template@odata.bind", "https://graph.microsoft.com/beta/teamsTemplates('educationClass')"}
	}
};

await graphClient.Teams
	.Request()
	.AddAsync(team);

```