---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrinterCapabilities printerCapabilities = graphClient.print().printers("{id}")
	.getCapabilities()
	.buildRequest()
	.get();

```