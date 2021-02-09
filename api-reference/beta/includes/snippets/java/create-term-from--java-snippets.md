---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Term term = new Term();
LinkedList<LocalizedLabel> labelsList = new LinkedList<LocalizedLabel>();
LocalizedLabel labels = new LocalizedLabel();
labels.languageTag = "en-US";
labels.name = "Car";
labels.isDefault = true;
labelsList.add(labels);
term.labels = labelsList;

graphClient.termStore().sets("{setId}").terms()
	.buildRequest()
	.post(term);

```