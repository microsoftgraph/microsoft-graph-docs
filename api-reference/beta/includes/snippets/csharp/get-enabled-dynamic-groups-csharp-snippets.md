---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groups = await graphClient.Groups
	.Request()
	.Filter("membershipRuleProcessingState eq 'On'")
	.Select("id,membershipRule,membershipRuleProcessingState,membershipRuleProcessingStatus")
	.GetAsync();

```