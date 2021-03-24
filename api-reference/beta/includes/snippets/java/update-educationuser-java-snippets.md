---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationUser educationUser = new EducationUser();
LinkedList<RelatedContact> relatedContactsList = new LinkedList<RelatedContact>();
RelatedContact relatedContacts = new RelatedContact();
relatedContacts.displayName = "Father Time";
relatedContacts.emailAddress = "father@time.com";
relatedContacts.mobilePhone = "4251231234";
relatedContacts.relationship = ContactRelationship.GUARDIAN;
relatedContacts.accessConsent = true;
relatedContactsList.add(relatedContacts);
RelatedContact relatedContacts1 = new RelatedContact();
relatedContacts1.displayName = "Mother Nature";
relatedContacts1.emailAddress = "mother@nature.co.uk";
relatedContacts1.mobilePhone = "3251231234";
relatedContacts1.relationship = ContactRelationship.PARENT;
relatedContacts1.accessConsent = true;
relatedContactsList.add(relatedContacts1);
educationUser.relatedContacts = relatedContactsList;

graphClient.education().users("{educationUserId}")
	.buildRequest()
	.patch(educationUser);

```