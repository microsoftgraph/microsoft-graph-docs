
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of EmailAddress
var emailAddress = new EmailAddress
{
	Name = "Alex Wilbur",
	Address = "AlexW@contoso.onmicrosoft.com",
};

//create Recipient list and populate it
var forwardTo = new List<Recipient>();
forwardTo.Add(new Recipient(emailAddress));

//create instance of MessageRuleActions
var actions = new MessageRuleActions
{
	ForwardTo = forwardTo,
	StopProcessingRules = true,
};

//create String list and populate it
var senderContains = new List<String>();

//create instance of MessageRulePredicates
var conditions = new MessageRulePredicates
{
	SenderContains = senderContains,
};

//create instance of MessageRule
var messageRules = new MessageRule
{
	DisplayName = "From partner",
	Sequence = 2,
	IsEnabled = true,
	Conditions = conditions,
	Actions = actions,
};

await graphClient.Me.MailFolders["inbox"].MessageRules
	.Request()
	.AddAsync(messageRules);

```