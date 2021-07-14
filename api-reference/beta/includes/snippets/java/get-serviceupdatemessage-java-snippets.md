---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ServiceUpdateMessage serviceUpdateMessage = graphClient.admin().serviceAnnouncement().messages("MC172851")
	.buildRequest()
	.get();

```