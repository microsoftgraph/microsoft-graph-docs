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
addLicenses.skuId = UUID.fromString("skuId-value-1");

addLicensesList.add(addLicenses);
AssignedLicense addLicenses1 = new AssignedLicense();
LinkedList<UUID> disabledPlansList1 = new LinkedList<UUID>();
disabledPlansList1.add(UUID.fromString("a571ebcc-fqe0-4ca2-8c8c-7a284fd6c235"));
addLicenses1.disabledPlans = disabledPlansList1;
addLicenses1.skuId = UUID.fromString("skuId-value-2");

addLicensesList.add(addLicenses1);

LinkedList<UUID> removeLicensesList = new LinkedList<UUID>();

graphClient.me()
	.assignLicense(addLicensesList,removeLicensesList)
	.buildRequest()
	.post();

```