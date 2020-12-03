---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOutlookTaskGroupCollectionPage taskGroups = graphClient.me().outlook().taskGroups()
	.buildRequest()
	.get();

```