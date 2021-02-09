---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationalActivity educationalActivity = new EducationalActivity();
InstitutionData institution = new InstitutionData();
PhysicalAddress location = new PhysicalAddress();
location.type = PhysicalAddressType.BUSINESS;
location.postOfficeBox = null;
location.street = "12000 E Prospect Rd";
location.city = "Fort Collins";
location.state = "Colorado";
location.countryOrRegion = "USA";
location.postalCode = "80525";
institution.location = location;
educationalActivity.institution = institution;

graphClient.me().profile().educationalActivities("{id}")
	.buildRequest()
	.patch(educationalActivity);

```