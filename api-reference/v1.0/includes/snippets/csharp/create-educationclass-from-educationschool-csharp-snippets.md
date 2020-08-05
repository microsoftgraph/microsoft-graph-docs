---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationClass = new EducationClass
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/v1.0/education/classes/11006"}
	}
};

await graphClient.Education.Schools["{school-id}"].Classes.References
	.Request()
	.AddAsync(educationClass);

```