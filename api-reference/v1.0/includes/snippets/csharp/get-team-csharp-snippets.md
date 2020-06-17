---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamsAppInstallation = new TeamsAppInstallation
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"}
	}
};

await graphClient.Teams["{id}"].InstalledApps
	.Request()
	.AddAsync(teamsAppInstallation);

```