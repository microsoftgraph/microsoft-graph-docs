---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSetting groupSetting = new GroupSetting();
groupSetting.displayName = "Group.Unified";
groupSetting.templateId = "62375ab9-6b52-47ed-826b-58e47e0e304b";
LinkedList<SettingValue> valuesList = new LinkedList<SettingValue>();
SettingValue values = new SettingValue();
values.name = "EnableMIPLabels";
values.value = "false";
valuesList.add(values);
SettingValue values1 = new SettingValue();
values1.name = "CustomBlockedWordsList";
values1.value = "";
valuesList.add(values1);
SettingValue values2 = new SettingValue();
values2.name = "EnableMSStandardBlockedWords";
values2.value = "false";
valuesList.add(values2);
SettingValue values3 = new SettingValue();
values3.name = "ClassificationDescriptions";
values3.value = "";
valuesList.add(values3);
SettingValue values4 = new SettingValue();
values4.name = "DefaultClassification";
values4.value = "";
valuesList.add(values4);
SettingValue values5 = new SettingValue();
values5.name = "PrefixSuffixNamingRequirement";
values5.value = "";
valuesList.add(values5);
SettingValue values6 = new SettingValue();
values6.name = "AllowGuestsToBeGroupOwner";
values6.value = "false";
valuesList.add(values6);
SettingValue values7 = new SettingValue();
values7.name = "AllowGuestsToAccessGroups";
values7.value = "true";
valuesList.add(values7);
SettingValue values8 = new SettingValue();
values8.name = "GuestUsageGuidelinesUrl";
values8.value = "";
valuesList.add(values8);
SettingValue values9 = new SettingValue();
values9.name = "GroupCreationAllowedGroupId";
values9.value = "";
valuesList.add(values9);
SettingValue values10 = new SettingValue();
values10.name = "AllowToAddGuests";
values10.value = "true";
valuesList.add(values10);
SettingValue values11 = new SettingValue();
values11.name = "UsageGuidelinesUrl";
values11.value = "";
valuesList.add(values11);
SettingValue values12 = new SettingValue();
values12.name = "ClassificationList";
values12.value = "";
valuesList.add(values12);
SettingValue values13 = new SettingValue();
values13.name = "EnableGroupCreation";
values13.value = "true";
valuesList.add(values13);
groupSetting.values = valuesList;

graphClient.groupSettings("{id}")
	.buildRequest()
	.patch(groupSetting);

```