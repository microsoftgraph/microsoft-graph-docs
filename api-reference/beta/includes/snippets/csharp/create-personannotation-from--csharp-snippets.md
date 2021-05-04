---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAnnotation = new PersonAnnotation
{
	Detail = new ItemBody
	{
		ContentType = BodyType.Text,
		Content = "I am originally from Australia, but grew up in Moscow, Russia."
	},
	DisplayName = "About Me"
};

await graphClient.Me.Profile.Notes
	.Request()
	.AddAsync(personAnnotation);

```