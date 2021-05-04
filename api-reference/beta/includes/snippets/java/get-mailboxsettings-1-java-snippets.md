---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MailboxSettings mailboxSettings = graphClient.customRequest("/me/mailboxSettings", MailboxSettings.class)
	.buildRequest()
	.get();

```