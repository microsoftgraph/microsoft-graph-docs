---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ids = new List<String>()
{
	"84b80893874940a3-97b7-68513b600544",
	"5d6059b6368d-45f8-91e18e07d485f1d0"
};

var types = new List<String>()
{
	"user"
};

await graphClient.DirectoryObjects
	.GetByIds(ids,types)
	.Request()
	.PostAsync();

```