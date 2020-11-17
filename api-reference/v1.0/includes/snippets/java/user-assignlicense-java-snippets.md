---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<AssignedLicense> addLicensesList = new LinkedList<AssignedLicense>();
AssignedLicense addLicenses = new AssignedLicense();
LinkedList<UUID> disabledPlansList = new LinkedList<UUID>();
disabledPlansList.add(UUID.fromString("11b0131d-43c8-4bbb-b2c8-e80f9a50834a"));
addLicenses.disabledPlans = disabledPlansList;
addLicenses.skuId = UUID.fromString("guid");

addLicensesList.add(addLicenses);

LinkedList<UUID> removeLicensesList = new LinkedList<UUID>();
removeLicensesList.add(UUID.fromString("bea13e0c-3828-4daa-a392-28af7ff61a0f"));

graphClient.me()
	.assignLicense(addLicensesList,removeLicensesList)
	.buildRequest()
	.post();

```