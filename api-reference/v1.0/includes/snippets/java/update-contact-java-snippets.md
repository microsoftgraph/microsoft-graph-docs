---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Contact contact = new Contact();
PhysicalAddress homeAddress = new PhysicalAddress();
homeAddress.street = "123 Some street";
homeAddress.city = "Seattle";
homeAddress.state = "WA";
homeAddress.postalCode = "98121";
contact.homeAddress = homeAddress;
contact.birthday = CalendarSerializer.deserialize("1974-07-22");

graphClient.me().contacts("{id}")
	.buildRequest()
	.patch(contact);

```