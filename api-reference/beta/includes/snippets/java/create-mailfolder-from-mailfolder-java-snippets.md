---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MailFolder mailFolder = new MailFolder();
mailFolder.displayName = "displayName-value";
mailFolder.isHidden = true;

graphClient.me().mailFolders("{id}").childFolders()
	.buildRequest()
	.post(mailFolder);

```