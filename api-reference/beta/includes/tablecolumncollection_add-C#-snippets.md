
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Int32
var index = new Int32
{
};

//create Int32 list and populate it
var values = new List<Int32>();
values.Add(new Int32());

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Columns
	.add(index,values,name);
	.Request()
	.PostAsync()

```