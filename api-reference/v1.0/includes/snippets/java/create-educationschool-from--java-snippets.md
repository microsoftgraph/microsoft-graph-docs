---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationSchool educationSchool = new EducationSchool();
educationSchool.displayName = "String";
educationSchool.description = "String";
educationSchool.externalSource = EducationExternalSource.SIS;
educationSchool.externalSourceDetail = "String";
educationSchool.principalEmail = "String";
educationSchool.principalName = "String";
educationSchool.externalPrincipalId = "String";
educationSchool.lowestGrade = "String";
educationSchool.highestGrade = "String";
educationSchool.schoolNumber = "String";
educationSchool.externalId = "String";
educationSchool.phone = "String";
educationSchool.fax = "String";
IdentitySet createdBy = new IdentitySet();
educationSchool.createdBy = createdBy;
PhysicalAddress address = new PhysicalAddress();
educationSchool.address = address;

graphClient.education().schools()
	.buildRequest()
	.post(educationSchool);

```