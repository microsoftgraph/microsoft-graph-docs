---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String destinationPrinterId = "9a3b3956-ce5b-4d06-a605-5b0bd3e9ddea";

graphClient.print().printers("d5ef6ec4-07ca-4212-baf9-d45be126bfbb").jobs("44353")
	.redirect(destinationPrinterId)
	.buildRequest()
	.post();

```