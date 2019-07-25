---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var messageRule = new MessageRule
{
	DisplayName = "From partner",
	Sequence = 2,
	IsEnabled = true,
	Conditions = new MessageRulePredicates
	{
		SenderContains = new List<String>()
		{
			"adele"
		}
	},
	Actions = new MessageRuleActions
	{
		ForwardTo = new List<Recipient>()
		{
			new Recipient
			{
				EmailAddress = new EmailAddress
				{
					Name = "Alex Wilbur",
					Address = "AlexW@contoso.onmicrosoft.com"
				}
			}
		},
		StopProcessingRules = true
	}
};

await graphClient.Me.MailFolders["inbox"].MessageRules
	.Request()
	.AddAsync(messageRule);

```