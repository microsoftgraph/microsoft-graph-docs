---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookTaskFolder outlookTaskFolder = new OutlookTaskFolder();
outlookTaskFolder.name = "Cooking";

graphClient.me().outlook().taskGroups("AAMkADIyAAAhrbe-AAA=").taskFolders()
	.buildRequest()
	.post(outlookTaskFolder);

```