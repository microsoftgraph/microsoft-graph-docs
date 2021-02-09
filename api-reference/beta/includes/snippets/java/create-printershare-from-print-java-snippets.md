---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrinterShare printerShare = new PrinterShare();
printerShare.name = "name-value";
printerShare.additionalDataManager().put("printer@odata.bind", new JsonPrimitive("https://graph.microsoft.com/beta/print/printers/{id}"));

graphClient.print().shares()
	.buildRequest()
	.post(printerShare);

```