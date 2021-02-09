---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonName personName = graphClient.me().profile().names("{id}")
	.buildRequest()
	.get();

```