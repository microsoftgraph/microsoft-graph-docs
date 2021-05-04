---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemEmail itemEmail = new ItemEmail();
itemEmail.displayName = "Business Email";
itemEmail.type = EmailType.WORK;

graphClient.users("{userId}").profile().emails("{id}")
	.buildRequest()
	.patch(itemEmail);

```