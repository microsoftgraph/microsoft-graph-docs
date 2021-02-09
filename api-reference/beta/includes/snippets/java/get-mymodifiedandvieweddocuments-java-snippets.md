---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IUsedInsightCollectionPage used = graphClient.me().insights().used()
	.buildRequest()
	.orderBy("LastUsed/LastAccessedDateTime desc")
	.get();

```