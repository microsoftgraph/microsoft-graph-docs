---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemEmail = new ItemEmail
{
	Address = "address-value",
	DisplayName = "displayName-value",
	Type = EmailType.Unknown
};

await graphClient.Me.Profile.Emails["{id}"]
	.Request()
	.UpdateAsync(itemEmail);

```