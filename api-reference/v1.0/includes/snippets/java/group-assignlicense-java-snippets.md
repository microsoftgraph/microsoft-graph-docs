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
addLicenses.skuId = "skuId-value-1";

addLicensesList.add(addLicenses);
AssignedLicense addLicenses1 = new AssignedLicense();
LinkedList<String> disabledPlansList = new LinkedList<String>();
disabledPlansList.add("a571ebcc-fqe0-4ca2-8c8c-7a284fd6c235");
addLicenses1.disabledPlans = disabledPlansList1;
addLicenses1.skuId = "skuId-value-2";

addLicensesList.add(addLicenses1);

LinkedList<String> removeLicensesList = new LinkedList<String>();

graphClient.groups("1ad75eeb-7e5a-4367-a493-9214d90d54d0")
	.assignLicense(addLicensesList,removeLicensesList)
	.buildRequest()
	.post();

```