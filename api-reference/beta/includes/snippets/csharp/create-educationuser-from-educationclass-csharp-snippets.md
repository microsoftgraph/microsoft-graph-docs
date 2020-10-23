---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = new EducationUser
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/beta/education/users/14011"}
	}
};

await graphClient.Education.Classes["11017"].Teachers.References
	.Request()
	.AddAsync(educationUser);

```