---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContactFolder contactFolder = graphClient.me().contactFolders("{id}")
	.buildRequest()
	.get();

```