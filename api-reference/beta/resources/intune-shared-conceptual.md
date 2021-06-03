---
title: "Shared resources in Microsoft Intune - Microsoft Graph API"
description: "Lists the Microsoft Graph API for Intune endpoints (REST) that support multiple workflows for a tenant organization."
localization_priority: Normal
author: "dougeby"
ms.prod: "intune"
---

# Shared resources in Microsoft Intune

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

These endpoints are used in multiple Microsoft Graph API for Intune workflows.  The intent, purpose, and permissions required to use a given resource varies according to the specific workflow and context of the underlying call.  In addition, certain methods, properties, and actions are supported only for specific workflows.

The following Graph resources are shared between Intune workflows:

- [Action state](intune-shared-actionstate.md)
- [All devices assignment target](intune-shared-alldevicesassignmenttarget.md)
- [All licensed users assignment target](intune-shared-alllicensedusersassignmenttarget.md)
- [Android enterprise always on VPN package type](intune-shared-androidenterprisealwaysonvpnpackagetype.md)
- [Android managed app protection](intune-shared-androidmanagedappprotection.md)
- [Android managed store app assignment settings](intune-shared-androidmanagedstoreappassignmentsettings.md)
- [Certificate destination store](intune-shared-certificatedestinationstore.md)
- [Certificate store](intune-shared-certificatestore.md)
- [Certificate validity period scale](intune-shared-certificatevalidityperiodscale.md)
- [Company portal action](intune-shared-companyportalaction.md)
- [Company portal blocked action](intune-shared-companyportalblockedaction.md)
- [Compliance status](intune-shared-compliancestatus.md)
- [Configuration manager collection assignment target](intune-shared-configurationmanagercollectionassignmenttarget.md)
- [Device and app management assignment filter type](intune-shared-deviceandappmanagementassignmentfiltertype.md)
- [Device and app management assignment source](intune-shared-deviceandappmanagementassignmentsource.md)
- [Device and app management assignment target](intune-shared-deviceandappmanagementassignmenttarget.md)
- [Device app management](intune-shared-deviceappmanagement.md)
- [Device category](intune-shared-devicecategory.md)
- [Device compliance policy](intune-shared-devicecompliancepolicy.md)
- [Device configuration](intune-shared-deviceconfiguration.md)
- [Device enrollment configuration](intune-shared-deviceenrollmentconfiguration.md)
- [Device enrollment type](intune-shared-deviceenrollmenttype.md)
- [Device management](intune-shared-devicemanagement.md)
- [Device management derived credential settings](intune-shared-devicemanagementderivedcredentialsettings.md)
- [Device management script](intune-shared-devicemanagementscript.md)
- [Enablement](intune-shared-enablement.md)
- [Enrollment availability options](intune-shared-enrollmentavailabilityoptions.md)
- [Enrollment state](intune-shared-enrollmentstate.md)
- [Exclusion group assignment target](intune-shared-exclusiongroupassignmenttarget.md)
- [Extended key usage](intune-shared-extendedkeyusage.md)
- [Group assignment target](intune-shared-groupassignmenttarget.md)
- [Hash algorithms](intune-shared-hashalgorithms.md)
- [Install intent](intune-shared-installintent.md)
- [iOS LOB app assignment settings](intune-shared-ioslobappassignmentsettings.md)
- [iOS LOB app provisioning configuration](intune-shared-ioslobappprovisioningconfiguration.md)
- [iOS managed app protection](intune-shared-iosmanagedappprotection.md)
- [iOS store app assignment settings](intune-shared-iosstoreappassignmentsettings.md)
- [iOS VPP app assignment settings](intune-shared-iosvppappassignmentsettings.md)
- [IP range](intune-shared-iprange.md)
- [IPv4 range](intune-shared-ipv4range.md)
- [IPv6 range](intune-shared-ipv6range.md)
- [Key size](intune-shared-keysize.md)
- [Key storage provider option](intune-shared-keystorageprovideroption.md)
- [Key usages](intune-shared-keyusages.md)
- [Key/value pair](intune-shared-keyvaluepair.md)
- [macOS LOB app assignment settings](intune-shared-macoslobappassignmentsettings.md)
- [macOS VPP app assignment settings](intune-shared-macosvppappassignmentsettings.md)
- [Managed device owner type](intune-shared-manageddeviceownertype.md)
- [MDM windows information protection policy](intune-shared-mdmwindowsinformationprotectionpolicy.md)
- [Microsoft store for business app assignment settings](intune-shared-microsoftstoreforbusinessappassignmentsettings.md)
- [MIME content](intune-shared-mimecontent.md)
- [Mobile app](intune-shared-mobileapp.md)
- [Mobile app assignment settings](intune-shared-mobileappassignmentsettings.md)
- [Mobile app install time settings](intune-shared-mobileappinstalltimesettings.md)
- [Mobile app troubleshooting event](intune-shared-mobileapptroubleshootingevent.md)
- [Owner type](intune-shared-ownertype.md)
- [Proxied domain](intune-shared-proxieddomain.md)
- [Report](intune-shared-report.md)
- [Report root](intune-shared-reportroot.md)
- [Resultant app state](intune-shared-resultantappstate.md)
- [RGB color](intune-shared-rgbcolor.md)
- [Run as account type](intune-shared-runasaccounttype.md)
- [Run state](intune-shared-runstate.md)
- [Saved UI state generation options](intune-shared-saveduistategenerationoptions.md)
- [Setting source type](intune-shared-settingsourcetype.md)
- [Subject alternative name type](intune-shared-subjectalternativenametype.md)
- [Targeted managed app configuration](intune-shared-targetedmanagedappconfiguration.md)
- [URI](intune-shared-uri.md)
- [User](intune-shared-user.md)
- [VPP token account type](intune-shared-vpptokenaccounttype.md)
- [VPP token action failure reason](intune-shared-vpptokenactionfailurereason.md)
- [Win32 LOB app assignment settings](intune-shared-win32lobappassignmentsettings.md)
- [Win32 LOB app delivery optimization priority](intune-shared-win32lobappdeliveryoptimizationpriority.md)
- [Win32 LOB app notification](intune-shared-win32lobappnotification.md)
- [Win32 LOB app restart settings](intune-shared-win32lobapprestartsettings.md)
- [Windows AppX app assignment settings](intune-shared-windowsappxappassignmentsettings.md)
- [Windows autopilot deployment profile](intune-shared-windowsautopilotdeploymentprofile.md)
- [Windows domain join configuration](intune-shared-windowsdomainjoinconfiguration.md)
- [Windows universal AppX app assignment settings](intune-shared-windowsuniversalappxappassignmentsettings.md)
- [Windows update state](intune-shared-windowsupdatestate.md)