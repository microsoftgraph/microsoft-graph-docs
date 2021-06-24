---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String address = "Sheet1!A1:D5";

Boolean hasHeaders = true;

graphClient.me().drive().items("{id}").workbook().tables()
	.add(WorkbookTableAddParameterSet
		.newBuilder()
		.withAddress(address)
		.withHasHeaders(hasHeaders)
		.build())
	.buildRequest()
	.post();

```