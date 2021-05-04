---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var projectParticipation = new ProjectParticipation
{
	Categories = new List<String>()
	{
		"Branding"
	},
	Client = new CompanyDetail
	{
		DisplayName = "Contoso Ltd.",
		Department = "Corporate Marketing",
		WebUrl = "https://www.contoso.com"
	},
	DisplayName = "Contoso Re-branding Project",
	Detail = new PositionDetail
	{
		Company = new CompanyDetail
		{
			DisplayName = "Adventureworks Inc.",
			Department = "Consulting",
			WebUrl = "https://adventureworks.com"
		},
		Description = "Rebranding of Contoso Ltd.",
		JobTitle = "Lead PM Rebranding",
		Role = "project management",
		Summary = "A 6 month project to help Contoso rebrand after they were divested from a parent organization."
	}
};

await graphClient.Me.Profile.Projects
	.Request()
	.AddAsync(projectParticipation);

```