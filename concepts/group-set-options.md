---
title: "Set Microsoft 365 group behaviors and provisioning options"
description: "Using the group resource in Microsoft Graph, you can set specific group behaviors and resources to provision when creating a Microsoft 365 group."
author: "Jordanndahl"
localization_priority: Priority
---

# Set Microsoft 365 group behaviors and provisioning options (preview)

Using the [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) resource in Microsoft Graph, you can set specific group behaviors and resources to provision when creating a Microsoft 365 group. Depending on the resource, some can also be provisioned on group update.

### Configuring and provisioning groups

The **group** resource exposes two properties, **resourceBehaviorOptions** and **resourceProvisioningOptions**, to customize the behaviors and resources to be provisioned upon group creation. 

> [!NOTE]
> The **resourceBehaviorOptions** and **resourceProvisioningOptions** properties are currently available in only the Microsoft Graph beta endpoint. Do not use them in production apps, as they are subject to change without notice.

**resourceBehaviorOptions** is a string collection that specifies group behaviors for a Microsoft 365 group. These behaviors can be set only on [group creation](/graph/api/group-post-groups?view=graph-rest-beta&preserve-view=true) (`POST`).

| Supported values for resourceBehaviorOptions   |Description|Default if not set|
|:---------------|:--------|:-----------|
| AllowOnlyMembersToPost|Only group *members* can post conversations to the group.|Any user in the organization can post conversations to the group.|
| HideGroupInOutlook|This group is hidden in Outlook experiences.|All groups are visible and discoverable in Outlook experiences.|
| SubscribeNewGroupMembers|Group members are subscribed to receive group conversations. |Group members do not receive group conversations.|
| WelcomeEmailDisabled|Welcome emails are not sent to new members.|A welcome email is sent to a new member on joining the group.|

**resourceProvisioningOptions** is a string collection that specifies group resources to be provisioned as part of creating the Microsoft 365 group, that are not normally part of default group creation.

| Supported values for resourceProvisioningOptions   |Description| Default if not set |
|:---------------|:--------|:------------|
| Teams|Provision this group as a team in Microsoft Teams. Additionally, this value can be added to the **resourceProvisioningOptions** string collection on [group update](/graph/api/group-update?view=graph-rest-beta&preserve-view=true) through a `PATCH` operation, in order to convert an existing Microsoft 365 group to a team.| The group is a regular Microsoft 365 group without Teams capabilities.|


## See also

- [Overview of Microsoft 365 groups in Microsoft Graph](office365-groups-concept-overview.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
