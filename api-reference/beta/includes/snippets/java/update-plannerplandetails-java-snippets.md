---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("If-Match", "W/\"JzEtVGFzayAgQEBAQEBAQEBAQEBAQEBAWCc=\""));

PlannerPlanDetails plannerPlanDetails = new PlannerPlanDetails();
PlannerUserIds sharedWith = new PlannerUserIds();
sharedWith.6463a5ce-2119-4198-9f2a-628761df4a62 = true;
sharedWith.d95e6152-f683-4d78-9ff5-67ad180fea4a = false;
plannerPlanDetails.sharedWith = sharedWith;
PlannerCategoryDescriptions categoryDescriptions = new PlannerCategoryDescriptions();
categoryDescriptions.category1 = "Indoors";
categoryDescriptions.category3 = null;
plannerPlanDetails.categoryDescriptions = categoryDescriptions;

graphClient.planner().plans("xqQg5FS2LkCp935s-FIFm2QAFkHM").details()
	.buildRequest( requestOptions )
	.patch(plannerPlanDetails);

```