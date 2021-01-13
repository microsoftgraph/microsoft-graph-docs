---
title: "windows10EndpointProtectionConfiguration resource type"
description: "This topic provides descriptions of the declared methods, properties and relationships exposed by the Windows10EndpointProtectionConfiguration resource."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# windows10EndpointProtectionConfiguration resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This topic provides descriptions of the declared methods, properties and relationships exposed by the Windows10EndpointProtectionConfiguration resource.


Inherits from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List windows10EndpointProtectionConfigurations](../api/intune-deviceconfig-windows10endpointprotectionconfiguration-list.md)|[windows10EndpointProtectionConfiguration](../resources/intune-deviceconfig-windows10endpointprotectionconfiguration.md) collection|List properties and relationships of the [windows10EndpointProtectionConfiguration](../resources/intune-deviceconfig-windows10endpointprotectionconfiguration.md) objects.|
|[Get windows10EndpointProtectionConfiguration](../api/intune-deviceconfig-windows10endpointprotectionconfiguration-get.md)|[windows10EndpointProtectionConfiguration](../resources/intune-deviceconfig-windows10endpointprotectionconfiguration.md)|Read properties and relationships of the [windows10EndpointProtectionConfiguration](../resources/intune-deviceconfig-windows10endpointprotectionconfiguration.md) object.|
|[Create windows10EndpointProtectionConfiguration](../api/intune-deviceconfig-windows10endpointprotectionconfiguration-create.md)|[windows10EndpointProtectionConfiguration](../resources/intune-deviceconfig-windows10endpointprotectionconfiguration.md)|Create a new [windows10EndpointProtectionConfiguration](../resources/intune-deviceconfig-windows10endpointprotectionconfiguration.md) object.|
|[Delete windows10EndpointProtectionConfiguration](../api/intune-deviceconfig-windows10endpointprotectionconfiguration-delete.md)|None|Deletes a [windows10EndpointProtectionConfiguration](../resources/intune-deviceconfig-windows10endpointprotectionconfiguration.md).|
|[Update windows10EndpointProtectionConfiguration](../api/intune-deviceconfig-windows10endpointprotectionconfiguration-update.md)|[windows10EndpointProtectionConfiguration](../resources/intune-deviceconfig-windows10endpointprotectionconfiguration.md)|Update the properties of a [windows10EndpointProtectionConfiguration](../resources/intune-deviceconfig-windows10endpointprotectionconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|roleScopeTagIds|String collection|List of Scope Tags for this Entity instance. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|supportsScopeTags|Boolean|Indicates whether or not the underlying Device Configuration supports the assignment of scope tags. Assigning to the ScopeTags property is not allowed when this value is false and entities will not be visible to scoped users. This occurs for Legacy policies created in Silverlight and can be resolved by deleting and recreating the policy in the Azure Portal. This property is read-only. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsEdition|[deviceManagementApplicabilityRuleOsEdition](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosedition.md)|The OS edition applicability for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleOsVersion|[deviceManagementApplicabilityRuleOsVersion](../resources/intune-deviceconfig-devicemanagementapplicabilityruleosversion.md)|The OS version applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceManagementApplicabilityRuleDeviceMode|[deviceManagementApplicabilityRuleDeviceMode](../resources/intune-deviceconfig-devicemanagementapplicabilityruledevicemode.md)|The device mode applicability rule for this Policy. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|dmaGuardDeviceEnumerationPolicy|[dmaGuardDeviceEnumerationPolicyType](../resources/intune-deviceconfig-dmaguarddeviceenumerationpolicytype.md)|This policy is intended to provide additional security against external DMA capable devices. It allows for more control over the enumeration of external DMA capable devices incompatible with DMA Remapping/device memory isolation and sandboxing. This policy only takes effect when Kernel DMA Protection is supported and enabled by the system firmware. Kernel DMA Protection is a platform feature that cannot be controlled via policy or by end user. It has to be supported by the system at the time of manufacturing. To check if the system supports Kernel DMA Protection, please check the Kernel DMA Protection field in the Summary page of MSINFO32.exe. Possible values are: `deviceDefault`, `blockAll`, `allowAll`.|
|firewallRules|[windowsFirewallRule](../resources/intune-deviceconfig-windowsfirewallrule.md) collection|Configures the firewall rule settings. This collection can contain a maximum of 150 elements.|
|userRightsAccessCredentialManagerAsTrustedCaller|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right is used by Credential Manager during Backup/Restore. Users' saved credentials might be compromised if this privilege is given to other entities. Only states NotConfigured and Allowed are supported|
|userRightsAllowAccessFromNetwork|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users and groups are allowed to connect to the computer over the network. State Allowed is supported.|
|userRightsBlockAccessFromNetwork|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users and groups are block from connecting to the computer over the network. State Block is supported.|
|userRightsActAsPartOfTheOperatingSystem|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right allows a process to impersonate any user without authentication. The process can therefore gain access to the same local resources as that user. Only states NotConfigured and Allowed are supported|
|userRightsLocalLogOn|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users can log on to the computer. States NotConfigured, Allowed are supported |
|userRightsDenyLocalLogOn|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users cannot log on to the computer. States NotConfigured, Blocked are supported |
|userRightsBackupData|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when backing up files and directories. Only states NotConfigured and Allowed are supported|
|userRightsChangeSystemTime|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users and groups can change the time and date on the internal clock of the computer. Only states NotConfigured and Allowed are supported|
|userRightsCreateGlobalObjects|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This security setting determines whether users can create global objects that are available to all sessions. Users who can create global objects could affect processes that run under other users' sessions, which could lead to application failure or data corruption. Only states NotConfigured and Allowed are supported|
|userRightsCreatePageFile|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users and groups can call an internal API to create and change the size of a page file. Only states NotConfigured and Allowed are supported|
|userRightsCreatePermanentSharedObjects|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which accounts can be used by processes to create a directory object using the object manager. Only states NotConfigured and Allowed are supported|
|userRightsCreateSymbolicLinks|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines if the user can create a symbolic link from the computer to which they are logged on. Only states NotConfigured and Allowed are supported|
|userRightsCreateToken|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users/groups can be used by processes to create a token that can then be used to get access to any local resources when the process uses an internal API to create an access token. Only states NotConfigured and Allowed are supported|
|userRightsDebugPrograms|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users can attach a debugger to any process or to the kernel. Only states NotConfigured and Allowed are supported|
|userRightsRemoteDesktopServicesLogOn|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users and groups are prohibited from logging on as a Remote Desktop Services client. Only states NotConfigured and Blocked are supported|
|userRightsDelegation|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users can set the Trusted for Delegation setting on a user or computer object. Only states NotConfigured and Allowed are supported.|
|userRightsGenerateSecurityAudits|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which accounts can be used by a process to add entries to the security log. The security log is used to trace unauthorized system access.  Only states NotConfigured and Allowed are supported.|
|userRightsImpersonateClient|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|Assigning this user right to a user allows programs running on behalf of that user to impersonate a client. Requiring this user right for this kind of impersonation prevents an unauthorized user from convincing a client to connect to a service that they have created and then impersonating that client, which can elevate the unauthorized user's permissions to administrative or system levels. Only states NotConfigured and Allowed are supported.|
|userRightsIncreaseSchedulingPriority|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which accounts can use a process with Write Property access to another process to increase the execution priority assigned to the other process. Only states NotConfigured and Allowed are supported.|
|userRightsLoadUnloadDrivers|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users can dynamically load and unload device drivers or other code in to kernel mode. Only states NotConfigured and Allowed are supported.|
|userRightsLockMemory|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which accounts can use a process to keep data in physical memory, which prevents the system from paging the data to virtual memory on disk. Only states NotConfigured and Allowed are supported.|
|userRightsManageAuditingAndSecurityLogs|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users can specify object access auditing options for individual resources, such as files, Active Directory objects, and registry keys. Only states NotConfigured and Allowed are supported.|
|userRightsManageVolumes|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users and groups can run maintenance tasks on a volume, such as remote defragmentation. Only states NotConfigured and Allowed are supported.|
|userRightsModifyFirmwareEnvironment|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines who can modify firmware environment values. Only states NotConfigured and Allowed are supported.|
|userRightsModifyObjectLabels|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which user accounts can modify the integrity label of objects, such as files, registry keys, or processes owned by other users. Only states NotConfigured and Allowed are supported.|
|userRightsProfileSingleProcess|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users can use performance monitoring tools to monitor the performance of system processes. Only states NotConfigured and Allowed are supported.|
|userRightsRemoteShutdown|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users are allowed to shut down a computer from a remote location on the network. Misuse of this user right can result in a denial of service. Only states NotConfigured and Allowed are supported.|
|userRightsRestoreData|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users can bypass file, directory, registry, and other persistent objects permissions when restoring backed up files and directories, and determines which users can set any valid security principal as the owner of an object. Only states NotConfigured and Allowed are supported.|
|userRightsTakeOwnership|[deviceManagementUserRightsSetting](../resources/intune-deviceconfig-devicemanagementuserrightssetting.md)|This user right determines which users can take ownership of any securable object in the system, including Active Directory objects, files and folders, printers, registry keys, processes, and threads. Only states NotConfigured and Allowed are supported.|
|xboxServicesEnableXboxGameSaveTask|Boolean|This setting determines whether xbox game save is enabled (1) or disabled (0).|
|xboxServicesAccessoryManagementServiceStartupMode|[serviceStartType](../resources/intune-deviceconfig-servicestarttype.md)|This setting determines whether the Accessory management service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual. Possible values are: `manual`, `automatic`, `disabled`.|
|xboxServicesLiveAuthManagerServiceStartupMode|[serviceStartType](../resources/intune-deviceconfig-servicestarttype.md)|This setting determines whether Live Auth Manager service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual. Possible values are: `manual`, `automatic`, `disabled`.|
|xboxServicesLiveGameSaveServiceStartupMode|[serviceStartType](../resources/intune-deviceconfig-servicestarttype.md)|This setting determines whether Live Game save service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual. Possible values are: `manual`, `automatic`, `disabled`.|
|xboxServicesLiveNetworkingServiceStartupMode|[serviceStartType](../resources/intune-deviceconfig-servicestarttype.md)|This setting determines whether Networking service's start type is Automatic(2), Manual(3), Disabled(4). Default: Manual. Possible values are: `manual`, `automatic`, `disabled`.|
|localSecurityOptionsBlockMicrosoftAccounts|Boolean|Prevent users from adding new Microsoft accounts to this computer.|
|localSecurityOptionsBlockRemoteLogonWithBlankPassword|Boolean|Enable Local accounts that are not password protected to log on from locations other than the physical device.Default is enabled|
|localSecurityOptionsDisableAdministratorAccount|Boolean|Determines whether the Local Administrator account is enabled or disabled.|
|localSecurityOptionsAdministratorAccountName|String|Define a different account name to be associated with the security identifier (SID) for the account “Administrator”.|
|localSecurityOptionsDisableGuestAccount|Boolean|Determines if the Guest account is enabled or disabled.|
|localSecurityOptionsGuestAccountName|String|Define a different account name to be associated with the security identifier (SID) for the account “Guest”.|
|localSecurityOptionsAllowUndockWithoutHavingToLogon|Boolean|Prevent a portable computer from being undocked without having to log in.|
|localSecurityOptionsBlockUsersInstallingPrinterDrivers|Boolean|Restrict installing printer drivers as part of connecting to a shared printer to admins only.|
|localSecurityOptionsBlockRemoteOpticalDriveAccess|Boolean|Enabling this settings allows only interactively logged on user to access CD-ROM media.|
|localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser|[localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUserType](../resources/intune-deviceconfig-localsecurityoptionsformatandejectofremovablemediaallowedusertype.md)|Define who is allowed to format and eject removable NTFS media. Possible values are: `notConfigured`, `administrators`, `administratorsAndPowerUsers`, `administratorsAndInteractiveUsers`.|
|localSecurityOptionsMachineInactivityLimit|Int32|Define maximum minutes of inactivity on the interactive desktop’s login screen until the screen saver runs. Valid values 0 to 9999|
|localSecurityOptionsMachineInactivityLimitInMinutes|Int32|Define maximum minutes of inactivity on the interactive desktop’s login screen until the screen saver runs. Valid values 0 to 9999|
|localSecurityOptionsDoNotRequireCtrlAltDel|Boolean|Require CTRL+ALT+DEL to be pressed before a user can log on.|
|localSecurityOptionsHideLastSignedInUser|Boolean|Do not display the username of the last person who signed in on this device.|
|localSecurityOptionsHideUsernameAtSignIn|Boolean|Do not display the username of the person signing in to this device after credentials are entered and before the device’s desktop is shown.|
|localSecurityOptionsLogOnMessageTitle|String|Set message title for users attempting to log in.|
|localSecurityOptionsLogOnMessageText|String|Set message text for users attempting to log in.|
|localSecurityOptionsAllowPKU2UAuthenticationRequests|Boolean|Block PKU2U authentication requests to this device to use online identities.|
|localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool|Boolean|UI helper boolean for LocalSecurityOptionsAllowRemoteCallsToSecurityAccountsManager entity|
|localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager|String|Edit the default Security Descriptor Definition Language string to allow or deny users and groups to make remote calls to the SAM.|
|localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients|[localSecurityOptionsMinimumSessionSecurity](../resources/intune-deviceconfig-localsecurityoptionsminimumsessionsecurity.md)|This security setting allows a client to require the negotiation of 128-bit encryption and/or NTLMv2 session security. Possible values are: `none`, `requireNtmlV2SessionSecurity`, `require128BitEncryption`, `ntlmV2And128BitEncryption`.|
|localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers|[localSecurityOptionsMinimumSessionSecurity](../resources/intune-deviceconfig-localsecurityoptionsminimumsessionsecurity.md)|This security setting allows a server to require the negotiation of 128-bit encryption and/or NTLMv2 session security. Possible values are: `none`, `requireNtmlV2SessionSecurity`, `require128BitEncryption`, `ntlmV2And128BitEncryption`.|
|lanManagerAuthenticationLevel|[lanManagerAuthenticationLevel](../resources/intune-deviceconfig-lanmanagerauthenticationlevel.md)|This security setting determines which challenge/response authentication protocol is used for network logons. Possible values are: `lmAndNltm`, `lmNtlmAndNtlmV2`, `lmAndNtlmOnly`, `lmAndNtlmV2`, `lmNtlmV2AndNotLm`, `lmNtlmV2AndNotLmOrNtm`.|
|lanManagerWorkstationDisableInsecureGuestLogons|Boolean|If enabled,the SMB client will allow insecure guest logons. If not configured, the SMB client will reject insecure guest logons.|
|localSecurityOptionsClearVirtualMemoryPageFile|Boolean|This security setting determines whether the virtual memory pagefile is cleared when the system is shut down.|
|localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn|Boolean|This security setting determines whether a computer can be shut down without having to log on to Windows.|
|localSecurityOptionsAllowUIAccessApplicationElevation|Boolean|Allow UIAccess apps to prompt for elevation without using the secure desktop.|
|localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations|Boolean|Virtualize file and registry write failures to per user locations|
|localSecurityOptionsOnlyElevateSignedExecutables|Boolean|Enforce PKI certification path validation for a given executable file before it is permitted to run.|
|localSecurityOptionsAdministratorElevationPromptBehavior|[localSecurityOptionsAdministratorElevationPromptBehaviorType](../resources/intune-deviceconfig-localsecurityoptionsadministratorelevationpromptbehaviortype.md)|Define the behavior of the elevation prompt for admins in Admin Approval Mode. Possible values are: `notConfigured`, `elevateWithoutPrompting`, `promptForCredentialsOnTheSecureDesktop`, `promptForConsentOnTheSecureDesktop`, `promptForCredentials`, `promptForConsent`, `promptForConsentForNonWindowsBinaries`.|
|localSecurityOptionsStandardUserElevationPromptBehavior|[localSecurityOptionsStandardUserElevationPromptBehaviorType](../resources/intune-deviceconfig-localsecurityoptionsstandarduserelevationpromptbehaviortype.md)|Define the behavior of the elevation prompt for standard users. Possible values are: `notConfigured`, `automaticallyDenyElevationRequests`, `promptForCredentialsOnTheSecureDesktop`, `promptForCredentials`.|
|localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation|Boolean|Enable all elevation requests to go to the interactive user's desktop rather than the secure desktop. Prompt behavior policy settings for admins and standard users are used.|
|localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation|Boolean|App installations requiring elevated privileges will prompt for admin credentials.Default is enabled|
|localSecurityOptionsAllowUIAccessApplicationsForSecureLocations|Boolean|Allow UIAccess apps to prompt for elevation without using the secure desktop.Default is enabled|
|localSecurityOptionsUseAdminApprovalMode|Boolean|Defines whether the built-in admin account uses Admin Approval Mode or runs all apps with full admin privileges.Default is enabled|
|localSecurityOptionsUseAdminApprovalModeForAdministrators|Boolean|Define whether Admin Approval Mode and all UAC policy settings are enabled, default is enabled|
|localSecurityOptionsInformationShownOnLockScreen|[localSecurityOptionsInformationShownOnLockScreenType](../resources/intune-deviceconfig-localsecurityoptionsinformationshownonlockscreentype.md)|Configure the user information that is displayed when the session is locked. If not configured, user display name, domain and username are shown. Possible values are: `notConfigured`, `userDisplayNameDomainUser`, `userDisplayNameOnly`, `doNotDisplayUser`.|
|localSecurityOptionsInformationDisplayedOnLockScreen|[localSecurityOptionsInformationDisplayedOnLockScreenType](../resources/intune-deviceconfig-localsecurityoptionsinformationdisplayedonlockscreentype.md)|Configure the user information that is displayed when the session is locked. If not configured, user display name, domain and username are shown. Possible values are: `notConfigured`, `administrators`, `administratorsAndPowerUsers`, `administratorsAndInteractiveUsers`.|
|localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees|Boolean|This security setting determines whether the SMB client attempts to negotiate SMB packet signing.|
|localSecurityOptionsClientDigitallySignCommunicationsAlways|Boolean|This security setting determines whether packet signing is required by the SMB client component.|
|localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers|Boolean|If this security setting is enabled, the Server Message Block (SMB) redirector is allowed to send plaintext passwords to non-Microsoft SMB servers that do not support password encryption during authentication.|
|localSecurityOptionsDisableServerDigitallySignCommunicationsAlways|Boolean|This security setting determines whether packet signing is required by the SMB server component.|
|localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees|Boolean|This security setting determines whether the SMB server will negotiate SMB packet signing with clients that request it.|
|localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares|Boolean|By default, this security setting restricts anonymous access to shares and pipes to the settings for named pipes that can be accessed anonymously and Shares that can be accessed anonymously|
|localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts|Boolean|This security setting determines what additional permissions will be granted for anonymous connections to the computer.|
|localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares|Boolean|This security setting determines whether to allows anonymous users to perform certain activities, such as enumerating the names of domain accounts and network shares.|
|localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange|Boolean|This security setting determines if, at the next password change, the LAN Manager (LM) hash value for the new password is stored. It’s not stored by default.|
|localSecurityOptionsSmartCardRemovalBehavior|[localSecurityOptionsSmartCardRemovalBehaviorType](../resources/intune-deviceconfig-localsecurityoptionssmartcardremovalbehaviortype.md)|This security setting determines what happens when the smart card for a logged-on user is removed from the smart card reader. Possible values are: `lockWorkstation`, `noAction`, `forceLogoff`, `disconnectRemoteDesktopSession`.|
|defenderSecurityCenterDisableAppBrowserUI|Boolean|Used to disable the display of the app and browser protection area.|
|defenderSecurityCenterDisableFamilyUI|Boolean|Used to disable the display of the family options area.|
|defenderSecurityCenterDisableHealthUI|Boolean|Used to disable the display of the device performance and health area.|
|defenderSecurityCenterDisableNetworkUI|Boolean|Used to disable the display of the firewall and network protection area.|
|defenderSecurityCenterDisableVirusUI|Boolean|Used to disable the display of the virus and threat protection area.|
|defenderSecurityCenterDisableAccountUI|Boolean|Used to disable the display of the account protection area.|
|defenderSecurityCenterDisableClearTpmUI|Boolean|Used to disable the display of the Clear TPM button.|
|defenderSecurityCenterDisableHardwareUI|Boolean|Used to disable the display of the hardware protection area.|
|defenderSecurityCenterDisableNotificationAreaUI|Boolean|Used to disable the display of the notification area control. The user needs to either sign out and sign in or reboot the computer for this setting to take effect.|
|defenderSecurityCenterDisableRansomwareUI|Boolean|Used to disable the display of the ransomware protection area. |
|defenderSecurityCenterDisableSecureBootUI|Boolean|Used to disable the display of the secure boot area under Device security.|
|defenderSecurityCenterDisableTroubleshootingUI|Boolean|Used to disable the display of the security process troubleshooting under Device security.|
|defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI|Boolean|Used to disable the display of update TPM Firmware when a vulnerable firmware is detected.|
|defenderSecurityCenterOrganizationDisplayName|String|The company name that is displayed to the users.|
|defenderSecurityCenterHelpEmail|String|The email address that is displayed to users.|
|defenderSecurityCenterHelpPhone|String|The phone number or Skype ID that is displayed to users.|
|defenderSecurityCenterHelpURL|String|The help portal URL this is displayed to users.|
|defenderSecurityCenterNotificationsFromApp|[defenderSecurityCenterNotificationsFromAppType](../resources/intune-deviceconfig-defendersecuritycenternotificationsfromapptype.md)|Notifications to show from the displayed areas of app. Possible values are: `notConfigured`, `blockNoncriticalNotifications`, `blockAllNotifications`.|
|defenderSecurityCenterITContactDisplay|[defenderSecurityCenterITContactDisplayType](../resources/intune-deviceconfig-defendersecuritycenteritcontactdisplaytype.md)|Configure where to display IT contact information to end users. Possible values are: `notConfigured`, `displayInAppAndInNotifications`, `displayOnlyInApp`, `displayOnlyInNotifications`.|
|windowsDefenderTamperProtection|[windowsDefenderTamperProtectionOptions](../resources/intune-deviceconfig-windowsdefendertamperprotectionoptions.md)|Configure windows defender TamperProtection settings. Possible values are: `notConfigured`, `enable`, `disable`.|
|firewallBlockStatefulFTP|Boolean|Blocks stateful FTP connections to the device|
|firewallIdleTimeoutForSecurityAssociationInSeconds|Int32|Configures the idle timeout for security associations, in seconds, from 300 to 3600 inclusive. This is the period after which security associations will expire and be deleted. Valid values 300 to 3600|
|firewallPreSharedKeyEncodingMethod|[firewallPreSharedKeyEncodingMethodType](../resources/intune-deviceconfig-firewallpresharedkeyencodingmethodtype.md)|Select the preshared key encoding to be used. Possible values are: `deviceDefault`, `none`, `utF8`.|
|firewallIPSecExemptionsNone|Boolean|Configures IPSec exemptions to no exemptions|
|firewallIPSecExemptionsAllowNeighborDiscovery|Boolean|Configures IPSec exemptions to allow neighbor discovery IPv6 ICMP type-codes|
|firewallIPSecExemptionsAllowICMP|Boolean|Configures IPSec exemptions to allow ICMP|
|firewallIPSecExemptionsAllowRouterDiscovery|Boolean|Configures IPSec exemptions to allow router discovery IPv6 ICMP type-codes|
|firewallIPSecExemptionsAllowDHCP|Boolean|Configures IPSec exemptions to allow both IPv4 and IPv6 DHCP traffic|
|firewallCertificateRevocationListCheckMethod|[firewallCertificateRevocationListCheckMethodType](../resources/intune-deviceconfig-firewallcertificaterevocationlistcheckmethodtype.md)|Specify how the certificate revocation list is to be enforced. Possible values are: `deviceDefault`, `none`, `attempt`, `require`.|
|firewallMergeKeyingModuleSettings|Boolean|If an authentication set is not fully supported by a keying module, direct the module to ignore only unsupported authentication suites rather than the entire set|
|firewallPacketQueueingMethod|[firewallPacketQueueingMethodType](../resources/intune-deviceconfig-firewallpacketqueueingmethodtype.md)|Configures how packet queueing should be applied in the tunnel gateway scenario. Possible values are: `deviceDefault`, `disabled`, `queueInbound`, `queueOutbound`, `queueBoth`.|
|firewallProfileDomain|[windowsFirewallNetworkProfile](../resources/intune-deviceconfig-windowsfirewallnetworkprofile.md)|Configures the firewall profile settings for domain networks|
|firewallProfilePublic|[windowsFirewallNetworkProfile](../resources/intune-deviceconfig-windowsfirewallnetworkprofile.md)|Configures the firewall profile settings for public networks|
|firewallProfilePrivate|[windowsFirewallNetworkProfile](../resources/intune-deviceconfig-windowsfirewallnetworkprofile.md)|Configures the firewall profile settings for private networks|
|defenderAdobeReaderLaunchChildProcess|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating the behavior of Adobe Reader from creating child processes. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderAttackSurfaceReductionExcludedPaths|String collection|List of exe files and folders to be excluded from attack surface reduction rules|
|defenderOfficeAppsOtherProcessInjectionType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating the behavior of Office applications injecting into other processes. Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderOfficeAppsOtherProcessInjection|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating the behavior of  Office applications injecting into other processes. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderOfficeCommunicationAppsLaunchChildProcess|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating the behavior of Office communication applications, including Microsoft Outlook, from creating child processes. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderOfficeAppsExecutableContentCreationOrLaunchType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating the behavior of Office applications/macros creating or launching executable content. Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderOfficeAppsExecutableContentCreationOrLaunch|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating the behavior of Office applications/macros creating or launching executable content. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderOfficeAppsLaunchChildProcessType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating the behavior of Office application launching child processes. Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderOfficeAppsLaunchChildProcess|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating the behavior of Office application launching child processes. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderOfficeMacroCodeAllowWin32ImportsType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating the behavior of Win32 imports from Macro code in Office. Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderOfficeMacroCodeAllowWin32Imports|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating the behavior of Win32 imports from Macro code in Office. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderScriptObfuscatedMacroCodeType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating the behavior of obfuscated js/vbs/ps/macro code. Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderScriptObfuscatedMacroCode|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating the behavior of obfuscated js/vbs/ps/macro code. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderScriptDownloadedPayloadExecutionType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating the behavior of js/vbs executing payload downloaded from Internet. Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderScriptDownloadedPayloadExecution|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating the behavior of js/vbs executing payload downloaded from Internet. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderPreventCredentialStealingType|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating if credential stealing from the Windows local security authority subsystem is permitted. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderProcessCreationType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating response to process creations originating from PSExec and WMI commands. Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderProcessCreation|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating response to process creations originating from PSExec and WMI commands. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderUntrustedUSBProcessType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating response to untrusted and unsigned processes that run from USB. Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderUntrustedUSBProcess|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating response to untrusted and unsigned processes that run from USB. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderUntrustedExecutableType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating response to executables that don't meet a prevalence, age, or trusted list criteria. Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderUntrustedExecutable|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating response to executables that don't meet a prevalence, age, or trusted list criteria. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderEmailContentExecutionType|[defenderAttackSurfaceType](../resources/intune-deviceconfig-defenderattacksurfacetype.md)|Value indicating if execution of executable content (exe, dll, ps, js, vbs, etc) should be dropped from email (webmail/mail-client). Possible values are: `userDefined`, `block`, `auditMode`, `warn`, `disable`.|
|defenderEmailContentExecution|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating if execution of executable content (exe, dll, ps, js, vbs, etc) should be dropped from email (webmail/mail-client). Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderAdvancedRansomewareProtectionType|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating use of advanced protection against ransomeware. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderGuardMyFoldersType|[folderProtectionType](../resources/intune-deviceconfig-folderprotectiontype.md)|Value indicating the behavior of protected folders. Possible values are: `userDefined`, `enable`, `auditMode`, `blockDiskModification`, `auditDiskModification`.|
|defenderGuardedFoldersAllowedAppPaths|String collection|List of paths to exe that are allowed to access protected folders|
|defenderAdditionalGuardedFolders|String collection|List of folder paths to be added to the list of protected folders|
|defenderNetworkProtectionType|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Value indicating the behavior of NetworkProtection. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderExploitProtectionXml|Binary|Xml content containing information regarding exploit protection details.|
|defenderExploitProtectionXmlFileName|String|Name of the file from which DefenderExploitProtectionXml was obtained.|
|defenderSecurityCenterBlockExploitProtectionOverride|Boolean|Indicates whether or not to block user from overriding Exploit Protection settings.|
|appLockerApplicationControl|[appLockerApplicationControlType](../resources/intune-deviceconfig-applockerapplicationcontroltype.md)|Enables the Admin to choose what types of app to allow on devices. Possible values are: `notConfigured`, `enforceComponentsAndStoreApps`, `auditComponentsAndStoreApps`, `enforceComponentsStoreAppsAndSmartlocker`, `auditComponentsStoreAppsAndSmartlocker`.|
|deviceGuardLocalSystemAuthorityCredentialGuardSettings|[deviceGuardLocalSystemAuthorityCredentialGuardType](../resources/intune-deviceconfig-deviceguardlocalsystemauthoritycredentialguardtype.md)|Turn on Credential Guard when Platform Security Level with Secure Boot and Virtualization Based Security are both enabled. Possible values are: `notConfigured`, `enableWithUEFILock`, `enableWithoutUEFILock`, `disable`.|
|deviceGuardEnableVirtualizationBasedSecurity|Boolean|Turns On Virtualization Based Security(VBS).|
|deviceGuardEnableSecureBootWithDMA|Boolean|This property will be deprecated in May 2019 and will be replaced with property DeviceGuardSecureBootWithDMA. Specifies whether Platform Security Level is enabled at next reboot.|
|deviceGuardSecureBootWithDMA|[secureBootWithDMAType](../resources/intune-deviceconfig-securebootwithdmatype.md)|Specifies whether Platform Security Level is enabled at next reboot. Possible values are: `notConfigured`, `withoutDMA`, `withDMA`.|
|deviceGuardLaunchSystemGuard|[enablement](../resources/intune-shared-enablement.md)|Allows the IT admin to configure the launch of System Guard. Possible values are: `notConfigured`, `enabled`, `disabled`.|
|smartScreenEnableInShell|Boolean|Allows IT Admins to configure SmartScreen for Windows.|
|smartScreenBlockOverrideForFiles|Boolean|Allows IT Admins to control whether users can can ignore SmartScreen warnings and run malicious files.|
|applicationGuardEnabled|Boolean|Enable Windows Defender Application Guard|
|applicationGuardEnabledOptions|[applicationGuardEnabledOptions](../resources/intune-deviceconfig-applicationguardenabledoptions.md)|Enable Windows Defender Application Guard for newer Windows builds. Possible values are: `notConfigured`, `enabledForEdge`, `enabledForOffice`, `enabledForEdgeAndOffice`.|
|applicationGuardBlockFileTransfer|[applicationGuardBlockFileTransferType](../resources/intune-deviceconfig-applicationguardblockfiletransfertype.md)|Block clipboard to transfer image file, text file or neither of them. Possible values are: `notConfigured`, `blockImageAndTextFile`, `blockImageFile`, `blockNone`, `blockTextFile`.|
|applicationGuardBlockNonEnterpriseContent|Boolean|Block enterprise sites to load non-enterprise content, such as third party plug-ins|
|applicationGuardAllowPersistence|Boolean|Allow persisting user generated data inside the App Guard Containter (favorites, cookies, web passwords, etc.)|
|applicationGuardForceAuditing|Boolean|Force auditing will persist Windows logs and events to meet security/compliance criteria (sample events are user login-logoff, use of privilege rights, software installation, system changes, etc.)|
|applicationGuardBlockClipboardSharing|[applicationGuardBlockClipboardSharingType](../resources/intune-deviceconfig-applicationguardblockclipboardsharingtype.md)|Block clipboard to share data from Host to Container, or from Container to Host, or both ways, or neither ways. Possible values are: `notConfigured`, `blockBoth`, `blockHostToContainer`, `blockContainerToHost`, `blockNone`.|
|applicationGuardAllowPrintToPDF|Boolean|Allow printing to PDF from Container|
|applicationGuardAllowPrintToXPS|Boolean|Allow printing to XPS from Container|
|applicationGuardAllowPrintToLocalPrinters|Boolean|Allow printing to Local Printers from Container|
|applicationGuardAllowPrintToNetworkPrinters|Boolean|Allow printing to Network Printers from Container|
|applicationGuardAllowVirtualGPU|Boolean|Allow application guard to use virtual GPU|
|applicationGuardAllowFileSaveOnHost|Boolean|Allow users to download files from Edge in the application guard container and save them on the host file system|
|bitLockerAllowStandardUserEncryption|Boolean|Allows the admin to allow standard users to enable encrpytion during Azure AD Join.|
|bitLockerDisableWarningForOtherDiskEncryption|Boolean|Allows the Admin to disable the warning prompt for other disk encryption on the user machines.|
|bitLockerEnableStorageCardEncryptionOnMobile|Boolean|Allows the admin to require encryption to be turned on using BitLocker. This policy is valid only for a mobile SKU.|
|bitLockerEncryptDevice|Boolean|Allows the admin to require encryption to be turned on using BitLocker.|
|bitLockerSystemDrivePolicy|[bitLockerSystemDrivePolicy](../resources/intune-deviceconfig-bitlockersystemdrivepolicy.md)|BitLocker System Drive Policy.|
|bitLockerFixedDrivePolicy|[bitLockerFixedDrivePolicy](../resources/intune-deviceconfig-bitlockerfixeddrivepolicy.md)|BitLocker Fixed Drive Policy.|
|bitLockerRemovableDrivePolicy|[bitLockerRemovableDrivePolicy](../resources/intune-deviceconfig-bitlockerremovabledrivepolicy.md)|BitLocker Removable Drive Policy.|
|bitLockerRecoveryPasswordRotation|[bitLockerRecoveryPasswordRotationType](../resources/intune-deviceconfig-bitlockerrecoverypasswordrotationtype.md)|This setting initiates a client-driven recovery password rotation after an OS drive recovery (either by using bootmgr or WinRE). Possible values are: `notConfigured`, `disabled`, `enabledForAzureAd`, `enabledForAzureAdAndHybrid`.|
|defenderDisableScanArchiveFiles|Boolean|Allows or disallows scanning of archives.|
|defenderAllowScanArchiveFiles|Boolean|Allows or disallows scanning of archives.|
|defenderDisableBehaviorMonitoring|Boolean|Allows or disallows Windows Defender Behavior Monitoring functionality.|
|defenderAllowBehaviorMonitoring|Boolean|Allows or disallows Windows Defender Behavior Monitoring functionality.|
|defenderDisableCloudProtection|Boolean|To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.|
|defenderAllowCloudProtection|Boolean|To best protect your PC, Windows Defender will send information to Microsoft about any problems it finds. Microsoft will analyze that information, learn more about problems affecting you and other customers, and offer improved solutions.|
|defenderEnableScanIncomingMail|Boolean|Allows or disallows scanning of email.|
|defenderEnableScanMappedNetworkDrivesDuringFullScan|Boolean|Allows or disallows a full scan of mapped network drives.|
|defenderDisableScanRemovableDrivesDuringFullScan|Boolean|Allows or disallows a full scan of removable drives. During a quick scan, removable drives may still be scanned.|
|defenderAllowScanRemovableDrivesDuringFullScan|Boolean|Allows or disallows a full scan of removable drives. During a quick scan, removable drives may still be scanned.|
|defenderDisableScanDownloads|Boolean|Allows or disallows Windows Defender IOAVP Protection functionality.|
|defenderAllowScanDownloads|Boolean|Allows or disallows Windows Defender IOAVP Protection functionality.|
|defenderDisableIntrusionPreventionSystem|Boolean|Allows or disallows Windows Defender Intrusion Prevention functionality.|
|defenderAllowIntrusionPreventionSystem|Boolean|Allows or disallows Windows Defender Intrusion Prevention functionality.|
|defenderDisableOnAccessProtection|Boolean|Allows or disallows Windows Defender On Access Protection functionality.|
|defenderAllowOnAccessProtection|Boolean|Allows or disallows Windows Defender On Access Protection functionality.|
|defenderDisableRealTimeMonitoring|Boolean|Allows or disallows Windows Defender Realtime Monitoring functionality.|
|defenderAllowRealTimeMonitoring|Boolean|Allows or disallows Windows Defender Realtime Monitoring functionality.|
|defenderDisableScanNetworkFiles|Boolean|Allows or disallows a scanning of network files.|
|defenderAllowScanNetworkFiles|Boolean|Allows or disallows a scanning of network files.|
|defenderDisableScanScriptsLoadedInInternetExplorer|Boolean|Allows or disallows Windows Defender Script Scanning functionality.|
|defenderAllowScanScriptsLoadedInInternetExplorer|Boolean|Allows or disallows Windows Defender Script Scanning functionality.|
|defenderBlockEndUserAccess|Boolean|Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.|
|defenderAllowEndUserAccess|Boolean|Allows or disallows user access to the Windows Defender UI. If disallowed, all Windows Defender notifications will also be suppressed.|
|defenderScanMaxCpuPercentage|Int32|Represents the average CPU load factor for the Windows Defender scan (in percent). The default value is 50. Valid values 0 to 100|
|defenderCheckForSignaturesBeforeRunningScan|Boolean|This policy setting allows you to manage whether a check for new virus and spyware definitions will occur before running a scan.|
|defenderCloudBlockLevel|[defenderCloudBlockLevelType](../resources/intune-deviceconfig-defendercloudblockleveltype.md)|Added in Windows 10, version 1709. This policy setting determines how aggressive Windows Defender Antivirus will be in blocking and scanning suspicious files. Value type is integer. This feature requires the "Join Microsoft MAPS" setting enabled in order to function. Possible values are: `notConfigured`, `high`, `highPlus`, `zeroTolerance`.|
|defenderCloudExtendedTimeoutInSeconds|Int32|Added in Windows 10, version 1709. This feature allows Windows Defender Antivirus to block a suspicious file for up to 60 seconds, and scan it in the cloud to make sure it's safe. Value type is integer, range is 0 - 50. This feature depends on three other MAPS settings the must all be enabled- "Configure the 'Block at First Sight' feature; "Join Microsoft MAPS"; "Send file samples when further analysis is required". Valid values 0 to 50|
|defenderDaysBeforeDeletingQuarantinedMalware|Int32|Time period (in days) that quarantine items will be stored on the system. Valid values 0 to 90|
|defenderDisableCatchupFullScan|Boolean|This policy setting allows you to configure catch-up scans for scheduled full scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.|
|defenderDisableCatchupQuickScan|Boolean|This policy setting allows you to configure catch-up scans for scheduled quick scans. A catch-up scan is a scan that is initiated because a regularly scheduled scan was missed. Usually these scheduled scans are missed because the computer was turned off at the scheduled time.|
|defenderEnableLowCpuPriority|Boolean|This policy setting allows you to enable or disable low CPU priority for scheduled scans.|
|defenderFileExtensionsToExclude|String collection|File extensions to exclude from scans and real time protection.|
|defenderFilesAndFoldersToExclude|String collection|Files and folder to exclude from scans and real time protection.|
|defenderProcessesToExclude|String collection|Processes to exclude from scans and real time protection.|
|defenderPotentiallyUnwantedAppAction|[defenderProtectionType](../resources/intune-deviceconfig-defenderprotectiontype.md)|Added in Windows 10, version 1607. Specifies the level of detection for potentially unwanted applications (PUAs). Windows Defender alerts you when potentially unwanted software is being downloaded or attempts to install itself on your computer. Possible values are: `userDefined`, `enable`, `auditMode`, `warn`, `notConfigured`.|
|defenderScanDirection|[defenderRealtimeScanDirection](../resources/intune-deviceconfig-defenderrealtimescandirection.md)|Controls which sets of files should be monitored. Possible values are: `monitorAllFiles`, `monitorIncomingFilesOnly`, `monitorOutgoingFilesOnly`.|
|defenderScanType|[defenderScanType](../resources/intune-deviceconfig-defenderscantype.md)|Selects whether to perform a quick scan or full scan. Possible values are: `userDefined`, `disabled`, `quick`, `full`.|
|defenderScheduledQuickScanTime|TimeOfDay|Selects the time of day that the Windows Defender quick scan should run. For example, a value of 0=12:00AM, a value of 60=1:00AM, a value of 120=2:00, and so on, up to a value of 1380=11:00PM. The default value is 120|
|defenderScheduledScanDay|[weeklySchedule](../resources/intune-deviceconfig-weeklyschedule.md)|Selects the day that the Windows Defender scan should run. Possible values are: `userDefined`, `everyday`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `noScheduledScan`.|
|defenderScheduledScanTime|TimeOfDay|Selects the time of day that the Windows Defender scan should run.|
|defenderSignatureUpdateIntervalInHours|Int32|Specifies the interval (in hours) that will be used to check for signatures, so instead of using the ScheduleDay and ScheduleTime the check for new signatures will be set according to the interval. Valid values 0 to 24|
|defenderSubmitSamplesConsentType|[defenderSubmitSamplesConsentType](../resources/intune-deviceconfig-defendersubmitsamplesconsenttype.md)|Checks for the user consent level in Windows Defender to send data. Possible values are: `sendSafeSamplesAutomatically`, `alwaysPrompt`, `neverSend`, `sendAllSamplesAutomatically`.|
|defenderDetectedMalwareActions|[defenderDetectedMalwareActions](../resources/intune-deviceconfig-defenderdetectedmalwareactions.md)|Allows an administrator to specify any valid threat severity levels and the corresponding default action ID to take.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|groupAssignments|[deviceConfigurationGroupAssignment](../resources/intune-deviceconfig-deviceconfigurationgroupassignment.md) collection|The list of group assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|assignments|[deviceConfigurationAssignment](../resources/intune-deviceconfig-deviceconfigurationassignment.md) collection|The list of assignments for the device configuration profile. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceStatuses|[deviceConfigurationDeviceStatus](../resources/intune-deviceconfig-deviceconfigurationdevicestatus.md) collection|Device configuration installation status by device. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|userStatuses|[deviceConfigurationUserStatus](../resources/intune-deviceconfig-deviceconfigurationuserstatus.md) collection|Device configuration installation status by user. Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceStatusOverview|[deviceConfigurationDeviceOverview](../resources/intune-deviceconfig-deviceconfigurationdeviceoverview.md)|Device Configuration devices status overview Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|userStatusOverview|[deviceConfigurationUserOverview](../resources/intune-deviceconfig-deviceconfigurationuseroverview.md)|Device Configuration users status overview Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|
|deviceSettingStateSummaries|[settingStateDeviceSummary](../resources/intune-deviceconfig-settingstatedevicesummary.md) collection|Device Configuration Setting State Device Summary Inherited from [deviceConfiguration](../resources/intune-shared-deviceconfiguration.md)|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windows10EndpointProtectionConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windows10EndpointProtectionConfiguration",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "roleScopeTagIds": [
    "String"
  ],
  "supportsScopeTags": true,
  "deviceManagementApplicabilityRuleOsEdition": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsEdition",
    "osEditionTypes": [
      "String"
    ],
    "name": "String",
    "ruleType": "String"
  },
  "deviceManagementApplicabilityRuleOsVersion": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleOsVersion",
    "minOSVersion": "String",
    "maxOSVersion": "String",
    "name": "String",
    "ruleType": "String"
  },
  "deviceManagementApplicabilityRuleDeviceMode": {
    "@odata.type": "microsoft.graph.deviceManagementApplicabilityRuleDeviceMode",
    "deviceMode": "String",
    "name": "String",
    "ruleType": "String"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "version": 1024,
  "dmaGuardDeviceEnumerationPolicy": "String",
  "firewallRules": [
    {
      "@odata.type": "microsoft.graph.windowsFirewallRule",
      "displayName": "String",
      "description": "String",
      "packageFamilyName": "String",
      "filePath": "String",
      "serviceName": "String",
      "protocol": 1024,
      "localPortRanges": [
        "String"
      ],
      "remotePortRanges": [
        "String"
      ],
      "localAddressRanges": [
        "String"
      ],
      "remoteAddressRanges": [
        "String"
      ],
      "profileTypes": "String",
      "action": "String",
      "trafficDirection": "String",
      "interfaceTypes": "String",
      "edgeTraversal": "String",
      "localUserAuthorizations": "String"
    }
  ],
  "userRightsAccessCredentialManagerAsTrustedCaller": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsAllowAccessFromNetwork": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsBlockAccessFromNetwork": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsActAsPartOfTheOperatingSystem": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsLocalLogOn": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsDenyLocalLogOn": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsBackupData": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsChangeSystemTime": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsCreateGlobalObjects": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsCreatePageFile": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsCreatePermanentSharedObjects": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsCreateSymbolicLinks": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsCreateToken": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsDebugPrograms": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsRemoteDesktopServicesLogOn": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsDelegation": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsGenerateSecurityAudits": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsImpersonateClient": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsIncreaseSchedulingPriority": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsLoadUnloadDrivers": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsLockMemory": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsManageAuditingAndSecurityLogs": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsManageVolumes": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsModifyFirmwareEnvironment": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsModifyObjectLabels": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsProfileSingleProcess": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsRemoteShutdown": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsRestoreData": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "userRightsTakeOwnership": {
    "@odata.type": "microsoft.graph.deviceManagementUserRightsSetting",
    "state": "String",
    "localUsersOrGroups": [
      {
        "@odata.type": "microsoft.graph.deviceManagementUserRightsLocalUserOrGroup",
        "name": "String",
        "description": "String",
        "securityIdentifier": "String"
      }
    ]
  },
  "xboxServicesEnableXboxGameSaveTask": true,
  "xboxServicesAccessoryManagementServiceStartupMode": "String",
  "xboxServicesLiveAuthManagerServiceStartupMode": "String",
  "xboxServicesLiveGameSaveServiceStartupMode": "String",
  "xboxServicesLiveNetworkingServiceStartupMode": "String",
  "localSecurityOptionsBlockMicrosoftAccounts": true,
  "localSecurityOptionsBlockRemoteLogonWithBlankPassword": true,
  "localSecurityOptionsDisableAdministratorAccount": true,
  "localSecurityOptionsAdministratorAccountName": "String",
  "localSecurityOptionsDisableGuestAccount": true,
  "localSecurityOptionsGuestAccountName": "String",
  "localSecurityOptionsAllowUndockWithoutHavingToLogon": true,
  "localSecurityOptionsBlockUsersInstallingPrinterDrivers": true,
  "localSecurityOptionsBlockRemoteOpticalDriveAccess": true,
  "localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser": "String",
  "localSecurityOptionsMachineInactivityLimit": 1024,
  "localSecurityOptionsMachineInactivityLimitInMinutes": 1024,
  "localSecurityOptionsDoNotRequireCtrlAltDel": true,
  "localSecurityOptionsHideLastSignedInUser": true,
  "localSecurityOptionsHideUsernameAtSignIn": true,
  "localSecurityOptionsLogOnMessageTitle": "String",
  "localSecurityOptionsLogOnMessageText": "String",
  "localSecurityOptionsAllowPKU2UAuthenticationRequests": true,
  "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool": true,
  "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager": "String",
  "localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedClients": "String",
  "localSecurityOptionsMinimumSessionSecurityForNtlmSspBasedServers": "String",
  "lanManagerAuthenticationLevel": "String",
  "lanManagerWorkstationDisableInsecureGuestLogons": true,
  "localSecurityOptionsClearVirtualMemoryPageFile": true,
  "localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn": true,
  "localSecurityOptionsAllowUIAccessApplicationElevation": true,
  "localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations": true,
  "localSecurityOptionsOnlyElevateSignedExecutables": true,
  "localSecurityOptionsAdministratorElevationPromptBehavior": "String",
  "localSecurityOptionsStandardUserElevationPromptBehavior": "String",
  "localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation": true,
  "localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation": true,
  "localSecurityOptionsAllowUIAccessApplicationsForSecureLocations": true,
  "localSecurityOptionsUseAdminApprovalMode": true,
  "localSecurityOptionsUseAdminApprovalModeForAdministrators": true,
  "localSecurityOptionsInformationShownOnLockScreen": "String",
  "localSecurityOptionsInformationDisplayedOnLockScreen": "String",
  "localSecurityOptionsDisableClientDigitallySignCommunicationsIfServerAgrees": true,
  "localSecurityOptionsClientDigitallySignCommunicationsAlways": true,
  "localSecurityOptionsClientSendUnencryptedPasswordToThirdPartySMBServers": true,
  "localSecurityOptionsDisableServerDigitallySignCommunicationsAlways": true,
  "localSecurityOptionsDisableServerDigitallySignCommunicationsIfClientAgrees": true,
  "localSecurityOptionsRestrictAnonymousAccessToNamedPipesAndShares": true,
  "localSecurityOptionsDoNotAllowAnonymousEnumerationOfSAMAccounts": true,
  "localSecurityOptionsAllowAnonymousEnumerationOfSAMAccountsAndShares": true,
  "localSecurityOptionsDoNotStoreLANManagerHashValueOnNextPasswordChange": true,
  "localSecurityOptionsSmartCardRemovalBehavior": "String",
  "defenderSecurityCenterDisableAppBrowserUI": true,
  "defenderSecurityCenterDisableFamilyUI": true,
  "defenderSecurityCenterDisableHealthUI": true,
  "defenderSecurityCenterDisableNetworkUI": true,
  "defenderSecurityCenterDisableVirusUI": true,
  "defenderSecurityCenterDisableAccountUI": true,
  "defenderSecurityCenterDisableClearTpmUI": true,
  "defenderSecurityCenterDisableHardwareUI": true,
  "defenderSecurityCenterDisableNotificationAreaUI": true,
  "defenderSecurityCenterDisableRansomwareUI": true,
  "defenderSecurityCenterDisableSecureBootUI": true,
  "defenderSecurityCenterDisableTroubleshootingUI": true,
  "defenderSecurityCenterDisableVulnerableTpmFirmwareUpdateUI": true,
  "defenderSecurityCenterOrganizationDisplayName": "String",
  "defenderSecurityCenterHelpEmail": "String",
  "defenderSecurityCenterHelpPhone": "String",
  "defenderSecurityCenterHelpURL": "String",
  "defenderSecurityCenterNotificationsFromApp": "String",
  "defenderSecurityCenterITContactDisplay": "String",
  "windowsDefenderTamperProtection": "String",
  "firewallBlockStatefulFTP": true,
  "firewallIdleTimeoutForSecurityAssociationInSeconds": 1024,
  "firewallPreSharedKeyEncodingMethod": "String",
  "firewallIPSecExemptionsNone": true,
  "firewallIPSecExemptionsAllowNeighborDiscovery": true,
  "firewallIPSecExemptionsAllowICMP": true,
  "firewallIPSecExemptionsAllowRouterDiscovery": true,
  "firewallIPSecExemptionsAllowDHCP": true,
  "firewallCertificateRevocationListCheckMethod": "String",
  "firewallMergeKeyingModuleSettings": true,
  "firewallPacketQueueingMethod": "String",
  "firewallProfileDomain": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile",
    "firewallEnabled": "String",
    "stealthModeRequired": true,
    "stealthModeBlocked": true,
    "incomingTrafficRequired": true,
    "incomingTrafficBlocked": true,
    "unicastResponsesToMulticastBroadcastsRequired": true,
    "unicastResponsesToMulticastBroadcastsBlocked": true,
    "inboundNotificationsRequired": true,
    "inboundNotificationsBlocked": true,
    "authorizedApplicationRulesFromGroupPolicyMerged": true,
    "authorizedApplicationRulesFromGroupPolicyNotMerged": true,
    "globalPortRulesFromGroupPolicyMerged": true,
    "globalPortRulesFromGroupPolicyNotMerged": true,
    "connectionSecurityRulesFromGroupPolicyMerged": true,
    "connectionSecurityRulesFromGroupPolicyNotMerged": true,
    "outboundConnectionsRequired": true,
    "outboundConnectionsBlocked": true,
    "inboundConnectionsRequired": true,
    "inboundConnectionsBlocked": true,
    "securedPacketExemptionAllowed": true,
    "securedPacketExemptionBlocked": true,
    "policyRulesFromGroupPolicyMerged": true,
    "policyRulesFromGroupPolicyNotMerged": true
  },
  "firewallProfilePublic": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile",
    "firewallEnabled": "String",
    "stealthModeRequired": true,
    "stealthModeBlocked": true,
    "incomingTrafficRequired": true,
    "incomingTrafficBlocked": true,
    "unicastResponsesToMulticastBroadcastsRequired": true,
    "unicastResponsesToMulticastBroadcastsBlocked": true,
    "inboundNotificationsRequired": true,
    "inboundNotificationsBlocked": true,
    "authorizedApplicationRulesFromGroupPolicyMerged": true,
    "authorizedApplicationRulesFromGroupPolicyNotMerged": true,
    "globalPortRulesFromGroupPolicyMerged": true,
    "globalPortRulesFromGroupPolicyNotMerged": true,
    "connectionSecurityRulesFromGroupPolicyMerged": true,
    "connectionSecurityRulesFromGroupPolicyNotMerged": true,
    "outboundConnectionsRequired": true,
    "outboundConnectionsBlocked": true,
    "inboundConnectionsRequired": true,
    "inboundConnectionsBlocked": true,
    "securedPacketExemptionAllowed": true,
    "securedPacketExemptionBlocked": true,
    "policyRulesFromGroupPolicyMerged": true,
    "policyRulesFromGroupPolicyNotMerged": true
  },
  "firewallProfilePrivate": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile",
    "firewallEnabled": "String",
    "stealthModeRequired": true,
    "stealthModeBlocked": true,
    "incomingTrafficRequired": true,
    "incomingTrafficBlocked": true,
    "unicastResponsesToMulticastBroadcastsRequired": true,
    "unicastResponsesToMulticastBroadcastsBlocked": true,
    "inboundNotificationsRequired": true,
    "inboundNotificationsBlocked": true,
    "authorizedApplicationRulesFromGroupPolicyMerged": true,
    "authorizedApplicationRulesFromGroupPolicyNotMerged": true,
    "globalPortRulesFromGroupPolicyMerged": true,
    "globalPortRulesFromGroupPolicyNotMerged": true,
    "connectionSecurityRulesFromGroupPolicyMerged": true,
    "connectionSecurityRulesFromGroupPolicyNotMerged": true,
    "outboundConnectionsRequired": true,
    "outboundConnectionsBlocked": true,
    "inboundConnectionsRequired": true,
    "inboundConnectionsBlocked": true,
    "securedPacketExemptionAllowed": true,
    "securedPacketExemptionBlocked": true,
    "policyRulesFromGroupPolicyMerged": true,
    "policyRulesFromGroupPolicyNotMerged": true
  },
  "defenderAdobeReaderLaunchChildProcess": "String",
  "defenderAttackSurfaceReductionExcludedPaths": [
    "String"
  ],
  "defenderOfficeAppsOtherProcessInjectionType": "String",
  "defenderOfficeAppsOtherProcessInjection": "String",
  "defenderOfficeCommunicationAppsLaunchChildProcess": "String",
  "defenderOfficeAppsExecutableContentCreationOrLaunchType": "String",
  "defenderOfficeAppsExecutableContentCreationOrLaunch": "String",
  "defenderOfficeAppsLaunchChildProcessType": "String",
  "defenderOfficeAppsLaunchChildProcess": "String",
  "defenderOfficeMacroCodeAllowWin32ImportsType": "String",
  "defenderOfficeMacroCodeAllowWin32Imports": "String",
  "defenderScriptObfuscatedMacroCodeType": "String",
  "defenderScriptObfuscatedMacroCode": "String",
  "defenderScriptDownloadedPayloadExecutionType": "String",
  "defenderScriptDownloadedPayloadExecution": "String",
  "defenderPreventCredentialStealingType": "String",
  "defenderProcessCreationType": "String",
  "defenderProcessCreation": "String",
  "defenderUntrustedUSBProcessType": "String",
  "defenderUntrustedUSBProcess": "String",
  "defenderUntrustedExecutableType": "String",
  "defenderUntrustedExecutable": "String",
  "defenderEmailContentExecutionType": "String",
  "defenderEmailContentExecution": "String",
  "defenderAdvancedRansomewareProtectionType": "String",
  "defenderGuardMyFoldersType": "String",
  "defenderGuardedFoldersAllowedAppPaths": [
    "String"
  ],
  "defenderAdditionalGuardedFolders": [
    "String"
  ],
  "defenderNetworkProtectionType": "String",
  "defenderExploitProtectionXml": "binary",
  "defenderExploitProtectionXmlFileName": "String",
  "defenderSecurityCenterBlockExploitProtectionOverride": true,
  "appLockerApplicationControl": "String",
  "deviceGuardLocalSystemAuthorityCredentialGuardSettings": "String",
  "deviceGuardEnableVirtualizationBasedSecurity": true,
  "deviceGuardEnableSecureBootWithDMA": true,
  "deviceGuardSecureBootWithDMA": "String",
  "deviceGuardLaunchSystemGuard": "String",
  "smartScreenEnableInShell": true,
  "smartScreenBlockOverrideForFiles": true,
  "applicationGuardEnabled": true,
  "applicationGuardEnabledOptions": "String",
  "applicationGuardBlockFileTransfer": "String",
  "applicationGuardBlockNonEnterpriseContent": true,
  "applicationGuardAllowPersistence": true,
  "applicationGuardForceAuditing": true,
  "applicationGuardBlockClipboardSharing": "String",
  "applicationGuardAllowPrintToPDF": true,
  "applicationGuardAllowPrintToXPS": true,
  "applicationGuardAllowPrintToLocalPrinters": true,
  "applicationGuardAllowPrintToNetworkPrinters": true,
  "applicationGuardAllowVirtualGPU": true,
  "applicationGuardAllowFileSaveOnHost": true,
  "bitLockerAllowStandardUserEncryption": true,
  "bitLockerDisableWarningForOtherDiskEncryption": true,
  "bitLockerEnableStorageCardEncryptionOnMobile": true,
  "bitLockerEncryptDevice": true,
  "bitLockerSystemDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerSystemDrivePolicy",
    "encryptionMethod": "String",
    "startupAuthenticationRequired": true,
    "startupAuthenticationBlockWithoutTpmChip": true,
    "startupAuthenticationTpmUsage": "String",
    "startupAuthenticationTpmPinUsage": "String",
    "startupAuthenticationTpmKeyUsage": "String",
    "startupAuthenticationTpmPinAndKeyUsage": "String",
    "minimumPinLength": 1024,
    "recoveryOptions": {
      "@odata.type": "microsoft.graph.bitLockerRecoveryOptions",
      "blockDataRecoveryAgent": true,
      "recoveryPasswordUsage": "String",
      "recoveryKeyUsage": "String",
      "hideRecoveryOptions": true,
      "enableRecoveryInformationSaveToStore": true,
      "recoveryInformationToStore": "String",
      "enableBitLockerAfterRecoveryInformationToStore": true
    },
    "prebootRecoveryEnableMessageAndUrl": true,
    "prebootRecoveryMessage": "String",
    "prebootRecoveryUrl": "String"
  },
  "bitLockerFixedDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerFixedDrivePolicy",
    "encryptionMethod": "String",
    "requireEncryptionForWriteAccess": true,
    "recoveryOptions": {
      "@odata.type": "microsoft.graph.bitLockerRecoveryOptions",
      "blockDataRecoveryAgent": true,
      "recoveryPasswordUsage": "String",
      "recoveryKeyUsage": "String",
      "hideRecoveryOptions": true,
      "enableRecoveryInformationSaveToStore": true,
      "recoveryInformationToStore": "String",
      "enableBitLockerAfterRecoveryInformationToStore": true
    }
  },
  "bitLockerRemovableDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerRemovableDrivePolicy",
    "encryptionMethod": "String",
    "requireEncryptionForWriteAccess": true,
    "blockCrossOrganizationWriteAccess": true
  },
  "bitLockerRecoveryPasswordRotation": "String",
  "defenderDisableScanArchiveFiles": true,
  "defenderAllowScanArchiveFiles": true,
  "defenderDisableBehaviorMonitoring": true,
  "defenderAllowBehaviorMonitoring": true,
  "defenderDisableCloudProtection": true,
  "defenderAllowCloudProtection": true,
  "defenderEnableScanIncomingMail": true,
  "defenderEnableScanMappedNetworkDrivesDuringFullScan": true,
  "defenderDisableScanRemovableDrivesDuringFullScan": true,
  "defenderAllowScanRemovableDrivesDuringFullScan": true,
  "defenderDisableScanDownloads": true,
  "defenderAllowScanDownloads": true,
  "defenderDisableIntrusionPreventionSystem": true,
  "defenderAllowIntrusionPreventionSystem": true,
  "defenderDisableOnAccessProtection": true,
  "defenderAllowOnAccessProtection": true,
  "defenderDisableRealTimeMonitoring": true,
  "defenderAllowRealTimeMonitoring": true,
  "defenderDisableScanNetworkFiles": true,
  "defenderAllowScanNetworkFiles": true,
  "defenderDisableScanScriptsLoadedInInternetExplorer": true,
  "defenderAllowScanScriptsLoadedInInternetExplorer": true,
  "defenderBlockEndUserAccess": true,
  "defenderAllowEndUserAccess": true,
  "defenderScanMaxCpuPercentage": 1024,
  "defenderCheckForSignaturesBeforeRunningScan": true,
  "defenderCloudBlockLevel": "String",
  "defenderCloudExtendedTimeoutInSeconds": 1024,
  "defenderDaysBeforeDeletingQuarantinedMalware": 1024,
  "defenderDisableCatchupFullScan": true,
  "defenderDisableCatchupQuickScan": true,
  "defenderEnableLowCpuPriority": true,
  "defenderFileExtensionsToExclude": [
    "String"
  ],
  "defenderFilesAndFoldersToExclude": [
    "String"
  ],
  "defenderProcessesToExclude": [
    "String"
  ],
  "defenderPotentiallyUnwantedAppAction": "String",
  "defenderScanDirection": "String",
  "defenderScanType": "String",
  "defenderScheduledQuickScanTime": "String (time of day)",
  "defenderScheduledScanDay": "String",
  "defenderScheduledScanTime": "String (time of day)",
  "defenderSignatureUpdateIntervalInHours": 1024,
  "defenderSubmitSamplesConsentType": "String",
  "defenderDetectedMalwareActions": {
    "@odata.type": "microsoft.graph.defenderDetectedMalwareActions",
    "lowSeverity": "String",
    "moderateSeverity": "String",
    "highSeverity": "String",
    "severeSeverity": "String"
  }
}
```




