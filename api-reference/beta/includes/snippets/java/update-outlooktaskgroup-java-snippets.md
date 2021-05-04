---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookTaskGroup outlookTaskGroup = new OutlookTaskGroup();
outlookTaskGroup.name = "Personal Tasks";

graphClient.me().outlook().taskGroups("AAMkADIyAAAhrbe-AAA=")
	.buildRequest()
	.patch(outlookTaskGroup);

```