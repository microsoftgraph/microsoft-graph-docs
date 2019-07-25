---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSetting groupSetting = new GroupSetting();
groupSetting.displayName = "displayName-value";
groupSetting.templateId = "templateId-value";
LinkedList<SettingValue> valuesList = new LinkedList<SettingValue>();
SettingValue values = new SettingValue();
values.name = "CustomBlockedWordsList";
values.value = "";
valuesList.add(values);
SettingValue values1 = new SettingValue();
values1.name = "EnableMSStandardBlockedWords";
values1.value = "False";
valuesList.add(values1);
SettingValue values2 = new SettingValue();
values2.name = "ClassificationDescriptions";
values2.value = "";
valuesList.add(values2);
SettingValue values3 = new SettingValue();
values3.name = "DefaultClassification";
values3.value = "";
valuesList.add(values3);
SettingValue values4 = new SettingValue();
values4.name = "PrefixSuffixNamingRequirement";
values4.value = "";
valuesList.add(values4);
SettingValue values5 = new SettingValue();
values5.name = "AllowGuestsToBeGroupOwner";
values5.value = "False";
valuesList.add(values5);
SettingValue values6 = new SettingValue();
values6.name = "AllowGuestsToAccessGroups";
values6.value = "True";
valuesList.add(values6);
SettingValue values7 = new SettingValue();
values7.name = "GuestUsageGuidelinesUrl";
values7.value = "";
valuesList.add(values7);
SettingValue values8 = new SettingValue();
values8.name = "GroupCreationAllowedGroupId";
values8.value = "62e90394-69f5-4237-9190-012177145e10";
valuesList.add(values8);
SettingValue values9 = new SettingValue();
values9.name = "AllowToAddGuests";
values9.value = "True";
valuesList.add(values9);
SettingValue values10 = new SettingValue();
values10.name = "UsageGuidelinesUrl";
values10.value = "";
valuesList.add(values10);
SettingValue values11 = new SettingValue();
values11.name = "ClassificationList";
values11.value = "";
valuesList.add(values11);
SettingValue values12 = new SettingValue();
values12.name = "EnableGroupCreation";
values12.value = "True";
valuesList.add(values12);
groupSetting.values = valuesList;

graphClient.groupSettings("{id}")
	.buildRequest()
	.patch(groupSetting);

```