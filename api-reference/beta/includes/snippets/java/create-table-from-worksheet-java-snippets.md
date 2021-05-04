---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String address = "";

Boolean hasHeaders = false;

graphClient.me().drive().items("{id}").workbook().worksheets("{id|name}").tables()
	.add(WorkbookTableAddParameterSet
		.newBuilder()
		.withAddress(address)
		.withHasHeaders(hasHeaders)
		.build())
	.buildRequest()
	.post();

```