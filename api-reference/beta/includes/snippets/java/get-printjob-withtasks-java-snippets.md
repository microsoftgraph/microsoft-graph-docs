---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintJob printJob = graphClient.print().printers("c05f3726-0d4b-4aa1-8fe9-2eb981bb26fb").jobs("5182")
	.buildRequest()
	.expand("tasks")
	.get();

```