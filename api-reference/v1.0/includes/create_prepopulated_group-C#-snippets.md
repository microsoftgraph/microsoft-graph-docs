
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create Group list and populate it
var members@odata.bind = new List<Group>();

//create Group list and populate it
var owners@odata.bind = new List<Group>();

//create String list and populate it
var groupTypes = new List<String>();

//create instance of Group
var groups = new Group
{
	Description = "Group with designated owner and members",
	DisplayName = "Operations group",
	GroupTypes = groupTypes,
	MailEnabled = true,
	MailNickname = "operations2019",
	SecurityEnabled = false,
	Owners@odata.bind = owners@odata.bind,
	Members@odata.bind = members@odata.bind,
};

await graphClient.Groups
	.Request()
	.AddAsync(groups);

```