---
title: "Manage mobile apps with Microsoft Intune - Microsoft Graph API"
description: "Lists the Microsoft Graph API for Intune endpoints (REST) related to mobile app management (MAM) for a tenant organization."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
---

# How to protect your company app data with Microsoft Intune

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Microsoft Intune app protection policies help protect your company data and prevent data loss.

You can use Intune app protection policies to help protect your company’s data. Because Intune app protection policies can be used independent of any mobile-device management (MDM) solution, you can use it to protect your company’s data with or without enrolling devices in a device management solution. By implementing app-level policies, you can restrict access to company resources and keep data within the purview of your IT department.

The following Graph resources are available to manage app protection polices in Intune:

- [Android managed app registration](intune-mam-androidmanagedappregistration.md)
- [Android managed app safety net apps verification type](intune-mam-androidmanagedappsafetynetappsverificationtype.md)
- [Android managed app safety net device attestation type](intune-mam-androidmanagedappsafetynetdeviceattestationtype.md)
- [Android managed app safety net evaluation type](intune-mam-androidmanagedappsafetynetevaluationtype.md)
- [Android mobile app identifier](intune-mam-androidmobileappidentifier.md)
- [App management level](intune-mam-appmanagementlevel.md)
- [Application type](intune-wip-applicationtype.md)
- [Default managed app protection](intune-mam-defaultmanagedappprotection.md)
- [Intune branding profile](intune-wip-intunebrandingprofile.md)
- [Intune branding profile assignment](intune-wip-intunebrandingprofileassignment.md)
- [iOS managed app registration](intune-mam-iosmanagedappregistration.md)
- [iOS mobile app identifier](intune-mam-iosmobileappidentifier.md)
- [JSON](intune-mam-json.md)
- [Mac app identifier](intune-mam-macappidentifier.md)
- [Managed app clipboard sharing level](intune-mam-managedappclipboardsharinglevel.md)
- [Managed app configuration](intune-mam-managedappconfiguration.md)
- [Managed app data encryption type](intune-mam-managedappdataencryptiontype.md)
- [Managed app data ingestion location](intune-mam-managedappdataingestionlocation.md)
- [Managed app data storage location](intune-mam-managedappdatastoragelocation.md)
- [Managed app data transfer level](intune-mam-managedappdatatransferlevel.md)
- [Managed app device threat level](intune-mam-managedappdevicethreatlevel.md)
- [Managed app diagnostic status](intune-mam-managedappdiagnosticstatus.md)
- [Managed app flagged reason](intune-mam-managedappflaggedreason.md)
- [Managed app notification restriction](intune-mam-managedappnotificationrestriction.md)
- [Managed app operation](intune-mam-managedappoperation.md)
- [Managed app phone number redirect level](intune-mam-managedappphonenumberredirectlevel.md)
- [Managed app PIN character set](intune-mam-managedapppincharacterset.md)
- [Managed app policy](intune-mam-managedapppolicy.md)
- [Managed app policy deployment summary](intune-mam-managedapppolicydeploymentsummary.md)
- [Managed app policy deployment summary per app](intune-mam-managedapppolicydeploymentsummaryperapp.md)
- [Managed app protection](intune-mam-managedappprotection.md)
- [Managed app registration](intune-mam-managedappregistration.md)
- [Managed app remediation action](intune-mam-managedappremediationaction.md)
- [Managed app status](intune-mam-managedappstatus.md)
- [Managed app status raw](intune-mam-managedappstatusraw.md)
- [Managed browser type](intune-mam-managedbrowsertype.md)
- [Managed mobile app](intune-mam-managedmobileapp.md)
- [Mobile app identifier](intune-mam-mobileappidentifier.md)
- [Targeted managed app policy assignment](intune-mam-targetedmanagedapppolicyassignment.md)
- [Targeted managed app protection](intune-mam-targetedmanagedappprotection.md)
- [Windows app identifier](intune-mam-windowsappidentifier.md)
- [Windows information protection](intune-mam-windowsinformationprotection.md)
- [Windows information protection app](intune-mam-windowsinformationprotectionapp.md)
- [Windows information protection app learning summary](intune-wip-windowsinformationprotectionapplearningsummary.md)
- [Windows information protection app locker file](intune-mam-windowsinformationprotectionapplockerfile.md)
- [Windows information protection data recovery certificate](intune-mam-windowsinformationprotectiondatarecoverycertificate.md)
- [Windows information protection desktop app](intune-mam-windowsinformationprotectiondesktopapp.md)
- [Windows information protection device registration](intune-mam-windowsinformationprotectiondeviceregistration.md)
- [Windows information protection enforcement level](intune-mam-windowsinformationprotectionenforcementlevel.md)
- [Windows information protection IP range collection](intune-mam-windowsinformationprotectioniprangecollection.md)
- [Windows information protection network learning summary](intune-wip-windowsinformationprotectionnetworklearningsummary.md)
- [Windows information protection PIN character requirements](intune-mam-windowsinformationprotectionpincharacterrequirements.md)
- [Windows information protection policy](intune-mam-windowsinformationprotectionpolicy.md)
- [Windows information protection proxied domain collection](intune-mam-windowsinformationprotectionproxieddomaincollection.md)
- [Windows information protection resource collection](intune-mam-windowsinformationprotectionresourcecollection.md)
- [Windows information protection store app](intune-mam-windowsinformationprotectionstoreapp.md)
- [Windows information protection wipe action](intune-mam-windowsinformationprotectionwipeaction.md)