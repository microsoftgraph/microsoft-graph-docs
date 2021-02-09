---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemEmail itemEmail = new ItemEmail();
itemEmail.address = "Innocenty.Popov@adventureworks.com";

graphClient.me().profile().emails()
	.buildRequest()
	.post(itemEmail);

```