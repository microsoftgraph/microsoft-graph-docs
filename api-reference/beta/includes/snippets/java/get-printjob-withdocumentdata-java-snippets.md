---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintJob printJob = graphClient.print().printers("86b6d420-7e6b-4797-a05c-af4e56cd81bd").jobs("31216")
	.buildRequest()
	.expand("documents")
	.get();

```