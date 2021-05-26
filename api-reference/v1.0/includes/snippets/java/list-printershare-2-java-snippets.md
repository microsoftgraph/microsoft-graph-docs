---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrinterShareCollectionWithReferencesPage shares = graphClient.print().printers("{printerId}").shares()
	.buildRequest()
	.get();

```