---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Printer printer = graphClient.print().printers("{id}")
	.buildRequest()
	.get();

```