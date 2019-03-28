
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of DirectoryObject
var directoryObject = new DirectoryObject
{
};

//create instance of DirectoryObject
var owners = new DirectoryObject
{
	DirectoryObject = directoryObject,
};

await graphClient.Applications["{id}"].Owners
	.Request()
	.AddAsync(owners);

```