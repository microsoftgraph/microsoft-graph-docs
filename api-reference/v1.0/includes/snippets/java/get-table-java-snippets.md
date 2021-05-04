---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkbookTable workbookTable = graphClient.me().drive().items("{id}").workbook().tables("{id|name}")
	.buildRequest()
	.get();

```