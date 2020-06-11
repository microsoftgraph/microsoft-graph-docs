---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var educationClass = new EducationClass
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id", "https://graph.microsoft.com/beta/education/classes/11006"}
	}
};

await graphClient.Education.Schools["10002"].Classes.References
	.Request()
	.AddAsync(educationClass);

```