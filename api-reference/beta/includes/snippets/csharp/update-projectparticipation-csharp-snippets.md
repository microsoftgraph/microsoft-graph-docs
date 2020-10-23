---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var projectParticipation = new ProjectParticipation
{
	AllowedAudiences = AllowedAudiences.Organization,
	Client = new CompanyDetail
	{
		Department = "Corporate Marketing",
		WebUrl = "https://www.contoso.com"
	}
};

await graphClient.Me.Profile.Projects["{id}"]
	.Request()
	.UpdateAsync(projectParticipation);

```