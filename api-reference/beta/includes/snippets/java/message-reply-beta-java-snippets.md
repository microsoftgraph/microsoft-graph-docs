---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Message message = new Message();
LinkedList<Recipient> toRecipientsList = new LinkedList<Recipient>();
Recipient toRecipients = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.address = "samanthab@contoso.onmicrosoft.com";
emailAddress.name = "Samantha Booth";
toRecipients.emailAddress = emailAddress;
toRecipientsList.add(toRecipients);
Recipient toRecipients1 = new Recipient();
EmailAddress emailAddress1 = new EmailAddress();
emailAddress1.address = "randiw@contoso.onmicrosoft.com";
emailAddress1.name = "Randi Welch";
toRecipients1.emailAddress = emailAddress1;
toRecipientsList.add(toRecipients1);
message.toRecipients = toRecipientsList;

String comment = "Samantha, Randi, would you name the group please?";

graphClient.me().messages("AAMkADA1MTAAAAqldOAAA=")
	.reply(message,comment)
	.buildRequest()
	.post();

```