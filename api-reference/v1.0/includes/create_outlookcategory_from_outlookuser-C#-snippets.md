
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of OutlookCategory
var masterCategories = new OutlookCategory
{
	DisplayName = "Project expenses",
	Color = "preset9",
};

await graphClient.Me.Outlook.MasterCategories
	.Request()
	.AddAsync(masterCategories);

```