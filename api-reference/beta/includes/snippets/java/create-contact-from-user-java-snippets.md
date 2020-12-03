---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Contact contact = new Contact();
contact.givenName = "Pavel";
contact.surname = "Bansky";
LinkedList<TypedEmailAddress> emailAddressesList = new LinkedList<TypedEmailAddress>();
TypedEmailAddress emailAddresses = new TypedEmailAddress();
emailAddresses.address = "pavelb@contoso.onmicrosoft.com";
emailAddresses.name = "Pavel Bansky";
emailAddresses.type = EmailType.PERSONAL;
emailAddressesList.add(emailAddresses);
TypedEmailAddress emailAddresses1 = new TypedEmailAddress();
emailAddresses1.address = "pavelb@fabrikam.onmicrosoft.com";
emailAddresses1.name = "Pavel Bansky";
emailAddresses1.type = EmailType.OTHER;
emailAddresses1.otherLabel = "Volunteer work";
emailAddressesList.add(emailAddresses1);
contact.emailAddresses = emailAddressesList;
LinkedList<Phone> phonesList = new LinkedList<Phone>();
Phone phones = new Phone();
phones.number = "+1 732 555 0102";
phones.type = PhoneType.BUSINESS;
phonesList.add(phones);
contact.phones = phonesList;

graphClient.me().contacts()
	.buildRequest()
	.post(contact);

```