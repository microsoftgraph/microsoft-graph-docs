---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemPatent = new ItemPatent
{
	Number = "USPTO-3954432633",
	WebUrl = "https://patents.gov/3954432633"
};

await graphClient.Users["{user-id}"].Profile.Patents["{itemPatent-id}"]
	.Request()
	.UpdateAsync(itemPatent);

```