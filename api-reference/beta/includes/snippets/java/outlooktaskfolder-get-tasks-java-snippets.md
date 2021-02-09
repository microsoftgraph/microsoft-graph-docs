---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IOutlookTaskCollectionPage tasks = graphClient.me().outlook().taskFolders("AAMkADIyAAAhrbPWAAA=").tasks()
	.buildRequest()
	.get();

```