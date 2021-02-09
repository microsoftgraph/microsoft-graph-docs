---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

byte[] stream = Base64.getDecoder().decode("Binary data for the image");
	graphClient.me().photo().content()
	.buildRequest()
	.put(stream);

```