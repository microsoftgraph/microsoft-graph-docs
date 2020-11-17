---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Profile profile = graphClient.me().profile()
	.buildRequest()
	.expand("skills($select=displayName)")
	.get();

```