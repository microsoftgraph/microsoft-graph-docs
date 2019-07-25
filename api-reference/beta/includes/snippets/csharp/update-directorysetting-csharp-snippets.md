---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directorySetting = new DirectorySetting
{
	Values = new List<SettingValue>()
	{
		new SettingValue
		{
			Name = "name-value",
			Value = "value-value"
		}
	}
};

await graphClient.Settings["{id}"]
	.Request()
	.UpdateAsync(directorySetting);

```