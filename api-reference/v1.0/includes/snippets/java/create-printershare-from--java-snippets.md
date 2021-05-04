---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrinterShare printerShare = new PrinterShare();
printerShare.displayName = "ShareName";
printerShare.allowAllUsers = false;
printerShare.additionalDataManager().put("printer@odata.bind", new JsonPrimitive("https://graph.microsoft.com/v1.0/print/printers/{printerId}"));

graphClient.print().shares()
	.buildRequest()
	.post(printerShare);

```