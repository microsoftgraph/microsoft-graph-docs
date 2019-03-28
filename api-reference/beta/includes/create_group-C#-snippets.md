
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create String list and populate it
var groupTypes = new List<String>();

//create instance of Group
var groups = new Group
{
	Description = "Self help community for golf",
	DisplayName = "Golf Assist",
	GroupTypes = groupTypes,
	MailEnabled = true,
	MailNickname = "golfassist",
	SecurityEnabled = false,
};

await graphClient.Groups
	.Request()
	.AddAsync(groups);

```