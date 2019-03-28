
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Json
var values = new Json
{
};

//create instance of WorkbookIcon
var icon = new WorkbookIcon
{
	Set = "set-value",
	Index = 99,
};

//create instance of String
var operator = new String
{
};

//create instance of WorkbookFilterCriteria
var criteria = new WorkbookFilterCriteria
{
	Criterion1 = "criterion1-value",
	Criterion2 = "criterion2-value",
	Color = "color-value",
	Operator = operator,
	Icon = icon,
	DynamicCriteria = "dynamicCriteria-value",
	Values = values,
	FilterOn = "filterOn-value",
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Columns["{id|name}"].Filter
	.apply(criteria);
	.Request()
	.PostAsync()

```