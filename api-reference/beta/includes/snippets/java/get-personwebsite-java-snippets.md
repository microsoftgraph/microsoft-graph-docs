---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonWebsite personWebsite = graphClient.me().profile().websites("{id}")
	.buildRequest()
	.get();

```