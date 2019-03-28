
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of WorkbookTableColumn
var columns = new WorkbookTableColumn
{
	Id = 99,
	Name = "name-value",
	Index = 99,
	Values = "values-value",
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Columns
	.Request()
	.AddAsync(columns);

```