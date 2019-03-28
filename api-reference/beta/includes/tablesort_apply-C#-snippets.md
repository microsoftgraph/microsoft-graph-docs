
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of WorkbookIcon
var icon = new WorkbookIcon
{
	Set = "set-value",
	Index = 99,
};

var dataOption = "dataOption-value";

var color = "color-value";

var ascending = True;

var sortOn = "sortOn-value";

var key = 99;

//create WorkbookSortField list and populate it
var fields = new List<WorkbookSortField>();
fields.Add(new WorkbookSortField(key,sortOn,ascending,color,dataOption,icon));

var matchCase = True;

var method = "method-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Sort
	.apply(fields,matchCase,method);
	.Request()
	.PostAsync()

```