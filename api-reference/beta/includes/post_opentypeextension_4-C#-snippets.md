
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create Extension list and populate it
var topPicks = new List<Extension>();

var expirationDate = 7/3/2015 1:04:00 PM;

var companyName = "Contoso";

var extensionName = "Com.Contoso.HR";

var @odata.type = "Microsoft.OutlookServices.OpenTypeExtension";

//create Extension list and populate it
var extensions = new List<Extension>();
extensions.Add(new Extension(@odata.type,extensionName,companyName,expirationDate,topPicks));

//create instance of ItemBody
var body = new ItemBody
{
	ContentType = "html",
	Content = "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>",
};

//create instance of Post
var post = new Post
{
	Body = body,
	Extensions = extensions,
};

await graphClient.Groups["37df2ff0-0de0-4c33-8aee-75289364aef6"].Threads["AAQkADJizZJpEWwqDHsEpV_KA=="].Posts["AAMkADJiUg96QZUkA-ICwMubAAC1heiSAAA="]
	.reply(post);
	.Request()
	.PostAsync()

```