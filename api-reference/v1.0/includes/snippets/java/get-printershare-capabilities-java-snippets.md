---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrinterShare printerShare = graphClient.print().shares("{printerShareId}")
	.buildRequest()
	.select("id,displayName,capabilities")
	.get();

```