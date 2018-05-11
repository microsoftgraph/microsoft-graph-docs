# Create windows10EndpointProtectionConfiguration

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Create a new [windows10EndpointProtectionConfiguration](../resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) object.
## Prerequisites
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|DeviceManagementConfiguration.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP Request
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/deviceConfigurations
POST /deviceManagement/deviceConfigurations/{deviceConfigurationId}/microsoft.graph.windowsDomainJoinConfiguration/networkAccessConfigurations
```

## Request headers
|Header|Value|
|:---|:---|
|Authorization|Bearer &lt;token&gt; Required.|
|Accept|application/json|

## Request body
In the request body, supply a JSON representation for the windows10EndpointProtectionConfiguration object.

The following table shows the properties that are required when you create the windows10EndpointProtectionConfiguration.

|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|lastModifiedDateTime|DateTimeOffset|DateTime the object was last modified. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|createdDateTime|DateTimeOffset|DateTime the object was created. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|description|String|Admin provided description of the Device Configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|displayName|String|Admin provided name of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|version|Int32|Version of the device configuration. Inherited from [deviceConfiguration](../resources/intune_deviceconfig_deviceconfiguration.md)|
|localSecurityOptionsBlockMicrosoftAccounts|Boolean|Prevent users from adding new Microsoft accounts to this computer.|
|localSecurityOptionsBlockRemoteLogonWithBlankPassword|Boolean|Enable Local accounts that are not password protected to log on from locations other than the physical device.Default is enabled|
|localSecurityOptionsEnableAdministratorAccount|Boolean|Determines whether the Local Administrator account is enabled or disabled.|
|localSecurityOptionsAdministratorAccountName|String|Define a different account name to be associated with the security identifier (SID) for the account “Administrator”.|
|localSecurityOptionsEnableGuestAccount|Boolean|Determines if the Guest account is enabled or disabled.|
|localSecurityOptionsGuestAccountName|String|Define a different account name to be associated with the security identifier (SID) for the account “Guest”.|
|localSecurityOptionsAllowUndockWithoutHavingToLogon|Boolean|Prevent a portable computer from being undocked without having to log in.|
|localSecurityOptionsBlockUsersInstallingPrinterDrivers|Boolean|Restrict installing printer drivers as part of connecting to a shared printer to admins only.|
|localSecurityOptionsBlockRemoteOpticalDriveAccess|Boolean|Enabling this settings allows only interactively logged on user to access CD-ROM media.|
|localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser|[localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUserType](../resources/intune_deviceconfig_localsecurityoptionsformatandejectofremovablemediaallowedusertype.md)|Define who is allowed to format and eject removable NTFS media. Possible values are: `notConfigured`, `administrators`, `administratorsAndPowerUsers`, `administratorsAndInteractiveUsers`.|
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
|localSecurityOptionsClearVirtualMemoryPageFile|Boolean|This security setting determines whether the virtual memory pagefile is cleared when the system is shut down.|
|localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn|Boolean|This security setting determines whether a computer can be shut down without having to log on to Windows.|
|localSecurityOptionsAllowUIAccessApplicationElevation|Boolean|Allow UIAccess apps to prompt for elevation without using the secure desktop.|
|localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations|Boolean|Virtualize file and registry write failures to per user locations|
|localSecurityOptionsOnlyElevateSignedExecutables|Boolean|Enforce PKI certification path validation for a given executable file before it is permitted to run.|
|localSecurityOptionsAdministratorElevationPromptBehavior|[localSecurityOptionsAdministratorElevationPromptBehaviorType](../resources/intune_deviceconfig_localsecurityoptionsadministratorelevationpromptbehaviortype.md)|Define the behavior of the elevation prompt for admins in Admin Approval Mode. Possible values are: `notConfigured`, `elevateWithoutPrompting`, `promptForCredentialsOnTheSecureDesktop`, `promptForConsentOnTheSecureDesktop`, `promptForCredentials`, `promptForConsent`, `promptForConsentForNonWindowsBinaries`.|
|localSecurityOptionsStandardUserElevationPromptBehavior|[localSecurityOptionsStandardUserElevationPromptBehaviorType](../resources/intune_deviceconfig_localsecurityoptionsstandarduserelevationpromptbehaviortype.md)|Define the behavior of the elevation prompt for standard users. Possible values are: `notConfigured`, `automaticallyDenyElevationRequests`, `promptForCredentialsOnTheSecureDesktop`, `promptForCredentials`.|
|localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation|Boolean|Enable all elevation requests to go to the interactive user's desktop rather than the secure desktop. Prompt behavior policy settings for admins and standard users are used.|
|localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation|Boolean|App installations requiring elevated privileges will prompt for admin credentials.Default is enabled|
|localSecurityOptionsAllowUIAccessApplicationsForSecureLocations|Boolean|Allow UIAccess apps to prompt for elevation without using the secure desktop.Default is enabled|
|localSecurityOptionsUseAdminApprovalMode|Boolean|Defines whether the built-in admin account uses Admin Approval Mode or runs all apps with full admin privileges.Default is enabled|
|localSecurityOptionsUseAdminApprovalModeForAdministrators|Boolean|Define whether Admin Approval Mode and all UAC policy settings are enabled, default is enabled|
|localSecurityOptionsInformationShownOnLockScreen|[localSecurityOptionsInformationShownOnLockScreenType](../resources/intune_deviceconfig_localsecurityoptionsinformationshownonlockscreentype.md)|Configure the user information that is displayed when the session is locked. If not configured, user display name, domain and username are shown. Possible values are: `notConfigured`, `userDisplayNameDomainUser`, `userDisplayNameOnly`, `doNotDisplayUser`.|
|localSecurityOptionsInformationDisplayedOnLockScreen|[localSecurityOptionsInformationDisplayedOnLockScreenType](../resources/intune_deviceconfig_localsecurityoptionsinformationdisplayedonlockscreentype.md)|Configure the user information that is displayed when the session is locked. If not configured, user display name, domain and username are shown. Possible values are: `notConfigured`, `administrators`, `administratorsAndPowerUsers`, `administratorsAndInteractiveUsers`.|
|defenderSecurityCenterDisableAppBrowserUI|Boolean|Used to disable the display of the app and browser protection area.|
|defenderSecurityCenterDisableFamilyUI|Boolean|Used to disable the display of the family options area.|
|defenderSecurityCenterDisableHealthUI|Boolean|Used to disable the display of the device performance and health area.|
|defenderSecurityCenterDisableNetworkUI|Boolean|Used to disable the display of the firewall and network protection area.|
|defenderSecurityCenterDisableVirusUI|Boolean|Used to disable the display of the virus and threat protection area.|
|defenderSecurityCenterDisableAccountUI|Boolean|Used to disable the display of the account protection area.|
|defenderSecurityCenterDisableHardwareUI|Boolean|Used to disable the display of the hardware protection area.|
|defenderSecurityCenterDisableRansomwareUI|Boolean|Used to disable the display of the ransomware protection area. |
|defenderSecurityCenterDisableSecureBootUI|Boolean|Used to disable the display of the secure boot area under Device security.|
|defenderSecurityCenterDisableTroubleshootingUI|Boolean|Used to disable the display of the security process troubleshooting under Device security.|
|defenderSecurityCenterOrganizationDisplayName|String|The company name that is displayed to the users.|
|defenderSecurityCenterHelpEmail|String|The email address that is displayed to users.|
|defenderSecurityCenterHelpPhone|String|The phone number or Skype ID that is displayed to users.|
|defenderSecurityCenterHelpURL|String|The help portal URL this is displayed to users.|
|defenderSecurityCenterNotificationsFromApp|[defenderSecurityCenterNotificationsFromAppType](../resources/intune_deviceconfig_defendersecuritycenternotificationsfromapptype.md)|Notifications to show from the displayed areas of app. Possible values are: `notConfigured`, `blockNoncriticalNotifications`, `blockAllNotifications`.|
|defenderSecurityCenterITContactDisplay|[defenderSecurityCenterITContactDisplayType](../resources/intune_deviceconfig_defendersecuritycenteritcontactdisplaytype.md)|Configure where to display IT contact information to end users. Possible values are: `notConfigured`, `displayInAppAndInNotifications`, `displayOnlyInApp`, `displayOnlyInNotifications`.|
|firewallBlockStatefulFTP|Boolean|Blocks stateful FTP connections to the device|
|firewallIdleTimeoutForSecurityAssociationInSeconds|Int32|Configures the idle timeout for security associations, in seconds, from 300 to 3600 inclusive. This is the period after which security associations will expire and be deleted. Valid values 300 to 3600|
|firewallPreSharedKeyEncodingMethod|[firewallPreSharedKeyEncodingMethodType](../resources/intune_deviceconfig_firewallpresharedkeyencodingmethodtype.md)|Select the preshared key encoding to be used. Possible values are: `deviceDefault`, `none`, `utF8`.|
|firewallIPSecExemptionsAllowNeighborDiscovery|Boolean|Configures IPSec exemptions to allow neighbor discovery IPv6 ICMP type-codes|
|firewallIPSecExemptionsAllowICMP|Boolean|Configures IPSec exemptions to allow ICMP|
|firewallIPSecExemptionsAllowRouterDiscovery|Boolean|Configures IPSec exemptions to allow router discovery IPv6 ICMP type-codes|
|firewallIPSecExemptionsAllowDHCP|Boolean|Configures IPSec exemptions to allow both IPv4 and IPv6 DHCP traffic|
|firewallCertificateRevocationListCheckMethod|[firewallCertificateRevocationListCheckMethodType](../resources/intune_deviceconfig_firewallcertificaterevocationlistcheckmethodtype.md)|Specify how the certificate revocation list is to be enforced. Possible values are: `deviceDefault`, `none`, `attempt`, `require`.|
|firewallMergeKeyingModuleSettings|Boolean|If an authentication set is not fully supported by a keying module, direct the module to ignore only unsupported authentication suites rather than the entire set|
|firewallPacketQueueingMethod|[firewallPacketQueueingMethodType](../resources/intune_deviceconfig_firewallpacketqueueingmethodtype.md)|Configures how packet queueing should be applied in the tunnel gateway scenario. Possible values are: `deviceDefault`, `disabled`, `queueInbound`, `queueOutbound`, `queueBoth`.|
|firewallProfileDomain|[windowsFirewallNetworkProfile](../resources/intune_deviceconfig_windowsfirewallnetworkprofile.md)|Configures the firewall profile settings for domain networks|
|firewallProfilePublic|[windowsFirewallNetworkProfile](../resources/intune_deviceconfig_windowsfirewallnetworkprofile.md)|Configures the firewall profile settings for public networks|
|firewallProfilePrivate|[windowsFirewallNetworkProfile](../resources/intune_deviceconfig_windowsfirewallnetworkprofile.md)|Configures the firewall profile settings for private networks|
|defenderAttackSurfaceReductionExcludedPaths|String collection|List of exe files and folders to be excluded from attack surface reduction rules|
|defenderOfficeAppsOtherProcessInjectionType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating the behavior of  Office applications injecting into other processes. Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderOfficeAppsExecutableContentCreationOrLaunchType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating the behavior of Office applications/macros creating or launching executable content. Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderOfficeAppsLaunchChildProcessType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating the behavior of Office application launching child processes. Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderOfficeMacroCodeAllowWin32ImportsType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating the behavior of Win32 imports from Macro code in Office. Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderScriptObfuscatedMacroCodeType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating the behavior of obfuscated js/vbs/ps/macro code. Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderScriptDownloadedPayloadExecutionType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating the behavior of js/vbs executing payload downloaded from Internet. Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderPreventCredentialStealingType|[defenderProtectionType](../resources/intune_deviceconfig_defenderprotectiontype.md)|Value indicating if credential stealing from the Windows local security authority subsystem is permitted. Possible values are: `userDefined`, `enable`, `auditMode`.|
|defenderProcessCreationType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating response to process creations originating from PSExec and WMI commands. Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderUntrustedUSBProcessType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating response to untrusted and unsigned processes that run from USB. Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderUntrustedExecutableType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating response to executables that don't meet a prevalence, age, or trusted list criteria. Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderEmailContentExecutionType|[defenderAttackSurfaceType](../resources/intune_deviceconfig_defenderattacksurfacetype.md)|Value indicating if execution of executable content (exe, dll, ps, js, vbs, etc) should be dropped from email (webmail/mail-client). Possible values are: `userDefined`, `block`, `auditMode`.|
|defenderAdvancedRansomewareProtectionType|[defenderProtectionType](../resources/intune_deviceconfig_defenderprotectiontype.md)|Value indicating use of advanced protection against ransomeware. Possible values are: `userDefined`, `enable`, `auditMode`.|
|defenderGuardMyFoldersType|[folderProtectionType](../resources/intune_deviceconfig_folderprotectiontype.md)|Value indicating the behavior of protected folders. Possible values are: `userDefined`, `enable`, `auditMode`, `blockDiskModification`, `auditDiskModification`.|
|defenderGuardedFoldersAllowedAppPaths|String collection|List of paths to exe that are allowed to access protected folders|
|defenderAdditionalGuardedFolders|String collection|List of folder paths to be added to the list of protected folders|
|defenderNetworkProtectionType|[defenderProtectionType](../resources/intune_deviceconfig_defenderprotectiontype.md)|Value indicating the behavior of NetworkProtection. Possible values are: `userDefined`, `enable`, `auditMode`.|
|defenderExploitProtectionXml|Binary|Xml content containing information regarding exploit protection details.|
|defenderExploitProtectionXmlFileName|String|Name of the file from which DefenderExploitProtectionXml was obtained.|
|defenderSecurityCenterBlockExploitProtectionOverride|Boolean|Indicates whether or not to block user from overriding Exploit Protection settings.|
|appLockerApplicationControl|[appLockerApplicationControlType](../resources/intune_deviceconfig_applockerapplicationcontroltype.md)|Enables the Admin to choose what types of app to allow on devices. Possible values are: `notConfigured`, `enforceComponentsAndStoreApps`, `auditComponentsAndStoreApps`, `enforceComponentsStoreAppsAndSmartlocker`, `auditComponentsStoreAppsAndSmartlocker`.|
|deviceGuardLocalSystemAuthorityCredentialGuardSettings|[deviceGuardLocalSystemAuthorityCredentialGuardType](../resources/intune_deviceconfig_deviceguardlocalsystemauthoritycredentialguardtype.md)|Turn on Credential Guard when Platform Security Level with Secure Boot and Virtualization Based Security are both enabled. Possible values are: `notConfigured`, `enableWithUEFILock`, `enableWithoutUEFILock`.|
|deviceGuardEnableVirtualizationBasedSecurity|Boolean|Turns On Virtualization Based Security(VBS).|
|deviceGuardEnableSecureBootWithDMA|Boolean|Specifies whether Platform Security Level is enabled at next reboot.|
|smartScreenEnableInShell|Boolean|Allows IT Admins to configure SmartScreen for Windows.|
|smartScreenBlockOverrideForFiles|Boolean|Allows IT Admins to control whether users can can ignore SmartScreen warnings and run malicious files.|
|applicationGuardEnabled|Boolean|Enable Windows Defender Application Guard|
|applicationGuardBlockFileTransfer|[applicationGuardBlockFileTransferType](../resources/intune_deviceconfig_applicationguardblockfiletransfertype.md)|Block clipboard to transfer image file, text file or neither of them. Possible values are: `notConfigured`, `blockImageAndTextFile`, `blockImageFile`, `blockNone`, `blockTextFile`.|
|applicationGuardBlockNonEnterpriseContent|Boolean|Block enterprise sites to load non-enterprise content, such as third party plug-ins|
|applicationGuardAllowPersistence|Boolean|Allow persisting user generated data inside the App Guard Containter (favorites, cookies, web passwords, etc.)|
|applicationGuardForceAuditing|Boolean|Force auditing will persist Windows logs and events to meet security/compliance criteria (sample events are user login-logoff, use of privilege rights, software installation, system changes, etc.)|
|applicationGuardBlockClipboardSharing|[applicationGuardBlockClipboardSharingType](../resources/intune_deviceconfig_applicationguardblockclipboardsharingtype.md)|Block clipboard to share data from Host to Container, or from Container to Host, or both ways, or neither ways. Possible values are: `notConfigured`, `blockBoth`, `blockHostToContainer`, `blockContainerToHost`, `blockNone`.|
|applicationGuardAllowPrintToPDF|Boolean|Allow printing to PDF from Container|
|applicationGuardAllowPrintToXPS|Boolean|Allow printing to XPS from Container|
|applicationGuardAllowPrintToLocalPrinters|Boolean|Allow printing to Local Printers from Container|
|applicationGuardAllowPrintToNetworkPrinters|Boolean|Allow printing to Network Printers from Container|
|applicationGuardAllowVirtualGPU|Boolean|Allow application guard to use virtual GPU|
|applicationGuardAllowFileSaveOnHost|Boolean|Allow users to download files from Microsoft Edge in the application guard container and save them on the host file system|
|bitLockerDisableWarningForOtherDiskEncryption|Boolean|Allows the Admin to disable the warning prompt for other disk encryption on the user machines.|
|bitLockerEnableStorageCardEncryptionOnMobile|Boolean|Allows the admin to require encryption to be turned on using BitLocker. This policy is valid only for a mobile SKU.|
|bitLockerEncryptDevice|Boolean|Allows the admin to require encryption to be turned on using BitLocker.|
|bitLockerSystemDrivePolicy|[bitLockerSystemDrivePolicy](../resources/intune_deviceconfig_bitlockersystemdrivepolicy.md)|BitLocker System Drive Policy.|
|bitLockerFixedDrivePolicy|[bitLockerFixedDrivePolicy](../resources/intune_deviceconfig_bitlockerfixeddrivepolicy.md)|BitLocker Fixed Drive Policy.|
|bitLockerRemovableDrivePolicy|[bitLockerRemovableDrivePolicy](../resources/intune_deviceconfig_bitlockerremovabledrivepolicy.md)|BitLocker Removable Drive Policy.|



## Response
If successful, this method returns a `201 Created` response code and a [windows10EndpointProtectionConfiguration](../resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) object in the response body.

## Example
### Request
Here is an example of the request.
``` http
POST https://graph.microsoft.com/beta/deviceManagement/deviceConfigurations
Content-type: application/json
Content-length: 10628

{
  "@odata.type": "#microsoft.graph.windows10EndpointProtectionConfiguration",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "localSecurityOptionsBlockMicrosoftAccounts": true,
  "localSecurityOptionsBlockRemoteLogonWithBlankPassword": true,
  "localSecurityOptionsEnableAdministratorAccount": true,
  "localSecurityOptionsAdministratorAccountName": "Local Security Options Administrator Account Name value",
  "localSecurityOptionsEnableGuestAccount": true,
  "localSecurityOptionsGuestAccountName": "Local Security Options Guest Account Name value",
  "localSecurityOptionsAllowUndockWithoutHavingToLogon": true,
  "localSecurityOptionsBlockUsersInstallingPrinterDrivers": true,
  "localSecurityOptionsBlockRemoteOpticalDriveAccess": true,
  "localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser": "administrators",
  "localSecurityOptionsMachineInactivityLimit": 10,
  "localSecurityOptionsMachineInactivityLimitInMinutes": 3,
  "localSecurityOptionsDoNotRequireCtrlAltDel": true,
  "localSecurityOptionsHideLastSignedInUser": true,
  "localSecurityOptionsHideUsernameAtSignIn": true,
  "localSecurityOptionsLogOnMessageTitle": "Local Security Options Log On Message Title value",
  "localSecurityOptionsLogOnMessageText": "Local Security Options Log On Message Text value",
  "localSecurityOptionsAllowPKU2UAuthenticationRequests": true,
  "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool": true,
  "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager": "Local Security Options Allow Remote Calls To Security Accounts Manager value",
  "localSecurityOptionsClearVirtualMemoryPageFile": true,
  "localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn": true,
  "localSecurityOptionsAllowUIAccessApplicationElevation": true,
  "localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations": true,
  "localSecurityOptionsOnlyElevateSignedExecutables": true,
  "localSecurityOptionsAdministratorElevationPromptBehavior": "elevateWithoutPrompting",
  "localSecurityOptionsStandardUserElevationPromptBehavior": "automaticallyDenyElevationRequests",
  "localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation": true,
  "localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation": true,
  "localSecurityOptionsAllowUIAccessApplicationsForSecureLocations": true,
  "localSecurityOptionsUseAdminApprovalMode": true,
  "localSecurityOptionsUseAdminApprovalModeForAdministrators": true,
  "localSecurityOptionsInformationShownOnLockScreen": "userDisplayNameDomainUser",
  "localSecurityOptionsInformationDisplayedOnLockScreen": "administrators",
  "defenderSecurityCenterDisableAppBrowserUI": true,
  "defenderSecurityCenterDisableFamilyUI": true,
  "defenderSecurityCenterDisableHealthUI": true,
  "defenderSecurityCenterDisableNetworkUI": true,
  "defenderSecurityCenterDisableVirusUI": true,
  "defenderSecurityCenterDisableAccountUI": true,
  "defenderSecurityCenterDisableHardwareUI": true,
  "defenderSecurityCenterDisableRansomwareUI": true,
  "defenderSecurityCenterDisableSecureBootUI": true,
  "defenderSecurityCenterDisableTroubleshootingUI": true,
  "defenderSecurityCenterOrganizationDisplayName": "Defender Security Center Organization Display Name value",
  "defenderSecurityCenterHelpEmail": "Defender Security Center Help Email value",
  "defenderSecurityCenterHelpPhone": "Defender Security Center Help Phone value",
  "defenderSecurityCenterHelpURL": "Defender Security Center Help URL value",
  "defenderSecurityCenterNotificationsFromApp": "blockNoncriticalNotifications",
  "defenderSecurityCenterITContactDisplay": "displayInAppAndInNotifications",
  "firewallBlockStatefulFTP": true,
  "firewallIdleTimeoutForSecurityAssociationInSeconds": 2,
  "firewallPreSharedKeyEncodingMethod": "none",
  "firewallIPSecExemptionsAllowNeighborDiscovery": true,
  "firewallIPSecExemptionsAllowICMP": true,
  "firewallIPSecExemptionsAllowRouterDiscovery": true,
  "firewallIPSecExemptionsAllowDHCP": true,
  "firewallCertificateRevocationListCheckMethod": "none",
  "firewallMergeKeyingModuleSettings": true,
  "firewallPacketQueueingMethod": "disabled",
  "firewallProfileDomain": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile",
    "firewallEnabled": "blocked",
    "stealthModeBlocked": true,
    "incomingTrafficBlocked": true,
    "unicastResponsesToMulticastBroadcastsBlocked": true,
    "inboundNotificationsBlocked": true,
    "authorizedApplicationRulesFromGroupPolicyMerged": true,
    "globalPortRulesFromGroupPolicyMerged": true,
    "connectionSecurityRulesFromGroupPolicyMerged": true,
    "outboundConnectionsBlocked": true,
    "inboundConnectionsBlocked": true,
    "securedPacketExemptionAllowed": true,
    "policyRulesFromGroupPolicyMerged": true
  },
  "firewallProfilePublic": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile",
    "firewallEnabled": "blocked",
    "stealthModeBlocked": true,
    "incomingTrafficBlocked": true,
    "unicastResponsesToMulticastBroadcastsBlocked": true,
    "inboundNotificationsBlocked": true,
    "authorizedApplicationRulesFromGroupPolicyMerged": true,
    "globalPortRulesFromGroupPolicyMerged": true,
    "connectionSecurityRulesFromGroupPolicyMerged": true,
    "outboundConnectionsBlocked": true,
    "inboundConnectionsBlocked": true,
    "securedPacketExemptionAllowed": true,
    "policyRulesFromGroupPolicyMerged": true
  },
  "firewallProfilePrivate": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile",
    "firewallEnabled": "blocked",
    "stealthModeBlocked": true,
    "incomingTrafficBlocked": true,
    "unicastResponsesToMulticastBroadcastsBlocked": true,
    "inboundNotificationsBlocked": true,
    "authorizedApplicationRulesFromGroupPolicyMerged": true,
    "globalPortRulesFromGroupPolicyMerged": true,
    "connectionSecurityRulesFromGroupPolicyMerged": true,
    "outboundConnectionsBlocked": true,
    "inboundConnectionsBlocked": true,
    "securedPacketExemptionAllowed": true,
    "policyRulesFromGroupPolicyMerged": true
  },
  "defenderAttackSurfaceReductionExcludedPaths": [
    "Defender Attack Surface Reduction Excluded Paths value"
  ],
  "defenderOfficeAppsOtherProcessInjectionType": "block",
  "defenderOfficeAppsExecutableContentCreationOrLaunchType": "block",
  "defenderOfficeAppsLaunchChildProcessType": "block",
  "defenderOfficeMacroCodeAllowWin32ImportsType": "block",
  "defenderScriptObfuscatedMacroCodeType": "block",
  "defenderScriptDownloadedPayloadExecutionType": "block",
  "defenderPreventCredentialStealingType": "enable",
  "defenderProcessCreationType": "block",
  "defenderUntrustedUSBProcessType": "block",
  "defenderUntrustedExecutableType": "block",
  "defenderEmailContentExecutionType": "block",
  "defenderAdvancedRansomewareProtectionType": "enable",
  "defenderGuardMyFoldersType": "enable",
  "defenderGuardedFoldersAllowedAppPaths": [
    "Defender Guarded Folders Allowed App Paths value"
  ],
  "defenderAdditionalGuardedFolders": [
    "Defender Additional Guarded Folders value"
  ],
  "defenderNetworkProtectionType": "enable",
  "defenderExploitProtectionXml": "ZGVmZW5kZXJFeHBsb2l0UHJvdGVjdGlvblhtbA==",
  "defenderExploitProtectionXmlFileName": "Defender Exploit Protection Xml File Name value",
  "defenderSecurityCenterBlockExploitProtectionOverride": true,
  "appLockerApplicationControl": "enforceComponentsAndStoreApps",
  "deviceGuardLocalSystemAuthorityCredentialGuardSettings": "enableWithUEFILock",
  "deviceGuardEnableVirtualizationBasedSecurity": true,
  "deviceGuardEnableSecureBootWithDMA": true,
  "smartScreenEnableInShell": true,
  "smartScreenBlockOverrideForFiles": true,
  "applicationGuardEnabled": true,
  "applicationGuardBlockFileTransfer": "blockImageAndTextFile",
  "applicationGuardBlockNonEnterpriseContent": true,
  "applicationGuardAllowPersistence": true,
  "applicationGuardForceAuditing": true,
  "applicationGuardBlockClipboardSharing": "blockBoth",
  "applicationGuardAllowPrintToPDF": true,
  "applicationGuardAllowPrintToXPS": true,
  "applicationGuardAllowPrintToLocalPrinters": true,
  "applicationGuardAllowPrintToNetworkPrinters": true,
  "applicationGuardAllowVirtualGPU": true,
  "applicationGuardAllowFileSaveOnHost": true,
  "bitLockerDisableWarningForOtherDiskEncryption": true,
  "bitLockerEnableStorageCardEncryptionOnMobile": true,
  "bitLockerEncryptDevice": true,
  "bitLockerSystemDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerSystemDrivePolicy",
    "encryptionMethod": "aesCbc256",
    "startupAuthenticationRequired": true,
    "startupAuthenticationBlockWithoutTpmChip": true,
    "startupAuthenticationTpmUsage": "required",
    "startupAuthenticationTpmPinUsage": "required",
    "startupAuthenticationTpmKeyUsage": "required",
    "startupAuthenticationTpmPinAndKeyUsage": "required",
    "minimumPinLength": 0,
    "recoveryOptions": {
      "@odata.type": "microsoft.graph.bitLockerRecoveryOptions",
      "blockDataRecoveryAgent": true,
      "recoveryPasswordUsage": "required",
      "recoveryKeyUsage": "required",
      "hideRecoveryOptions": true,
      "enableRecoveryInformationSaveToStore": true,
      "recoveryInformationToStore": "passwordOnly",
      "enableBitLockerAfterRecoveryInformationToStore": true
    },
    "prebootRecoveryEnableMessageAndUrl": true,
    "prebootRecoveryMessage": "Preboot Recovery Message value",
    "prebootRecoveryUrl": "https://example.com/prebootRecoveryUrl/"
  },
  "bitLockerFixedDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerFixedDrivePolicy",
    "encryptionMethod": "aesCbc256",
    "requireEncryptionForWriteAccess": true,
    "recoveryOptions": {
      "@odata.type": "microsoft.graph.bitLockerRecoveryOptions",
      "blockDataRecoveryAgent": true,
      "recoveryPasswordUsage": "required",
      "recoveryKeyUsage": "required",
      "hideRecoveryOptions": true,
      "enableRecoveryInformationSaveToStore": true,
      "recoveryInformationToStore": "passwordOnly",
      "enableBitLockerAfterRecoveryInformationToStore": true
    }
  },
  "bitLockerRemovableDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerRemovableDrivePolicy",
    "encryptionMethod": "aesCbc256",
    "requireEncryptionForWriteAccess": true,
    "blockCrossOrganizationWriteAccess": true
  }
}
```

### Response
Here is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
``` http
HTTP/1.1 201 Created
Content-Type: application/json
Content-Length: 10736

{
  "@odata.type": "#microsoft.graph.windows10EndpointProtectionConfiguration",
  "id": "09709403-9403-0970-0394-700903947009",
  "lastModifiedDateTime": "2017-01-01T00:00:35.1329464-08:00",
  "createdDateTime": "2017-01-01T00:02:43.5775965-08:00",
  "description": "Description value",
  "displayName": "Display Name value",
  "version": 7,
  "localSecurityOptionsBlockMicrosoftAccounts": true,
  "localSecurityOptionsBlockRemoteLogonWithBlankPassword": true,
  "localSecurityOptionsEnableAdministratorAccount": true,
  "localSecurityOptionsAdministratorAccountName": "Local Security Options Administrator Account Name value",
  "localSecurityOptionsEnableGuestAccount": true,
  "localSecurityOptionsGuestAccountName": "Local Security Options Guest Account Name value",
  "localSecurityOptionsAllowUndockWithoutHavingToLogon": true,
  "localSecurityOptionsBlockUsersInstallingPrinterDrivers": true,
  "localSecurityOptionsBlockRemoteOpticalDriveAccess": true,
  "localSecurityOptionsFormatAndEjectOfRemovableMediaAllowedUser": "administrators",
  "localSecurityOptionsMachineInactivityLimit": 10,
  "localSecurityOptionsMachineInactivityLimitInMinutes": 3,
  "localSecurityOptionsDoNotRequireCtrlAltDel": true,
  "localSecurityOptionsHideLastSignedInUser": true,
  "localSecurityOptionsHideUsernameAtSignIn": true,
  "localSecurityOptionsLogOnMessageTitle": "Local Security Options Log On Message Title value",
  "localSecurityOptionsLogOnMessageText": "Local Security Options Log On Message Text value",
  "localSecurityOptionsAllowPKU2UAuthenticationRequests": true,
  "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManagerHelperBool": true,
  "localSecurityOptionsAllowRemoteCallsToSecurityAccountsManager": "Local Security Options Allow Remote Calls To Security Accounts Manager value",
  "localSecurityOptionsClearVirtualMemoryPageFile": true,
  "localSecurityOptionsAllowSystemToBeShutDownWithoutHavingToLogOn": true,
  "localSecurityOptionsAllowUIAccessApplicationElevation": true,
  "localSecurityOptionsVirtualizeFileAndRegistryWriteFailuresToPerUserLocations": true,
  "localSecurityOptionsOnlyElevateSignedExecutables": true,
  "localSecurityOptionsAdministratorElevationPromptBehavior": "elevateWithoutPrompting",
  "localSecurityOptionsStandardUserElevationPromptBehavior": "automaticallyDenyElevationRequests",
  "localSecurityOptionsSwitchToSecureDesktopWhenPromptingForElevation": true,
  "localSecurityOptionsDetectApplicationInstallationsAndPromptForElevation": true,
  "localSecurityOptionsAllowUIAccessApplicationsForSecureLocations": true,
  "localSecurityOptionsUseAdminApprovalMode": true,
  "localSecurityOptionsUseAdminApprovalModeForAdministrators": true,
  "localSecurityOptionsInformationShownOnLockScreen": "userDisplayNameDomainUser",
  "localSecurityOptionsInformationDisplayedOnLockScreen": "administrators",
  "defenderSecurityCenterDisableAppBrowserUI": true,
  "defenderSecurityCenterDisableFamilyUI": true,
  "defenderSecurityCenterDisableHealthUI": true,
  "defenderSecurityCenterDisableNetworkUI": true,
  "defenderSecurityCenterDisableVirusUI": true,
  "defenderSecurityCenterDisableAccountUI": true,
  "defenderSecurityCenterDisableHardwareUI": true,
  "defenderSecurityCenterDisableRansomwareUI": true,
  "defenderSecurityCenterDisableSecureBootUI": true,
  "defenderSecurityCenterDisableTroubleshootingUI": true,
  "defenderSecurityCenterOrganizationDisplayName": "Defender Security Center Organization Display Name value",
  "defenderSecurityCenterHelpEmail": "Defender Security Center Help Email value",
  "defenderSecurityCenterHelpPhone": "Defender Security Center Help Phone value",
  "defenderSecurityCenterHelpURL": "Defender Security Center Help URL value",
  "defenderSecurityCenterNotificationsFromApp": "blockNoncriticalNotifications",
  "defenderSecurityCenterITContactDisplay": "displayInAppAndInNotifications",
  "firewallBlockStatefulFTP": true,
  "firewallIdleTimeoutForSecurityAssociationInSeconds": 2,
  "firewallPreSharedKeyEncodingMethod": "none",
  "firewallIPSecExemptionsAllowNeighborDiscovery": true,
  "firewallIPSecExemptionsAllowICMP": true,
  "firewallIPSecExemptionsAllowRouterDiscovery": true,
  "firewallIPSecExemptionsAllowDHCP": true,
  "firewallCertificateRevocationListCheckMethod": "none",
  "firewallMergeKeyingModuleSettings": true,
  "firewallPacketQueueingMethod": "disabled",
  "firewallProfileDomain": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile",
    "firewallEnabled": "blocked",
    "stealthModeBlocked": true,
    "incomingTrafficBlocked": true,
    "unicastResponsesToMulticastBroadcastsBlocked": true,
    "inboundNotificationsBlocked": true,
    "authorizedApplicationRulesFromGroupPolicyMerged": true,
    "globalPortRulesFromGroupPolicyMerged": true,
    "connectionSecurityRulesFromGroupPolicyMerged": true,
    "outboundConnectionsBlocked": true,
    "inboundConnectionsBlocked": true,
    "securedPacketExemptionAllowed": true,
    "policyRulesFromGroupPolicyMerged": true
  },
  "firewallProfilePublic": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile",
    "firewallEnabled": "blocked",
    "stealthModeBlocked": true,
    "incomingTrafficBlocked": true,
    "unicastResponsesToMulticastBroadcastsBlocked": true,
    "inboundNotificationsBlocked": true,
    "authorizedApplicationRulesFromGroupPolicyMerged": true,
    "globalPortRulesFromGroupPolicyMerged": true,
    "connectionSecurityRulesFromGroupPolicyMerged": true,
    "outboundConnectionsBlocked": true,
    "inboundConnectionsBlocked": true,
    "securedPacketExemptionAllowed": true,
    "policyRulesFromGroupPolicyMerged": true
  },
  "firewallProfilePrivate": {
    "@odata.type": "microsoft.graph.windowsFirewallNetworkProfile",
    "firewallEnabled": "blocked",
    "stealthModeBlocked": true,
    "incomingTrafficBlocked": true,
    "unicastResponsesToMulticastBroadcastsBlocked": true,
    "inboundNotificationsBlocked": true,
    "authorizedApplicationRulesFromGroupPolicyMerged": true,
    "globalPortRulesFromGroupPolicyMerged": true,
    "connectionSecurityRulesFromGroupPolicyMerged": true,
    "outboundConnectionsBlocked": true,
    "inboundConnectionsBlocked": true,
    "securedPacketExemptionAllowed": true,
    "policyRulesFromGroupPolicyMerged": true
  },
  "defenderAttackSurfaceReductionExcludedPaths": [
    "Defender Attack Surface Reduction Excluded Paths value"
  ],
  "defenderOfficeAppsOtherProcessInjectionType": "block",
  "defenderOfficeAppsExecutableContentCreationOrLaunchType": "block",
  "defenderOfficeAppsLaunchChildProcessType": "block",
  "defenderOfficeMacroCodeAllowWin32ImportsType": "block",
  "defenderScriptObfuscatedMacroCodeType": "block",
  "defenderScriptDownloadedPayloadExecutionType": "block",
  "defenderPreventCredentialStealingType": "enable",
  "defenderProcessCreationType": "block",
  "defenderUntrustedUSBProcessType": "block",
  "defenderUntrustedExecutableType": "block",
  "defenderEmailContentExecutionType": "block",
  "defenderAdvancedRansomewareProtectionType": "enable",
  "defenderGuardMyFoldersType": "enable",
  "defenderGuardedFoldersAllowedAppPaths": [
    "Defender Guarded Folders Allowed App Paths value"
  ],
  "defenderAdditionalGuardedFolders": [
    "Defender Additional Guarded Folders value"
  ],
  "defenderNetworkProtectionType": "enable",
  "defenderExploitProtectionXml": "ZGVmZW5kZXJFeHBsb2l0UHJvdGVjdGlvblhtbA==",
  "defenderExploitProtectionXmlFileName": "Defender Exploit Protection Xml File Name value",
  "defenderSecurityCenterBlockExploitProtectionOverride": true,
  "appLockerApplicationControl": "enforceComponentsAndStoreApps",
  "deviceGuardLocalSystemAuthorityCredentialGuardSettings": "enableWithUEFILock",
  "deviceGuardEnableVirtualizationBasedSecurity": true,
  "deviceGuardEnableSecureBootWithDMA": true,
  "smartScreenEnableInShell": true,
  "smartScreenBlockOverrideForFiles": true,
  "applicationGuardEnabled": true,
  "applicationGuardBlockFileTransfer": "blockImageAndTextFile",
  "applicationGuardBlockNonEnterpriseContent": true,
  "applicationGuardAllowPersistence": true,
  "applicationGuardForceAuditing": true,
  "applicationGuardBlockClipboardSharing": "blockBoth",
  "applicationGuardAllowPrintToPDF": true,
  "applicationGuardAllowPrintToXPS": true,
  "applicationGuardAllowPrintToLocalPrinters": true,
  "applicationGuardAllowPrintToNetworkPrinters": true,
  "applicationGuardAllowVirtualGPU": true,
  "applicationGuardAllowFileSaveOnHost": true,
  "bitLockerDisableWarningForOtherDiskEncryption": true,
  "bitLockerEnableStorageCardEncryptionOnMobile": true,
  "bitLockerEncryptDevice": true,
  "bitLockerSystemDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerSystemDrivePolicy",
    "encryptionMethod": "aesCbc256",
    "startupAuthenticationRequired": true,
    "startupAuthenticationBlockWithoutTpmChip": true,
    "startupAuthenticationTpmUsage": "required",
    "startupAuthenticationTpmPinUsage": "required",
    "startupAuthenticationTpmKeyUsage": "required",
    "startupAuthenticationTpmPinAndKeyUsage": "required",
    "minimumPinLength": 0,
    "recoveryOptions": {
      "@odata.type": "microsoft.graph.bitLockerRecoveryOptions",
      "blockDataRecoveryAgent": true,
      "recoveryPasswordUsage": "required",
      "recoveryKeyUsage": "required",
      "hideRecoveryOptions": true,
      "enableRecoveryInformationSaveToStore": true,
      "recoveryInformationToStore": "passwordOnly",
      "enableBitLockerAfterRecoveryInformationToStore": true
    },
    "prebootRecoveryEnableMessageAndUrl": true,
    "prebootRecoveryMessage": "Preboot Recovery Message value",
    "prebootRecoveryUrl": "https://example.com/prebootRecoveryUrl/"
  },
  "bitLockerFixedDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerFixedDrivePolicy",
    "encryptionMethod": "aesCbc256",
    "requireEncryptionForWriteAccess": true,
    "recoveryOptions": {
      "@odata.type": "microsoft.graph.bitLockerRecoveryOptions",
      "blockDataRecoveryAgent": true,
      "recoveryPasswordUsage": "required",
      "recoveryKeyUsage": "required",
      "hideRecoveryOptions": true,
      "enableRecoveryInformationSaveToStore": true,
      "recoveryInformationToStore": "passwordOnly",
      "enableBitLockerAfterRecoveryInformationToStore": true
    }
  },
  "bitLockerRemovableDrivePolicy": {
    "@odata.type": "microsoft.graph.bitLockerRemovableDrivePolicy",
    "encryptionMethod": "aesCbc256",
    "requireEncryptionForWriteAccess": true,
    "blockCrossOrganizationWriteAccess": true
  }
}
```



