---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InputStream stream = graphClient.print().printers("fcb0bc53-a446-41d0-bfc3-5c56cdbb0f2a").jobs("46140").documents("bd260b1a-044e-4ca6-afa9-17d9a587d254").content()
	.buildRequest()
	.get();

```