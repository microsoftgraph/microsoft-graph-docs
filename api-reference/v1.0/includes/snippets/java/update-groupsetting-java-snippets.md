---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GroupSetting groupSetting = new GroupSetting();
groupSetting.displayName = "GroupSettings";
groupSetting.templateId = "08d542b9-071f-4e16-94b0-74abb372e3d9";
LinkedList<SettingValue> valuesList = new LinkedList<SettingValue>();
SettingValue values = new SettingValue();
values.name = "AllowToAddGuests";
values.value = "false";
valuesList.add(values);
groupSetting.values = valuesList;

graphClient.groups("{id}").settings("{id}")
	.buildRequest()
	.patch(groupSetting);

```