---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String type = "view";

String scope = "anonymous";

graphClient.me().drive().items("{item-id}")
	.createLink(type,scope)
	.buildRequest()
	.post();

```