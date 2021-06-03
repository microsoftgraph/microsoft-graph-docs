---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationClass educationClass = new EducationClass();
educationClass.displayName = "String";
educationClass.mailNickname = "String";
educationClass.description = "String";
IdentitySet createdBy = new IdentitySet();
educationClass.createdBy = createdBy;
educationClass.classCode = "String";
educationClass.externalName = "String";
educationClass.externalId = "String";
educationClass.externalSource = EducationExternalSource.SIS;
educationClass.externalSourceDetail = "String";
educationClass.grade = "String";
EducationTerm term = new EducationTerm();
educationClass.term = term;

graphClient.education().classes()
	.buildRequest()
	.post(educationClass);

```