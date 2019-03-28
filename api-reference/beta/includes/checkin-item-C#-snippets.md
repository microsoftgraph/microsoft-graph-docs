
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var comment = "Updating the latest guidelines";

await graphClient.Drives["{drive-id}"].Items["{item-id}"]
	.checkin(checkInAs,comment);
	.Request()
	.PostAsync()

```