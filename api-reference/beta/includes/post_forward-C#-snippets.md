
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var comment = "comment-value";

//create instance of String
var emailAddress = new String
{
	Name = "name-value",
	Address = "address-value",
};

//create String list and populate it
var toRecipients = new List<String>();
toRecipients.Add(new String(emailAddress));

await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"]
	.forward(comment,toRecipients);
	.Request()
	.PostAsync()

```