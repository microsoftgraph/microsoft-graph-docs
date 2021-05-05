---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Boolean persistChanges = true;

graphClient.me().drive().items("{id}").workbook()
	.createSession(WorkbookCreateSessionParameterSet
		.newBuilder()
		.withPersistChanges(persistChanges)
		.build())
	.buildRequest()
	.post();

```