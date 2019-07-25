---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Contact contact = graphClient.me().contacts("AAMkAGI2THk0AAA=")
	.buildRequest()
	.get();

```