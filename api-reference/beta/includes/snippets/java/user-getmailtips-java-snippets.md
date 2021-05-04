---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> emailAddressesList = new LinkedList<String>();
emailAddressesList.add("danas@contoso.onmicrosoft.com");
emailAddressesList.add("fannyd@contoso.onmicrosoft.com");

EnumSet<MailTipsType> mailTipsOptions = EnumSet.of(MailTipsType.AUTOMATIC_REPLIES,MailTipsType.MAILBOX_FULL_STATUS);

graphClient.me()
	.getMailTips(UserGetMailTipsParameterSet
		.newBuilder()
		.withEmailAddresses(emailAddressesList)
		.withMailTipsOptions(mailTipsOptions)
		.build())
	.buildRequest()
	.post();

```