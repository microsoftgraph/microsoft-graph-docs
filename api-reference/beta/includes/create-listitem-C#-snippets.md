
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of FieldValueSet
var fields = new FieldValueSet
{
	Title = "Widget",
	Color = "Purple",
	Weight = 32,
};

//create instance of ListItem
var items = new ListItem
{
	Fields = fields,
};

await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items
	.Request()
	.AddAsync(items);

```