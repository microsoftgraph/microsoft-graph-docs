---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeSort workbookRangeSort = graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range().sort()
	.buildRequest()
	.get();

```