---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = new EducationUser
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/v1.0/education/users/14011"}
	}
};

await graphClient.Education.Classes["{class-id}"].Teachers.References
	.Request()
	.AddAsync(educationUser);

```