---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationTemplate applicationTemplate = graphClient.applicationTemplates("{id}")
	.buildRequest()
	.get();

```