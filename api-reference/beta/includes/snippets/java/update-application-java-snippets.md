---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Application application = new Application();
application.allowPublicClient = false;
application.displayName = "New display name";

graphClient.applications("{id}")
	.buildRequest()
	.patch(application);

```