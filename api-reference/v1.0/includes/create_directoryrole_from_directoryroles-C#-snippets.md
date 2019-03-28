
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of DirectoryRole
var directoryRoles = new DirectoryRole
{
	RoleTemplateId = "roleTemplateId-value",
};

await graphClient.DirectoryRoles
	.Request()
	.AddAsync(directoryRoles);

```