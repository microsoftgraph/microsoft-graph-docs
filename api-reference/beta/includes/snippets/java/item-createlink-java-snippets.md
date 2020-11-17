---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String type = "view";

String password = "ThisIsMyPrivatePassword";

String scope = "anonymous";

graphClient.me().drive().items("{itemId}")
	.createLink(type,scope,null,password,null,null)
	.buildRequest()
	.post();

```