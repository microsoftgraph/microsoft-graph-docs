---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationUser = new EducationUser
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/beta/education/users/14008"}
	}
};

await graphClient.Education.Schools["{id}"].Users.References
	.Request()
	.AddAsync(educationUser);

```