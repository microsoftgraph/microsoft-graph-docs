---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userScopeTeamsAppInstallation = new UserScopeTeamsAppInstallation
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"teamsApp@odata.bind", "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"}
	}
};

await graphClient.Users["5b649834-7412-4cce-9e69-176e95a394f5"].Teamwork.InstalledApps
	.Request()
	.AddAsync(userScopeTeamsAppInstallation);

```