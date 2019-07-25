---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Extension extension = new Extension();
extension.additionalDataManager().put("@odata.type", new JsonPrimitive("#microsoft.outlookServices.openTypeExtension"));
extension.extensionName = "Com.Contoso.Estimate";
extension.companyName = "Contoso";
extension.expirationDate = "2016-07-30T11:00:00Z";
extension.DealValue = 1010100;
LinkedList<String> topPicksList = new LinkedList<String>();
topPicksList.add("Employees only");
topPicksList.add("Add spouse or guest");
topPicksList.add("Add family");
extension.topPicks = topPicksList;

graphClient.groups("37df2ff0-0de0-4c33-8aee-75289364aef6").threads("AAQkADJizZJpEWwqDHsEpV_KA==").posts("AAMkADJiUg96QZUkA-ICwMubAADDEd7UAAA=").extensions("Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Estimate")
	.buildRequest()
	.patch(extension);

```