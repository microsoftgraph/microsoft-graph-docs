---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemEmail = new ItemEmail
{
	DisplayName = "Business Email",
	Type = EmailType.Work
};

await graphClient.Users["{user-id}"].Profile.Emails["{itemEmail-id}"]
	.Request()
	.UpdateAsync(itemEmail);

```