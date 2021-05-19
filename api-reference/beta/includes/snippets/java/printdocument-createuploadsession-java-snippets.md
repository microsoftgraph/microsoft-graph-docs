---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintDocumentUploadProperties properties = new PrintDocumentUploadProperties();
properties.documentName = "TestFile.pdf";
properties.contentType = "application/pdf";
properties.size = 4533322L;

graphClient.print().shares("1c879027-5120-4aaf-954a-ebfd509a3bcc").jobs("46207").documents("9001bcd9-e36a-4f51-bfc6-140c3ad7f9f7")
	.createUploadSession(PrintDocumentCreateUploadSessionParameterSet
		.newBuilder()
		.withProperties(properties)
		.build())
	.buildRequest()
	.post();

```