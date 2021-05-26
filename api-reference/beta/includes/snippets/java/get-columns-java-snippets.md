---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookTableColumnCollectionPage columns = graphClient.me().drive().items("{id}").workbook().tables("{id|name}").columns()
	.buildRequest()
	.skip(5)
	.top(5)
	.get();

```