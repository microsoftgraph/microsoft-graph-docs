---
title: "Enum values"
description: "Microsoft Graph enumeration values."
localization_priority: Normal
ms.prod: "non-product-specific"
author: "MSGraphDocsvTeam"
doc_type: enumPageType
---

# Enum values

Namespace: microsoft.graph

### consentRequestFilterByCurrentUserOptions values 

|Member|
|:---|
|reviewer|
|unknownFutureValue|

### externalEmailOtpState values

|Member|
|:---|
|default|
|enabled|
|disabled|
|unknownFutureValue|

### educationAddedStudentAction values

|Member|
|:---|
|none|
|assignIfOpen|
|unknownFutureValue|

### authenticatorAppContextType values

|Member|
|:---|
|location|
|app|

### fido2RestrictionEnforcementType values

|Member|
|:---|
|allow|
|block|

### attestationLevel values

|Member|
|:---|
|attested|
|notAttested|

### authenticationMethodTargetType values

|Member|
|:---|
|user|
|group|

### authenticationMethodState values

|Member|
|:---|
|enabled|
|disabled|

### microsoftAuthenticatorAuthenticationMode values

|Member|
|:---|
|any|
|push|
|deviceBasedPush|

### keyStrength values

|Member|
|:---|
|normal|
|weak|
|unknown|

### authenticationMethodKeyStrength values

|Member|
|:---|
|normal|
|weak|
|unknown|

### authenticatorAppFeatureSettings values

|Member|
|:---|
|requireNumberMatching|
|unknownFutureValue|

### allowInvitesFrom values

|Member|
|:---|
|none|
|adminsAndGuestInviters|
|adminsGuestInvitersAndAllMembers|
|everyone|
|unknownFutureValue|

### dataPolicyOperationStatus values

|Member|
|:---|
|notStarted|
|running|
|complete|
|failed|
|unknownFutureValue|

### conditionalAccessDevicePlatform values

| Member       |
|:--------------|
|android|
|iOS|
|windows|
|windowsPhone|
|macOS|
|all|
|unknownFutureValue|

### signinFrequencyType values

| Member       |
|:--------------|
|days|
|hours|

### persistentBrowserSessionMode values

| Member       |
|:--------------|
|always|
|never|

### cloudAppSecuritySessionControlType values

| Member       |
|:--------------|
|mcasConfigured|
|monitorOnly|
|blockDownloads|
|unknownFutureValue|

### conditionalAccessGrantControl values

| Member       |
|:--------------|
|block|
|mfa|
|compliantDevice|
|domainJoinedDevice|
|approvedApplication|
|compliantApplication|
|passwordChange|
|unknownFutureValue|

### conditionalAccessClientApp values

|Member|
|:---|
|all|
|browser|
|mobileAppsAndDesktopClients|
|exchangeActiveSync|
|easSupported|
|other|
|unknownFutureValue|

### conditionalAccessPolicyState values

|Member|
|:---|
|enabled|
|disabled|
|enabledForReportingButNotEnforced|

#### deviceProfileType values
|Member|
|:---|
|RegisteredDevice|
|SecureVM|
|Printer|
|Shared|
|IoT|

### appliedConditionalAccessPolicyResult values 

|Member|
|:---|
|success|
|failure|
|notApplied|
|notEnabled|
|unknown|
|unknownFutureValue|

### groupType values 

|Member|
|:---|
|unifiedGroups|
|azureAD|
|unknownFutureValue|

### conditionalAccessStatus values

|Member|
|:---|
|success|
|failure|
|notApplied|
|unknownFutureValue|

### operationResult values

|Member|
|:---|
|success|
|failure|
|timeout|
|unknownFutureValue|

### tone values

|Member|
|:---|
|tone0|
|tone1|
|tone2|
|tone3|
|tone4|
|tone5|
|tone6|
|tone7|
|tone8|
|tone9|
|star|
|pound|
|a|
|b|
|c|
|d|
|flash|

### mediaState values

|Member|
|:---|
|active|
|inactive|
|unknownFutureValue|

### basicStatus values

|Member|
|:---|
|active|
|inactive|

### callState values

|Member|
|:---|
|incoming|
|establishing|
|ringing|
|established|
|hold|
|transferring|
|transferAccepted|
|redirecting|
|terminating|
|terminated|

### callType values

|Member|
|:---|
|unknown|
|groupCall|
|peerToPeer|
|unknownFutureValue|

### onlineMeetingRole values

|Member|
|:---|
|attendee|
|presenter|
|unknownFutureValue|

### modality values 

|Member|
|:---|
|audio|
|video|
|videoBasedScreenSharing|
|data|
|screenSharing|
|unknownFutureValue|

### callDirection values

|Member|
|:---|
|incoming|
|outgoing|

### signInAudience values

|Member|
|:---|
|AzureADMyOrg|
|AzureADMultipleOrgs|
|AzureADandPersonalMicrosoftAccount|
|PersonalMicrosoftAccount|

### groupMembershipClaims values

|Member|
|:---|
|None|
|SecurityGroup|
|All|

### recipientScopeType values

|Member|
|:---|
|none|
|internal|
|external|
|externalPartner|
|externalNonPartner|

### activityType values

|Member|
|:---|
|signin|
|user|
|unknownFutureValue|

### riskDetectionTimingType values

|Member|
|:---|
|notDefined|
|realtime|
|nearRealtime|
|offline|
|unknownFutureValue|

### tokenIssuerType values

|Member|
|:---|
|AzureAD|
|ADFederationServices|
|UnknownFutureValue|

### attachmentType values

| Member
|:--------------
| file
| item
| reference

### contactRelationship values

|Member|Value|Description|
|:---|:---|:---|
|parent|0|The user's parent.|
|relative|1| The user's relative.|
|aide|2| The user's aide.|
|doctor|3| The user's doctor.|
|guardian|4| The user's guardian.|
|child|5| The user's child.|
|other|6| An unspecified relationship to the user.|
|unknownFutureValue|7| Marker value for future compatibility.|

### scheduleEntityTheme values

| Member
|:-------------------------
| white
| blue
| green
| purple
| pink
| yellow
| gray
| darkBlue
| darkGreen
| darkPurple
| darkPink
| darkYellow
| unknownFutureValue


### timeOffReasonIconType values

|Member|
|:---|
|none|
|car|
|calendar|
|running|
|plane|
|firstAid|
|doctor|
|notWorking|
|clock|
|juryDuty|
|globe|
|cup|
|phone|
|weather|
|umbrella|
|piggyBank|
|dog|
|cake|
|trafficCone|
|pin|
|sunny|
|unknownFutureValue|

### workforceIntegrationEncryptionProtocol values

| Member
|:----------------------------
|sharedSecret
|unknownFutureValue

### workforceIntegrationSupportedEntities values

|Member|
|:---|
|none|
|shift|
|swapRequest|
|userShiftPreferences|
|openShift|
|openShiftRequest|
|offerShiftRequest|
|unknownFutureValue|

### timeZoneStandard values

| Member
|:-----------------
| windows
| iana


### freeBusyStatus values

| Member            |Value
|:------------------|:-------
| free              | 0
| tentative         | 1
| busy              | 2
| oof               | 3
| workingElsewhere  | 4
| unknown           | -1


### attendeeType values

| Member
|:-------------------------
| required
| optional
| resource


### externalAudienceScope values

| Member
|:-------------------------
| none
| contactsOnly
| all


### automaticRepliesStatus values

| Member
|:-------------------------
| disabled
| alwaysEnabled
| scheduled


### calendarColor values

| Member     | Value
|:-----------|:----------
| auto       | -1
| lightBlue  | 0
| lightGreen | 1
| lightOrange| 2
| lightGray  | 3
| lightYellow| 4
| lightTeal  | 5
| lightPink  | 6
| lightBrown | 7
| lightRed   | 8
| maxColor   | 9

### educationExternalSource values

| Member             |
| :----------------- |
| sis                |
| manual             |
| unknownFutureValue |

### educationGender values

| Member
|:-------------------------
| female
| male
| other
| unknownFutureValue


### eventType values

| Member
|:-------------------------
| singleInstance
| occurrence
| exception
| seriesMaster


### sensitivity values

| Member
|:-------------------------
| normal
| personal
| private
| confidential


### importance values

| Member
|:-------------------------
| low
| normal
| high

### educationUserRole values

| Member             |
| :----------------- |
| student            |
| teacher            |
| none               |
| unknownFutureValue |

### meetingMessageType values

| Member
|:-----------------
| none
| meetingRequest
| meetingCancelled
| meetingAccepted
| meetingTenativelyAccepted
| meetingDeclined


### followupFlagStatus values

| Member
|:-------------------------
| notFlagged
| complete
| flagged


### inferenceClassificationType values

| Member
|:-----------------
| focused
| other


### iosNotificationAlertType values

| Member
|:-------------------------
| deviceDefault
| banner
| modal
| none

### deviceEnrollmentFailureReason values

| Member
|:-------------
| unknown
| authentication
| authorization
| accountValidation
| userValidation
| deviceNotSupported
| inMaintenance
| badRequest
| featureNotSupported
| enrollmentRestrictionsEnforced
| clientDisconnected


### bodyType values
| Member
|:---------
| text
| html


### locationType values

| Member
|:-------------------------
| default
| conferenceRoom
| homeAddress
| businessAddress
| geoCoordinates
| streetAddress
| hotel
| restaurant
| localBusiness
| postalAddress

### locationUniqueIdType values

| Member
|:-------------------------
| unknown
| locationStore
| directory
| private
| bing


### messageActionFlag values

| Member
|:-------------------------
| any
| call
| doNotForward
| followUp
| fyi
| forward
| noResponseNecessary
| read
| reply
| replyToAll
| review


### onenoteUserRole values

| Member      | Value
|:------------|:------------
| Owner       | 0
| Contributor | 1
| Reader      | 2
| None        | -1


### operationStatus values

| Member
|:-----------------
|NotStarted
|Running
|Completed
|Failed


### onenotePatchActionType values

| Member
|:-------------------------
| Replace
| Append
| Delete
| Insert
| Prepend

### onenotePatchInsertPosition values

| Member
|:-------------------------
| After
| Before


### phoneType values

| Member
|:-------------------------
| home
| business
| mobile
| other
| assistant
| homeFax
| businessFax
| otherFax
| pager
| radio


### plannerPreviewType values

| Member
|:-------------------------
| automatic
| noPreview
| checklist
| description
| reference


### status values

| Member
|:-----------------
| active
| updated
| deleted
| ignored
| unknownFutureValue


### weekIndex values

| Member
|:-------------------------
| first
| second
| third
| fourth
| last


### dayOfWeek values

| Member
|:-------------------------
| sunday
| monday
| tuesday
| wednesday
| thursday
| friday
| saturday

### recurrencePatternType values

| Member
|:-------------------------
| daily
| weekly
| absoluteMonthly
| relativeMonthly
| absoluteYearly
| relativeYearly


### recurrenceRangeType values

| Member
|:-------------------------
| endDate
| noEnd
| numbered


### onenoteSourceService values
| Member
|:---------------------
| Unknown
| OneDrive
| OneDriveForBusiness
| OnPremOneDriveForBusiness


### responseType values

| Member
|:-------------------------
| none
| organizer
| tentativelyAccepted
| accepted
| declined
| notResponded


### activityDomain values

| Member
|:-------------------------
| unknown
| work
| personal
| unrestricted


### websiteType values

| Member
|:-------------------------
| other
| home
| work
| blog
| profile


### categoryColor values

| Member   |Value
|:---------|:--------
| none     | -1
| preset0  | 0
| preset1  | 1
| preset2  | 2
| preset3  | 3
| preset4  | 4
| preset5  | 5
| preset6  | 6
| preset7  | 7
| preset8  | 8
| preset9  | 9
| preset10 | 10
| preset11 | 11
| preset12 | 12
| preset13 | 13
| preset14 | 14
| preset15 | 15
| preset16 | 16
| preset17 | 17
| preset18 | 18
| preset19 | 19
| preset20 | 20
| preset21 | 21
| preset22 | 22
| preset23 | 23
| preset24 | 24

### alertFeedback values

Possible feedback values on the alert provided by an analyst.

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown.|
|truePositive|1|Alert is true-positive.|
|falsePositive|2| Alert is false-positive.|
|benignPositive|3| Alert is benign-positive.|

### fileHashType values

Enum for file hash types.

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown type.|
|sha1|1|SHA1 hash type.|
|sha256|2| SHA256 hash type.|
|md5|3| MD5 hash type.|
|authenticodeHash256|4| AuthenticodeHash256 hash type.|
|lsHash|5| LsHash hash type.|
|ctph|6| CTPH hash type.|
|peSha1|7| PESHA1 hash type.|
|peSha256|8| PESHA256 hash type.|

### connectionDirection values

Enum for the direction of the network connection (inbound/outbound).

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown connection.|
|inbound|1|Inbound connection.|
|outbound|2| Outbound connection.|

### connectionStatus values

Enum for the status of connections.

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown connection status.|
|attempted|1|Connection attempted.|
|succeeded|2| Connection succeeded.|
|blocked|3| Connection blocked.|
|failed|4| Connection failed.|

### processIntegrityLevel values

Possible integrity level values of the process.

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown.|
|untrusted|10|Integrity level is Untrusted.|
|low|20| Integrity level is Low.|
|medium|30| Integrity level is Medium.|
|high|40| Integrity level is High.|
|system|50| Integrity level is System.|

### registryHive values

Enum for registry hives as defined by [/windows/desktop/sysinfo/registry-hives](/windows/desktop/sysinfo/registry-hives).

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown hive.|
|currentConfig|1|HKEY_CURRENT_CONFIG hive.|
|currentUser|2| HKEY_CURRENT_USER hive.|
|localMachineSam|3| HKEY_LOCAL_MACHINE\SAM hive.|
|localMachineSamSoftware|4| HKEY_LOCAL_MACHINE\Software hive.|
|localMachineSystem|5| HKEY_LOCAL_MACHINE\System hive.|
|usersDefault|6| HKEY_USERS\\.DEFAULT hive.|

### registryOperation values

Operation that changed the registry key name and/or value.

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown registry value type.|
|create|1|Create registry.|
|modify|2|Modify registry.|
|delete|3|Delete registry.|

### registryValueType values

Enum for registry value types as defined by [/windows/desktop/sysinfo/registry-value-types](/windows/desktop/sysinfo/registry-value-types).

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown registry value type.|
|binary|1|REG_BINARY registry value type.|
|dword|2| REG_DWORD registry value type.|
|dwordLittleEndian|3| REG_DWORD_LITTLE_ENDIAN registry value type.|
|dwordBigEndian|4| REG_DWORD_BIG_ENDIAN registry value type.|
|expandSz|5| REG_EXPAND_SZ registry value type.|
|link|6| REG_LINK registry value type.|
|multiSz|7| REG_MULTI_SZ registry value type.|
|none|8| REG_NONE registry value type.|
|qword|9| REG_QWORD registry value type.|
|qwordlittleEndian|10| REG_QWORD_LITTLE_ENDIAN registry value type.|
|sz|11| REG_SZ registry value type.|

### alertSeverity values

Enum for severity of alerts.

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Severity is unknown.|
|informational|1|Severity is only for information.|
|low|2| Severity is low.|
|medium|3| Severity is medium.|
|high|4| Severity is high.|

### alertStatus values

Possible values of an Alert lifecycle status (stage).

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown status.|
|newAlert|10| Alert is new.|
|inProgress|20|Alert is in progress.|
|resolved|30|Alert is resolved.|

### emailRole values
Possible values for email roles.

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown Role.|
|sender|1|Sender of the email.|
|recipient|2|Recipient of the email.|

### logonType values

Possible values for the method of user signin.

|Member|Value|Description|
|:---|:---|:---|
|unknown|-1|Unknown.|
|interactive|0|Logon is interactive.|
|remoteInteractive|1| Logon is remote interactive.|
|network|2| Logon is network.|
|batch|3| Logon is batch.|
|service|4| Logon is service.|

### userAccountSecurityType values

Possible values for user account types (group membership), per Windows definition.

|Member|Member|Description|
|:---|:---|:---|
|unknown|-1|Unknown.|
|standard|0|Member of Standard Users group.|
|power|1| Member of Power Users group.|
|administrator|2| Member of Administrators group.|

### riskDetail values

|Member|
|:---|
|none|
|adminGeneratedTemporaryPassword|
|userPerformedSecuredPasswordChange|
|userPerformedSecuredPasswordReset|
|adminConfirmedSigninSafe|
|aiConfirmedSigninSafe|
|userPassedMFADrivenByRiskBasedPolicy|
|adminDismissedAllRiskForUser|
|adminConfirmedSigninCompromised|
|adminConfirmedUserCompromised|
|hidden|
|unknownFutureValue|

### riskEventTypes values

| Member
|:-------------------------
| unlikelyTravel
| anonymizedIPAddress
| maliciousIPAddress
| unfamiliarFeatures
| malwareInfectedIPAddress
| suspiciousIPAddress
| leakedCredentials
| investigationsThreatIntelligence
| generic
| unknownFutureValue

### riskEventType values

|Member|
|:---|
|unlikelyTravel|
|anonymizedIPAddress|
|maliciousIPAddress|
|unfamiliarFeatures|
|malwareInfectedIPAddress|
|suspiciousIPAddress|
|leakedCredentials|
|investigationsThreatIntelligence|
|generic|
|adminConfirmedUserCompromised|
|mcasImpossibleTravel|
|mcasSuspiciousInboxManipulationRules|
|investigationsThreatIntelligenceSigninLinked|
|maliciousIPAddressValidCredentialsBlockedIP|
|unknownFutureValue|

### riskLevel values

| Member
|:-------------------------
| none
| low
| medium
| high
| hidden
| unknownFutureValue

### riskState values

| Member
|:-------------------------
| none
| confirmedSafe
| remediated
| dismissed
| atRisk
| confirmedCompromised
| unknownFutureValue

### exchangeIdFormat values

|Member|
|:---|
|entryId|
|ewsId|
|immutableEntryId|
|restId|
|restImmutableEntryId|

### onlineMeetingProviderType values

|Member|
|:---|
|unknown|
|skypeForBusiness|
|skypeForConsumer|
|teamsForBusiness|

### delegateMeetingMessageDeliveryOptions values

|Member|
|:---|
|sendToDelegateAndInformationToPrincipal|
|sendToDelegateAndPrincipal|
|sendToDelegateOnly|

### calendarRoleType values

|Member|
|:---|
|none|
|freeBusyRead|
|limitedRead|
|read|
|write|
|delegateWithoutPrivateEventAccess|
|delegateWithPrivateEventAccess|
|custom|

### threatAssessmentContentType values

| Member | Value | Description             |
|:-------|:------|:------------------------|
| mail   | 1     | Mail threat.            |
| url    | 2     | URL threat.             |
| file   | 3     | Attachment file threat. |

### threatExpectedAssessment values

| Member  | Value | Description                       |
|:--------|:------|:----------------------------------|
| block   | 1     | The threat should be blocked.     |
| unblock | 2     | The threat should not be blocked. |

### threatCategory values

| Member             | Value | Description        |
|:-------------------|:------|:-------------------|
| spam               | 1     | Spam threat.       |
| phishing           | 2     | Phishing threat.   |
| malware            | 3     | Malware threat.    |
| unknownFutureValue | 4     | A sentinel member. |

### threatAssessmentStatus values

| Member    | Value | Description                              |
|:----------|:------|:-----------------------------------------|
| pending   | 1     | The threat assessment still in progress. |
| completed | 2     | The threat assessment completed.         |

### threatAssessmentRequestSource values

| Member        | Value | Description              |
|:--------------|:------|:-------------------------|
| undefined     | 0     | Not yet know.            |
| user          | 1     | User submission.         |
| administrator | 2     | Tenant admin submission. |

### threatAssessmentResultType values

| Member             | Value | Description                                          |
|:-------------------|:------|:-----------------------------------------------------|
| checkPolicy        | 1     | The policy check result, only for `mail` assessment. |
| rescan             | 2     | The rescan result.                                   |
| unknownFutureValue | 3     | A sentinel member.                                   |

### mailDestinationRoutingReason values

| Member                | Value | Description                         |
|:----------------------|:------|:------------------------------------|
| none                  | 0     | Not yet know.                       |
| mailFlowRule          | 1     | Exchange transport rule.            |
| safeSender            | 2     | Safe sender list.                   |
| blockedSender         | 3     | Blocked sender list.                |
| advancedSpamFiltering | 4     | Advanced spam flitering option.     |
| domainAllowList       | 5     | Sender domain allow list.           |
| domainBlockList       | 6     | Sender domain block list.           |
| notInAddressBook      | 7     | Exclude sender not in address book. |
| firstTimeSender       | 8     | Blocked due to first time sender.   |
| autoPurgeToInbox      | 9     | TimeTravel move message to inbox.   |
| autoPurgeToJunk       | 10    | TimeTravel move message to junk.    |
| autoPurgeToDeleted    | 11    | TimeTravel move message to deleted. |
| outbound              | 12    | Outbound mail.                      |
| notJunk               | 13    | Allow due to not junk.              |
| junk                  | 14    | Blocked due to junk.                |
| unknownFutureValue    | 15    | A sentinel member.                  |

### chatMessagePolicyViolationDlpActionType values

| Value |
|:-----------------|
| none |
| NotifySender |
| BlockAccess |
| BlockAccessExternal |

### chatMessagePolicyViolationUserActionType values

| Member   | Int value |  Description |
|:---------------|:--------|:----------|
| None | 0 | Default value. This is the value on a message when the user has not taken an action on the message blocked by DLP. |
| Override | 1 | Sender has overridden the message verdict and sent the message anyway.|
| ReportFalsePositive | 2 | Sender has reported the message verdict to the admins as a false positive.|

### chatMessagePolicyViolationVerdictDetailsType values

| Member   | Int value |  Description |
|:---------------|:--------|:----------|
| None | 0 |  User is not allowed to override the message. User is not allowed to report a message as false positive if policyTip is not provided. In all other scenarios, user can report a message as false positive.|
| AllowFalsePositiveOverride | 1 |  User is not allowed to explicitly override the block unless this is combined with `AllowOverrideWithoutJustification` or `AllowOverrideWithJustification` flags. Reporting a false positive on the violation automatically overrides the block and sends the message. |
| AllowOverrideWithoutJustification | 2 | User is allowed to override the block and send the message. Justification text is not required. Exclusive to `AllowOverrideWithJustification`. |
| AllowOverrideWithJustification | 4 |  User is allowed to override the block and send the message. Justification text is required. Exclusive to `AllowOverrideWithoutJustification`.|

### channelMembershipType values

| Member             | Value |Description|
| :----------------- | :---- |:-----------|
| standard           | 0     |Channel inherits the list of members of the parent team.|
| private            | 1     |Channel can have members that are a subset of all the members on the parent team.|
| unknownFutureValue | 2     |      |
### wellknownListName values
| Member
|:----------------------
| none
| defaultList
| flaggedEmails
| unknownFutureValue

### taskStatus values
| Member
|:----------------------
| notStarted
| inProgress
| completed
| waitingOnOthers
| deferred

### permissionClassificationType values

| Member
|:-------
| low

### permissionType values

| Member
|:-------------------------
| application
| delegated
| delegatedUserConsentable

### printColorMode values 

|Member|
|:---|
|blackAndWhite|
|grayscale|
|color|
|auto|
|unknownFutureValue|

### printDuplexMode values 

|Member|
|:---|
|flipOnLongEdge|
|flipOnShortEdge|
|oneSided|
|unknownFutureValue|

### printerFeedOrientation values 

|Member|
|:---|
|longEdgeFirst|
|shortEdgeFirst|
|unknownFutureValue|

### printFinishing values 

|Member|
|:---|
|none|
|staple|
|punch|
|cover|
|bind|
|saddleStitch|
|stitchEdge|
|stapleTopLeft|
|stapleBottomLeft|
|stapleTopRight|
|stapleBottomRight|
|stitchLeftEdge|
|stitchTopEdge|
|stitchRightEdge|
|stitchBottomEdge|
|stapleDualLeft|
|stapleDualTop|
|stapleDualRight|
|stapleDualBottom|
|unknownFutureValue|

### printMultipageLayout values 

|Member|
|:---|
|clockwiseFromTopLeft|
|counterclockwiseFromTopLeft|
|counterclockwiseFromTopRight|
|clockwiseFromTopRight|
|counterclockwiseFromBottomLeft|
|clockwiseFromBottomLeft|
|counterclockwiseFromBottomRight|
|clockwiseFromBottomRight|
|unknownFutureValue|

### printOrientation values 

|Member|
|:---|
|portrait|
|landscape|
|reverseLandscape|
|reversePortrait|
|unknownFutureValue|

### printQuality values 

|Member|
|:---|
|low|
|medium|
|high|
|unknownFutureValue|

### printScaling values 

|Member|
|:---|
|auto|
|shrinkToFit|
|fill|
|fit|
|none|
|unknownFutureValue|

### userFlowType values

|Member
|:----------------------
| signUp
| signIn
| signUpOrSignIn
| passwordReset
| profileUpdate
| resourceOwner
| unknownFutureValue

### identityUserFlowAttributeDataType values

| Member                |
|:----------------------|
| string                |
| boolean               |
| int64                 |
| stringCollection      |
| dateTime              |
| unknownFutureValue    |

### identityUserFlowAttributeType values

| Member                |
|:----------------------|
| builtIn               |
| custom                |
| required              |
| unknownFutureValue    |

### identityUserFlowAttributeInputType values

| Member                |
|:----------------------|
| textBox               |
| dateTimeDropDown      |
| radioSingleSelect     |
| dropdownSingleSelect  |
| emailBox              |
| checkboxMultiSelect   |

### teamworkActivityTopicSource values 

| Member    |
| :-------- |
| entityUrl |
| text      |


### provisioningResult values 

|Member|
|:---|
|success|
|failure|
|skipped|
|warning|
|unknownFutureValue|

### provisioningStepType values 

|Member|
|:---|
|import|
|scoping|
|matching|
|processing|
|referenceResolution|
|export|
|unknownFutureValue|

### provisioningStatusErrorCategory values 

|Member|
|:---|
|failure|
|nonServiceFailure|
|success|
|unknownFutureValue|

### provisioningAction values 

|Member|
|:---|
|other|
|create|
|delete|
|disable|
|update|
|stagedDelete|
|unknownFutureValue|


### initiatorType values 

|Member|
|:---|
|user|
|application|
|system|
|unknownFutureValue|