# Enroll devices for management in Intune

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://www.microsoft.com/en-us/cloud-platform/microsoft-intune-pricing) by the customer.

You can enroll devices, including Windows PCs, to enable mobile device management (MDM) with Microsoft Intune. This topic describes different ways to enroll mobile devices in Intune management. The way you enroll your devices depends on the device type, ownership, and the level of management that's needed. "Bring your own device" (BYOD) enrollment lets users enroll their personal phones, tablets, or PCs. Corporate-owned device (COD) enrollment enables management scenarios like remote wipe, shared devices, or user affinity for a device.

The following Graph resources are available to manage enrollment in Intune:

- [Certificate connector setting](intune_onboarding_certificateconnectorsetting.md)
- [DEP on-boarding setting](intune_onboarding_deponboardingsetting.md)
- [Device and app management data](intune_onboarding_deviceandappmanagementdata.md)
- [Device enrollment configuration](intune_onboarding_deviceenrollmentconfiguration.md)
- [Device enrollment limit configuration](intune_onboarding_deviceenrollmentlimitconfiguration.md)
- [Device enrollment platform restriction](intune_onboarding_deviceenrollmentplatformrestriction.md)
- [Device enrollment platform restrictions configuration](intune_onboarding_deviceenrollmentplatformrestrictionsconfiguration.md)
- [Device enrollment Windows Hello for business configuration](intune_onboarding_deviceenrollmentwindowshelloforbusinessconfiguration.md)
- [Device management exchange access level](intune_onboarding_devicemanagementexchangeaccesslevel.md)
- [Device management exchange access rule](intune_onboarding_devicemanagementexchangeaccessrule.md)
- [Device management exchange access rule type](intune_onboarding_devicemanagementexchangeaccessruletype.md)
- [Device management exchange connector](intune_onboarding_devicemanagementexchangeconnector.md)
- [Device management exchange connector status](intune_onboarding_devicemanagementexchangeconnectorstatus.md)
- [Device management exchange connector sync type](intune_onboarding_devicemanagementexchangeconnectorsynctype.md)
- [Device management exchange connector type](intune_onboarding_devicemanagementexchangeconnectortype.md)
- [Device management exchange device class](intune_onboarding_devicemanagementexchangedeviceclass.md)
- [Device management exchange on-premises policy](intune_onboarding_devicemanagementexchangeonpremisespolicy.md)
- [Device management partner](intune_onboarding_devicemanagementpartner.md)
- [Device management partner app type](intune_onboarding_devicemanagementpartnerapptype.md)
- [Device management partner tenant state](intune_onboarding_devicemanagementpartnertenantstate.md)
- [Enablement](intune_onboarding_enablement.md)
- [Enrollment configuration assignment](intune_onboarding_enrollmentconfigurationassignment.md)
- [Intune brand](intune_onboarding_intunebrand.md)
- [MDM authority](intune_onboarding_mdmauthority.md)
- [Mobile threat defense connector](intune_onboarding_mobilethreatdefenseconnector.md)
- [Mobile threat partner tenant state](intune_onboarding_mobilethreatpartnertenantstate.md)
- [On-premises conditional access settings](intune_onboarding_onpremisesconditionalaccesssettings.md)
- [Organization](intune_onboarding_organization.md)
- [RGB color](intune_onboarding_rgbcolor.md)
- [Side loading key](intune_onboarding_sideloadingkey.md)
- [VPP token](intune_onboarding_vpptoken.md)
- [VPP token action failure reason](intune_onboarding_vpptokenactionfailurereason.md)
- [VPP token action result](intune_onboarding_vpptokenactionresult.md)
- [VPP token revoke licenses action result](intune_onboarding_vpptokenrevokelicensesactionresult.md)
- [VPP token state](intune_onboarding_vpptokenstate.md)
- [VPP token sync status](intune_onboarding_vpptokensyncstatus.md)
- [Windows 10 enrollment completion page configuration](intune_onboarding_windows10enrollmentcompletionpageconfiguration.md)
- [Windows Hello for business pin usage](intune_onboarding_windowshelloforbusinesspinusage.md)
