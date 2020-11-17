---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContinuousAccessEvaluationPolicy continuousAccessEvaluationPolicy = new ContinuousAccessEvaluationPolicy();
LinkedList<String> usersList = new LinkedList<String>();
usersList.add("88139f01-1f8d-4c06-ad74-a2544cee9aee");
continuousAccessEvaluationPolicy.users = usersList;
LinkedList<String> groupsList = new LinkedList<String>();
groupsList.add("9972fb3f-7a40-49f5-85f6-129d9dfbd47a");
groupsList.add("ea178055-4713-4d9a-a06c-ff17466b7e77");
continuousAccessEvaluationPolicy.groups = groupsList;

graphClient.identity().continuousAccessEvaluationPolicy()
	.buildRequest()
	.patch(continuousAccessEvaluationPolicy);

```