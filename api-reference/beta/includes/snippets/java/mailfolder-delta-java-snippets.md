---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IMailFolderDeltaCollectionPage delta = graphClient.me().mailFolders()
	.delta()
	.buildRequest()
	.get();

```