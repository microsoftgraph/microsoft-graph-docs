---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAward personAward = graphClient.me().profile().awards("{id}")
	.buildRequest()
	.get();

```