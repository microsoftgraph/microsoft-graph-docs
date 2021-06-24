---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookTableRowCollectionPage rows = graphClient.me().drive().items("{id}").workbook().tables("{id|name}").rows()
	.buildRequest()
	.get();

```