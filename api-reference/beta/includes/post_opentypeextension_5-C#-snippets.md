
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create Conversation list and populate it
var topPicks = new List<Conversation>();

var expirationDate = 8/3/2016 11:00:00 AM;

var companyName = "Contoso";

var extensionName = "Com.Contoso.Benefits";

var @odata.type = "Microsoft.OutlookServices.OpenTypeExtension";

//create Conversation list and populate it
var Extensions = new List<Conversation>();
Extensions.Add(new Conversation(@odata.type,extensionName,companyName,expirationDate,topPicks));

//create instance of Conversation
var Body = new Conversation
{
	ContentType = "HTML",
	Content = "This is urgent!",
};

//create Conversation list and populate it
var Posts = new List<Conversation>();
Posts.Add(new Conversation(Body,Extensions));

//create Conversation list and populate it
var Threads = new List<Conversation>();
Threads.Add(new Conversation(Posts));

//create instance of Conversation
var conversations = new Conversation
{
	Topic = "Does anyone have a second?",
	Threads = Threads,
};

await graphClient.Groups["37df2ff0-0de0-4c33-8aee-75289364aef6"].Conversations
	.Request()
	.AddAsync(conversations);

```