---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookRangeBorderCollectionPage borders = graphClient.me().drive().items("{id}").workbook().names("{name}")
	.range().format().borders()
	.buildRequest()
	.get();

```