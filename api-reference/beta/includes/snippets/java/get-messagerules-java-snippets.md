---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MessageRuleCollectionPage messageRules = graphClient.me().mailFolders("inbox").messageRules()
	.buildRequest()
	.get();

```