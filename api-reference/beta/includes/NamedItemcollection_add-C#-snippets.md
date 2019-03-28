
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var name = "test7";

var formula = "=SUM(Sheet2!$A$1+Sheet2!$A$2)";

var comment = "Comment for the named item";

await graphClient.Me.Drive.Items["{id}"].Workbook.Names
	.addFormulaLocal(name,formula,comment);
	.Request()
	.PostAsync()

```