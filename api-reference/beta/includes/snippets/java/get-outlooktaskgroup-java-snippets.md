---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookTaskGroup outlookTaskGroup = graphClient.me().outlook().taskGroups("AAMkADIyAAAhrbe-AAA=")
	.buildRequest()
	.get();

```