
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of String
var emailAddress = new String
{
	Address = "danas@contoso.onmicrosoft.com",
	Name = "Dana Swope",
};

//create String list and populate it
var ToRecipients = new List<String>();
ToRecipients.Add(new String(emailAddress));

var Comment = "Dana, hope you can make this meeting.";

await graphClient.Me.Events["{id}"]
	.forward(comment,toRecipients);
	.Request()
	.PostAsync()

```