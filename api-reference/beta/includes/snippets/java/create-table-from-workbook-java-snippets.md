---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String address = "A1:D8";

Boolean hasHeaders = false;

graphClient.me().drive().items("{id}").workbook().tables()
	.add(WorkbookTableAddParameterSet
		.newBuilder()
		.withAddress(address)
		.withHasHeaders(hasHeaders)
		.build())
	.buildRequest()
	.post();

```