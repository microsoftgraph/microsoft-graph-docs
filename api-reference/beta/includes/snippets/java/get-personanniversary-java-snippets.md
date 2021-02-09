---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAnniversary personAnniversary = graphClient.me().profile().anniversaries("{id}")
	.buildRequest()
	.get();

```