---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookFormatProtection workbookFormatProtection = graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range().format().protection()
	.buildRequest()
	.get();

```