---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directorySetting = new DirectorySetting
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"directorySetting", "{\"displayName\":\"displayName-value\",\"templateId\":\"templateId-value\",\"values\":[{\"name\":\"name-value\",\"value\":\"value-value\"}]}"}
	}
};

await graphClient.Groups["{id}"].Settings
	.Request()
	.AddAsync(directorySetting);

```