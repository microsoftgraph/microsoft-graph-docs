---
title: "Deployments in the Windows Update for Business deployment service"
description: "Deployments are the foundation of the Windows Update for Business deployment service. Through a deployment you can target a set of devices to receive specific content from Windows Update, such as a software update."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: conceptualPageType
---

# Deployments in the Windows Update for Business deployment service

Deployments are the foundation of the Windows Update for Business deployment service. Through a deployment you can target a set of devices to receive specific content from Windows Update, such as a [software update](windowsupdates-software-updates.md).

Deployments have the following key aspects:

1. Content: The update available to deploy from the catalog. This is represented by the **content** property of the [deployableContent](/graph/api/resources/windowsupdates-deployablecontent) type.
2. Audience: The devices to receive content. This is an **audience** relationship of the [deploymentAudience](/graph/api/resources/windowsupdates-deploymentaudience) type.
3. Settings: The settings governing how and when content should be delivered to devices. This is represented by the **settings** property of the [deploymentSettings](/graph/api/resources/windowsupdates-deploymentsettings) type.
4. State: The current state of the deployment within its lifecycle. This is represented by the **state** property of the [deploymentState](/graph/api/resources/windowsupdates-deploymentstate) type.

## Create a deployment with content and an audience


Because content and audience are key to the definition of a deployment, you are required to assign both at the time of creation. While content and audience assignments cannot be changed later, device membership within an audience can.

To learn more about creating a deployment, see [Deploy a feature update](windowsupdates-deploy-update.md) and [Deploy an expedited security update](windowsupdates-deploy-expedited-update.md).

## Configure settings

### Rollout

[Rollout settings](/graph/api/resources/windowsupdates-rolloutsettings) govern how the content is deployed over time to devices in the deployment audience. You can configure rollout settings for deployments of feature updates.

To learn more about rollout settings, see [Schedule a deployment](windowsupdates-schedule-deployment.md).

### Monitoring

You can use [monitoring settings](/graph/api/resources/windowsupdates-monitoringsettings) to configure alerts and automated actions to take based on update signals from devices. Monitoring settings can be configured for deployments of feature updates.


To learn more about monitoring settings, see [Manage monitoring rules](windowsupdates-manage-monitoring-rules.md).

### User experience

For deployments of expedited quality updates, [user experience settings](/graph/api/resources/windowsupdates-userexperiencesettings) temporarily override existing policies on the device for update experience.

To learn more about user experience settings, see [Deploy an expedited security update](windowsupdates-deploy-expedited-update.md).

## Get or set lifecycle state

### States

Deployments move through lifecycle states as described in the following table.

| State     | Description                                                                                       |
|-----------|---------------------------------------------------------------------------------------------------|
| `scheduled` | The deployment is waiting for offer conditions to be met to start offering the update to devices. |
| `offering`  | The deployment is offering the update to devices.                                                 |
| `paused`    | The deployment is paused and prevented from offering the update to devices until it is unpaused.  |


### Transitions

| Transition                     | Condition                                |
|--------------------------------|------------------------------------------|
| `scheduled` → `offering`           | Scheduling condition is met.             |
| `offering` → `scheduled`           | Scheduling condition is not met.         |
| `scheduled` or `offering` → `paused` | There is a request or automatic action to pause. |
| `paused` → `scheduled` or `offering` | There is no longer a request or automatic action to pause. |

### Resource model

The [deployment](/graph/api/resources/windowsupdates-deployment) resource has a **state** property of type [deploymentState](/graph/api/resources/windowsupdates-deploymentstate) which provides information about the current lifecycle state.

The service determines the effective **value** of the deployment state as a net result of several inputs and asynchronous processes, but you can request a particular value by setting **requestedValue** as one of these inputs. Other inputs to the effective deployment state value include rollout settings and monitoring settings.

## Multiple deployments

You can assign a device to multiple deployments at one time. These deployments can be for content of the same update category (for example all deployments are feature updates), or for content of different update categories.

When you assign a device to two deployments for content of different update categories (for example, a feature update and an expedited quality update), the deployment service offers content in a sequence according to Microsoft’s recommendation.

When you assign a device to two deployments for content of the same update category (for example, feature update versions 20H1 and 20H2, or quality updates from March 2021 and April 2021), the deployment service offers the content that is higher ranked by Microsoft. For feature updates and quality updates, more recent updates are higher ranked. This behavior does not apply if one of the deployments is still scheduled for the device and is not ready to offer content. In that case, the other deployment delivers content to the device.
