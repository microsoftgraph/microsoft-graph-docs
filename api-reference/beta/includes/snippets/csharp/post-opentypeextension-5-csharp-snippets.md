---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversation = new Conversation
{
	Topic = "Does anyone have a second?",
	Threads = new List<ConversationThread>()
	{
		new ConversationThread
		{
			Posts = new List<Post>()
			{
				new Post
				{
					Body = new ItemBody
					{
						ContentType = BodyType.Html,
						Content = "This is urgent!"
					},
					Extensions = new List<Extension>()
					{
						new Extension
						{
							AdditionalData = new Dictionary<string, object>()
							{
								{"@odata.type","microsoft.graph.openTypeExtension"}
							},
							ExtensionName = "Com.Contoso.Benefits",
							CompanyName = "Contoso",
							ExpirationDate = "2016-08-03T11:00:00Z",
							TopPicks = new List<String>()
							{
								"Employees only",
								"Add spouse or guest",
								"Add family"
							}
						}
					}
				}
			}
		}
	}
};

await graphClient.Groups["37df2ff0-0de0-4c33-8aee-75289364aef6"].Conversations
	.Request()
	.AddAsync(conversation);

```