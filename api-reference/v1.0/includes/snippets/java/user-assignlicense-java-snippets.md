---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<AssignedLicense> addLicensesList = new LinkedList<AssignedLicense>();
AssignedLicense addLicenses = new AssignedLicense();
LinkedList<String> disabledPlansList = new LinkedList<String>();
disabledPlansList.add("11b0131d-43c8-4bbb-b2c8-e80f9a50834a");
addLicenses.disabledPlans = disabledPlansList;
addLicenses.skuId = "guid";

addLicensesList.add(addLicenses);

LinkedList<String> removeLicensesList = new LinkedList<String>();
removeLicensesList.add("bea13e0c-3828-4daa-a392-28af7ff61a0f");

graphClient.me()
	.assignLicense(addLicensesList,removeLicensesList)
	.buildRequest()
	.post();

```