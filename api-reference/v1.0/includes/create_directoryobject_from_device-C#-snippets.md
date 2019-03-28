
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of DirectoryObject
var directoryObject = new DirectoryObject
{
};

//create instance of DirectoryObject
var registeredUsers = new DirectoryObject
{
	DirectoryObject = directoryObject,
};

await graphClient.Devices["{id}"].RegisteredUsers
	.Request()
	.AddAsync(registeredUsers);

```