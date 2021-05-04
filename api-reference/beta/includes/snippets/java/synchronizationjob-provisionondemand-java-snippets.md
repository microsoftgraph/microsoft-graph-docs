---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<SynchronizationJobApplicationParameters> parametersList = new LinkedList<SynchronizationJobApplicationParameters>();
SynchronizationJobApplicationParameters parameters = new SynchronizationJobApplicationParameters();
LinkedList<SynchronizationJobSubject> subjectsList = new LinkedList<SynchronizationJobSubject>();
SynchronizationJobSubject subjects = new SynchronizationJobSubject();
subjects.objectId = "9bb0f679-a883-4a6f-8260-35b491b8b8c8";
subjects.objectTypeName = "User";
subjectsList.add(subjects);
parameters.subjects = subjectsList;
parameters.ruleId = "ea807875-5618-4f0a-9125-0b46a05298ca";

parametersList.add(parameters);

graphClient.servicePrincipals("{servicePrincipalsId}").synchronization().jobs("{synchronizationJobId}")
	.provisionOnDemand(SynchronizationJobProvisionOnDemandParameterSet
		.newBuilder()
		.withParameters(parametersList)
		.build())
	.buildRequest()
	.post();

```