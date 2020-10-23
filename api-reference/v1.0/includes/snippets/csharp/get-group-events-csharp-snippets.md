---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var events = await graphClient.Groups["02bd9fd6-8f93-4758-87c3-1fb73740a315"].Events
	.Request()
	.GetAsync();

```