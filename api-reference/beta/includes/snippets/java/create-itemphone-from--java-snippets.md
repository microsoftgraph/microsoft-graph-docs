---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemPhone itemPhone = new ItemPhone();
itemPhone.displayName = "Car Phone";
itemPhone.number = "+7 499 342 22 13";

graphClient.me().profile().phones()
	.buildRequest()
	.post(itemPhone);

```