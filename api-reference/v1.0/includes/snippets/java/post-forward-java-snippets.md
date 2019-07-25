---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String comment = "comment-value";

LinkedList<Recipient> toRecipientsList = new LinkedList<Recipient>();
Recipient toRecipients = new Recipient();
EmailAddress emailAddress = new EmailAddress();
emailAddress.name = "name-value";
emailAddress.address = "address-value";
toRecipients.emailAddress = emailAddress;

toRecipientsList.add(toRecipients);

graphClient.groups("{id}").threads("{id}").posts("{id}")
	.forward(comment,toRecipientsList)
	.buildRequest()
	.post();

```