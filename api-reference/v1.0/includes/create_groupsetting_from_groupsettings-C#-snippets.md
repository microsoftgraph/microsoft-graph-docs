
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var value = "value-value";

var name = "name-value";

//create SettingValue list and populate it
var values = new List<SettingValue>();
values.Add(new SettingValue(name,value));

//create instance of GroupSetting
var groupSettings = new GroupSetting
{
	DisplayName = "displayName-value",
	TemplateId = "templateId-value",
	Values = values,
};

await graphClient.GroupSettings
	.Request()
	.AddAsync(groupSettings);

```