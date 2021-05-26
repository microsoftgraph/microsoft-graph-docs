---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupCollectionPage groups = graphClient.groups()
	.buildRequest()
	.filter("membershipRuleProcessingState eq 'On'")
	.select("id,membershipRule,membershipRuleProcessingState,membershipRuleProcessingStatus")
	.get();

```