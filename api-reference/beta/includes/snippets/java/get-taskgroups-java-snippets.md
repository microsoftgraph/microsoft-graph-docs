---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookTaskGroupCollectionPage taskGroups = graphClient.me().outlook().taskGroups()
	.buildRequest()
	.get();

```