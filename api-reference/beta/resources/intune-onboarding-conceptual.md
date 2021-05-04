---
title: "Onboard managed devices with Intune - Microsoft Graph API"
description: "Lists the Microsoft Graph API for Intune endpoints (REST) used to onboard (configure and initialize) devices for a tenant organization."
localization_priority: Normal
author: "dougeby"
ms.prod: "intune"
---

# Enroll devices for management in Intune

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

You can enroll devices, including Windows PCs, to enable mobile device management (MDM) with Microsoft Intune. This topic describes different ways to enroll mobile devices in Intune management. The way you enroll your devices depends on the device type, ownership, and the level of management that's needed. "Bring your own device" (BYOD) enrollment lets users enroll their personal phones, tablets, or PCs. Corporate-owned device (COD) enrollment enables management scenarios like remote wipe, shared devices, or user affinity for a device.

The following Graph resources are available to manage enrollment in Intune:

- [Certificate connector setting](intune-onboarding-certificateconnectorsetting.md)
- [Compliance management partner](intune-onboarding-compliancemanagementpartner.md)
- [Compliance management partner assignment](intune-onboarding-compliancemanagementpartnerassignment.md)
- [Device and app management data](intune-onboarding-deviceandappmanagementdata.md)
- [Device comanagement authority configuration](intune-onboarding-devicecomanagementauthorityconfiguration.md)
- [Device enrollment limit configuration](intune-onboarding-deviceenrollmentlimitconfiguration.md)
- [Device enrollment platform restriction](intune-onboarding-deviceenrollmentplatformrestriction.md)
- [Device enrollment platform restrictions configuration](intune-onboarding-deviceenrollmentplatformrestrictionsconfiguration.md)
- [Device enrollment Windows Hello for business configuration](intune-onboarding-deviceenrollmentwindowshelloforbusinessconfiguration.md)
- [Device management exchange access level](intune-onboarding-devicemanagementexchangeaccesslevel.md)
- [Device management exchange access rule](intune-onboarding-devicemanagementexchangeaccessrule.md)
- [Device management exchange access rule type](intune-onboarding-devicemanagementexchangeaccessruletype.md)
- [Device management exchange connector](intune-onboarding-devicemanagementexchangeconnector.md)
- [Device management exchange connector status](intune-onboarding-devicemanagementexchangeconnectorstatus.md)
- [Device management exchange connector sync type](intune-onboarding-devicemanagementexchangeconnectorsynctype.md)
- [Device management exchange connector type](intune-onboarding-devicemanagementexchangeconnectortype.md)
- [Device management exchange device class](intune-onboarding-devicemanagementexchangedeviceclass.md)
- [Device management exchange on-premises policy](intune-onboarding-devicemanagementexchangeonpremisespolicy.md)
- [Device management partner](intune-onboarding-devicemanagementpartner.md)
- [Device management partner app type](intune-onboarding-devicemanagementpartnerapptype.md)
- [Device management partner assignment](intune-onboarding-devicemanagementpartnerassignment.md)
- [Device management partner tenant state](intune-onboarding-devicemanagementpartnertenantstate.md)
- [Enrollment configuration assignment](intune-onboarding-enrollmentconfigurationassignment.md)
- [Intune brand](intune-onboarding-intunebrand.md)
- [MDM authority](intune-onboarding-mdmauthority.md)
- [Microsoft store for business portal selection options](intune-onboarding-microsoftstoreforbusinessportalselectionoptions.md)
- [Mobile threat defense connector](intune-onboarding-mobilethreatdefenseconnector.md)
- [Mobile threat partner tenant state](intune-onboarding-mobilethreatpartnertenantstate.md)
- [On-premises conditional access settings](intune-onboarding-onpremisesconditionalaccesssettings.md)
- [Organization](intune-onboarding-organization.md)
- [Side loading key](intune-onboarding-sideloadingkey.md)
- [VPP token](intune-onboarding-vpptoken.md)
- [VPP token action result](intune-onboarding-vpptokenactionresult.md)
- [VPP token license summary](intune-onboarding-vpptokenlicensesummary.md)
- [VPP token revoke licenses action result](intune-onboarding-vpptokenrevokelicensesactionresult.md)
- [VPP token state](intune-onboarding-vpptokenstate.md)
- [VPP token sync status](intune-onboarding-vpptokensyncstatus.md)
- [Windows 10 enrollment completion page configuration](intune-onboarding-windows10enrollmentcompletionpageconfiguration.md)
- [Windows Hello for business PIN usage](intune-onboarding-windowshelloforbusinesspinusage.md)