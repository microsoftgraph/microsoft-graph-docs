---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var post = new Post
{
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "<html><body><div><div><div><div>When and where? </div></div></div></div></body></html>"
	},
	Extensions = new PostExtensionsCollectionPage()
	{
		new OpenTypeExtension
		{
			ExtensionName = "Com.Contoso.HR",
			AdditionalData = new Dictionary<string, object>()
			{
				{"companyName", "Contoso"},
				{"expirationDate", "2015-07-03T13:04:00Z"},
				{"topPicks", "[\"Employees only\",\"Add spouse or guest\",\"Add family\"]"}
			}
		}
	}
};

await graphClient.Groups["{group-id}"].Threads["{conversationThread-id}"].Posts["{post-id}"]
	.Reply(post)
	.Request()
	.PostAsync();

```