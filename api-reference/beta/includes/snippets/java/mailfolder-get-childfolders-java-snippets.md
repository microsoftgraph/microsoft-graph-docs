---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MailFolderCollectionPage childFolders = graphClient.me().mailFolders("AAMkAGVmMDEzM").childFolders()
	.buildRequest()
	.get();

```