---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsAppInstallation = new TeamsAppInstallation
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"teamsApp@odata.bind", "https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"}
	}
};

await graphClient.Users["{id}"].Teamwork.InstalledApps
	.Request()
	.AddAsync(teamsAppInstallation);

```