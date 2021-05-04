---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Contact contact = new Contact();
contact.givenName = "Pavel";
contact.surname = "Bansky";
LinkedList<EmailAddress> emailAddressesList = new LinkedList<EmailAddress>();
EmailAddress emailAddresses = new EmailAddress();
emailAddresses.address = "pavelb@fabrikam.onmicrosoft.com";
emailAddresses.name = "Pavel Bansky";
emailAddressesList.add(emailAddresses);
contact.emailAddresses = emailAddressesList;
LinkedList<String> businessPhonesList = new LinkedList<String>();
businessPhonesList.add("+1 732 555 0102");
contact.businessPhones = businessPhonesList;

graphClient.me().contacts()
	.buildRequest()
	.post(contact);

```