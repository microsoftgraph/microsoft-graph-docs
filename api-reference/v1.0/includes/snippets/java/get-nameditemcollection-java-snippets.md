---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookNamedItemCollectionPage names = graphClient.me().drive().items("{id}").workbook().names()
	.buildRequest()
	.get();

```