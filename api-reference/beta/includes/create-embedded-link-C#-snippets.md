
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var type = "embed";

await graphClient.Me.Drive.Items["{item-id}"]
	.createLink(type,scope,expirationDateTime,password,message,recipients);
	.Request()
	.PostAsync()

```