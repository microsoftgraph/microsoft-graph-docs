---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.directoryroles("{id}").members("{id}").reference()
	.buildRequest()
	.delete();

```