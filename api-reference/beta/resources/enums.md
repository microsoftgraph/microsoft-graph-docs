---
title: "Enum values"
description: "Microsoft Graph enumeration values"
doc_type: enumPageType
localization_priority: Normal
ms.prod: "non-product-specific"
author: "MSGraphDocsvTeam"
---

# Enum values

Namespace: microsoft.graph

### allowedAudiences values

|Member|
|:---|
|me|
|family|
|contacts|
|groupMembers|
|organization|
|federatedOrganizations|
|everyone|
|unknownFutureValue|

### emailType values

|Member|
|:---|
|unknown|
|work|
|personal|
|main|
|other|

### anniversaryType values 

|Member|
|:---|
|birthday|
|wedding|
|unknownFutureValue|

### skillProficiencyLevel values 

|Member|
|:---|
|elementary|
|limitedWorking|
|generalProfessional|
|advancedProfessional|
|expert|
|unknownFutureValue|

### languageProficiencyLevel values 

|Member|
|:---|
|elementary|
|conversational|
|limitedWorking|
|professionalWorking|
|fullProfessional|
|nativeOrBilingual|
|unknownFutureValue|

### personRelationship values 

|Member|
|:---|
|manager|
|colleague|
|directReport|
|dotLineReport|
|assistant|
|dotLineManager|
|alternateContact|
|friend|
|spouse|
|sibling|
|child|
|parent|
|sponsor|
|emergencyContact|
|other|
|unknownFutureValue|

### attachmentType values

| Member
|:--------------
| file
| item
| reference

### analyticsActivityType values

| Member
|:--------------
| call
| chat
| email
| focus
| meeting

### registrationAuthMethod values

|Member|
|:---|
|email|
|mobilePhone|
|officePhone|
|securityQuestion|
|appNotification|
|appCode|
|alternateMobilePhone|

### entityTypes values

|Member|
|:---|
|event|
|message|
|driveItem|
|externalItem|

### contactRelationship values

| Member             | Value | Description                              |
| :----------------- | :---- | :--------------------------------------- |
| parent             | 0     | The user's parent.                       |
| relative           | 1     | The user's relative.                     |
| aide               | 2     | The user's aide.                         |
| doctor             | 3     | The user's doctor.                       |
| guardian           | 4     | The user's guardian.                     |
| child              | 5     | The user's child.                        |
| other              | 6     | An unspecified relationship to the user. |
| unknownFutureValue | 7     | Marker value for future compatibility.   |

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

### scheduleChangeState values

| Member
|:----------------------------
|pending
|approved
|declined
|unknownFutureValue

### scheduleChangeRequestActor values

| Member
|:----------------------------
|sender
|recipient
|manager
|system
|unknownFutureValue

### workforceIntegrationEncryptionProtocol values

| Member
|:----------------------------
|sharedSecret
|unknownFutureValue

### workforceIntegrationSupportedEntities values

| Member
|:----------------------------
|none
|shift
|swapRequest
|openShift
|openShiftRequest
|userShiftPreferences

### timeZoneStandard values

| Member
|:-----------------
| windows
| iana


### freeBusyStatus values

| Member           | Value |
| :--------------- | :---- |
| free             | 0     |
| tentative        | 1     |
| busy             | 2     |
| oof              | 3     |
| workingElsewhere | 4     |
| unknown          | -1    |


### physicalAddressType values

| Member
|:-------------------------
| unknown
| home
| business
| other


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

| Member      | Value |
| :---------- | :---- |
| auto        | -1    |
| lightBlue   | 0     |
| lightGreen  | 1     |
| lightOrange | 2     |
| lightGray   | 3     |
| lightYellow | 4     |
| lightTeal   | 5     |
| lightPink   | 6     |
| lightBrown  | 7     |
| lightRed    | 8     |
| maxColor    | 9     |


### educationSynchronizationProfileState values

| Member             | Value |
| :----------------- | :---- |
| deleting           | 2     |
| deletionFailed     | 3     |
| provisioningFailed | 5     |
| provisioned        | 6     |
| provisioning       | 7     |
| unknownFutureValue | 8     |


### educationSynchronizationStatus values

| Member             | Value |
| :----------------- | :---- |
| paused             | 0     |
| inProgress         | 1     |
| success            | 2     |
| error              | 3     |
| validationError    | 4     |
| quarantined        | 5     |
| unknownFutureValue | 6     |

### educationExternalSource values

| Member
|:-------------------------
| sis
| lms
| manual
| unknownFutureValue

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
| Member
|:---------------------
| student
| teacher
| faculty


### meetingMessageType values

| Member
|:-----------------
| none
| meetingRequest
| meetingCancelled
| meetingAccepted
| meetingTentativelyAccepted
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

| Member      | Value |
| :---------- | :---- |
| Owner       | 0     |
| Contributor | 1     |
| Reader      | 2     |
| None        | -1    |


### operationStatus values

| Member
|:-----------------
| NotStarted
| Running
| Completed
| Failed


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

| Member   | Value |
| :------- | :---- |
| none     | -1    |
| preset0  | 0     |
| preset1  | 1     |
| preset2  | 2     |
| preset3  | 3     |
| preset4  | 4     |
| preset5  | 5     |
| preset6  | 6     |
| preset7  | 7     |
| preset8  | 8     |
| preset9  | 9     |
| preset10 | 10    |
| preset11 | 11    |
| preset12 | 12    |
| preset13 | 13    |
| preset14 | 14    |
| preset15 | 15    |
| preset16 | 16    |
| preset17 | 17    |
| preset18 | 18    |
| preset19 | 19    |
| preset20 | 20    |
| preset21 | 21    |
| preset22 | 22    |
| preset23 | 23    |
| preset24 | 24    |

### alertFeedback values

Possible feedback values on the alert provided by an analyst.

| Member         | Value | Description               |
| :------------- | :---- | :------------------------ |
| unknown        | 0     | Unknown.                  |
| truePositive   | 1     | Alert is true-positive.   |
| falsePositive  | 2     | Alert is false-positive.  |
| benignPositive | 3     | Alert is benign-positive. |

### fileHashType values

| Member              | Value | Description                    |
| :------------------ | :---- | :----------------------------- |
| unknown             | 0     | Unknown type.                  |
| sha1                | 1     | SHA1 hash type.                |
| sha256              | 2     | SHA256 hash type.              |
| md5                 | 3     | MD5 hash type.                 |
| authenticodeHash256 | 4     | AuthenticodeHash256 hash type. |
| lsHash              | 5     | LsHash hash type.              |
| ctph                | 6     | CTPH hash type.                |
| peSha1              | 7     | PESHA1 hash type.              |
| peSha256            | 8     | PESHA256 hash type.            |

### connectionDirection values

| Member   | Value | Description          |
| :------- | :---- | :------------------- |
| unknown  | 0     | Unknown connection.  |
| inbound  | 1     | Inbound connection.  |
| outbound | 2     | Outbound connection. |

### connectionStatus values

| Member    | Value | Description                |
| :-------- | :---- | :------------------------- |
| unknown   | 0     | Unknown connection status. |
| attempted | 1     | Connection attempted.      |
| succeeded | 2     | Connection succeeded.      |
| blocked   | 3     | Connection blocked.        |
| failed    | 4     | Connection failed.         |

### processIntegrityLevel values

| Member    | Value | Description                   |
| :-------- | :---- | :---------------------------- |
| unknown   | 0     | Unknown.                      |
| untrusted | 10    | Integrity level is Untrusted. |
| low       | 20    | Integrity level is Low.       |
| medium    | 30    | Integrity level is Medium.    |
| high      | 40    | Integrity level is High.      |
| system    | 50    | Integrity level is System.    |

### registryHive values

Enum for registry hives as defined by [https://docs.microsoft.com/windows/desktop/sysinfo/registry-hives](https://docs.microsoft.com/windows/desktop/sysinfo/registry-hives).

| Member                  | Value | Description                       |
| :---------------------- | :---- | :-------------------------------- |
| unknown                 | 0     | Unknown hive.                     |
| currentConfig           | 1     | HKEY_CURRENT_CONFIG hive.         |
| currentUser             | 2     | HKEY_CURRENT_USER hive.           |
| localMachineSam         | 3     | HKEY_LOCAL_MACHINE\SAM hive.      |
| localMachineSamSoftware | 4     | HKEY_LOCAL_MACHINE\Software hive. |
| localMachineSystem      | 5     | HKEY_LOCAL_MACHINE\System hive.   |
| usersDefault            | 6     | HKEY_USERS\\.DEFAULT hive.        |

### registryOperation values

Operation that changed the registry key name and/or value.

| Member  | Value | Description                  |
| :------ | :---- | :--------------------------- |
| unknown | 0     | Unknown registry value type. |
| create  | 1     | Create registry.             |
| modify  | 2     | Modify registry.             |
| delete  | 3     | Delete registry.             |

### registryValueType values

Enum for registry value types as defined by [Registry value types](https://docs.microsoft.com/windows/desktop/sysinfo/registry-value-types).

| Member            | Value | Description                                  |
| :---------------- | :---- | :------------------------------------------- |
| unknown           | 0     | Unknown registry value type.                 |
| binary            | 1     | REG_BINARY registry value type.              |
| dword             | 2     | REG_DWORD registry value type.               |
| dwordLittleEndian | 3     | REG_DWORD_LITTLE_ENDIAN registry value type. |
| dwordBigEndian    | 4     | REG_DWORD_BIG_ENDIAN registry value type.    |
| expandSz          | 5     | REG_EXPAND_SZ registry value type.           |
| link              | 6     | REG_LINK registry value type.                |
| multiSz           | 7     | REG_MULTI_SZ registry value type.            |
| none              | 8     | REG_NONE registry value type.                |
| qword             | 9     | REG_QWORD registry value type.               |
| qwordlittleEndian | 10    | REG_QWORD_LITTLE_ENDIAN registry value type. |
| sz                | 11    | REG_SZ registry value type.                  |

### alertSeverity values

Enum for severity of alerts.

| Member        | Value | Description                       |
| :------------ | :---- | :-------------------------------- |
| unknown       | 0     | Severity is unknown.              |
| informational | 1     | Severity is only for information. |
| low           | 2     | Severity is low.                  |
| medium        | 3     | Severity is medium.               |
| high          | 4     | Severity is high.                 |

### alertStatus values

Possible values of an Alert lifecycle status (stage).

| Member     | Value | Description           |
| :--------- | :---- | :-------------------- |
| unknown    | 0     | Unknown status.       |
| newAlert   | 10    | Alert is new.         |
| inProgress | 20    | Alert is in progress. |
| resolved   | 30    | Alert is resolved.    |

### emailRole values

Possible values for email roles.

| Member    | Value | Description             |
| :-------- | :---- | :---------------------- |
| unknown   | 0     | Unknown Role.           |
| sender    | 1     | Sender of the email.    |
| recipient | 2     | Recipient of the email. |

### logonType values

Possible values for the method of user signin.

| Member            | Value | Description                  |
| :---------------- | :---- | :--------------------------- |
| unknown           | -1    | Unknown.                     |
| interactive       | 0     | Logon is interactive.        |
| remoteInteractive | 1     | Logon is remote interactive. |
| network           | 2     | Logon is network.            |
| batch             | 3     | Logon is batch.              |
| service           | 4     | Logon is service.            |

### userAccountSecurityType values

Possible values for user account types (group membership), per Windows definition.

| Member        | Value | Description                     |
| :------------ | :---- | :------------------------------ |
| unknown       | -1    | Unknown.                        |
| standard      | 0     | Member of Standard Users group. |
| power         | 1     | Member of Power Users group.    |
| administrator | 2     | Member of Administrators group. |

### scopeOperatorMultiValuedComparisonType values

|Member|
|:---|
|all|
|any|

### riskLevel values

|Member|
|:---|
|low|
|medium|
|high|
|hidden|
|none|
|unknownFutureValue|

### riskState values

|Member|
|:---|
|none|
|confirmedSafe|
|remediated|
|dismissed|
|atRisk|
|confirmedCompromised|
|unknownFutureValue|

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

### referenceAttachmentPermission values

|Member|
|:---|
|other|
|view|
|edit|
|anonymousView|
|anonymousEdit|
|organizationView|
|organizationEdit|

### referenceAttachmentProvider values

|Member|
|:---|
|other|
|oneDriveBusiness|
|oneDriveConsumer|
|dropbox|

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

### networkType values

|Member|
|:---|
|intranet|
|extranet|
|namedNetwork|
|trusted|
|unknownFutureValue|

### exchangeIdFormat values

|Member|
|:---|
|entryId|
|ewsId|
|immutableEntryId|
|restId|
|restImmutableEntryId|

### attributeFlowBehavior values

|Member|
|:---|
|flowWhenChanged|
|flowAlways|

### attributeFlowType values

|Member|
|:---|
|always|
|objectAddOnly|
|multiValueAddOnly|
|restId|

### objectFlowTypes values

| Member | Value |
| :----- | :---- |
| None   | 0     |
| Add    | 1     |
| Update | 2     |
| Delete | 4     |

### chatMessageType values

|Member|
|:---|
|message|

### chatMessageImportance values

|Member|
|:---|
|normal|
|high|
|urgent|

### channelMembershipType values

| Member             | Value |
| :----------------- | :---- |
| standard           | 0     |
| private            | 1     |
| unknownFutureValue | 2     |

### stagedFeatureName values

| Member                    | Description                   |
| :------------------------ | :---------------------------- |
| passthroughAuthentication | Passthrough Authentication    |
| seamlessSso               | Seamless Single Sign-on       |
| passwordHashSync          | Password Hash Synchronization |

### tokenIssuerType values

|Member|
|:---|
|AzureAD|
|ADFederationServices|
|unknownFutureValue|

### riskDetectionTimingType values

|Member|
|:---|
|notDefined|
|realtime|
|nearRealtime|
|offline|
|unknownFutureValue|

### activityType values

|Member|
|:---|
|signin|
|user|
|unknownFutureValue|

### entityType values

| Member       |
|:--------------|
|event|
|message|
|driveItem|
|externalFile|
|externalItem|

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

### contentFormat values

| Member  | Value | Description                          |
| :------ | :---- | :----------------------------------- |
| default | 0     | Content is a file or non-email type. |
| email   | 1     | Content is an email.                 |

### contentState values

| Member | Value | Description                                                                      |
| :----- | :---- | :------------------------------------------------------------------------------- |
| rest   | 0     | Data is at rest; A file in a share, for example.                                 |
| motion | 1     | Data is in motion. A file intercepted by a network appliance in transit.         |
| use    | 2     | Data is in use. A file is open in a client application such as Microsoft Office. |

### assignmentMethod values

| Member     | Value | Description                                                                                                                      |
| :--------- | :---- | :------------------------------------------------------------------------------------------------------------------------------- |
| standard   | 0     | The label was set by a service or policy condition.                                                                              |
| privileged | 1     | The label was set explicitly by a user.                                                                                          |
| auto       | 2     | Allows override of any existing label. Justification required on downgrade. Results in `standard` assignment method in metadata. |

### actionSource values

| Member        | Value | Description                                                  |
| :------------ | :---- | :----------------------------------------------------------- |
| manual        | 0     | A user manually selected the label.                          |
| automatic     | 1     | The label was chosen as a result of policy conditions.       |
| recommended   | 2     | The elected to apply a recommended label.                    |
| policyDefault | 3     | The user no action and the policy-default label was applied. |
| mandatory     | 4     | The user chose a label after being forced to choose.         |

### contentAlignment values

| Member | Value | Description                         |
| :----- | :---- | :---------------------------------- |
| left   | 0     | Align content marking to the left.  |
| right  | 1     | Align content marking to the right. |
| center | 2     | Center content marking.             |

### watermarkLayout values

| Member     | Value | Description                 |
| :--------- | :---- | :-------------------------- |
| horizontal | 0     | Use a horizontal watermark. |
| diagonal   | 1     | Use a diagonal watermark.   |

### conditionalAccessPolicyState

|Member|
|:---|
|enabled|
|disabled|

### conditionalAccessClientApp

| Member       |
|:--------------|
|browser|
|modern|
|easSupported|
|easUnsupported|
|other|

### conditionalAccessGrantControl

| Member       |
|:--------------|
|block|
|mfa|
|compliantDevice|
|domainJoinedDevice|
|approvedApplication|
|compliantApplication|

### cloudAppSecuritySessionControlType

| Member       |
|:--------------|
|mcasConfigured|
|monitorOnly|
|blockDownloads|

### signinFrequencyType

| Member       |
|:--------------|
|days|
|hours|

### persistentBrowserSessionMode

| Member       |
|:--------------|
|always|
|never|

### conditionalAccessDevicePlatform

| Member       |
|:--------------|
|android|
|iOS|
|windows|
|windowsPhone|
|macOS|
|all|

### priority values

|Member|Value|
|:---|:---|
|None|0|
|High|1|
|Low|2|

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

### threatAssessmentRequestPivotProperty values

| Member                       | Value | Description                                                            |
|:-----------------------------|:------|:-----------------------------------------------------------------------|
| threatCategory               | 1     | Aggregate threat assessment request by `threatCategory`.               |
| mailDestinationRoutingReason | 2     | Aggregate threat assessment request by `mailDestinationRoutingReason`. |

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

### userFlowType values
|Member
|:----------------------
| signUp
| signIn
| signUpOrSignIn
| passwordReset
| profileUpdate
| resourceOwnerPasswordCredentialSignIn
| unknownFutureValue

### openIdConnectResponseMode values
| Member                
|:----------------------
| none
| form_post
| query 
| unknownFutureValue 

### openIdConnectResponseTypes values
| Member                
|:----------------------
| none
| code
| id_token
| token

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

### connectedOrganizationState values

| Member                | Value | Description                                                                                                                                                                                                        |
|:----------------------| :-----|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| configured            | 0     | Connected Organizations with this state value are included in assignment policies with requestor scope type `AllConfiguredConnectedOrganizationSubjects`.                                                          |
| proposed              | 1     | Connected Organizations that are automatically created by the system have this state value. They are not included in assignment policies with requestor scope type `AllConfiguredConnectedOrganizationSubjects`.   |
| unknownFutureValue    | 2     | A sentinel member.                                                                                                                                                                                                 |
