---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookNamedItem workbookNamedItem = graphClient.me().drive().items("{id}").workbook().names("{name}")
	.buildRequest()
	.get();

```