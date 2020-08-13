---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookOperation workbookOperation = graphClient.me().drive().items("{drive-item-id}").workbook().operations("{operation-id}")
	.buildRequest()
	.get();

```