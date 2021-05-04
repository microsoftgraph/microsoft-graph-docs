---
title: "Windows updates API overview"
description: "The Windows Update for Business deployment service gives control to your organization over the updates offered to your devices."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: conceptualPageType
---

# Windows updates API overview

The Windows Update for Business deployment service provides control over device updates through the ability to approve, schedule and safeguard content delivered by Windows Update. 

## Why use the Windows Update for Business deployment service?

IT Professionals and management tool vendors alike can use the deployment service to:
* Schedule update deployments to begin on a specific date
* Stage deployments over a period of days or weeks using rich expressions
* Bypass pre-configured Windows Update for Business policies to immediately deploy a security update
* Ensure coverage of hardware and software in your organization through deployments tailored to unique device population(s)

Today, the deployment service supports managing Windows 10 feature updates and expediting Windows 10 security updates. To learn more about the deployment service in the context of Windows Update for Business, please see [Overview of the deployment service](https://docs.microsoft.com/windows/deployment/update/deployment-service-overview).

## Prerequisites    

To use the deployment service, your organization must have one of the following subscriptions:
* Windows 10 Enterprise E3 or E5 (included in Microsoft 365 F3, E3, or E5)
* Windows 10 Education A3 or A5 (included in Microsoft 365 A3 or A5)
* Windows Virtual Desktop Access E3 or E5
* Microsoft 365 Business Premium

Additionally, devices managed by the deployment service must:
* Be Azure AD joined or Hybrid AD joined
* Run one of the following Windows 10 editions: Windows 10 Pro, Windows 10 Enterprise, Windows 10 Education, Windows 10 Pro Education
* Have installed Windows 10 version 1709 or later

## Enroll devices to be managed

To start using the deployment service, [enroll devices in update management](windowsupdates-enroll.md).

## Approve and schedule Windows content delivered from Windows Update

The deployment service simplifies reviewing, approving, scheduling, and deploying content for a diverse device ecosystem. An updates catalog exists to provide a view tailored for approvals, helping you focus on approval decisions that matter and avoiding the need to sort through deep lists of related updates.

Once you choose an update to deploy, you can schedule deployments to start at a future time, or deploy over a period of time. If you choose to deploy an update over a period of time, the deployment service automatically optimizes the order in which devices are offered updates. When possible, the service orders devices to ensure that a diversity of hardware and software assets are represented early in the deployment to minimize the number of devices that may encounter an unexpected update issue. 

Learn more about the deployment service:
* [Software updates](windowsupdates-software-updates.md)
* [Deployments](windowsupdates-deployments.md)
* [Schedule a deployment](windowsupdates-schedule-deployment.md)

## Immediately deploy an update when critical needs arise

In the case of a critical security issue, you can use the deployment service to bypass a standard update policy and expedite deployment of a security update.

To learn more, see [Deploy an expedited security update](windowsupdates-deploy-expedited-update.md).

## Protect devices by default

Enjoy the benefit of [safeguard holds](https://docs.microsoft.com/windows/deployment/update/safeguard-holds) which prevent devices with a quality or compatibility issue from installing an update, resulting in failure or rollback otherwise.

Additionally, you can configure monitoring rules that are unique to your organization. These rules can send an alert or pause a deployment based on device signals such as rollbacks.

To learn more, see [Manage monitoring rules for a deployment](windowsupdates-manage-monitoring-rules.md).

## API reference

Looking for the API reference for this service?

See [Windows updates API in Microsoft Graph beta](/graph/api/resources/windowsupdates-updates?view=graph-rest-beta&preserve-view=true).
