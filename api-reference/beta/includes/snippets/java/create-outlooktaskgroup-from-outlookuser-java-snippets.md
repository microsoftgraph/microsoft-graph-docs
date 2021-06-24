---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookTaskGroup outlookTaskGroup = new OutlookTaskGroup();
outlookTaskGroup.name = "Leisure tasks";

graphClient.me().outlook().taskGroups()
	.buildRequest()
	.post(outlookTaskGroup);

```