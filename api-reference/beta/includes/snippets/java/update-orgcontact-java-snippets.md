---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

OrgContact orgContact = new OrgContact();
LinkedList<String> businessPhonesList = new LinkedList<String>();
businessPhonesList.add("businessPhones-value");
orgContact.businessPhones = businessPhonesList;
orgContact.city = "city-value";
orgContact.companyName = "companyName-value";
orgContact.country = "country-value";
orgContact.department = "department-value";
orgContact.displayName = "displayName-value";

graphClient.contacts("{id}")
	.buildRequest()
	.patch(orgContact);

```