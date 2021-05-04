---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookTaskCollectionPage tasks = graphClient.me().outlook().tasks()
	.buildRequest()
	.get();

```