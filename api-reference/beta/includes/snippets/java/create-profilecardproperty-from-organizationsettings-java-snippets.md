---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ProfileCardProperty profileCardProperty = new ProfileCardProperty();
profileCardProperty.directoryPropertyName = "CustomAttribute1";
LinkedList<ProfileCardAnnotation> annotationsList = new LinkedList<ProfileCardAnnotation>();
ProfileCardAnnotation annotations = new ProfileCardAnnotation();
annotations.displayName = "Cost Center";
LinkedList<DisplayNameLocalization> localizationsList = new LinkedList<DisplayNameLocalization>();
DisplayNameLocalization localizations = new DisplayNameLocalization();
localizations.languageTag = "ru-RU";
localizations.displayName = "центр затрат";
localizationsList.add(localizations);
annotations.localizations = localizationsList;
annotationsList.add(annotations);
profileCardProperty.annotations = annotationsList;

graphClient.organization("{organizationId}").settings().profileCardProperties()
	.buildRequest()
	.post(profileCardProperty);

```