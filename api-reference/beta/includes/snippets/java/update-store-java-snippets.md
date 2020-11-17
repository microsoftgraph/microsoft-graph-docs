---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Store store = new Store();
store.defaultLanguageTag = "en-US";

graphClient.termStore()
	.buildRequest()
	.patch(store);

```