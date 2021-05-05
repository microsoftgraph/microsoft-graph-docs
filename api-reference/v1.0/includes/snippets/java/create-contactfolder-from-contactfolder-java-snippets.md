---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContactFolder contactFolder = new ContactFolder();
contactFolder.displayName = "Family";

graphClient.me().contactFolders("{id}").childFolders()
	.buildRequest()
	.post(contactFolder);

```