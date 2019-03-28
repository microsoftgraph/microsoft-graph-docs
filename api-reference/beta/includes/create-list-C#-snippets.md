
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of ListInfo
var list = new ListInfo
{
	Template = "genericList",
};

//create instance of NumberColumn
var number = new NumberColumn
{
};

var name = "PageCount";

//create instance of TextColumn
var text = new TextColumn
{
};

var nameVar = "Author";

//create ColumnDefinition list and populate it
var columns = new List<ColumnDefinition>();
columns.Add(new ColumnDefinition(nameVar,text));
columns.Add(new ColumnDefinition(name,number));

//create instance of List
var lists = new List
{
	Name = "Books",
	Columns = columns,
	List = list,
};

await graphClient.Sites["{site-id}"].Lists
	.Request()
	.AddAsync(lists);

```