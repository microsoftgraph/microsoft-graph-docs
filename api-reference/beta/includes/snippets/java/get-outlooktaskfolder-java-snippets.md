---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OutlookTaskFolder outlookTaskFolder = graphClient.me().outlook().taskFolders("AAMkADIyAAAAABrJAAA=")
	.buildRequest()
	.get();

```