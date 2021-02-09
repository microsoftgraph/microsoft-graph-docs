---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkPosition workPosition = new WorkPosition();
PositionDetail detail = new PositionDetail();
CompanyDetail company = new CompanyDetail();
company.displayName = "Adventureworks Ltd.";
company.department = "Consulting";
company.officeLocation = "AW23/344";
PhysicalAddress address = new PhysicalAddress();
address.type = PhysicalAddressType.BUSINESS;
address.street = "123 Patriachy Ponds";
address.city = "Moscow";
address.countryOrRegion = "Russian Federation";
address.postalCode = "RU-34621";
company.address = address;
company.webUrl = "https://www.adventureworks.com";
detail.company = company;
detail.jobTitle = "Senior Product Branding Manager II";
detail.role = "consulting";
workPosition.detail = detail;
workPosition.isCurrent = true;

graphClient.me().profile().positions()
	.buildRequest()
	.post(workPosition);

```