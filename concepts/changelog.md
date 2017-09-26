# Changelog for Microsoft Graph

This changelog covers what's changed in Microsoft Graph, including the v1.0 and beta endpoint Microsoft Graph APIs.  

For details about known issues with Microsoft Graph APIs, see [Known issues](known_issues.md).

## September 2017

### OneDrive

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition | v1.0 | Added the **system** property to the [Drive][] resource.  |
| Addition | v1.0 | Added the **list** relationship to the [Drive][] resource. |
| Addition | v1.0 | Added the **listItem** relationship to the [DriveItem][] resource. |
| Addition | v1.0 | Added the **list** and **listItem** relationships to the [SharedDriveItem][] resource. |
| Addition | v1.0 | Added new complex types: [FolderView][] |
| Addition | v1.0 | Added the **view** property to the [Folder][] complex type. |
| Addition | v1.0 | Added the **driveType** property to the [ItemReference][] complex type. |
| Addition | v1.0 | Added the **audioBitsPerSample**, **audioChannels**, **audioFormat**, **audioSamplesPerSecond**, **fourCC** and **frameRate** properties to the [Video][] complex type. |
| Addition | beta | Added the **system** property to the [Drive][Drive-beta] resource.  |
| Addition | beta | Added the **activities** relationship to the [Drive][Drive-beta] resource. |
| Addition | beta | Added the **publication** property to the [DriveItem][DriveItem-beta] resource. |
| Addition | beta | Added the **activities** and **versions** relationships to the [DriveItem][DriveItem-beta] resource. |
| Addition | beta | Added new entities: [DriveItemVersion][DriveItemVersion-beta], [ItemActivity][ItemActivity-beta]. |
| Addition | beta | Added new complex types: [CommentAction][CommentAction-beta], [CreateAction][CreateAction-beta], [DeleteAction][DeleteAction-beta], [EditAction][EditAction-beta], [ItemActionSet][ItemActionSet-beta], [ItemActivityTimeSet][ItemActivityTimeSet-beta], [MentionAction][MentionAction-beta], [MoveAction][MoveAction-beta], [PublicationFacet][PublicationFacet-beta], [RenameAction][RenameAction-beta], [RestoreAction][RestoreAction-beta], [ShareAction][ShareAction-beta], and [VersionAction][VersionAction-beta]. |
| Addition | beta | Added the **driveType** property to the [ItemReference][ItemReference-beta] complex type. |
| Deletion | beta | Removed the **tenantId** property from [SharepointIds][SharepointIds-beta] complex type. |
| Addition | v1.0 | Added the **audioBitsPerSample**, **audioChannels**, **audioFormat**, **audioSamplesPerSecond**, **fourCC** and **frameRate** properties to the [Video][Video-beta] complex type. |
| Addition | beta | Added the [CheckIn][CheckIn-beta] and [CheckOut][CheckOut-beta] actions on the [DriveItem][DriveItem-beta] resource. |
| Addition | beta | Added the **expirationDateTime**, **password**, **message**, and **recipients** properties on the [CreateLink][CreateLink-beta] action on a [DriveItem][DriveItem-beta] resource. |

[Drive]: ../api-reference/v1.0/resources/drive.md
[DriveItem]: ../api-reference/v1.0/resources/driveitem.md
[SharedDriveItem]: ../api-reference/v1.0/resources/shareddriveitem.md
[FolderView]: ../api-reference/v1.0/resources/folderview.md
[Folder]: ../api-reference/v1.0/resources/folder.md
[ItemReference]: ../api-reference/v1.0/resources/itemreference.md
[Video]: ../api-reference/v1.0/resources/video.md
[Drive-beta]: ../api-reference/beta/resources/drive.md
[DriveItem-beta]: ../api-reference/beta/resources/driveitem.md
[DriveItemVersion-beta]: ../api-reference/beta/resources/driveitemversion.md
[ItemActivity-beta]: ../api-reference/beta/resources/itemactivity.md
[CommentAction-beta]: ../api-reference/beta/resources/commentaction.md
[CreateAction-beta]: ../api-reference/beta/resources/createaction.md
[DeleteAction-beta]: ../api-reference/beta/resources/deleteaction.md
[EditAction-beta]: ../api-reference/beta/resources/editaction.md
[ItemActionSet-beta]: ../api-reference/beta/resources/itemactionset.md
[ItemActivityTimeSet-beta]: ../api-reference/beta/resources/itemactivitytimeset.md
[MentionAction-beta]: ../api-reference/beta/resources/mentionaction.md
[MoveAction-beta]: ../api-reference/beta/resources/moveaction.md
[PublicationFacet-beta]: ../api-reference/beta/resources/publicationfacet.md
[RenameAction-beta]: ../api-reference/beta/resources/renameaction.md
[RestoreAction-beta]: ../api-reference/beta/resources/restoreaction.md
[ShareAction-beta]: ../api-reference/beta/resources/shareaction.md
[VersionAction-beta]: ../api-reference/beta/resources/versionaction.md
[ItemReference-beta]: ../api-reference/beta/resources/itemreference.md
[SharepointIds-beta]: ../api-reference/beta/resources/sharepointids.md
[Video-beta]: ../api-reference/beta/resources/video.md
[CheckIn-beta]: ../api-reference/beta/api/driveitem_checkin.md
[CheckOut-beta]: ../api-reference/beta/api/driveitem_checkout.md
[CreateLink-beta]: ../api-reference/beta/api/driveitem_createlink.md


### Outlook calendar

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition | Beta | Added the [findRoomLists](../api-reference/beta/api/user_findroomlists.md) and [findRooms](../api-reference/beta/api/user_findrooms.md) functions to the [user](../api-reference/beta/resources/user.md) entity. |
| Addition | Beta | Added the **locations** property to the [event](../api-reference/beta/resources/event.md) entity to support organizing an event that attendees can attend from more than one location. |
| Addition | Beta | Added the **locationType** property to the [location](../api-reference/beta/resources/location.md) complex type.|
| Addition | Beta | Added the **uniqueId** and **uniqueIdType** properties to the [location](../api-reference/beta/resources/location.md) complex type. These properties are only for internal use at this point.|
| Change | v1.0 and beta | If you have appropriate delegated permissions from the signed-in user, you can specify another user's ID or user principal name to [get a calendar](../api-reference/v1.0/api/calendar_get.md), or [get events in a calendar](../api-reference/v1.0/api/user_list_events.md), if that user has shared that calendar with the signed-in user, or that user has delegated its mailbox to the signed-in user. |

### Outlook contacts

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Change | v1.0 and beta | If you have appropriate delegated permissions from the signed-in user, you can specify another user's ID or user principal name to [get a contact folder](../api-reference/v1.0/api/contactfolder_get.md), or [get contacts in a folder](../api-reference/v1.0/api/user_list_contacts.md), if that user has shared that folder with the signed-in user, or that user has delegated its mailbox to the signed-in user. |


### Outlook mail

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition | Beta | Added the **internetMessageHeaders** property to the [message](../api-reference/beta/resources/message.md) entity. |
| Addition | Beta | Added the [internetMessageHeader](../api-reference/beta/resources/internetmessageheader.md) complex type.|
| Addition | Beta | Added the **messageRules** navigation property to the [mailFolder](../api-reference/beta/resources/mailfolder.md) entity. **messageRules** is a collection of [messageRule](../api-reference/beta/resources/messagerule.md) instances. |
| Addition | Beta | Added the [messageRule](../api-reference/beta/resources/messagerule.md) entity, and [messageRuleActions](../api-reference/beta/resources/messageruleactions.md), [messageRulePredicates](../api-reference/beta/resources/messagerulepredicates.md), and [sizeRange](../api-reference/beta/resources/sizerange.md) complex types.  |
| Addition | Beta | Added the following CRUD operations for message rules: [create](../api-reference/beta/api/mailfolder_post_messagerules.md), [list](../api-reference/beta/api/mailfolder_list_messagerules.md), [get](../api-reference/beta/api/messagerule_get.md), [update](../api-reference/beta/api/messagerule_update.md), and [delete](../api-reference/beta/api/messagerule_delete.md). |


### Outlook user choices

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition | Beta | Added the new **masterCategories** navigation property to the [outlookUser](../api-reference/beta/resources/outlookuser.md) entity. **masterCategories** is a collection of [outlookCategory](../api-reference/beta/resources/outlookCategory.md) objects. |
| Addition | Beta | Added the [outlookCategory](../api-reference/beta/resources/outlookCategory.md) entity. |
| Addition | Beta | Added the following CRUD operations for [outlookCategory](../api-reference/beta/resources/outlookCategory.md): [create](../api-reference/beta/api/outlookuser_post_mastercategories.md), [get](../api-reference/beta/api/outlookcategory_get.md), [update](../api-reference/beta/api/outlookcategory_update.md), and [delete](../api-reference/beta/api/outlookcategory_delete.md). |
| Addition | Beta | Added the new [supportedLanguages](../api-reference/beta/api/outlookuser_supportedlanguages.md) function to the [outlookUser](../api-reference/beta/resources/outlookuser.md) entity.  |
| Addition | Beta | Added the new [supportedTimeZones](../api-reference/beta/api/outlookuser_supportedtimezones.md) function to the [outlookUser](../api-reference/beta/resources/outlookuser.md) entity.  |


### SharePoint lists

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition | v1.0 | Added new entities: [ColumnDefinition][], [ColumnLink][], [ContentType][], [List][], [ListItem][]. |
| Addition | v1.0 | Added the **columns**, **contentTypes**, **items**, and **lists** relationships to the [Site][] resource. |
| Addition | v1.0 | Added new complex types: [BooleanColumn][], [CalculatedColumn][], [ChoiceColumn][], [ContentTypeInfo][], [ContentTypeOrder][], [CurrencyColumn][], [DateTimeColumn][], [DefaultColumnValue][], [ListInfo][], [LookupColumn][], [NumberColumn][], [PersonOrGroupColumn][], [SystemFacet][], [TextColumn][]. |
| Addition | beta | Added new entities: [BaseItemVersion][BaseItemVersion-beta], [ColumnLink][ColumnLink-beta], [ContentType][ContentType-beta], [ListItemVersion][ListItemVersion-beta], |
| Addition | beta | Added the **columnGroup**, **currency**, **defaultValue** and **displayName** properties to [ColumnDefinition][ColumnDefinition-beta]. |
| Addition | beta | Added the **displayName** and **system** properties to the [List][List-beta] resource. |
| Addition | beta | Added the **activities** and **contentTypes** relationships to the [List][List-beta] resource. |
| Addition | beta | Added the **contentType** property to the [ListItem][ListItem-beta] resource. |
| Addition | beta | Added the **activities** and **versions** relationships to the [ListItem][ListItem-beta] resource. |
| Addition | beta | Added the **contentTypes** relationship to the [Site][Site-beta] resource. |
| Addition | beta | Added the **outputType** property to the [BooleanColumn][BooleanColumn-beta] type. |
| Addition | beta | Added new complex types: [ContentTypeInfo][ContentTypeInfo-beta], [ContentTypeOrder][ContentTypeOrder-beta], [CurrencyColumn][CurrencyColumn-beta], and [SystemFacet][SystemFacet-beta]. |
| Addition | beta | Added the **contentTypesEnabled** property to the [ListInfo][ListInfo-beta] complex type. |
| Addition | beta | Added the **allowUnlimitedLength** property on the [LookupColumn][LookupColumn-beta] complex type. |
| Change   | beta | Renamed the **allowMultipleValue** property to **allowMultipleValues** on the [LookupColumn][LookupColumn-beta] complex type. |
| Change   | beta | Renamed the **chooseFrom** property to **chooseFromType** on [PersonOrGroupColumn][PersonOrGroupColumn-beta] complex type. |
| Deletion | beta | Removed the **locale** property on the [NumberColumn][NumberColumn-beta] complex type. |
| Deletion | beta | Removed the **enforceUniqueValues** property from [PersonOrGroupColumn][PersonOrGroupColumn-beta] complex type. |

[BaseItemVersion-beta]: ../api-reference/beta/resources/baseitemversion.md
[BooleanColumn-beta]:  ../api-reference/beta/resources/booleanColumn.md
[BooleanColumn]: ../api-reference/v1.0/resources/booleancolumn.md
[CalculatedColumn]: ../api-reference/v1.0/resources/calculatedcolumn.md
[ChoiceColumn]: ../api-reference/v1.0/resources/choicecolumn.md
[ColumnDefinition-beta]: ../api-reference/beta/resources/columndefinition.md
[ColumnDefinition]: ../api-reference/v1.0/resources/columndefinition.md
[ColumnLink-beta]: ../api-reference/beta/resources/columnLink.md
[ColumnLink]: ../api-reference/v1.0/resources/columnLink.md
[ContentType-beta]: ../api-reference/beta/resources/contentType.md
[ContentType]: ../api-reference/v1.0/resources/contentType.md
[ContentTypeInfo-beta]: ../api-reference/beta/resources/contentTypeInfo.md
[ContentTypeInfo]: ../api-reference/v1.0/resources/contentTypeInfo.md
[ContentTypeOrder-beta]: ../api-reference/beta/resources/contentTypeOrder.md
[ContentTypeOrder]: ../api-reference/v1.0/resources/contentTypeOrder.md
[CurrencyColumn-beta]: ../api-reference/beta/resources/currencycolumn.md
[CurrencyColumn]: ../api-reference/v1.0/resources/currencycolumn.md
[DateTimeColumn]: ../api-reference/v1.0/resources/datetimecolumn.md
[DefaultColumnValue]: ../api-reference/v1.0/resources/defaultColumnValue.md
[List-beta]: ../api-reference/beta/resources/list.md
[List]: ../api-reference/v1.0/resources/list.md
[ListInfo-beta]: ../api-reference/beta/resources/listinfo.md
[ListInfo]: ../api-reference/v1.0/resources/listinfo.md
[ListItem-beta]: ../api-reference/beta/resources/listitem.md
[ListItem]: ../api-reference/v1.0/resources/listitem.md
[ListItemVersion-beta]: ../api-reference/beta/resources/listitemversion.md
[LookupColumn-beta]: ../api-reference/beta/resources/lookupColumn.md
[LookupColumn]: ../api-reference/v1.0/resources/lookupcolumn.md
[NumberColumn-beta]: ../api-reference/beta/resources/numberColumn.md
[NumberColumn]: ../api-reference/v1.0/resources/numbercolumn.md
[PersonOrGroupColumn-beta]: ../api-reference/beta/resources/personOrGroupColumn.md
[PersonOrGroupColumn]: ../api-reference/v1.0/resources/personorgroupcolumn.md
[Site-beta]: ../api-reference/beta/resources/site.md
[Site]: ../api-reference/v1.0/resources/site.md
[SystemFacet-beta]: ../api-reference/beta/resources/systemfacet.md
[SystemFacet]: ../api-reference/v1.0/resources/systemFacet.md
[TextColumn]: ../api-reference/v1.0/resources/textcolumn.md


### SharePoint sites

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition | beta | Added **dataLocationCode** and **root** properties to the [SiteCollection][SiteCollection-beta] complex type. |

[SiteCollection-beta]: ../api-reference/beta/resources/sitecollection.md


## August 2017

### Group lifecycle policy

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition | Beta | Added [groupLifecyclePolicy](../api-reference/beta/resources/grouplifecyclepolicy.md) entity. |
| Addition | Beta | Added the following APIs for group lifecycle policy: [create](../api-reference/beta/api/grouplifecyclepolicy_post_grouplifecyclepolicies.md), [list](../api-reference/beta/api/grouplifecyclepolicy_list.md), [get](../api-reference/beta/api/grouplifecyclepolicy_get.md), [update](../api-reference/beta/api/grouplifecyclepolicy_update.md), [delete](../api-reference/beta/api/grouplifecyclepolicy_delete.md), [add group](../api-reference/beta/api/grouplifecyclepolicy_addgroup.md), [remove group](../api-reference/beta/api/grouplifecyclepolicy_removegroup.md), and [renew a group](../api-reference/beta/api/grouplifecyclepolicy_renewgroup.md). |
| Addition | Beta | Added [List groupLifecylePolicies](../api-reference/beta/api/group_list_grouplifecyclepolicies.md) function to [group](../api-reference/beta/resources/group.md) entity. |

### Intune APIs
|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entity:<br/>[windowsPrivacyDataAccessControlItem](../api-reference/beta/resources/intune_deviceconfig_windowsprivacydataaccesscontrolitem.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[configurationManagerClientEnabledFeatures](../api-reference/beta/resources/intune_devices_configurationmanagerclientenabledfeatures.md)<br/>[windowsDefenderScanActionResult](../api-reference/beta/resources/intune_devices_windowsdefenderscanactionresult.md)<br/>|
|Addition|Beta|Added the [windowsDefenderScan](../api-reference/beta/api/intune_devices_manageddevice_windowsdefenderscan.md) action on [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) |
|Addition|Beta|Added the [windowsDefenderUpdateSignatures](../api-reference/beta/api/intune_devices_manageddevice_windowsdefenderupdatesignatures.md) action on [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) |
|Addition|Beta|Added the [windowsPrivacyAccessControls](../api-reference/beta/api/intune_deviceconfig_deviceconfiguration_windowsprivacyaccesscontrols.md) action on [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) |
|Change|Beta|Added the **automaticallyUpdateApps** and **countryOrRegion** properties to the [appleVolumePurchaseProgramToken](../api-reference/beta/resources/intune_apps_applevolumepurchaseprogramtoken.md) entity|
|Change|Beta|Added the **enableAuthenticationViaCompanyPortal** property to the [depEnrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_depenrollmentprofile.md) entity|
|Change|Beta|Added the **notificationMessageCCList** property to the [deviceComplianceActionItem](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceactionitem.md) entity|
|Change|Beta|Added the **notApplicableCount** property to the [deviceComplianceDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md) entity|
|Change|Beta|Added the **notApplicableCount** property to the [deviceComplianceUserOverview](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceuseroverview.md) entity|
|Change|Beta|Added the **notApplicableCount** property to the [deviceConfigurationDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) entity|
|Change|Beta|Added the **notApplicableCount** property to the [deviceConfigurationUserOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview.md) entity|
|Change|Beta|Added the **configurationManagerClientEnabledFeatures** property to the [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) entity|
|Change|Beta|Removed the **intuneBrand** property from the [organization](../api-reference/beta/resources/intune_onboarding_organization.md) entity|
|Change|Beta|Added the **smartScreenEnableInShell**, **smartScreenBlockOverrideForFiles**, **applicationGuardEnabled**, **applicationGuardBlockFileTransfer**, **applicationGuardBlockNonEnterpriseContent**, **applicationGuardAllowPersistence** and **applicationGuardForceAuditing** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Change|Beta|Added the **searchBlockDiacritics**, **searchDisableAutoLanguageDetection**, **searchDisableIndexingEncryptedItems**, **searchEnableRemoteQueries**, **searchDisableUseLocation**, **searchDisableIndexerBackoff**, **searchDisableIndexingRemovableDrive**, **searchEnableAutomaticIndexSizeManangement**, **smartScreenEnableAppInstallControl** and **privacyAdvertisingId** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Removed the **settingsDeviceName** property from the [windows10TeamGeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10teamgeneralconfiguration.md) entity|
|Change|Beta|Removed the **restartMode** property from the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity|
|Change|Beta|Added the **detectedApps** and **managedDevices** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **privacyAccessControls** navigation property to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Added the **secureByDefault** property to the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type|
|Change|Beta|Added the **restartMode** property to the [windowsUpdateScheduledInstall](../api-reference/beta/resources/intune_deviceconfig_windowsupdatescheduledinstall.md) complex type|

### OneNote

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition | v1.0 and Beta | Added the [onenote](../api-reference/v1.0/resources/onenote.md) navigation property to **site**.  |
| Addition | Beta | Added the target *siteCollectionId* and target *siteId* parameters for the copy operations. For example: [CopyNotebook](../api-reference/v1.0/api/notebook_copynotebook.md). |

### People 

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition | v1.0 | Added the [People APIs](../api-reference/v1.0/resources/person.md) to v1.0. For details about the People API, see [Get relevant information about people](people_example.md).|




## July 2017

### Group settings

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
| Addition     | v1.0       | Added support for group settings.<br/>New resource types: [groupSetting](../api-reference/v1.0/resources/groupsetting.md), [groupSettingTemplate](../api-reference/v1.0/resources/groupsettingtemplate.md), [settingValue](../api-reference/v1.0/resources/settingvalue.md), and [settingTemplateValue](../api-reference/v1.0/resources/settingtemplatevalue.md) |
| Change       | v1.0       | Added property **classification** and navigation property **settings**  to [group](../api-reference/v1.0/resources/group.md) |

### Intune APIs

|Change&nbsp;type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_apps_iosmobileappconfiguration_assign.md) action on [iosMobileAppConfiguration](../api-reference/beta/resources/intune_apps_iosmobileappconfiguration.md) |
|Addition|Beta|Added the [syncDevice](../api-reference/beta/api/intune_devices_manageddevice_syncdevice.md) action on [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) |
|Change|Beta|Added the **appsInstallAllowList**, **appsLaunchBlockList** and **appsHideList** properties to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **disableAppEncryptionIfDeviceEncryptionIsEnabled** property to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity|
|Change|Beta|Added the **disableAppEncryptionIfDeviceEncryptionIsEnabled** property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|Beta|Added the **complianceGracePeriodExpirationDateTime** property to the [deviceComplianceDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedevicestatus.md) entity|
|Change|Beta|Added the **complianceGracePeriodExpirationDateTime** property to the [deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md) entity|
|Change|Beta|Added the **complianceGracePeriodExpirationDateTime** property to the [deviceConfigurationDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) entity|
|Change|Beta|Added the **subscriptions** property to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **version** property to the [deviceManagementExchangeConnector](../api-reference/beta/resources/intune_onboarding_devicemanagementexchangeconnector.md) entity|
|Change|Beta|Added the **utcTimeOffsetInMinutes** property to the [iosUpdateConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosupdateconfiguration.md) entity|
|Change|Beta|Added the **complianceGracePeriodExpirationDateTime** property to the [iosUpdateDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_iosupdatedevicestatus.md) entity|
|Change|Beta|Added the **preSharedKey** property to the [macOSWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_macoswificonfiguration.md) entity|
|Change|Beta|Added the **phoneNumber**, **androidSecurityPatchLevel** and **userDisplayName** properties to the [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) entity|
|Change|Beta|Added the **userName**, **deviceModel**, **platform** and **complianceGracePeriodExpirationDateTime** properties to the [managedDeviceMobileAppConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) entity|
|Change|Beta|Added the **userPrincipalName** property to the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity|
|Change|Beta|Added the **overrideDefaultRule** property to the [onPremisesConditionalAccessSettings](../api-reference/beta/resources/intune_onboarding_onpremisesconditionalaccesssettings.md) entity|
|Change|Beta|Added the **userPrincipalName** property to the [userAppInstallStatus](../api-reference/beta/resources/intune_apps_userappinstallstatus.md) entity|
|Change|Beta|Added the **connectAppBlockAutoLaunch**, **deviceAccountBlockExchangeServices**, **deviceAccountEmailAddress**, **deviceAccountExchangeServerAddress**, **deviceAccountRequirePasswordRotation**, **deviceAccountSessionInitiationProtocolAddress**, **settingsBlockMyMeetingsAndFiles**, **settingsBlockSessionResume**, **settingsBlockSigninSuggestions**, **settingsDefaultVolume**, **settingsScreenTimeoutInMinutes**, **settingsSessionTimeoutInMinutes** and **settingsSleepTimeoutInMinutes** properties to the [windows10TeamGeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10teamgeneralconfiguration.md) entity|
|Change|Beta|Added the **deploymentSummary** navigation property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|Beta|Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceCompliancePolicySettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md) complex type|
|Change|Beta|Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md) complex type|
|Change|Beta|Added the **unknownCount** property to the [deviceOperatingSystemSummary](../api-reference/beta/resources/intune_devices_deviceoperatingsystemsummary.md) complex type|



## June 2017

### Project Rome

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added the following resources and APIs:<br/>[Activity](../api-reference/beta/resources/projectrome_activity.md)<br/>[Create or replace an activity](../api-reference/beta/api/projectrome_put_activity.md)<br/>[Delete an activity](../api-reference/beta/api/projectrome_delete_activity.md)<br/>[History item](../api-reference/beta/resources/projectrome_historyitem.md)<br/>[Create or replace a history item](../api-reference/beta/api/projectrome_put_historyitem.md)<br/>[Delete a history item](../api-reference/beta/api/projectrome_delete_historyitem.md)|

### Outlook calendar

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0|Promoted the following 4 [calendar](../api-reference/v1.0/resources/calendar.md) properties to v1.0: **canEdit**, **canShare**, **canViewPrivateItems**, and **owner**.|


### Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[defaultDeviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_defaultdevicecompliancepolicy.md)<br/>[deviceConfigurationUserStateSummary](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuserstatesummary.md)<br/>[deviceManagementScriptDeviceState](../api-reference/beta/resources/intune_devicefe_devicemanagementscriptdevicestate.md)<br/>[deviceManagementScriptRunSummary](../api-reference/beta/resources/intune_devicefe_devicemanagementscriptrunsummary.md)<br/>[deviceManagementScriptUserState](../api-reference/beta/resources/intune_devicefe_devicemanagementscriptuserstate.md)<br/>[iosUpdateDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_iosupdatedevicestatus.md)<br/>[windowsManagedDevice](../api-reference/beta/resources/intune_devicefe_windowsmanageddevice.md)<br/>[windowsManagementAppHealthState](../api-reference/beta/resources/intune_devicefe_windowsmanagementapphealthstate.md)<br/>[windowsManagementAppHealthSummary](../api-reference/beta/resources/intune_devicefe_windowsmanagementapphealthsummary.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[bitLockerFixedDrivePolicy](../api-reference/beta/resources/intune_deviceconfig_bitlockerfixeddrivepolicy.md)<br/>[bitLockerRecoveryOptions](../api-reference/beta/resources/intune_deviceconfig_bitlockerrecoveryoptions.md)<br/>[bitLockerRemovableDrivePolicy](../api-reference/beta/resources/intune_deviceconfig_bitlockerremovabledrivepolicy.md)<br/>[deleteUserFromSharedAppleDeviceActionResult](../api-reference/beta/resources/intune_devicefe_deleteuserfromsharedappledeviceactionresult.md)<br/>[iosNetworkUsageRule](../api-reference/beta/resources/intune_deviceconfig_iosnetworkusagerule.md)<br/>|
|Deletion|Beta|Removed the following entities:<br/>**deviceManagementScriptState**<br/>|
|Deletion|Beta|Removed the wipeByDeviceTag action on [user](../api-reference/beta/resources/intune_devicefe_user.md) |
|Change|Beta|Added the **innerAuthenticationProtocolForEapTtls**, **innerAuthenticationProtocolForPeap** and **outerIdentityPrivacyTemporaryValue** properties to the [androidEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidenterprisewificonfiguration.md) entity|
|Change|Beta|Removed the **nonEapAuthenticationMethodForEapTtls**, **nonEapAuthenticationMethodForPeap** and **enableOuterIdentityPrivacy** properties from the [androidEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidenterprisewificonfiguration.md) entity|
|Change|Beta|Added the **deployedAppCount** property to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity|
|Change|Beta|Removed the **instanceDisplayName** and **settingPlatform** properties from the [complianceSettingStateSummary](../api-reference/beta/resources/intune_deviceconfig_complianceSettingStateSummary.md) entity|
|Change|Beta|Added the **deployedAppCount** property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|Beta|Added the **excludeGroup** property to the [deviceCompliancePolicyGroupAssignment](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicygroupassignment.md) entity|
|Change|Beta|Removed the **instanceDisplayName** and **settingPlatform** properties from the [deviceCompliancePolicySettingStateSummary](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md) entity|
|Change|Beta|Removed the **devicePlatform** property from the [deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md) entity|
|Change|Beta|Added the **assignmentStatus**, **assignmentProgress** and **assignmentErrorMessage** properties to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) entity|
|Change|Beta|Added the **intuneBrand** property to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **enforceSignatureCheck** and **fileName** properties to the [deviceManagementScript](../api-reference/beta/resources/intune_devicefe_devicemanagementscript.md) entity|
|Change|Beta|Added the **innerAuthenticationProtocolForEapTtls** and **outerIdentityPrivacyTemporaryValue** properties to the [iosEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosenterprisewificonfiguration.md) entity|
|Change|Beta|Removed the **nonEapAuthenticationMethodForEapTtls** and **enableOuterIdentityPrivacy** properties from the [iosEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosenterprisewificonfiguration.md) entity|
|Change|Beta|Added the **classroomAppForceUnpromptedScreenObservation**, **keyboardBlockDictation**, **networkUsageRules** and **wiFiConnectOnlyToConfiguredNetworks** properties to the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **deployedAppCount** property to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Change|Beta|Added the **preSharedKey** property to the [iosWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioswificonfiguration.md) entity|
|Change|Beta|Added the **innerAuthenticationProtocolForEapTtls** and **outerIdentityPrivacyTemporaryValue** properties to the [macOSEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_macosenterprisewificonfiguration.md) entity|
|Change|Beta|Removed the **nonEapAuthenticationMethodForEapTtls** and **enableOuterIdentityPrivacy** properties from the [macOSEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_macosenterprisewificonfiguration.md) entity|
|Change|Beta|Removed the **lastModifiedTime** and **deployedAppCount** properties from the [managedAppPolicy](../api-reference/beta/resources/intune_mam_managedapppolicy.md) entity|
|Change|Beta|Added the **serialNumber** property to the [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) entity|
|Change|Beta|Removed the **managementAgents** property from the [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) entity|
|Change|Beta|Added the **deployedAppCount** property to the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity|
|Change|Beta|Added the **bitLockerFixedDrivePolicy** and **bitLockerRemovableDrivePolicy** properties to the [windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md) entity|
|Change|Beta|Added the **enterpriseCloudPrintDiscoveryEndPoint**, **enterpriseCloudPrintOAuthAuthority**, **enterpriseCloudPrintOAuthClientIdentifier**, **enterpriseCloudPrintResourceIdentifier**, **enterpriseCloudPrintDiscoveryMaxLimit**, **enterpriseCloudPrintMopriaDiscoveryResourceIdentifier**, **edgeBlockAddressBarDropdown**, **edgeBlockCompatibilityList**, **edgeClearBrowsingDataOnExit**, **edgeAllowStartPagesModification**, **edgeDisableFirstRunPage**, **edgeBlockLiveTileDataCollection** and **edgeSyncFavoritesWithInternetExplorer** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Added the **availableVersion** property to the [windowsManagementApp](../api-reference/beta/resources/intune_devicefe_windowsmanagementapp.md) entity|
|Change|Beta|Removed the **onboardingStatus**, **deployedVersion** and **lastModifiedTime** properties from the [windowsManagementApp](../api-reference/beta/resources/intune_devicefe_windowsmanagementapp.md) entity|
|Change|Beta|Added the **packageIdentityName** property to the [windowsStoreForBusinessApp](../api-reference/beta/resources/intune_apps_windowsstoreforbusinessapp.md) entity|
|Change|Beta|Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) entity|
|Change|Beta|Added the **mobileAppIdentifierDeployments** navigation property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|Beta|Added the **deviceConfigurationUserStateSummaries** and **iosUpdateStatuses** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Removed the **complianceSettingStateSummaries** navigation property from the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **runSummary**, **deviceRunStates** and **userRunStates** navigation properties to the [deviceManagementScript](../api-reference/beta/resources/intune_devicefe_devicemanagementscript.md) entity|
|Change|Beta|Removed the **runStates** navigation property from the [deviceManagementScript](../api-reference/beta/resources/intune_devicefe_devicemanagementscript.md) entity|
|Change|Beta|Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Change|Beta|Removed the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties from the [managedAppPolicy](../api-reference/beta/resources/intune_mam_managedapppolicy.md) entity|
|Change|Beta|Added the **mobileAppIdentifierDeployments** and **deploymentSummary** navigation properties to the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity|
|Change|Beta|Added the **healthSummary** and **healthStates** navigation properties to the [windowsManagementApp](../api-reference/beta/resources/intune_devicefe_windowsmanagementapp.md) entity|
|Change|Beta|Added the **applicationId**, **appName**, **platformId**, **userFailures** and **deviceFailures** properties to the [appInstallationFailure](../api-reference/beta/resources/intune_apps_appinstallationfailure.md) complex type|
|Change|Beta|Added the **encryptionMethod**, **startupAuthenticationRequired**, **startupAuthenticationBlockWithoutTpmChip**, **startupAuthenticationTpmUsage**, **startupAuthenticationTpmPinUsage**, **startupAuthenticationTpmKeyUsage**, **startupAuthenticationTpmPinAndKeyUsage**, **recoveryOptions** and **prebootRecoveryEnableMessageAndUrl** properties to the [bitLockerSystemDrivePolicy](../api-reference/beta/resources/intune_deviceconfig_bitlockersystemdrivepolicy.md) complex type|
|Change|Beta|Removed the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties from the [deviceCompliancePolicySettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md) complex type|
|Change|Beta|Removed the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties from the [deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md) complex type|
|Change|Beta|Added the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties to the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type|
|Change|Beta|Added the **address** property to the [vpnServer](../api-reference/beta/resources/intune_deviceconfig_vpnserver.md) complex type|


## May 2017

### Application API changes

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change|Beta| Application API update. This is first set of changes including property renaming and restructuring of the [application](../api-reference/beta/resources/application.md) entity.<br/>**New entities:** [api](../api-reference/beta/resources/api.md), [informationalUrl](../api-reference/beta/resources/informationalUrl.md), [installedClient](../api-reference/beta/resources/installedclient.md), [permissionScope](../api-reference/beta/resources/permissionscope.md), [preauthorizedApplication](../api-reference/beta/resources/preauthorizedapplication.md), [web](../api-reference/beta/resources/web.md).<br/>**Removed properties:** addIns, appRoles, availableToOtherOrganizations, knownClientApplications, oauth2AllowUrlPathMatching, recordConsentConditions.<br/>**Renamed properties:** appId to id, identifierUris to applicationAliases, availableToOtherTenants to orgRestrictions, mainLogo to logo, oauth2Permissions to publishedPermissionsScopes, publicClient to allowPublicClient, replyUrls to redirectUrls.<br/>**New properties:** tags. |

### Remove Deprecated Planner API
|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:-------------|
|Deletion|Beta|Removed the following entities:<br/>**task**<br/>**plan**<br/>**bucket**<br/>**taskDetails**<br/>**planDetails**<br/>**taskBoardTaskFormat**<br/>**planTaskBoard**|

### Project Rome

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:-------------|
|Addition|Beta|Added support for Project Rome, including [getting a list of devices](../api-reference/beta/api/user_list_devices.md), [sending a command to a device](../api-reference/beta/api/send_device_command.md), and [checking the status of a command](../api-reference/beta/api/get_device_command_status.md).|
|Addition|Beta|Added support for user [activities](../api-reference/beta/resources/projectrome_activity.md) and [historyItems](../api-reference/beta/resources/projectrome_historyitem.md), including [upserting an activity](../api-reference/beta/api/projectrome_put_activity.md) and [upserting a historyItem](../api-reference/beta/api/projectrome_put_historyitem.md).|

### Administrative units property changes

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
| Change        | Beta       | Changed roleMemberInfo property type to [identity](../api-reference/v1.0/resources/identity.md) for [scopedRoleMembership](../api-reference/beta/resources/scopedrolemembership.md) entity |
| Change        | Beta       | Changed navigation property scopedAdministratorOf to scopedRoleMemberOf for [user](../api-reference/beta/resources/user.md) entity |
| Change        | Beta       | Changed navigation property scopedAdministrators to scopedRoleMembers for [administrativeUnit](../api-reference/beta/resources/administrativeunit.md) entity |
| Change        | Beta       | Changed navigation property scopedAdministrators to scopedMembers for [directoryRole](../api-reference/beta/resources/directoryrole.md) entity |

### Add users and groups webhook support in preview

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
| Change        | Beta       | Added support to [webhooks](../api-reference/beta/resources/webhooks.md) for users and groups.

### Add delta query to v1.0

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
| Addition      | v1.0       | Add delta function support to V1.0. Add to the following entities to perform [delta query](delta_query_overview.md):<br/>contact<br/>contactFolder<br/>event<br/>group<br/>mailFolder<br/>message<br/>user<br/>See the following for examples:<br/>[Get incremental changes to groups](delta_query_groups.md)<br/>[Get incremental changes to messages in a folder](delta_query_messages.md)<br/>[Get incremental changes to users](delta_query_users.md)|
| Change        | Beta       | Add additional optional query filtering capability (by id) to [users](../api-reference/beta/api/user_delta.md) and [groups](../api-reference/beta/api/group_delta.md). |

### Added user resource support for deleted items

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
| Addition      | Beta       | Added support for [restoring and permanently deleting users](../api-reference/beta/resources/directory.md). |

### Added OnPremisesProvisioningError

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
| Addition      | beta       | New entity: [OnPremisesProvisioningError](../api-reference/beta/resources/onpremisesprovisioningerror.md) |
| Change        | beta       | Added OnPremisesProvisioningError property to [user](../api-reference/beta/resources/user.md), [group](../api-reference/beta/resources/group.md), and [orgcontact](../api-reference/beta/resources/orgcontact.md) |

### Added deletedDateTime property

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change|beta|Added deletedDateTime property to [user](../api-reference/beta/resources/user.md) entity.
|Change|beta|Added deletedDateTime property to [group](../api-reference/beta/resources/group.md) entity.
|Change|beta|Added deletedDateTime property to [application](../api-reference/beta/resources/application.md) entity.

### Added domain operations to v1.0

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|V1.0|Added operations on [domains](../api-reference/v1.0/resources/domain.md).<br/>New entities:</br>[domain](../api-reference/v1.0/resources/domain.md)<br/>[domainDnsRecord](../api-reference/v1.0/resources/domaindnsrecord.md)<br/>[domainDnsCnameRecord](../api-reference/v1.0/resources/domainDnsCnameRecord.md)<br/>[domainDnsMxRecord](../api-reference/v1.0/resources/domainDnsMxRecord.md)<br/>[domainDnsSrvRecord](../api-reference/v1.0/resources/domainDnsSrvRecord.md)<br/>[domainDnsTxtRecord](../api-reference/v1.0/resources/domainDnsTxtRecord.md)<br/>[domainDnsUnavailableRecord](../api-reference/v1.0/resources/domainDnsUnavailableRecord.md)<br/>New actions:</br>[verify](../api-reference/v1.0/api/domain_verify.md) |

### Added contracts to v1.0

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|V1.0|New entity:</br>[contract](../api-reference/v1.0/resources/contract.md) |

### Added licenseDetails to v1.0

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0|New entity:</br>[licenseDetails](../api-reference/v1.0/resources/licensedetails.md) |
|Change  |v1.0|New [licensedetails](../api-reference/v1.0/api/user_list_licensedetails.md) navigation property on [users](../api-reference/v1.0/resources/user.md) |


### Drive API

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Addition | v1.0 | Added the **baseItem** resource type, consisting of basic properties from **driveItem**.
| Addition | v1.0 and Beta | Added the **sourceItemId** property to **thumbnail**. <br/> Added the **siteUrl** property to **sharepointIds**. <br/> Added the **sharedBy** and **sharedDateTime** properties to **shared**. <br/> Added the **shared** property to **remoteItem**. <br/> Added the **sharepointIds** property to **drive** and **itemReference**. <br/> Added **lastAccessedDateTime** to **fileSystemInfo**. <br/> Added the **driveItem** and **site** navigation properties to **sharedDriveItem**. <br/> Added the **parentReference** property to **baseItem**.
| Change | v1.0 and Beta | Changed **driveItem** and **sharedDriveItem** to inherit from **baseItem**. <br/> Marked **identity** as an Open Type.
| Change | Beta | Added the **configuratorUrl** and **webHtml** properties to **sharingLink**. <br/> Added the **folderView** resource type and the **view** property to the **folder** resource type. <br/> Added the **listItem** navigation property to **driveItem**. <br/> Added the **list** navigation property to **drive**.


### Extensions (open extensions)

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0| Support for [openTypeExtension](../api-reference/v1.0/resources/opentypeextension.md) in the following resources - [device](../api-reference/v1.0/resources/device.md), [group](../api-reference/v1.0/resources/group.md),[organization](../api-reference/v1.0/resources/organization.md), [user](../api-reference/v1.0/resources/user.md). |
|Addition|v1.0 and beta|When the user is signed-in with a personal Microsoft account, support for open extensions in the following resources - event, post, group, message, contact, and user. (This is in addition to these resources, plus device, group, organization and user, supporting open extensions when the user signs in using a work or school account.)|
|Addition|v1.0 and beta|Support for `$expand` to [get open extensions](../api-reference/v1.0/api/opentypeextension_get.md) in the following resources: [device](../api-reference/v1.0/resources/device.md), [group](../api-reference/v1.0/resources/group.md),[organization](../api-reference/v1.0/resources/organization.md), [post](../api-reference/v1.0/resources/post.md), [user](../api-reference/v1.0/resources/user.md).|
|Addition|Beta|Support for `$expand` to [get open extensions](../api-reference/v1.0/api/opentypeextension_get.md) in [administrativeUnit](../api-reference/beta/resources/administrativeunit.md).|


### Extensions (schema extensions) 

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0|New resource [schemaExtension](../api-reference/v1.0/resources/schemaextension.md) and CRUD methods to manage extension definitions for the following resources: [contact](../api-reference/v1.0/resources/contact.md), [device](../api-reference/v1.0/resources/device.md), [event](../api-reference/v1.0/resources/event.md), [group](../api-reference/v1.0/resources/group.md), [message](../api-reference/v1.0/resources/message.md), [organization](../api-reference/v1.0/resources/organization.md), [post](../api-reference/v1.0/resources/post.md), [user](../api-reference/v1.0/resources/user.md). Note that support for [administrativeUnit](../api-reference/beta/resources/administrativeunit.md) is still limited to the beta version as before.|
|Addition|v1.0|The existing `POST`, `GET`, and `PATCH` methods of the following resources - [contact](../api-reference/v1.0/resources/contact.md), [device](../api-reference/v1.0/resources/device.md), [event](../api-reference/v1.0/resources/event.md), [group](../api-reference/v1.0/resources/group.md), [message](../api-reference/v1.0/resources/message.md), [organization](../api-reference/v1.0/resources/organization.md), [post](../api-reference/v1.0/resources/post.md), [user](../api-reference/v1.0/resources/user.md) - now support adding, getting, and updating or deleting custom data stored as schema extensions in the corresponding resource instances.|
|Addition|v1.0 and beta| You can now use `$filter` to look for resource instances with properties that match specific extension property values, such as extension name. See this [example](https://devx.microsoft-tst.com/en-us/graph/docs/concepts/extensibility_schema_groups#5-get-a-group-and-its-extension-data) for details. |
|Change|v1.0 and beta| [Deleting a schema extension definition](../api-reference/v1.0/api/schemaextension_delete.md) no longer affects accessing custom data that has been added based on that definition. |
|Change|v1.0 and beta| You can now set a schema extension complex type to null, to remove a schema extension from a resource instance. |


### Group

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Addition | v1.0 and beta | Added the **drives** and **sites** navigation properties to **group**.

### Insights APIs

|**Change type**|**Version**|**Description**| 
|:-------------|:-----------|:--------------|
|Addition|Beta|Added [Shared API](../api-reference/beta/resources/insights_shared.md).<br />New resources:<br />[sharingDetail](../api-reference/beta/resources/insights_sharingdetail.md) <br />[insightIdentity](../api-reference/beta/resources/insights_insightidentity.md) <br />
|Addition|Beta|Added [Used API](../api-reference/beta/resources/insights_used.md).<br />New resources:<br />[usageDetails](../api-reference/beta/resources/insights_usagedetails.md) <br />
|Change|Beta|New **Type** property in the:<br />[resourceVisualization](../api-reference/beta/resources/insights_resourcevisualization.md) resource. <br />
|Deletion|Beta|Removed the following entities:<br/>**workingWith**<br/>**trendingAround**<br/>|

### Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidForWorkMobileAppConfiguration](../api-reference/beta/resources/intune_apps_androidforworkmobileappconfiguration.md)<br/>[cartToClassAssociation](../api-reference/beta/resources/intune_deviceconfig_carttoclassassociation.md)<br/>[deviceCompliancePolicySettingStateSummary](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstatesummary.md)<br/>[eBookInstallSummary](../api-reference/beta/resources/intune_books_ebookinstallsummary.md)<br/>[eBookVppGroupAssignment](../api-reference/beta/resources/intune_books_ebookvppgroupassignment.md)<br/>[iosUpdateConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosupdateconfiguration.md)<br/>[remoteAssistancePartner](../api-reference/beta/resources/intune_remoteassistance_remoteassistancepartner.md)<br/>[windows10EndpointProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10endpointprotectionconfiguration.md)<br/>[windowsDeviceMalwareState](../api-reference/beta/resources/intune_endpointprotection_windowsdevicemalwarestate.md)<br/>[windowsInformationProtectionAppLearningSummary](../api-reference/beta/resources/intune_wip_windowsinformationprotectionapplearningsummary.md)<br/>[windowsMalwareInformation](../api-reference/beta/resources/intune_endpointprotection_windowsmalwareinformation.md)<br/>[windowsProtectionState](../api-reference/beta/resources/intune_endpointprotection_windowsprotectionstate.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[androidPermissionAction](../api-reference/beta/resources/intune_apps_androidpermissionaction.md)<br/>[bitLockerSystemDrivePolicy](../api-reference/beta/resources/intune_deviceconfig_bitlockersystemdrivepolicy.md)<br/>[defenderDetectedMalwareActions](../api-reference/beta/resources/intune_deviceconfig_defenderdetectedmalwareactions.md)<br/>[settingSource](../api-reference/beta/resources/intune_deviceconfig_settingsource.md)<br/>|
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_books_managedebook_assign.md) action on [managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) |
|Addition|Beta|Added the [beginOnboarding](../api-reference/beta/api/intune_remoteassistance_remoteassistancepartner_beginonboarding.md) action on [remoteAssistancePartner](../api-reference/beta/resources/intune_remoteassistance_remoteassistancepartner.md) |
|Addition|Beta|Added the [disconnect](../api-reference/beta/api/intune_remoteassistance_remoteassistancepartner_disconnect.md) action on [remoteAssistancePartner](../api-reference/beta/resources/intune_remoteassistance_remoteassistancepartner.md) |
|Deletion|Beta|Removed the following entities:<br/>**outlookTask**<br/>**outlookTaskFolder**<br/>**outlookTaskGroup**<br/>**outlookUser**<br/>**windowsManagementAppHealthState**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**applePushNotificationCertificateSetting**<br/>**eventCreationOptions**<br/>|
|Change|Beta|Added the **workProfilePasswordBlockFingerprintUnlock**, **workProfilePasswordBlockTrustAgents**, **workProfilePasswordExpirationDays**, **workProfilePasswordMinimumLength**, **workProfilePasswordMinutesOfInactivityBeforeScreenTimeout**, **workProfilePasswordPreviousPasswordBlockCount**, **workProfilePasswordSignInFailureCountBeforeFactoryReset**, **workProfilePasswordRequiredType** and **workProfileRequirePassword** properties to the [androidForWorkGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **subjectAlternativeNameFormatString** property to the [androidForWorkPkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkpkcscertificateprofile.md) entity|
|Change|Beta|Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [androidForWorkScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkscepcertificateprofile.md) entity|
|Change|Beta|Added the **kioskModeManagedApps** property to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|Beta|Removed the **kioskModeManagedAppId** property from the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **subjectAlternativeNameFormatString** property to the [androidPkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidpkcscertificateprofile.md) entity|
|Change|Beta|Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [androidScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidscepcertificateprofile.md) entity|
|Change|Beta|Removed the **hexColor** property from the [calendar](../api-reference/beta/resources/calendar.md) entity|
|Change|Beta|Added the **setting** and **platformType** properties to the [complianceSettingStateSummary](../api-reference/beta/resources/intune_deviceconfig_compliancesettingstatesummary.md) entity|
|Change|Beta|Removed the **windowsManagementAppEnabled** property from the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Added the **userName**, **deviceModel** and **platform** properties to the [deviceComplianceDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedevicestatus.md) entity|
|Change|Beta|Added the **userPrincipalName** and **deviceModel** properties to the [deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md) entity|
|Change|Beta|Added the **platformType**, **setting**, **userId** and **userEmail** properties to the [deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md) entity|
|Change|Beta|Added the **inGracePeriodCount** property to the [deviceCompliancePolicyDeviceStateSummary](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md) entity|
|Change|Beta|Added the **userName**, **deviceModel** and **platform** properties to the [deviceConfigurationDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md) entity|
|Change|Beta|Removed the **creationOptions** property from the [event](../api-reference/beta/resources/event.md) entity|
|Change|Beta|Removed the **isDelegated** property from the [eventMessage](../api-reference/beta/resources/eventMessage.md) entity|
|Change|Beta|Removed the **unseenConversationsCount** and **unseenMessagesCount** properties from the [group](../api-reference/beta/resources/group.md) entity|
|Change|Beta|Added the **settingXml** and **settings** properties to the [iosMobileAppConfiguration](../api-reference/beta/resources/intune_apps_iosmobileappconfiguration.md) entity|
|Change|Beta|Added the **subjectAlternativeNameFormatString** property to the [iosPkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_iospkcscertificateprofile.md) entity|
|Change|Beta|Added the **subjectAlternativeNameFormatString** property to the [iosScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_iosscepcertificateprofile.md) entity|
|Change|Beta|Added the **systemIntegrityProtectionEnabled** property to the [macOSCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_macoscompliancepolicy.md) entity|
|Change|Beta|Added the **subjectAlternativeNameFormatString** property to the [macOSScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_macosscepcertificateprofile.md) entity|
|Change|Beta|Added the **complianceGracePeriodExpirationDateTime**, **userPrincipalName**. and **imei** properties to the [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) entity|
|Change|Beta|Removed the **settingXml** and **settings** properties from the [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) entity|
|Change|Beta|Added the **useSharedComputerActivation**, **updateChannel**, **officePlatformArchitecture** and **localesToInstall** properties to the [officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md) entity|
|Change|Beta|Removed the **applePushNotificationCertificateSetting** property from the [organization](../api-reference/beta/resources/intune_onboarding_organization.md) entity|
|Change|Beta|Changed the following properties on the [post](../api-reference/beta/resources/post.md) entity:<br/>**sender** from optional to required<br/>|
|Change|Beta|Added the **compliantUserCount**, **nonCompliantUserCount**, **remediatedUserCount**, **errorUserCount**, **unknownUserCount**, **conflictUserCount** and **notApplicableUserCount** properties to the [softwareUpdateStatusSummary](../api-reference/beta/resources/intune_deviceconfig_softwareupdatestatussummary.md) entity|
|Change|Beta|Added the **bluetoothAllowedServices**, **bluetoothBlockPrePairing**, **cellularData**, **defenderDetectedMalwareActions**, **defenderPotentiallyUnwantedAppAction**, **lockScreenAllowTimeoutConfiguration**, **lockScreenBlockCortana**, **lockScreenBlockToastNotifications**, **lockScreenTimeoutInSeconds**, **passwordBlockSimple**, **privacyAutoAcceptPairingAndConsentPrompts**, **privacyBlockInputPersonalization**, **startMenuHideChangeAccountSettings**, **startMenuHideHibernate**, **startMenuHideLock**, **startMenuHideShutDown**, **startMenuHideSignOut**, **startMenuHideSleep**, **startMenuHideSwitchAccount**, **settingsBlockAppsPage**, **settingsBlockGamingPage**, **windowsSpotlightBlockConsumerSpecificFeatures**, **windowsSpotlightBlocked**, **windowsSpotlightBlockOnActionCenter**, **windowsSpotlightBlockTailoredExperiences**, **windowsSpotlightBlockThirdPartyNotifications**, **windowsSpotlightBlockWelcomeExperience**, **windowsSpotlightBlockWindowsTips**, **windowsSpotlightConfigureOnLockScreen** and **connectedDevicesServiceBlocked** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Removed the **automaticUpdateMode**, **automaticUpdateSchedule**, **automaticUpdateTime**, **prereleaseFeatures**, **experienceBlockWindowsSpotlight**, **experienceBlockWindowsTips** and **experienceBlockConsumerSpecificFeatures** properties from the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Added the **subjectAlternativeNameFormatString** property to the [windows10PkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows10pkcscertificateprofile.md) entity|
|Change|Beta|Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [windows81SCEPCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows81scepcertificateprofile.md) entity|
|Change|Beta|Added the **indexingEncryptedStoresOrItemsBlocked** and **smbAutoEncryptedFileExtensions** properties to the [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) entity|
|Change|Beta|Changed the following properties on the [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) entity:<br/>**rightsManagementServicesTemplateId** from required to optional<br/>|
|Change|Beta|Changed the following properties on the [windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md) entity:<br/>**productCode** from required to optional<br/>|
|Change|Beta|Added the **subjectNameFormatString** and **subjectAlternativeNameFormatString** properties to the [windowsPhone81SCEPCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md) entity|
|Change|Beta|Added the **mobileAppConfigurations** navigation property to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Added the **cartToClassAssociations**, **deviceCompliancePolicySettingStateSummaries**, **remoteAssistancePartners**, **windowsInformationProtectionAppLearningSummaries** and **windowsMalwareInformation** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **eBook** navigation property to the [eBookGroupAssignment](../api-reference/beta/resources/intune_books_ebookgroupassignment.md) entity|
|Change|Beta|Added the **windowsProtectionState** navigation property to the [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) entity|
|Change|Beta|Added the **installSummary** navigation property to the [managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) entity|
|Change|Beta|Removed the **outlook** navigation property from the [user](../api-reference/beta/resources/user.md) entity|
|Change|Beta|Removed the **healthStates** navigation property from the [windowsManagementApp](../api-reference/beta/resources/intune_devicefe_windowsmanagementapp.md) entity|
|Change|Beta|Added the **androidForWorkRestrictions** property to the [defaultDeviceEnrollmentRestrictions](../api-reference/beta/resources/intune_onboarding_defaultdeviceenrollmentrestrictions.md) complex type|
|Change|Beta|Added the **userPrincipalName** and **sources** properties to the [deviceCompliancePolicySettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md) complex type|
|Change|Beta|Added the **userPrincipalName** and **sources** properties to the [deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md) complex type|
|Change|Beta|Added the **settingName**, **userId**, **userName**, **userEmail** and **currentValue** properties to the [deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md) complex type|
|Change|Beta|Removed the **archiveFolder** property from the [mailboxSettings](../api-reference/beta/resources/mailboxSettings.md) complex type|


### Outlook calendar

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0 and beta|For **findMeetingTimes**, added new enum value **unrestricted** that you specify as the **activityDomain** property, part of the **timeConstraint** parameter. This lets **findMeetingTimes** look for times appropriate for the type of activity you're scheduling for. See details in the [request body](../api-reference/v1.0/api/user_findmeetingtimes.md#request-body) section.|
|Addition|Beta|Support getting an **event** body in plain text, as an alternative to the default HTML format. See [get](../api-reference/beta/api/event_get.md) and [list](../api-reference/beta/api/user_list_events.md) events for details.|

### Outlook mail

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change|Beta|Support getting a **message** body in plain text, as an alternative to the default HTML format. See [get](../api-reference/beta/api/message_get.md) and [list](../api-reference/beta/api/user_list_messages.md) events for details.|


### Outlook tasks

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|New **outlook** navigation property added to [user](../api-reference/beta/resources/user.md), to access Outlook tasks.|
|Addition|Beta|New entities - [outlookuser](../api-reference/beta/resources/outlookuser.md), [outlookTaskGroup](../api-reference/beta/resources/outlooktaskgroup.md), [outlookTaskFolder](../api-reference/beta/resources/outlooktaskfolder.md), and [outlookTask](../api-reference/beta/resources/outlooktask.md) - and their methods support organizing and accessing Outlook tasks. | 
|Addition|Beta|Outlook tasks support attachments ([attachment](../api-reference/beta/resources/attachment.md), [fileAttachment](../api-reference/beta/resources/fileattachment.md), [itemAttachment](../api-reference/beta/resources/itemattachment.md), and [referenceAttachment](../api-reference/beta/resources/referenceattachment.md) resources). |
|Addition|Beta|Outlook tasks support [extended properties](../api-reference/beta/resources/extended-properties-overview.md) ([singleValueLegacyExtendedProperty](../api-reference/beta/resources/singlevaluelegacyextendedproperty.md) and [multiValueLegacyExtendedProperty](../api-reference/beta/resources/multivaluelegacyextendedproperty.md) resources). |

### Planner APIs

|**Change type**|**Version**|**Description**| 
|:-------------|:-----------|:--------------|
|Addition|v1.0|Added [Planner API](../api-reference/v1.0/resources/planner_overview.md).<br />New resources:<br />[plannerPlan](../api-reference/v1.0/resources/plannerPlan.md) <br />[plannerTask](../api-reference/v1.0/resources/plannerTask.md) <br />[plannerPlanDetails](../api-reference/v1.0/resources/plannerPlanDetails.md) <br />[plannerTaskDetails](../api-reference/v1.0/resources/plannerTaskDetails.md) <br />[plannerBucket](../api-reference/v1.0/resources/plannerBucket.md) <br />[plannerAssignedToTaskBoardTaskFormat](../api-reference/v1.0/resources/plannerassignedtotaskboardtaskformat.md) <br />[plannerBucketTaskBoardTaskFormat](../api-reference/v1.0/resources/plannerbuckettaskboardtaskformat.md) <br />[plannerProgressTaskBoardTaskFormat](../api-reference/v1.0/resources/plannerprogresstaskboardtaskformat.md) | 

### SharePoint sites

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Addition      | v1.0      | The sites resource is now avaialble in the v1.0 endpoint.<br/> Added the **site** and **siteCollection** resource types.
| Change        | beta      | The format of the identifier for the **site** resource has changed. This is a breaking change in the beta API.
| Removed       | beta      | The **sharePoint** entity has been removed from the beta API. The functionality is now available from the **sites** collection.

### SharePoint Lists

|**Change type**|**Version**|**Description**|
|:--------------|:----------|:--------------|
| Change | beta | Removed the **sharepoint** navigation properties. Sites are now accessed directly through the **sites** navigation property. <br/> Removed the **fieldDefinition** resource. It has been replaced by **columnDefinition**. <br/> Removed the **siteCollectionId** and **siteId** properties from **site**. Use **sharepointIds** instead. <br/> Removed the **listItemId** property from **listItem**. Use **sharepointIds** instead. <br/> Renamed the **columnSet** property on **listItem** to **fields**. <br/> Changed **site** resources to use the SharePoint hostname as part of their ID.
| Addition | beta | Added the **booleanColumn**, **calculatedColumn**, **choiceColumn**, **dateTimeColumn**, **lookupColumn**, **numberColumn**, **personOrGroupColumn**, and **textColumn** resource types. <br/> Added the **displayName** property to **site**. <br/> Added the **columns** navigation property to **site**. <br/> Added the **list** and **listItem** navigation properties to **sharedDriveItem**. <br/> Added the **sharepointIds** property to **list** and **listItem**, and **site**. <br/> Added the **columnDefinition** resource type.




## April 2017

### Administrative units property changes

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change|Beta| Adminstrative unit APIs will be updated in preview (beta). The first set of changes will be applied on May 3, 2017. The changes include the following property renaming:<br />- **roleMemberInfo** complex type to **identity** complex type for the scopedRoleMembership entity<br />- **scopedAdministratorOf** navigation property to **scopedRoleMemberOf** for the user entity<br />- **scopedAdministrators** navigation property to **scopedRoleMembers** for the administrativeUnit entity<br />- **scopedAdministrators** navigation property to **scopedMembers** for the directoryRole entity |

### Application and servicePrincipal API changes

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change|Beta| The [application](../api-reference/beta/resources/application.md) and [servicePrincipal](../api-reference/beta/resources/serviceprincipal.md) APIs will be updated in preview (beta). The first set of changes will be applied on May 15, 2017. The changes include property renaming and restructuring. Some properties (such as appRoles and addIns) will not be available until the changes are completed. The changes will be released in preview (beta) prior to releasing to v1.0. |

### Added preview support for Cloud Solution Provider developers

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added new preview capability to allow Cloud Solution Provider pre-consented applications to call Microsoft Graph, described in a new [authorization topic](auth_cloudsolutionprovider.md). |

### Added onPremises properties to user entity

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added new onPremises properties onPremisesDomainName, OnPremisesSamAccountName, and onPremisesUserPrincipalName to the [user](../api-reference/beta/resources/user.md) entity. |

### New Planner APIs and an update to the group visibility property

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change|Beta|Added **HiddenMembership** as an additional value for the visibility property to the [Group](../api-reference/beta/resources/group.md) entity |
|Addition|Beta|Added new [Planner API](../api-reference/beta/resources/planner_overview.md).<br />New resources:<br />[plannerPlan](../api-reference/beta/resources/plannerPlan.md) <br />[plannerTask](../api-reference/beta/resources/plannerTask.md) <br />[plannerPlanDetails](../api-reference/beta/resources/plannerPlanDetails.md) <br />[plannerTaskDetails](../api-reference/beta/resources/plannerTaskDetails.md) <br />[plannerBucket](../api-reference/beta/resources/plannerBucket.md) <br />[plannerAssignedToTaskBoardTaskFormat](../api-reference/beta/resources/plannerassignedtotaskboardtaskformat.md) <br />[plannerBucketTaskBoardTaskFormat](../api-reference/beta/resources/plannerbuckettaskboardtaskformat.md) <br />[plannerProgressTaskBoardTaskFormat](../api-reference/beta/resources/plannerprogresstaskboardtaskformat.md) | 

### Intune APIs
|**Change type**|**Version**|**Description**|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidForWorkCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_androidforworkcompliancepolicy.md) <br/>[deviceComplianceSettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancesettingstate.md) <br/>[deviceInstallState](../api-reference/beta/resources/intune_books_deviceinstallstate.md) <br/>[deviceManagementScript](../api-reference/beta/resources/intune_devicefe_devicemanagementscript.md) <br/>[deviceManagementScriptGroupAssignment](../api-reference/beta/resources/intune_devicefe_devicemanagementscriptgroupassignment.md) <br/>[deviceManagementScriptState](../api-reference/beta/resources/intune_devicefe_devicemanagementscriptstate.md) <br/>[eBookGroupAssignment](../api-reference/beta/resources/intune_books_ebookgroupassignment.md) <br/>[iosVppEBook](../api-reference/beta/resources/intune_books_iosvppebook.md) <br/>[managedEBook](../api-reference/beta/resources/intune_books_managedebook.md) <br/>[userInstallStateSummary](../api-reference/beta/resources/intune_books_userinstallstatesummary.md) <br/>[windowsManagementApp](../api-reference/beta/resources/intune_devicefe_windowsmanagementapp.md) <br/>[windowsManagementAppHealthState](../api-reference/beta/resources/intune_devicefe_windowsmanagementapphealthstate.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[dailySchedule](../api-reference/beta/resources/intune_devicefe_dailyschedule.md) <br/>[hourlySchedule](../api-reference/beta/resources/intune_devicefe_hourlyschedule.md) <br/>[iosBookmark](../api-reference/beta/resources/intune_deviceconfig_iosbookmark.md) <br/>[iosWebContentFilterAutoFilter](../api-reference/beta/resources/intune_deviceconfig_ioswebcontentfilterautofilter.md) <br/>[iosWebContentFilterBase](../api-reference/beta/resources/intune_deviceconfig_ioswebcontentfilterbase.md)<br/>[iosWebContentFilterSpecificWebsitesAccess](../api-reference/beta/resources/intune_deviceconfig_ioswebcontentfilterspecificwebsitesaccess.md)<br/>[runSchedule](../api-reference/beta/resources/intune_devicefe_runschedule.md) <br/>[sharedAppleDeviceUser](../api-reference/beta/resources/intune_devicefe_sharedappledeviceuser.md) <br/>[windows10NetworkProxyServer](../api-reference/beta/resources/intune_deviceconfig_windows10networkproxyserver.md)<br/>|
|Addition|Beta|Added the [requestRemoteAssistance](../api-reference/beta/api/intune_devicefe_manageddevice_requestremoteassistance.md) action on [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) |
|Addition|Beta|Added the [cleanWindowsDevice](../api-reference/beta/api/intune_devicefe_manageddevice_cleanwindowsdevice.md) action on [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) |
|Addition|Beta|Added the [logoutSharedAppleDeviceActiveUser](../api-reference/beta/api/intune_devicefe_manageddevice_logoutsharedappledeviceactiveuser.md) action on [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) |
|Addition|Beta|Added the [deleteUserFromSharedAppleDevice](../api-reference/beta/api/intune_devicefe_manageddevice_deleteuserfromsharedappledevice.md) action on [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_devicefe_devicemanagementscript_assign.md) action on [deviceManagementScript](../api-reference/beta/resources/intune_devicefe_devicemanagementscript.md) |
|Addition|Beta|Added the [syncLicenses](../api-reference/beta/api/intune_onboarding_applevolumepurchaseprogramtoken_synclicenses.md) action on [appleVolumePurchaseProgramToken](../api-reference/beta/resources/intune_apps_applevolumepurchaseprogramtoken.md) |
|Addition|Beta|Added the **getTopMobileApps** function on [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) collection |
|Addition|Beta|Added the [downloadApplePushNotificationCertificateSigningRequest](../api-reference/beta/api/intune_devicefe_applepushnotificationcertificate_downloadapplepushnotificationcertificatesigningrequest.md) function on [applePushNotificationCertificate](../api-reference/beta/resources/intune_devicefe_applepushnotificationcertificate.md) |
|Addition|Beta|Added the [getDeviceComplianceSettingStates](../api-reference/beta/api/intune_deviceconfig_devicemanagement_getdevicecompliancesettingstates.md) function on [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) |
|Addition|Beta|Added the [deviceConfigurationUserActivity](../api-reference/beta/api/intune_deviceconfig_reportroot_deviceconfigurationuseractivity.md) function on [reportRoot](../api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
|Addition|Beta|Added the [deviceConfigurationDeviceActivity](../api-reference/beta/api/intune_deviceconfig_reportroot_deviceconfigurationdeviceactivity.md) function on [reportRoot](../api-reference/beta/resources/intune_deviceconfig_reportroot.md) |
|Deletion|Beta|Removed the following complex types:<br/>**enterpriseCloudResource**<br/>**windowsInformationProtectionAppRule**<br/>**windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate**<br/>**windowsInformationProtectionAppRuleDesktopTemplate**<br/>**windowsInformationProtectionAppRuleStoreAppTemplate**<br/>**windowsInformationProtectionAppRuleTemplate**<br/>**windowsInformationProtectionCorporateNetworkLocation**<br/>**windowsInformationProtectionProtectedLocation**<br/>**windowsInformationProtectionProtectedLocationEnterpriseCloudResources**<br/>**windowsInformationProtectionProtectedLocationEnterpriseInternalProxyServers**<br/>**windowsInformationProtectionProtectedLocationEnterpriseIPv4Ranges**<br/>**windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges**<br/>**windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames**<br/>**windowsInformationProtectionProtectedLocationEnterpriseProxyServers**<br/>**windowsInformationProtectionProtectedLocationNeutralResources**<br/>|
|Change|Beta|Added the **deviceSharingAllowed** property to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|Beta|Removed the **deviceSharingBlocked** property from the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **minimumRequiredSdkVersion** property to the [defaultManagedAppProtection](../api-reference/beta/resources/intune_mam_defaultmanagedappprotection.md) entity|
|Change|Beta|Added the **windowsManagementAppEnabled** property to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Added the **notificationTemplateId** property to the [deviceComplianceActionItem](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceactionitem.md) entity|
|Change|Beta|Added the **excludeGroup** property to the [deviceConfigurationGroupAssignment](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationgroupassignment.md) entity|
|Change|Beta|Changed the following properties on the [iosCustomConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioscustomconfiguration.md) entity:<br/>**payloadFileName** from required to optional<br/>|
|Change|Beta|Added the **contentFilterSettings** property to the [iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) entity|
|Change|Beta|Added the **cellularBlockPersonalHotspot** and **passcodeBlockFingerprintModification** properties to the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **minimumRequiredSdkVersion** property to the [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) entity|
|Change|Beta|Changed the following properties on the [macOSCustomConfiguration](../api-reference/beta/resources/intune_deviceconfig_macoscustomconfiguration.md) entity:<br/>**payloadFileName** from required to optional<br/>|
|Change|Beta|Added the **disableAppPinIfDevicePinIsSet**, **minimumRequiredOsVersion**, **minimumWarningOsVersion**, **minimumRequiredAppVersion** and **minimumWarningAppVersion** properties to the [managedAppProtection](../api-reference/beta/resources/intune_mam_managedappprotection.md) entity|
|Change|Beta|Added the **remoteAssistanceSessionUrl**, **isEncrypted**, **model** and **manufacturer** properties to the [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) entity|
|Change|Beta|Changed the following properties on the [getMobileAppCount](../api-reference/beta/api/intune_apps_mobileapp_getmobileappcount.md) entity:<br/>**bindingParameter** from **mobileApp** to a **collection** of *mobileApp*<br/>**status** from a GUID to a String<br/>|
|Change|Beta|Added the **vpnConfigurationId** property to the [mobileAppGroupAssignment](../api-reference/beta/resources/intune_apps_mobileappgroupassignment.md) entity|
|Change|Beta|Removed the **fromEmailAddress** property from the [notificationMessageTemplate](../api-reference/beta/resources/intune_deviceconfig_notificationmessagetemplate.md) entity|
|Change|Beta|Added the **excludedApps** property to the [officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md) entity|
|Change|Beta|Removed the **excludedOfficeApps** property from the [officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md) entity|
|Change|Beta|Added the **enabled** property to the [sharedPCConfiguration](../api-reference/beta/resources/intune_deviceconfig_sharedpcconfiguration.md) entity|
|Change|Beta|Added the **networkProxyApplySettingsDeviceWide**, **networkProxyDisableAutoDetect**, **networkProxyAutomaticConfigurationUrl**, **networkProxyServer**, **bluetoothDeviceName**, **wiFiScanInterval**, **wirelessDisplayBlockProjectionToThisDevice**, **wirelessDisplayBlockUserInputFromReceiver**, **wirelessDisplayRequirePinForPairing**, **experienceBlockDeviceDiscovery**, **experienceBlockErrorDialogWhenNoSIM**, **experienceBlockTaskSwitcher**, **startMenuPinnedFolderDocuments**, **startMenuPinnedFolderDownloads**, **startMenuPinnedFolderFileExplorer**, **startMenuPinnedFolderHomeGroup**, **startMenuPinnedFolderMusic**, **startMenuPinnedFolderNetwork**, **startMenuPinnedFolderPersonalFolder**, **startMenuPinnedFolderPictures**, **startMenuPinnedFolderSettings**, **startMenuPinnedFolderVideos**, **startMenuAppListVisibility**, **startMenuHideFrequentlyUsedApps**, **startMenuHideRecentJumpLists**, **startMenuHideRecentlyAddedApps**, **startMenuHideRestartOptions**, **startMenuHideUserTile**, **startMenuHidePowerButton**, **startMenuLayoutEdgeAssetsXml**, **personalizationDesktopImageUrl** and **personalizationLockScreenImageUrl** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Changed the type of the following properties on the [windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md) entity:<br/>**productCode** from Guid to String<br/>|
|Change|Beta|Changed the following properties on the [windowsPhone81AppX](../api-reference/beta/resources/intune_apps_windowsphone81appx.md) entity:<br/>**phoneProductIdentifier** from required to optional<br/>**phonePublisherId** from required to optional<br/>|
|Change|Beta|Changed the following properties on the [windowsPhone81AppXBundle](../api-reference/beta/resources/intune_apps_windowsphone81appxbundle.md) entity:<br/>**appXPackageInformationList** from required to optional<br/>|
|Change|Beta|Added the **productKey** and **licenseType** properties to the [windowsStoreForBusinessApp](../api-reference/beta/resources/intune_apps_windowsstoreforbusinessapp.md) entity|
|Change|Beta|Added the **previewBuildSetting** property to the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity|
|Change|Beta|Added the **windowsManagementApp** and **managedEBooks** navigation properties to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Added the **deviceManagementScripts**, **managedDeviceOverview** and **cloudPkiSubscriptions** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **osMinimumVersion** and **osMaximumVersion** properties to the [deviceEnrollmentPlatformRestrictions](../api-reference/beta/resources/intune_onboarding_deviceenrollmentplatformrestrictions.md) complex type|
|Change|Beta|Added the **isSharedDevice** and **sharedDeviceCachedUsers** properties to the [hardwareInformation](../api-reference/beta/resources/intune_devicefe_hardwareinformation.md) complex type|
|Change|Beta|Changed the following properties on the [omaSettingBase64](../api-reference/beta/resources/intune_deviceconfig_omasettingbase64.md) complex type:<br/>**fileName** from required to optional<br/>|
|Change|Beta|Changed the following properties on the [omaSettingStringXml](../api-reference/beta/resources/intune_deviceconfig_omasettingstringxml.md) complex type:<br/>**fileName** from required to optional<br/>|

## March 2017

### Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidForWorkApp](../api-reference/beta/resources/intune_apps_androidforworkapp.md)<br/>[androidForWorkAppConfigurationSchema](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationschema.md)<br/>[androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md)<br/>[androidForWorkVpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkvpnconfiguration.md)<br/>[applePushNotificationCertificate](../api-reference/beta/resources/intune_devicefe_applepushnotificationcertificate.md)<br/>[complianceSettingStateSummary](../api-reference/beta/resources/intune_deviceconfig_compliancesettingstatesummary.md)<br/>[deviceCompliancePolicyDeviceStateSummary](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicydevicestatesummary.md)<br/>[deviceCompliancePolicyState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicystate.md)<br/>[deviceConfigurationDeviceStateSummary](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatesummary.md)<br/>[deviceConfigurationState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationstate.md)<br/>[enterpriseCodeSigningCertificate](../api-reference/beta/resources/intune_apps_enterprisecodesigningcertificate.md)<br/>[iosEduDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosedudeviceconfiguration.md)<br/>[managedDeviceCertificateState](../api-reference/beta/resources/intune_deviceconfig_manageddevicecertificatestate.md)<br/>[managedDeviceMobileAppConfigurationDeviceSummary](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicesummary.md)<br/>[managedDeviceMobileAppConfigurationUserSummary](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationusersummary.md)<br/>[mdmWindowsInformationProtectionPolicy](../api-reference/beta/resources/intune_mam_mdmwindowsinformationprotectionpolicy.md)<br/>[mobileAppInstallSummary](../api-reference/beta/resources/intune_apps_mobileappinstallsummary.md)<br/>[mobileAppProvisioningConfigGroupAssignment](../api-reference/beta/resources/intune_apps_mobileappprovisioningconfiggroupassignment.md)<br/>[mobileThreatDefenseConnector](../api-reference/beta/resources/intune_onboarding_mobilethreatdefenseconnector.md)<br/>[officeSuiteApp](../api-reference/beta/resources/intune_apps_officesuiteapp.md)<br/>[settingStateDeviceSummary](../api-reference/beta/resources/intune_deviceconfig_settingstatedevicesummary.md)<br/>[softwareUpdateStatusSummary](../api-reference/beta/resources/intune_deviceconfig_softwareupdatestatussummary.md)<br/>[symantecCodeSigningCertificate](../api-reference/beta/resources/intune_apps_symanteccodesigningcertificate.md)<br/>[windowsDefenderAdvancedThreatProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsdefenderadvancedthreatprotectionconfiguration.md)<br/>[windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md)<br/>[windowsInformationProtectionAppLockerFile](../api-reference/beta/resources/intune_mam_windowsinformationprotectionapplockerfile.md)<br/>[windowsInformationProtectionPolicy](../api-reference/beta/resources/intune_mam_windowsinformationprotectionpolicy.md)<br/>[windowsMobileMSI](../api-reference/beta/resources/intune_apps_windowsmobilemsi.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[androidForWorkAppConfigurationExample](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationexample.md)<br/>[androidForWorkAppConfigurationExampleJson](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationexamplejson.md)<br/>[androidForWorkAppConfigurationSchemaItem](../api-reference/beta/resources/intune_androidforwork_androidforworkappconfigurationschemaitem.md)<br/>[deviceCompliancePolicySettingState](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicysettingstate.md)<br/>[deviceConfigurationSettingState](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationsettingstate.md)<br/>[deviceExchangeAccessStateSummary](../api-reference/beta/resources/intune_devicefe_deviceexchangeaccessstatesummary.md)<br/>[edgeSearchEngine](../api-reference/beta/resources/intune_deviceconfig_edgesearchengine.md)<br/>[edgeSearchEngineBase](../api-reference/beta/resources/intune_deviceconfig_edgesearchenginebase.md)<br/>[edgeSearchEngineCustom](../api-reference/beta/resources/intune_deviceconfig_edgesearchenginecustom.md)<br/>[excludedApps](../api-reference/beta/resources/intune_apps_excludedapps.md)<br/>[iosEduCertificateSettings](../api-reference/beta/resources/intune_deviceconfig_ioseducertificatesettings.md)<br/>[ipRange](../api-reference/beta/resources/intune_deviceconfig_iprange.md)<br/>[windowsInformationProtectionApp](../api-reference/beta/resources/intune_mam_windowsinformationprotectionapp.md)<br/>[windowsInformationProtectionCloudResource](../api-reference/beta/resources/intune_mam_windowsinformationprotectioncloudresource.md)<br/>[windowsInformationProtectionCloudResourceCollection](../api-reference/beta/resources/intune_mam_windowsinformationprotectioncloudresourcecollection.md)<br/>[windowsInformationProtectionDesktopApp](../api-reference/beta/resources/intune_mam_windowsinformationprotectiondesktopapp.md)<br/>[windowsInformationProtectionIPRangeCollection](../api-reference/beta/resources/intune_mam_windowsinformationprotectioniprangecollection.md)<br/>[windowsInformationProtectionResourceCollection](../api-reference/beta/resources/intune_mam_windowsinformationprotectionresourcecollection.md)<br/>[windowsInformationProtectionStoreApp](../api-reference/beta/resources/intune_mam_windowsinformationprotectionstoreapp.md)<br/>|
|Addition|Beta|Added the [requestSignupUrl](../api-reference/beta/api/intune_androidforwork_androidforworksettings_requestsignupurl.md) action on [androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md) |
|Addition|Beta|Added the [completeSignup](../api-reference/beta/api/intune_androidforwork_androidforworksettings_completesignup.md) action on [androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md) |
|Addition|Beta|Added the [syncApps](../api-reference/beta/api/intune_androidforwork_androidforworksettings_syncapps.md) action on [androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md) |
|Addition|Beta|Added the [unbind](../api-reference/beta/api/intune_androidforwork_androidforworksettings_unbind.md) action on [androidForWorkSettings](../api-reference/beta/resources/intune_androidforwork_androidforworksettings.md) |
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_apps_ioslobappprovisioningconfiguration_assign.md) action on [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) |
|Addition|Beta|Added the [recoverPasscode](../api-reference/beta/api/intune_devicefe_manageddevice_recoverpasscode.md) action on [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) |
|Addition|Beta|Added the [removeApplePushNotificationCertificate](../api-reference/beta/api/intune_onboarding_organization_removeapplepushnotificationcertificate.md) action on [organization](../api-reference/beta/resources/intune_onboarding_organization.md) |
|Addition|Beta|Added the [updateMobileAppIdentifierDeployments](../api-reference/beta/api/intune_mam_iosmanagedappprotection_updatemobileappidentifierdeployments.md) action on [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) |
|Addition|Beta|Added the [updateMobileAppIdentifierDeployments](../api-reference/beta/api/intune_mam_androidmanagedappprotection_updatemobileappidentifierdeployments.md) action on [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) |
|Addition|Beta|Added the [updateMobileAppIdentifierDeployments](../api-reference/beta/api/intune_mam_targetedmanagedappconfiguration_updatemobileappidentifierdeployments.md) action on [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_iosmanagedappprotection_updatetargetedsecuritygroups.md) action on [iosManagedAppProtection](../api-reference/beta/resources/intune_mam_iosmanagedappprotection.md) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_androidmanagedappprotection_updatetargetedsecuritygroups.md) action on [androidManagedAppProtection](../api-reference/beta/resources/intune_mam_androidmanagedappprotection.md) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_windowsinformationprotection_updatetargetedsecuritygroups.md) action on [windowsInformationProtection](../api-reference/beta/resources/intune_mam_windowsinformationprotection.md) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_windowsinformationprotection_updatetargetedsecuritygroups.md) action on [windowsInformationProtectionPolicy](../api-reference/beta/resources/intune_mam_windowsinformationprotectionpolicy.md) |
|Addition|Beta|Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_mdmwindowsinformationprotectionpolicy_updatetargetedsecuritygroups.md) action on [mdmWindowsInformationProtectionPolicy](../api-reference/beta/resources/intune_mam_mdmwindowsinformationprotectionpolicy.md) |
|Addition|Beta|Added the [wipeManagedAppRegistrationByDeviceTag](../api-reference/beta/api/intune_mam_user_wipemanagedappregistrationbydevicetag.md) action on [user](../api-reference/beta/resources/intune_devicefe_user.md) |
|Addition|Beta|Added the [getTopMobileApps](../api-reference/beta/api/intune_apps_mobileapp_gettopmobileapps.md) function on [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) |
|Addition|Beta|Added the [verifyWindowsEnrollmentAutoDiscovery](../api-reference/beta/resources/intune_corpenrollment_devicemanagement.md) function on [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) |
|Deletion|Beta|Removed the following entities:<br/>**appProvisioningConfigGroupAssignment**<br/>**defaultManagedAppConfiguration**<br/>**enterpriseCertificate**<br/>**managedDeviceMobileAppProvisioningConfigurationDeviceStatus**<br/>**symantecCertificate**<br/>**windows10WindowsInformationProtectionConfiguration**<br/>|
|Deletion|Beta|Removed the following complex types:<br/>**mobileAppInstallSummary**<br/>**windowsArchitecture**<br/>**windowsDeviceType**<br/>|
|Change|Beta|Added the **webBrowserBlockPopups** property to the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|Beta|Removed the **webBrowserAllowPopups** property from the [androidGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **appIdentifier** property to the [androidStoreApp](../api-reference/beta/resources/intune_apps_androidstoreapp.md) entity|
|Change|Beta|Removed the **applicationCount**, **failedApplicationCount** and **appInstallFailures** properties from the [appReportingOverviewStatus](../api-reference/beta/resources/intune_apps_appreportingoverviewstatus.md) entity|
|Change|Beta|Added the **sharedIPadMaximumUserCount** and **enableSharedIPad** properties to the [depEnrollmentProfile](../api-reference/beta/resources/intune_corpenrollment_depenrollmentprofile.md) entity|
|Change|Beta|Added the **shareTokenWithSchoolDataSyncService** and **lastSyncErrorCode** properties to the [depOnboardingSetting](../api-reference/beta/resources/intune_onboarding_deponboardingsetting.md) entity|
|Change|Beta|Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md) entity|
|Change|Beta|Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md) entity|
|Change|Beta|Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceComplianceUserOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md) entity|
|Change|Beta|Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceComplianceUserOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md) entity|
|Change|Beta|Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) entity|
|Change|Beta|Removed the **numberOfPendingDevices**, **numberOfSucceededDevices**, **numberOfErrorDevices**, **numberOfFailedDevices**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md) entity|
|Change|Beta|Added the **pendingCount**, **successCount**, **errorCount**, **failedCount**, **lastUpdateDateTime** and **configurationVersion** properties to the [deviceConfigurationUserOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview.md) entity|
|Change|Beta|Removed the **numberOfPendingUsers**, **numberOfSucceededUsers**, **numberOfErrorUsers**, **numberOfFailedUsers**, **lastUpdateTime** and **policyRevision** properties from the [deviceConfigurationUserOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview.md) entity|
|Change|Beta|Added the **subscriptionState** property to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Added the **managedEmailProfileRequired** property to the [iosCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_ioscompliancepolicy.md) entity|
|Change|Beta|Added the **appsSingleAppModeList** property to the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity|
|Change|Beta|Removed the **appsSingleAppModeBundleIds** property from the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity|
|Change|Beta|Added the **expirationDateTime** property to the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity|
|Change|Beta|Removed the **expiration** property from the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity|
|Change|Beta|Added the **passwordMinimumCharacterSetCount**, **osMinimumVersion**, **osMaximumVersion**, **deviceThreatProtectionEnabled**, **deviceThreatProtectionRequiredSecurityLevel** and **storageRequireEncryption** properties to the [macOSCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_macoscompliancepolicy.md) entity|
|Change|Beta|Removed the **manifest** property from the [managedAndroidLobApp](../api-reference/beta/resources/intune_apps_managedandroidlobapp.md) entity|
|Change|Beta|Added the **isSupervised**, **exchangeLastSuccessfulSyncDateTime**, **exchangeAccessState** and **exchangeAccessStateReason** properties to the [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) entity|
|Change|Beta|Added the **deviceExchangeAccessStateSummary** property to the [managedDeviceOverview](../api-reference/beta/resources/intune_devicefe_manageddeviceoverview.md) entity|
|Change|Beta|Removed the **manifest** property from the [managedIOSLobApp](../api-reference/beta/resources/intune_apps_managedioslobapp.md) entity|
|Change|Beta|Removed the **installSummary** property from the [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) entity|
|Change|Beta|Added the **uploadState** property to the [mobileAppContentFile](../api-reference/beta/resources/intune_apps_mobileappcontentfile.md) entity|
|Change|Beta|Changed the following properties on the [mobileAppContentFile](../api-reference/beta/resources/intune_apps_mobileappcontentfile.md) entity:<br/>**azureStorageUriExpirationDateTime** from required to optional<br/>|
|Change|Beta|Added the **initiatedByUserPrincipalName**, **deviceOwnerUserPrincipalName**, **deviceIMEI** and **actionState** properties to the [remoteActionAudit](../api-reference/beta/resources/intune_devicefe_remoteactionaudit.md) entity|
|Change|Beta|Added the **oneDriveDisableFileSync**, **safeSearchFilter**, **edgeSearchEngine**, **settingsBlockSettingsApp**, **settingsBlockSystemPage**, **settingsBlockDevicesPage**, **settingsBlockNetworkInternetPage**, **settingsBlockPersonalizationPage**, **settingsBlockAccountsPage**, **settingsBlockTimeLanguagePage**, **settingsBlockEaseOfAccessPage**, **settingsBlockPrivacyPage**, **settingsBlockUpdateSecurityPage**, **experienceBlockWindowsSpotlight**, **experienceBlockWindowsTips**, **experienceBlockConsumerSpecificFeatures**, **startMenuLayoutXml**, **startMenuMode**, **logonBlockFastUserSwitching** and **startBlockUnpinningAppsFromTaskbar** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity|
|Change|Beta|Added the **allowPrinting**, **allowScreenCapture** and **allowTextSuggestion** properties to the [windows10SecureAssessmentConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md) entity|
|Change|Beta|Removed the **blockPrinting**, **blockScreenCapture** and **blockTextSuggestion** properties from the [windows10SecureAssessmentConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md) entity|
|Change|Beta|Added the **identityName** property to the [windowsAppX](../api-reference/beta/resources/intune_apps_windowsappx.md) entity|
|Change|Beta|Changed the type of the following properties on the [windowsAppX](../api-reference/beta/resources/intune_apps_windowsappx.md) entity:<br/>**applicableArchitectures** from [windowsArchitecture](../api-reference/beta/resources/intune_apps_windowsArchitecture.md) to String<br/>|
|Change|Beta|Added the **identityName** property to the [windowsPhone81AppX](../api-reference/beta/resources/intune_apps_windowsphone81appx.md) entity|
|Change|Beta|Changed the type of the following properties on the [windowsPhone81AppX](../api-reference/beta/resources/intune_apps_windowsphone81appx.md) entity:<br/>**applicableArchitectures** from [windowsArchitecture](../api-reference/beta/resources/intune_apps_windowsArchitecture.md) to String<br/>|
|Change|Beta|Added the **identityName**, **identityPublisherHash** and **identityResourceIdentifier** properties to the [windowsUniversalAppX](../api-reference/beta/resources/intune_apps_windowsuniversalappx.md) entity|
|Change|Beta|Changed the type of the following properties on the [windowsUniversalAppX](../api-reference/beta/resources/intune_apps_windowsuniversalappx.md) entity:<br/>**applicableArchitectures** from [windowsArchitecture](../api-reference/beta/resources/intune_apps_windowsArchitecture.md) to String<br/>**applicableDeviceTypes** from [windowsDeviceType](../api-reference/beta/resources/intune_apps_windowsDeviceType.md) to String<br/>|
|Change|Beta|Added the **restartMode** property to the [windowsUpdateForBusinessConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsupdateforbusinessconfiguration.md) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [androidForWorkScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkscepcertificateprofile.md) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [androidScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidscepcertificateprofile.md) entity|
|Change|Beta|Added the **enterpriseCodeSigningCertificates**, **symantecCodeSigningCertificate**, **sideLoadingKeys**, **managedAppPolicies**, **iosManagedAppProtections**, **androidManagedAppProtections**, **defaultManagedAppProtections**, **targetedManagedAppConfigurations**, **mdmWindowsInformationProtectionPolicies**, **windowsInformationProtectionPolicies**, **managedAppRegistrations** and **managedAppStatuses** navigation properties to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Removed the **appReportingOverview**, **enterpriseCerts** and **symantecCert** navigation properties from the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Added the **deviceSettingStateSummaries** navigation property to the [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entity|
|Change|Beta|Added the **deviceSettingStateSummaries** navigation property to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) entity|
|Change|Beta|Added the **termsAndConditions**, **androidForWorkSettings**, **androidForWorkAppConfigurationSchemas**, **applePushNotificationCertificate**, **softwareUpdateStatusSummary**, **deviceCompliancePolicyDeviceStateSummary**, **complianceSettingStateSummaries**, **deviceConfigurationDeviceStateSummaries** and **mobileThreatDefenseConnectors** navigation properties to the [deviceManagement](../api-reference/beta/resources/intune_androidforwork_devicemanagement.md) entity|
|Change|Beta|Removed the **teacherRootCertificates**, **teacherIdentityCertificate**, **studentRootCertificates** and **studentIdentityCertificate** navigation properties from the [iosEducationDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseducationdeviceconfiguration.md) entity|
|Change|Beta|Changed the type of the following properties on the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity:<br/>**deviceStatuses** from [managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_managedDeviceMobileAppProvisioningConfigurationDeviceStatus.md) collection to [managedDeviceMobileAppConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) collection<br/>**groupAssignments** from [appProvisioningConfigGroupAssignment](../api-reference/beta/resources/intune_apps_appProvisioningConfigGroupAssignment.md) collection to [mobileAppProvisioningConfigGroupAssignment](../api-reference/beta/resources/intune_apps_mobileappprovisioningconfiggroupassignment.md) collection<br/>|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [iosScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_iosscepcertificateprofile.md) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [macOSScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_macosscepcertificateprofile.md) entity|
|Change|Beta|Added the **deviceConfigurationStates** and **deviceCompliancePolicyStates** navigation properties to the [managedDevice](../api-reference/beta/resources/intune_devicefe_manageddevice.md) entity|
|Change|Beta|Added the **deviceStatusSummary** and **userStatusSummary** navigation properties to the [managedDeviceMobileAppConfiguration](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfiguration.md) entity|
|Change|Beta|Added the **installSummary** navigation property to the [mobileApp](../api-reference/beta/resources/intune_apps_mobileapp.md) entity|
|Change|Beta|Removed the **sideLoadingKeys** navigation property from the [organization](../api-reference/beta/resources/intune_onboarding_organization.md) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [windows81SCEPCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windows81scepcertificateprofile.md) entity|
|Change|Beta|Added the **managedDeviceCertificateStates** navigation property to the [windowsPhone81SCEPCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_windowsphone81scepcertificateprofile.md) entity|
|Change|Beta|Removed the **applicationId**, **appName**, **platformId**, **userFailures** and **deviceFailures** properties from the [appInstallationFailure](../api-reference/beta/resources/intune_apps_appinstallationfailure.md) complex type|
|Change|Beta|Added the **displayName** property to the [iosHomeScreenFolderPage](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenfolderpage.md) complex type|
|Change|Beta|Added the **displayName** property to the [iosHomeScreenPage](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenpage.md) complex type|
|Change|Beta|Added the **subjectName**, **description**, **expirationDateTime** and **certificate** properties to the [windowsInformationProtectionDataRecoveryCertificate](../api-reference/beta/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate.md) complex type|
|Change|Beta|Removed the **dataRecoveryCertificate** and **certificateFileName** properties from the [windowsInformationProtectionDataRecoveryCertificate](../api-reference/beta/resources/intune_mam_windowsinformationprotectiondatarecoverycertificate.md) complex type|
|Change|Beta|Added the **displayName** property to the [windowsPackageInformation](../api-reference/beta/resources/intune_apps_windowspackageinformation.md) complex type|
|Change|Beta|Changed the type of the following properties on the [windowsPackageInformation](../api-reference/beta/resources/intune_apps_windowspackageinformation.md) complex type:<br/>**applicableArchitecture** from [windowsArchitecture](../api-reference/beta/resources/intune_apps_windowsArchitecture.md) to String<br/>|
|Change|Beta|Changed the following properties on the [windowsPackageInformation](../api-reference/beta/resources/intune_apps_windowspackageinformation.md) complex type:<br/>**applicableArchitecture** from optional to required<br/>|

### Add contracts to Microsoft Graph

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|New resource:</br>[contract](../api-reference/beta/resources/contract.md) |

### Add domain operations to Microsoft Graph

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added functions on [domains](../api-reference/beta/resources/domain.md).<br/>New entities:</br>[domain](../api-reference/beta/resources/domain.md)<br/>[domainDnsRecord](../api-reference/beta/resources/domaindnsrecord.md)<br/>[domainDnsCnameRecord](../api-reference/beta/resources/domainDnsCnameRecord.md)<br/>[domainDnsMxRecord](../api-reference/beta/resources/domainDnsMxRecord.md)<br/>[domainDnsSrvRecord](../api-reference/beta/resources/domainDnsSrvRecord.md)<br/>[domainDnsTxtRecord](../api-reference/beta/resources/domainDnsTxtRecord.md)<br/>[domainDnsUnavailableRecord](../api-reference/beta/resources/domainDnsUnavailableRecord.md)<br/>New actions:</br>[forceDelete](../api-reference/beta/api/domain_forcedelete.md)</br>[verify](../api-reference/beta/api/domain_verify.md) |

### Add custom data to Microsoft Graph using schema extensions

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Extend Microsoft Graph with application data by using [schema extensions](extensibility_overview.md#schema-extensions-preview).  This is supported on the following resources:<br/>administrative unit<br/>calendar event<br/>device<br/>group<br/>message<br/>organization<br/>personal contact<br/>post<br/>user<br/>See the following example:<br/>[Add custom data to groups using Schema Extensions (preview)](extensibility_schema_groups.md)|
|Addition|Beta|Provided an alternative way to create a schema extension definition without requiring a verified .com vanity domain. See [schema extensions](extensibility_overview.md#schema-extensions-preview) for details.|

### Add custom data to Microsoft Graph using open extensions

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Change| v1.0 and beta | Renamed former "Office 365 data extensions" as "open extensions". |
|Addition|Beta|Added resources that support [open extensions](extensibility_overview.md#open-extensions): <br/>administrative unit<br/>device<br/>group<br/>organization<br/>user<br/>See the following example:<br/>[Add custom data to users using open extensions (preview)](extensibility_open_users.md)|

### Directory APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added support for [restoring and permanently deleting groups](../api-reference/beta/resources/directory.md).<br/>New entity: directory with deleteditems navigation property. |
|Addition|Beta|New entity:</br>[Endpoint](../api-reference/beta/resources/endpoint.md) |
|Change  |Beta|New [endpoints](../api-reference/beta/api/group_list_endpoints.md) navigation property on [groups](../api-reference/beta/resources/group.md) |
|Addition|Beta|New entity:</br>[licenseDetails](../api-reference/beta/resources/licensedetails.md) |
|Change  |Beta|New [licensedetails](../api-reference/beta/api/user_list_licensedetails.md) navigation property on [users](../api-reference/beta/resources/user.md) |

### Reports APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Introduced the new preview API for Office 365 Reports. You can use it to get usage reports of how people in your business are using Office 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who may not need an Office 365 license at all. For more details, see [report](../api-reference/beta/resources/report.md).|

### Directory APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|New entity:</br>[contract](../api-reference/beta/resources/contract.md) |

## February 2017

### Intune APIs

|Change type|Version|Description|
|:---|:---|:---|
|Addition|Beta|Added new entities:<br/>[androidForWorkCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_androidforworkcertificateprofilebase.md)<br/>[androidForWorkEasEmailProfileBase](../api-reference/beta/resources/intune_deviceconfig_androidforworkeasemailprofilebase.md)<br/>[androidForWorkEnterpriseWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkenterprisewificonfiguration.md)<br/>[androidForWorkGmailEasConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkgmaileasconfiguration.md)<br/>[androidForWorkNineWorkEasConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworknineworkeasconfiguration.md)<br/>[androidForWorkPkcsCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkpkcscertificateprofile.md)<br/>[androidForWorkScepCertificateProfile](../api-reference/beta/resources/intune_deviceconfig_androidforworkscepcertificateprofile.md)<br/>[androidForWorkTrustedRootCertificate](../api-reference/beta/resources/intune_deviceconfig_androidforworktrustedrootcertificate.md)<br/>[androidForWorkWiFiConfiguration](../api-reference/beta/resources/intune_deviceconfig_androidforworkwificonfiguration.md)<br/>[appleDeviceFeaturesConfigurationBase](../api-reference/beta/resources/intune_deviceconfig_appledevicefeaturesconfigurationbase.md)<br/>[appProvisioningConfigGroupAssignment](../api-reference/beta/resources/intune_apps_appprovisioningconfiggroupassignment.md)<br/>[deviceComplianceUserOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md)<br/>[deviceConfigurationUserOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuseroverview.md)<br/>[enterpriseCertificate](../api-reference/beta/resources/intune_apps_enterprisecertificate.md)<br/>[iosEducationDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseducationdeviceconfiguration.md)<br/>[macOSDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_macosdevicefeaturesconfiguration.md)<br/>[managedAndroidLobApp](../api-reference/beta/resources/intune_apps_managedandroidlobapp.md)<br/>[managedDeviceMobileAppProvisioningConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappprovisioningconfigurationdevicestatus.md)<br/>[managedIOSLobApp](../api-reference/beta/resources/intune_apps_managedioslobapp.md)<br/>[managedMobileLobApp](../api-reference/beta/resources/intune_apps_managedmobilelobapp.md)<br/>[symantecCertificate](../api-reference/beta/resources/intune_apps_symanteccertificate.md)<br/>[windowsAppX](../api-reference/beta/resources/intune_apps_windowsappx.md)<br/>[windowsCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windowscertificateprofilebase.md)<br/>[windowsPhone81AppX](../api-reference/beta/resources/intune_apps_windowsphone81appx.md)<br/>[windowsPhone81AppXBundle](../api-reference/beta/resources/intune_apps_windowsphone81appxbundle.md)<br/>[windowsPhoneXAP](../api-reference/beta/resources/intune_apps_windowsphonexap.md)<br/>[windowsUniversalAppX](../api-reference/beta/resources/intune_apps_windowsuniversalappx.md)<br/>|
|Addition|Beta|Added new complex types:<br/>[airPrintDestination](../api-reference/beta/resources/intune_deviceconfig_airprintdestination.md)<br/>[windowsArchitecture](../api-reference/beta/resources/intune_apps_windowsarchitecture.md)<br/>[windowsDeviceType](../api-reference/beta/resources/intune_apps_windowsdevicetype.md)<br/>[windowsMinimumOperatingSystem](../api-reference/beta/resources/intune_apps_windowsminimumoperatingsystem.md)<br/>[windowsPackageInformation](../api-reference/beta/resources/intune_apps_windowspackageinformation.md)<br/>|
|Addition|Beta|Added the [assign](../api-reference/beta/api/intune_apps_ioslobappprovisioningconfiguration_assign.md) action on the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity|
|Addition|Beta|Added the [scheduleActionsForRules](../api-reference/beta/api/intune_deviceconfig_devicecompliancepolicy_scheduleactionsforrules.md) action on the [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entity|
|Addition|Beta|Added the [updateTargetedSecurityGroups](../api-reference/beta/api/intune_mam_targetedmanagedappconfiguration_updatetargetedsecuritygroups.md) action on the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity|
|Addition|Beta|Added the [getScopesForUser](../api-reference/beta/api/intune_rbac_resourceoperation_getscopesforuser.md) function on the [resourceOperation](../api-reference/beta/resources/intune_rbac_resourceoperation.md) entity|
|Change|Beta|Removed the **manifest** property from the [androidLobApp](../api-reference/beta/resources/intune_apps_androidlobapp.md) entity|
|Change|Beta|Added the **assetTagTemplate**, **lockScreenFootnote**, **homeScreenDockIcons** and **homeScreenPages** properties to the [iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) entity|
|Change|Beta|Removed the **deviceSharingAssetTagInformation**, **deviceSharingLockScreenFootnote**, **homeScreenLayoutDockIcons** and **homeScreenLayoutPages** properties from the [iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md) entity|
|Change|Beta|Added the **appsSingleAppModeBundleIds** property to the [iosGeneralDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosgeneraldeviceconfiguration.md) entity|
|Change|Beta|Removed the **manifest** property from the [iosLobApp](../api-reference/beta/resources/intune_apps_ioslobapp.md) entity|
|Change|Beta|Added the **createdDateTime**, **description**, **lastModifiedDateTime**, **displayName** and **version** properties to the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity|
|Change|Beta|Added the **createdDateTime** and **lastModifiedDateTime** properties to the [managedAppPolicy](../api-reference/beta/resources/intune_mam_managedapppolicy.md) entity|
|Change|Beta|Removed the **deviceRegistrationState** property from the [managedDevice](../api-reference/beta/resources/intune_devices_manageddevice.md) entity|
|Change|Beta|Added the **manifest** property to the [mobileAppContentFile](../api-reference/beta/resources/intune_apps_mobileappcontentfile.md) entity|
|Change|Beta|Added the **osDescription** and **userName** properties to the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity|
|Change|Beta|Removed the **deviceType** property from the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity|
|Change|Beta|Changed the type of the following properties on the [mobileAppInstallStatus](../api-reference/beta/resources/intune_apps_mobileappinstallstatus.md) entity:<br/>**mobileAppInstallStatusValue** from Int32 to String|
|Change|Beta|Added the **targetedSecurityGroupIds** and **targetedSecurityGroupsCount** properties to the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity|
|Change|Beta|Removed the **numberOfTargetedSecurityGroups** property from the [targetedManagedAppConfiguration](../api-reference/beta/resources/intune_mam_targetedmanagedappconfiguration.md) entity|
|Change|Beta|Added the **id** property to the [user](../api-reference/beta/resources/intune_devices_user.md) entity|
|Change|Beta|Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows10CertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windows10certificateprofilebase.md) entity|
|Change|Beta|Removed the **renewalThresholdPercentage**, **keyStorageProvider**, **subjectNameFormat**, **subjectAlternativeNameType**, **certificateValidityPeriodValue** and **certificateValidityPeriodScale** properties from the [windows81CertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windows81certificateprofilebase.md) entity|
|Change|Beta|Removed the **applyToWindows10Mobile** property from the [windowsPhone81GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windowsphone81generalconfiguration.md) entity|
|Change|Beta|Added the **enterpriseCerts**, **iosLobAppProvisioningConfigurations** and **symantecCert** navigation properties to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) entity|
|Change|Beta|Added the **userStatusOverview** navigation property to the [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entity|
|Change|Beta|Added the **userStatusOverview** navigation property to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) entity|
|Change|Beta|Added the **groupAssignments**, **deviceStatuses** and **userStatuses** navigation properties to the [iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md) entity|
|Change|Beta|Changed the type of the following properties on the [windows10VpnConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10vpnconfiguration.md) entity:<br/>**identityCertificate** from [windows10CertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windows10certificateprofilebase.md) to [windowsCertificateProfileBase](../api-reference/beta/resources/intune_deviceconfig_windowscertificateprofilebase.md)|
|Change|Beta|Added the **deviceComplianceCheckinThresholdDays** and **isScheduledActionEnabled** properties to the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type|
|Change|Beta|Removed the **windowsCommercialId** and **windowsCommercialIdLastModifiedTime** properties from the [deviceManagementSettings](../api-reference/beta/resources/intune_deviceconfig_devicemanagementsettings.md) complex type|
|Change|Beta|Added the **bundleID**, **appName**, **publisher**, **enabled** and **showOnLockScreen** properties to the [iosNotificationSettings](../api-reference/beta/resources/intune_deviceconfig_iosnotificationsettings.md) complex type|
|Change|Beta|Removed the **bundleIdentifier**, **notificationsEnabled** and **showInLockScreen** properties from the [iosNotificationSettings](../api-reference/beta/resources/intune_deviceconfig_iosnotificationsettings.md) complex type|



## January 2017

### Outlook calendar

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0|New action [findMeetingTimes](../api-reference/v1.0/api/user_findmeetingtimes.md) for the [user](../api-reference/v1.0/resources/user.md) resource.|
|Addition|v1.0|New complex type [attendeeBase](../api-reference/v1.0/resources/attendeebase.md) which consists of a type property for the attendee type.|
|Addition|v1.0|New complex types:<br/>[attendeeAvailability](../api-reference/v1.0/resources/attendeeavailability.md)<br/>[locationConstraint](../api-reference/v1.0/resources/locationconstraint.md) <br/>[locationConstraintItem](../api-reference/v1.0/resources/locationconstraintitem.md)<br/>[meetingTimeSuggestion](../api-reference/v1.0/resources/meetingtimesuggestion.md)<br/>[meetingTimeSuggestionsResult](../api-reference/v1.0/resources/meetingtimesuggestionsresult.md)<br/>[timeConstraint](../api-reference/v1.0/resources/timeconstraint.md)<br/>[timeSlot](../api-reference/v1.0/resources/timeslot.md)|
|Change|v1.0|The [attendee](../api-reference/v1.0/resources/attendee.md) complex type is now derived from attendeeBase, which in turn is derived from [recipient](../api-reference/v1.0/resources/recipient.md). Including the inherited properties, it consists of the same **status**, **type** and **emailAddress** properties as before.|
|Addition|Beta|hexColor added to the [calendar](../api-reference/beta/resources/calendar.md) resource.|

### Intune APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added new entities: <br/>[appReportingOverviewStatus](../api-reference/beta/resources/intune_apps_appreportingoverviewstatus.md)<br/>[deviceComplianceDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedeviceoverview.md)<br/>[deviceConfigurationDeviceOverview](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdeviceoverview.md)<br/>[deviceManagementExchangeOnpremisesPolicy](../api-reference/beta/resources/intune_onboarding_devicemanagementexchangeonpremisespolicy.md)<br/>[iosDeviceFeaturesConfiguration](../api-reference/beta/resources/intune_deviceconfig_iosdevicefeaturesconfiguration.md)<br/>[iosEducationDeviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_ioseducationdeviceconfiguration.md)<br/>[iosLobAppProvisioningConfiguration](../api-reference/beta/resources/intune_apps_ioslobappprovisioningconfiguration.md)<br/>[onpremisesConditionalAccessSettings](../api-reference/beta/resources/intune_onboarding_onpremisesconditionalaccesssettings.md)<br/>[sharedPCConfiguration](../api-reference/beta/resources/intune_deviceconfig_sharedpcconfiguration.md)<br/>[windows10EnterpriseModernAppManagementConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10enterprisemodernappmanagementconfiguration.md)<br/>[windows10SecureAssessmentConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10secureassessmentconfiguration.md)<br/>[windows10WindowsInformationProtectionConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10windowsinformationprotectionconfiguration.md)|
|Addition|Beta|Added new complex types: <br/> [appInstallationFailure](../api-reference/beta/resources/intune_apps_appinstallationfailure.md)<br/>[enterpriseCloudResource](../api-reference/beta/resources/intune_deviceconfig_enterprisecloudresource.md)<br/>[iosHomeScreenApp](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenapp.md)<br/>[iosHomeScreenFolder](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenfolder.md)<br/>[iosHomeScreenFolderPage](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenfolderpage.md)<br/>[iosHomeScreenItem](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenitem.md)<br/>[iosHomeScreenPage](../api-reference/beta/resources/intune_deviceconfig_ioshomescreenpage.md)<br/>[iosNotificationSettings](../api-reference/beta/resources/intune_deviceconfig_iosnotificationsettings.md)<br/>[iPv6Range](../api-reference/beta/resources/intune_deviceconfig_ipv6range.md)<br/>[sharedPCAccountManagerPolicy](../api-reference/beta/resources/intune_deviceconfig_sharedpcaccountmanagerpolicy.md)<br/>[windowsInformationProtectionAppRule](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionapprule.md)<br/>[windowsInformationProtectionAppRuleAppLockerPolicyFileTemplate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionappruleapplockerpolicyfiletemplate.md)<br/>[windowsInformationProtectionAppRuleDesktopTemplate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionappruledesktoptemplate.md)<br/>[windowsInformationProtectionAppRuleStoreAppTemplate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionapprulestoreapptemplate.md)<br/>[windowsInformationProtectionAppRuleTemplate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionappruletemplate.md)<br/>[windowsInformationProtectionCorporateNetworkLocation](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectioncorporatenetworklocation.md)<br/>[windowsInformationProtectionDataRecoveryCertificate](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectiondatarecoverycertificate.md)<br/>[windowsInformationProtectionProtectedLocation](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocation.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseCloudResources](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterprisecloudresources.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseInternalProxyServers](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseinternalproxyservers.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv4Ranges](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseipv4ranges.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseIPv6Ranges](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseipv6ranges.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseNetworkDomainNames](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterprisenetworkdomainnames.md)<br/>[windowsInformationProtectionProtectedLocationEnterpriseProxyServers](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationenterpriseproxyservers.md)<br/>[windowsInformationProtectionProtectedLocationNeutralResources](../api-reference/beta/resources/intune_deviceconfig_windowsinformationprotectionprotectedlocationneutralresources.md)
|Deletion|Beta|Removed the following complex types and replaced with microsoft.graph.Json:<br/>managedAppDeploymentSummary <br/>managedAppSummary<br /> |
|Change|Beta|Replaced the property type appConfigComplianceStatus with complianceStatus on the following entities: <br/>[managedDeviceMobileAppConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md)<br/>[managedDeviceMobileAppConfigurationUserStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md)|
|Change|Beta|For resource [managedAppStatusRaw](../api-reference/beta/resources/intune_mam_managedappstatusraw.md), changed type of property content from managedAppSummary to Json.|
|Change|Beta|Removed the getUsersWithFlaggedAppRegistration function from the [managedAppRegistration](../api-reference/beta/resources/intune_mam_managedappregistration.md) collection.|
|Change|Beta|Changed the **vppToken** navigation property of the [iosVppApp](../api-reference/beta/resources/intune_apps_iosvppapp.md) entity to no longer be a contained collection.|
|Change|Beta|Added the **deviceStatusOverview** property to the [deviceConfiguration](../api-reference/beta/resources/intune_deviceconfig_deviceconfiguration.md) and [deviceCompliancePolicy](../api-reference/beta/resources/intune_deviceconfig_devicecompliancepolicy.md) entities.|
|Change|Beta|Added the **appReportingOverview** property to the [deviceAppManagement](../api-reference/beta/resources/intune_apps_deviceappmanagement.md) singleton.|
|Change|Beta|Added the **deviceDisplayName** and **userPrincipalName** properties to the [deviceConfigurationDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationdevicestatus.md), [deviceComplianceDeviceStatus](../api-reference/beta/resources/intune_deviceconfig_devicecompliancedevicestatus.md) and [managedDeviceMobileAppConfigurationDeviceStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationdevicestatus.md) entities.|
|Change|Beta|Add the **ruleName** property to the [deviceComplianceScheduledActionForRule](../api-reference/beta/resources/intune_deviceconfig_devicecompliancescheduledactionforrule.md) entity.|
|Change|Beta|Added the **devicesCount**, **userDisplayName** and **userPrincipalName** properties to the [deviceConfigurationUserStatus](../api-reference/beta/resources/intune_deviceconfig_deviceconfigurationuserstatus.md), [deviceComplianceUserStatus](../api-reference/beta/resources/intune_deviceconfig_devicecomplianceuserstatus.md), and [managedDeviceMobileAppConfigurationUserStatus](../api-reference/beta/resources/intune_apps_manageddevicemobileappconfigurationuserstatus.md) entities.|
|Change|Beta|Added the [notificationMessageTemplates](../api-reference/beta/resources/intune_notification_notificationmessagetemplate.md) collection to the [deviceManagement](../api-reference/beta/resources/intune_devicefe_devicemanagement.md) singleton.|
|Change|Beta|Added the **isDefault**, **lastModifiedDateTime**, **locale**, **messageTemplate** and **subject** properties to the[localizedNotificationMessage](../api-reference/beta/resources/intune_deviceconfig_localizednotificationmessage.md) entity.|
|Change|Beta|Added the **azureActiveDirectoryDeviceId**, **deviceCategory**, **deviceRegistrationState** and **managementAgent** properties to the [managedDevice](../api-reference/beta/resources/intune_deviceconfig_manageddevice.md) entity.|
|Change|Beta|Added the **lastModifiedDateTime** property to the [mobileAppCategory](../api-reference/beta/resources/intune_apps_mobileappcategory.md) entity.|
|Change|Beta|Added the **brandingOptions**, **defaultLocale**, **displayName**, **fromEmailAddress**, **lastModifiedDateTime**, **localizedNotificationMessages** properties to the [notificationMessageTemplate](../api-reference/beta/resources/intune_notification_notificationmessagetemplate.md) entity.|
|Change|Beta|Added the **appsAllowTrustedAppsSideloading**, **appsBlockWindowsStoreOriginatedApps**, **developerUnlockSetting**, **edgeBlockAccessToAboutFlags**, **edgeBlockDeveloperTools**, **edgeBlockExtensions**, **edgeBlockInPrivateBrowsing**, **edgeFirstRunUrl**, **edgeHomepageUrls**, **gameDvrBlocked**, **settingsBlockAddProvisioningPackage**, **settingsBlockChangeLanguage**, **settingsBlockChangePowerSleep**, **settingsBlockChangeRegion**, **settingsBlockChangeSystemTime**, **settingsBlockEditDeviceName**, **settingsBlockRemoveProvisioningPackage**, **sharedUserAppDataAllowed**, **smartScreenBlockPromptOverride**, **smartScreenBlockPromptOverrideForFiles**, **storageRestrictAppDataToSystemVolume**, **storageRestrictAppInstallToSystemVolume**, **webRtcBlockLocalhostIpAddress**, **windowsStoreBlockAutoUpdate** and **windowsStoreEnablePrivateStoreOnly** properties to the [windows10GeneralConfiguration](../api-reference/beta/resources/intune_deviceconfig_windows10generalconfiguration.md) entity.|

## December 2016

### Delta query

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|A new delta function add to the following entities to perform [delta query](delta_query_overview.md):<br/>contact<br/>contactFolder<br/>event<br/>group<br/>mailFolder<br/>message<br/>user<br/>See the following for examples:<br/>[Get incremental changes to groups (preview)](delta_query_groups.md)<br/>[Get incremental changes to messages in a folder (preview)](delta_query_messages.md)<br/>[Get incremental changes to users (preview)](delta_query_users.md)|

### Excel APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0|Added workbookPivotTable resource, refresh and refreshAll action on pivotTables, workbookRangeView resource, visibleView action on the filtered range to return workbookRangeView to the user, get rows collection and range resource off of visibleView, columnsAfter, columnsBefore, resizedRange, rowsAbove, and rowsBelow functions off of range resource, and new table properties.|

### Intune APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added resources and method APIs for Microsoft Intune. This is a large set of resources and methods to support the public preview of Intune on Azure Portal. For information about the Intune service, see the [Intune documentation](https://go.microsoft.com/fwlink/?linkid=836405). For information about the Intune resources and APIs, see [Working with Intune in Microsoft Graph](../api-reference/beta/resources/intune_graph_overview.md).|

## October 2016

### Authorization provider

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|v1.0 and beta|The v2.0 auth endpoint now supports the client_credentials OAuth grant, which can be used for [daemon & long running processes in business scenarios](https://azure.microsoft.com/documentation/articles/active-directory-v2-protocols-oauth-client-creds/).|
|Addition|v1.0 and beta|The v2.0 auth endpoint now supports [permission scopes that require administrator's consent](permissions_reference.md), via the [admin consent endpoint](https://azure.microsoft.com/documentation/articles/active-directory-v2-scopes/#admin-restricted-scopes).|
|Addition|v1.0 and beta|The v2.0 auth endpoint now supports administrative consent for all users in a tenant, via the [admin consent endpoint](https://azure.microsoft.com/documentation/articles/active-directory-v2-scopes/#admin-restricted-scopes).|

### Invitation APIs

|**Change type**|**Version**|**Description**|
|:-------------|:-----------|:--------------|
|Addition|Beta|Added invitedUserType property to the invitation entity type, that defines the type of user (**Guest** or **Member**) that is invited.|
|Deletion|Beta|We will be removing the invitedToGroups property from the invitation entity-type on 11/11/2016. This means that you will no longer be able to add an invited user to a group using this API. Instead, use the [add member API](../api-reference/v1.0/api/group_post_members.md) to add a user to a group.|

## September 2016

### Azure AD application proxy

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Azure AD Application Proxy APIs are now available in the Microsoft Graph beta endpoint. These APIs allow for secure publishing of on-premises applications to users outside the corporate network using Azure AD as the common control plane for access. You can use the published APIs to write applications that can retrieve and update various aspects of application proxy, such as _connectors_, _connectorGroups_ and the _onPremisesPublishing_ settings of an application.|

### Drive

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _shared_ collection to allow accessing shared driveItems by shareId or sharing URL.|
|Addition|Beta|Added _search_ function to a drive, which allows searching for more items than just those in the drive's root folder.|


### DriveItem

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added support for _createUploadSession_, which allows uploading files larger than 4 MB to OneDrive, OneDrive for Business, and SharePoint document libraries.|
|Addition|Beta|Added _sharepointIds_ property to driveItem that returns traditional SharePoint API identifiers for driveItems stored in SharePoint.|
|Addition|Beta|Added additional properties on _remoteItem_.|
|Addition|Beta|Added the _quickXorHash_ value for files in OneDrive for Business.|
|Addition|Beta|Added scope to the _createSharingLink_ to allow creating company sharable links or anonymous sharing links.|

### Extended properties

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0| Extended properties are now supported by the following resources: message, mailFolder, event, calendar, contact, contactFolder, group event, group calendar, group post.|

### Groups

Added support for dynamic group membership through the public preview API, including the additions listed in the following table.

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added **membershipRule** property contains rules that controls the memberships for this group, if the group is a dynamic group.|
|Addition|Beta|Added **membershipRuleProcessingState** property to control whether dynamic membership processing is on or paused for this group.|
|Addition|Beta|Set the **groupTypes** property to contain **"DynamicMembership"** to light up the dynamic groups capability for this group.|
|Addition|Beta|Added **preferredLanguage** property to indicate the preferred language for an Office 365 group.|
|Addition|Beta|Added **theme** property to specify an Office 365 group's color theme.|

### Hybrid deployment support

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Apps can use v1.0 Outlook Mail, Calendar, and Contacts APIs to access on-premises mailboxes in a hybrid deployment with Exchange 2016 Cumulative Update 3 (CU3). Find more details about REST API support in specific [hybrid deployments](hybrid_rest_support.md). **Note:** If you're using these sets of API in v1.0, you can now find your apps, including production apps, working for on-premises mailboxes that meet the specific hybrid deployment requirements. This capability is only in preview.|

### IdentityRiskEvents

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|Beta|As part of the schema change where the type of two location properties is being replaced by a new complex type in the identityRiskEvents endpoint, the following properties are changed/added in the identityRiskEvents endpoint:</br>**location**  changed from Edm.String to ComplexType signInLocation.<br/>**previousLocation** changed from Edm.String to ComplexType signInLocation.<br/>**signInLocation** new ComplexType that contains city, state, countryOrRegion and geoCoordinates properties.<br/>**geoCoordinates** new ComplexType that contains latitude and longitude properties.|

### Invitation manager

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Invitation manager APIs are now available in the Microsoft Graph beta endpoint. You can use invitation manager APIs to create an invite, in order to add an external user to the organization. As part of the invitation, you can also choose to add the invited user to an Office 365 group. For more details, see [invitation manager](../api-reference/beta/resources/invitation.md).|

### OneDrive

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added **CreateUploadSession** method on **driveItem**, which allows large file and resumable uploads.|
|Addition|v1.0|Added properties for tracking SharePoint IDs on items from SharePoint (**sharepointIds**) and a property to identify root folders (**root**).|
|Addition|v1.0|Added **Shares** root collection, which can be used with shareIds or sharing links to access shared items in OneDrive and SharePoint. Returns a new type, sharedDriveItem.|
|Addition|v1.0|Added **Invite** method on driveItem, which allows adding permissions to items. |
|Addition|v1.0|Added **Search** method on drive, which allows searching across items in the drive and shared items. |
|Addition|v1.0|Added **processingMetadata** property on file complex type quickXorHash property on hashes complex type. |
|Addition|v1.0|Added **quickXorHash** property on hashes complex type. |

### Outlook calendar

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added the **onlineMeetingUrl** property to the [event](../api-reference/v1.0/resources/event.md) resource.|
|Addition|Beta|Added [forward](../api-reference/beta/api/event_forward.md) action to the event resource.|
|Addition|Beta|Added the following properties to the [calendar](../api-reference/beta/resources/calendar.md) resource to support calendar sharing: **canEdit**, **canShare**, **canViewPrivateItems**, **isShared**, **isShareWithMe**, and **owner**.|

### Outlook mail

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added the [mailboxSettings](../api-reference/v1.0/resources/mailboxsettings.md) complex type, which includes the **automaticRepliesSetting**, **timeZone**, and **language** properties.|
|Addition|v1.0|Added the **mailboxSettings** property to the [user](../api-reference/v1.0/resources/user.md) resource.|
|Addition|Beta|Added support for creating, listing, getting, and deleting one or more instances of [mention](../api-reference/beta/resources/mention.md) in a message. Mentions support calling out to get the attention of other users in a message.|
|Addition|Beta|Added support for the [getMailTips](../api-reference/beta/api/user_getmailtips.md) action to get any MailTips for specific recipients. Added the following resources: automaticRepliesMailTips, mailTips, mailTipsError.|

### Query parameters

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|Beta|Query parameters without $ prefixes are supported as of 09/26/16. The $ prefix in query parameters is optional. For details, see the [Supporting query parameters without $ prefixes in Microsoft Graph](http://dev.office.com/queryparametersinMicrosoftGraph) blog post.|

### SharePoint

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Access to SharePoint sites and [lists by ID](../api-reference/beta/api/list_get.md).|
|Addition|Beta|Support for [listing, creating, getting, and deleting instances of listItem](../api-reference/beta/resources/listitem.md).|

### Users

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added **refreshTokensValidFromDateTime** read-only property to indicate when refresh or session tokens are valid from. Any tokens issued before this time are invalid, and any attempt to use them would force a new sign-in for the user.|
|Addition|Beta|Added **showInAddressList** property to control if the Outlook global address list should contain this user.|
|Addition|Beta|Added **invalidateAllRefreshTokens** service action that invalidates all of the user's refresh and session tokens issued to applications, by resetting the **refreshTokensValidFromDateTime** user property to the current date-time.|


### Webhooks

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added Drive root items to Webhooks as a resource that is available to subscribe to.|

## August 2016

### Contacts

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|As part of the schema change where a few properties are being removed and corresponding collections are being added to contacts endpoint, the following properties have been added to the contacts endpoint: _Websites Collection(ComplexType: Website)_,_Phones Collection (ComplexType: Phone)_, _PostalAddress Collection(ComplexType: PhysicalAddress)_. For details, see the [Upcoming changes to Contacts and People APIs](https://blogs.msdn.microsoft.com/exchangedev/2016/06/09/upcoming-changes-to-contacts-and-people-apis/) blog post.|
|Deletion|Beta|As part of the schema change where a few properties are being removed and corresponding collections are being added to contacts endpoint, the following properties have been removed from the contacts endpoint: _BusinessHomePage_,_HomePhones_, _MobilePhone1_, _BusinessPhones_, _HomeAddress_, _BusinessAddress_, _OtherAddress_. For details, see the [Upcoming changes to Contacts and People APIs](https://blogs.msdn.microsoft.com/exchangedev/2016/06/09/upcoming-changes-to-contacts-and-people-apis/) blog post.|

### Excel APIs

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Excel REST API on Microsoft Graph is generally available. Now you can build rich and deep integrations with Excel workbooks in Office 365. See the [Power your apps with the new Excel REST API on the Microsoft Graph](http://dev.office.com/blogs/power-your-apps-with-the-new-excel-rest-api) blog post for more details.|

### People

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|Beta|Property _WebSite_ is renamed to _Websites_. For details, see [Upcoming changes to Contacts and People APIs](https://blogs.msdn.microsoft.com/exchangedev/2016/06/09/upcoming-changes-to-contacts-and-people-apis/).|

### Privileged Identity Management

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Privileged Identity Management (PIM) REST APIs now are available in the Microsoft Graph beta endpoint. [Privileged Identity Management](https://azure.microsoft.com/documentation/articles/active-directory-privileged-identity-management-configure/) provides just in time activation for privileged Azure AD organizational roles such as Global Administrator, Billing Administrator, and so on. You can use the published APIs to write applications that retrieve and update privileged role assignments, and activate users into roles. For details, see [Microsoft Graph: Azure AD Privileged Identity Management Preview APIs available in Beta](http://dev.office.com/blogs/microsoft-graph-azure-ad-privileged-identity-management-apis-beta) and [Azure AD Privileged Identity Management](../api-reference/beta/resources/privilegedidentitymanagement_root.md).|

## July 2016

### Administrative Units

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Introduced the new Administrative Unites preview API. Administrative units allow organizations to subdivide their Azure Active Directory, and delegate administrative duties to those subdivisions. Subdivisions can represent regions, departments, cost centers, etc. This can now be managed through the Microsoft Graph API.|

## June 2016

### IdentityRiskEvents

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Introduced the new IdentityRiskEvents preview API. This API works in conjunction with Azure Active Directory Identity Protection. You can use it to query risk events generated by Identity Protection. For more details, see the [Introduction of a new preview API to Microsoft Graph: IdentityRiskEvents](http://dev.office.com/blogs/identityriskevents-api-preview) blog post.

### Subscriptions

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|App-only scopes are now supported for _mail_ and _contacts_ subscriptions.|

## May 2016

### Calendar

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Breaking change|Beta|Changes to the findMeetingTimes API. For more information, see the [Microsoft Graph findMeetingTimes API update](http://dev.office.com/microsoft-graph-findmeetingtimes-api-update) blog post. This change took effect May 19th, 2016.

### Contact

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _extensions_, which is abstract type to support the OData v4 open type openTypeExtension.|

### Directory

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Breaking change|Beta|_settingTemplateId_ is renamed to _templateId_. This change will take effect May 19th, 2016.|

### Event

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _extensions_, which is abstract type to support the OData v4 open type openTypeExtension.|

### EventMessages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _inferenceClassification_ and _extensions_ to _eventMessages_.|
|Addition|Beta|Added _responseRequested_ to _eventMessageRequest_.|

### Messages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _inferenceClassification_ and _extensions_ to _messages_.|
|Addition|Beta|Added _wellknownname_ to _contactFolder_.|Changes to _findMeetingTimes_ API. For more information, see the [Microsoft Graph findMeetingTimes API update](http://dev.office.com/microsoft-graph-findmeetingtimes-api-update) blog post. This change will take effect May 19th, 2016.|

### Post

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _extensions_, which is abstract type to support the OData v4 open type openTypeExtension.|

### User

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _inferenceClassification_ resource type.|
|Addition|Beta|Added _timeZone_ to _mailboxsettings_.|
|Addition|Beta|Added API _findMeetingTimes_to _user_.|

## April 2016

### General

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and Beta|Added support for honoring _Accept-Encoding:gzip_.|
|Addition|v1.0|Added support for cast segment in expand path. For example, `https://graph.microsoft.com/v1.0/me/messages?$expand=microsoft.graph.eventMessage/event`.|
|Addition|Beta|Added support for `PATCH` request against structural properties. For example: 'PATCH /me/mailboxSettings'.|
|Addition|Beta|Azure Active Directory is now used as a fallback for /beta/users/id/photo requests when Outlook is unable to service the request, for example when the user has no mailbox license or the tenant does not have an Exchange Online subscription. NOTE: this fallback is available for both GET and PATCH.|
|Addition|Beta|Added support for cast segment in expand path. For example: `https://graph.microsoft.com/v1.0/me/messages?$expand=microsoft.graph.eventMessage/event`.|

### OneDrive

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0|Fixed the issue that OneDrive createLink requests failing with 500 and "Unsupported extension property type."|

## March 2016

### Calendar

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties.|
|Addition|Beta|Added _suggestionHint_ property to _meetingTimeCandidate_.|
|Addition|Beta|Added _locationUri_ property to _location_.|
|Addition|Beta|Added _type_ and _postOfficeBox_ to _physicalAddress_.|
|Change|Beta|_findMeetingTimes_ now takes new parameter _ReturnSuggestionHints_.|
|Change|Beta|_findMeetingTimes_ now returns a collection of _meetingTimeCandidate_.|

### Drive

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|Added _recent_ function to list a set of items that have been recently used by the signed in user. This list includes items that are in the user's drive as well as items they have access tofrom other drives. Example: GET /me/drive/recent.|
|Addition|v1.0 and beta|Added _sharedWithMe_ function to list the set of items that are shared with the current user. Example: GET /me/drive/sharedWithMe.|

### DriveItem

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|Added _remoteItem_ type to provide a link to an item in another drive.|
|Addition|v1.0 and beta|Added _sharingInvitation_ type to provide details of any associated sharing invitation for this permission.|
|Addition|v1.0 and beta|Added _delta_ function to track changes to items in a drive. Example: GET /me/drive/items/{item-id}/delta|
|Addition|v1.0 and beta|Added _copy_ that creates a copy of a _driveItem_ (including any children), under a new parent or with a new name. Example: `POST /me/drive/items/{item-id}/copy`.|
|Addition|v1.0 and beta|_conflictBehavior_ instance attributes is now applicable to _driveItem_.|
|Addition|Beta|Added _invite_ function to send a sharing invitation to an existing item. A sharing invitation creates a unique sharing link and sends an email to the recipient of the invitation that includes the sharing link. Example: `POST /drive/items/{item-id}/invite`.

### Event

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added new property _onlineMeetingUrl_ and new method _cancel_.|

### Event messages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _startDateTime_, _endDateTime_, _location_, _type_, _recurrence_, _isOutOfDate_, _conversationIndex_, _unsubscribe_, _unsubscribeData_, _unsubscribeEnabled_ and _flag_ properties to _eventmessage_ object.|
|Addition|Beta|Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties.|
|Addition|Beta|Added new method _unsubscribe_.|

### Excel

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|We are adding new Excel REST APIs that let you read and modify data in an Excel workbook. It is now possible to build smart apps that allows users to get value out of the content stored in an Excel workbook by providing insights into the data. Take advantage of analytical powers of Excel, create tables and charts and extract visually appealing chart image - all from within your app. For details, see [Working with Excel in Microsoft Graph](../api-reference/beta/resources/excel.md).|

### General

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|Improved error message when resolving tenant alias and rejected JWT (AAD) tokens.|
|Addition|v1.0 and beta|The location of the authorization service endpoint is now returned in the _www-authenticate_ header when a request is received with an empty bearer token.|
|Addition|v1.0 and beta|The ability to filter on an entity's id property is now fixed. Example: `GET https://graph.microsoft.com/v1.0/users?$filter=id+eq+'x'`<br/>Previously, any `POST` requests to service actions and functions require prefixing the action or function name with the microsoft.graph prefix. For example: `POST https://graph.microsoft.com/v1.0/me/Microsoft.Graph.getMemberGroups`.<br/>The prefix is now no longer required (although it can still be specified). So the following would now also work: `POST https://graph.microsoft.com/v1.0/me/getMemberGroups`.|
|Change|Beta|Cleaned up subscription property names.|
|Addition|Beta|We've added the capability to discover (through _directorySettingTemplates_) and override the default behavior (by creating a _setting_ from the template) for entities and their associated functionality. Initially this only template provided is to control behaviors on Office groups.|

### Mail folder

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _wellKnownName_ and _userConfigurations_ properties.|
|Addition|Beta|Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties|

### Messages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added _mobilePhone_ property.|
|Addition|v1.0 and beta|Added _internetMessageId_ property. The message ID in the format specified by [RFC2822](http://www.ietf.org/rfc/rfc2822.txt).|
|Change|Beta|Renamed _mobilePhone1_ property to _mobilePhone_.|
|Change|Beta|_createReply_ and _createReplyAll_take new parameter _Message_ and _comment_.|
|Change|Beta|_createForward_ takes new parameter _Message_, _ToRecipients_ and _comment_.|
|Change|Beta|_reply_, _replyAll_ and _forward_ take new parameter _Message_.|

### Permission

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|Added _sharingInvitation_ property to provide details of any associated sharing invitation for this permission.|

### Person

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added new properties _birthday_, _personNotes_, _isFavorite_, _phones_, _permission_, _postalAddresses_,_websites_,_yomiCompany_, _department_, _profession_, _mailboxType_ and _personType_.|
|Addition|Beta|Added new enum types _physicalAddressType_, _webSite_, _phone_ and _webSiteType_.|

### Reference attachment

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added new properties _sourceUrl_, _providerType_, _thumbnailUrl_, _previewUrl_, _permission_ and _isFolder_.|
|Addition|Beta|Added _singleValueExtendedProperties_ and _multiValueExtendedProperties_ properties.|
|Addition|Beta|Added new enum types _referenceAttachmentProvider_ and _referenceAttachmentPermission_.|

### Subscriptions

|**Change type**|**Endpoint**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Webhooks are now GA on V1.0 endpoint via the _/Subscriptions_ resource. Create, Read, Renew and Delete subscriptions to receive notifications on data from Outlook and Office 365 group conversations.|

### User

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added _mailboxSettings_ property and corresponding types.|

## February 2016

### DriveItem

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0 and beta|New _remoteItem_ property on driveItem for Microsoft accounts.|

### General

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|v1.0 and beta|-_/me/drive_ now works for both Microsoft accounts and Work and School accounts.|
|Change|v1.0 and beta|Drive requests for accounts whose OneDrive storage was provisioned on demand work more reliably and work in more scenarios where tenant default SharePoint sites use non-standard names.|
|Deletion|Beta|Removed various unimplemented types from the beta schema to more closely match the 1.0 schema.|

### Subscriptions

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|notificationUrl validation on subscription creation. For details, see [Microsoft Graph WebHooks Update - January 2016](http://dev.office.com/blogs/Microsoft-Graph-WebHooks-Update-January-2016).|
|Addition|Beta|Subscription entities can now be deleted: `DELETE https://graph.microsoft.com/beta/subscriptions/`|

### Users

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Change|v1.0 and beta|_displayName_ is now returned for Microsoft accounts.|

## January 2016

### Contacts

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|v1.0|Added mobilePhone property to personal contacts entity-set.|

### directoryObjects

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0 and beta|Fixed calling actions that are bound to directoryObjects, which were failing with the following error:  The return type from the operation is not possible with the given entity set. This applies to the following actions: _microsoft.graph.checkMemberObjects_, _microsoft.graph.getMemberObjects_, _microsoft.graph.checkMemberGroups_, _microsoft.graph.assignLicense_, _microsoft.graph.changePassword_.|

## December 2015

### Contacts

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added mobilePhone property to personal contacts entity-set.|

### General

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0 and beta|Fixed requests using $filter expressions that specified the same property more than once, which were failing with the following 500 error: An item with the same key has already been added.|
|Fix|v1.0 and beta|Fixed case insensitivity for action parameter names and values.|
|Fix|v1.0 and beta|Fixed request processing for payloads containing null values for some embedded complex properties, which were failing with a null reference exception.|
|Addition|v1.0 and beta|Added support for complex type property sorting and filtering.|
|Addition|v1.0 and beta|Added authorization_uri property in the www-authenticate header on a 401 response. This uri can be used to start the token acquisition flow.|
|Addition|v1.0 and beta|Improved error messages across users and groups.|

### Groups

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0 and beta|Fixed calling the following group actions: _microsoft.graph.addFavorite_, _microsoft.graph.removeFavorite_ and _microsoft.graph.resetUnseenCount_.|

### Messages

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Addition|Beta|Added eventMessageRequest subtype of eventMessage and startDateTime, endDateTime, location, type, recurrence and isOutOfDate properties to eventMessage type.|

### Users

|**Change type**|**Version**|**Description**|
|:--------------|:-----------|:--------------|
|Fix|v1.0 and beta|Fixed being able to select certain user properties on other users, when referencing the user by user principal name (UPN). For example: `https://graph.microsoft.com/v1.0/users/anotherUser@contoso.com?$select=aboutMe`|
|Fix|v1.0 and beta|Fixed calling the _microsoft.graph.reminderView_ user bound function, which was failing with the following error: Could not find a property named businessPhones on type  Microsoft.OutlookServices.Reminder.|
|Fix|v1.0 and beta|Fixed user creation and update (POST/PATCH `/v1.0/users`), which was failing with a 400 error.|
