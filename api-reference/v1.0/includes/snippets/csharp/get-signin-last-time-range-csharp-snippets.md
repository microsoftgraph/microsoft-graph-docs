---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var queryOptions = new List<QueryOption>()
{
	new QueryOption("filter", "signInActivity/lastSignInDateTime le 2019-06-01T00:00:00Z")
};

var users = await graphClient.Users
	.Request( queryOptions )
	.Filter("signInActivity/lastSignInDateTime le 2019-06-01T00:00:00Z")
	.GetAsync();

```