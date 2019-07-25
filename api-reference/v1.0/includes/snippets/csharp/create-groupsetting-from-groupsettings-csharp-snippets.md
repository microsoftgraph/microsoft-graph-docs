---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupSetting = new GroupSetting
{
	DisplayName = "displayName-value",
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

await graphClient.GroupSettings
	.Request()
	.AddAsync(groupSetting);

```