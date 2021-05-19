---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintDocumentUploadProperties properties = new PrintDocumentUploadProperties();
properties.documentName = "TestFile.pdf";
properties.contentType = "application/pdf";
properties.size = 4533322L;

graphClient.print().printers("{printerId}").jobs("{printJobId}").documents("{printDocumentId}")
	.createUploadSession(PrintDocumentCreateUploadSessionParameterSet
		.newBuilder()
		.withProperties(properties)
		.build())
	.buildRequest()
	.post();

```