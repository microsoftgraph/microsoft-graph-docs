---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MailFolder mailFolder = new MailFolder();
mailFolder.displayName = "displayName-value";

graphClient.me().mailFolders("AAMkAGVmMDEzM")
	.buildRequest()
	.patch(mailFolder);

```