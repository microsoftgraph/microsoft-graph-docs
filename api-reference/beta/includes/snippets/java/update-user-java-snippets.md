---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = new User();
user.accountEnabled = true;
LinkedList<AssignedLicense> assignedLicensesList = new LinkedList<AssignedLicense>();
AssignedLicense assignedLicenses = new AssignedLicense();
LinkedList<String> disabledPlansList = new LinkedList<String>();
disabledPlansList.add("bea13e0c-3828-4daa-a392-28af7ff61a0f");
assignedLicenses.disabledPlans = disabledPlansList;
assignedLicenses.skuId = "skuId-value";
assignedLicensesList.add(assignedLicenses);
user.assignedLicenses = assignedLicensesList;
LinkedList<AssignedPlan> assignedPlansList = new LinkedList<AssignedPlan>();
AssignedPlan assignedPlans = new AssignedPlan();
assignedPlans.assignedDateTime = "2016-10-19T10:37:00Z";
assignedPlans.capabilityStatus = "capabilityStatus-value";
assignedPlans.service = "service-value";
assignedPlans.servicePlanId = "bea13e0c-3828-4daa-a392-28af7ff61a0f";
assignedPlansList.add(assignedPlans);
user.assignedPlans = assignedPlansList;
LinkedList<String> businessPhonesList = new LinkedList<String>();
businessPhonesList.add("businessPhones-value");
user.businessPhones = businessPhonesList;
user.city = "city-value";

graphClient.me()
	.buildRequest()
	.patch(user);

```