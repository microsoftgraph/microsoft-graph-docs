---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directorySetting = new DirectorySetting
{
	TemplateId = "templateId-value",
	Values = new List<SettingValue>()
	{
		new SettingValue
		{
			Name = "name-value",
			Value = "value-value"
		}
	}
};

await graphClient.Settings
	.Request()
	.AddAsync(directorySetting);

```