---
title: "Company terms and conditions in Microsoft Intune - Microsoft Graph API"
description: "Lists Microsoft Graph API for Intune endpoints (REST) that define terms and conditions for a tenant organization."
localization_priority: Normal
author: "dougeby"
ms.prod: "intune"
---

# Company terms and conditions in Microsoft Intune

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

You can deploy Intune terms and conditions to user groups to explain how enrollment, access to work resources, and the Company Portal app affect devices and users. Users must accept the terms and conditions before they can use the Company Portal to enroll and access their work.

You can create and deploy multiple policies containing different terms and conditions. You can also produce versions of the same terms and conditions in different languages and then deploy these to their appropriate groups.

The following Graph resources are available to manage company terms and conditions in Intune:

- [Terms and conditions](intune-companyterms-termsandconditions.md)
- [Terms and conditions acceptance status](intune-companyterms-termsandconditionsacceptancestatus.md)
- [Terms and conditions assignment](intune-companyterms-termsandconditionsassignment.md)
- [Terms and conditions group assignment](intune-companyterms-termsandconditionsgroupassignment.md)