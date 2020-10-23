---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const groupSetting = {
  displayName: "Group.Unified",
  templateId: "62375ab9-6b52-47ed-826b-58e47e0e304b",
  values: [
    {
      name: "EnableMIPLabels",
      value: "false"
    },
    {
      name: "CustomBlockedWordsList",
      value: ""
    },
    {
      name: "EnableMSStandardBlockedWords",
      value: "false"
    },
    {
      name: "ClassificationDescriptions",
      value: ""
    },
    {
      name: "DefaultClassification",
      value: ""
    },
    {
      name: "PrefixSuffixNamingRequirement",
      value: ""
    },
    {
      name: "AllowGuestsToBeGroupOwner",
      value: "false"
    },
    {
      name: "AllowGuestsToAccessGroups",
      value: "true"
    },
    {
      name: "GuestUsageGuidelinesUrl",
      value: ""
    },
    {
      name: "GroupCreationAllowedGroupId",
      value: ""
    },
    {
      name: "AllowToAddGuests",
      value: "true"
    },
    {
      name: "UsageGuidelinesUrl",
      value: ""
    },
    {
      name: "ClassificationList",
      value: ""
    },
    {
      name: "EnableGroupCreation",
      value: "true"
    }
  ]
};

let res = await client.api('/groupSettings/{id}')
	.update(groupSetting);

```