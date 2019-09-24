---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> emailAddressesList = new LinkedList<String>();
emailAddressesList.add("danas@contoso.onmicrosoft.com");
emailAddressesList.add("fannyd@contoso.onmicrosoft.com");

MailTipsType mailTipsOptions = MailTipsType.AUTOMATIC_REPLIES;

graphClient.me()
	.getMailTips(emailAddressesList,mailTipsOptions)
	.buildRequest()
	.post();

```