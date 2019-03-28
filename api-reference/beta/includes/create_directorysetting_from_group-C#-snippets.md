
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var value = "value-value";

var name = "name-value";

//create DirectorySetting list and populate it
var values = new List<DirectorySetting>();
values.Add(new DirectorySetting(name,value));

//create instance of DirectorySetting
var directorySetting = new DirectorySetting
{
	DisplayName = "displayName-value",
	TemplateId = "templateId-value",
	Values = values,
};

//create instance of DirectorySetting
var settings = new DirectorySetting
{
	DirectorySetting = directorySetting,
};

await graphClient.Groups["{id}"].Settings
	.Request()
	.AddAsync(settings);

```