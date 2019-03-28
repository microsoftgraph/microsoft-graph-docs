
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of String
var parentReference = new String
{
	DriveId = "6F7D00BF-FC4D-4E62-9769-6AEA81F3A21B",
	Id = "DCD0D3AD-8989-4F23-A5A2-2C086050513F",
};

var name = "contoso plan (copy).txt";

await graphClient.Me.Drive.Items["{item-id}"]
	.copy(name,parentReference);
	.Request()
	.PostAsync()

```