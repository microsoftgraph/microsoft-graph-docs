---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IMailFolderCollectionPage childFolders = graphClient.me().mailFolders("searchfolders").childFolders()
	.buildRequest()
	.get();

```