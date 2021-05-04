---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Team team = graphClient.teams("893075dd-2487-4122-925f-022c42e20265")
	.buildRequest()
	.get();

```