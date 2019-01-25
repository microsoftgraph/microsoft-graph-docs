---
title: "timeZoneStandard values"
description: " Value"
---


### timeZoneStandard values

| Value
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

| Value
|:-------------------------
| required
| optional
| resource


### externalAudienceScope values

| Value
|:-------------------------
| none
| contactsOnly
| all


### automaticRepliesStatus values

| Value
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


### educationSynchronizationProfileState values

| Member     | Value
|:-----------|:----------
| deleting          | 2
| deletionFailed    | 3
| provisioningFailed | 5
| provisioned        | 6
| provisioning       | 7
| unknownFutureValue | 8


### educationSynchronizationStatus values

| Member     | Value
|:-----------|:----------
| paused          | 0
| inProgress    | 1
| success | 2
| error        | 3
| validationError | 4
| quarantined       | 5
| unknownFutureValue | 6

### educationExternalSource values

| Value
|:-------------------------
| sis
| manual
| unknownFutureValue


### educationGender values

| Value
|:-------------------------
| female
| male
| other
| unknownFutureValue


### eventType values

| Value
|:-------------------------
| singleInstance
| occurrence
| exception
| seriesMaster


### sensitivity values

| Value
|:-------------------------
| normal
| personal
| private
| confidential


### importance values

| Value
|:-------------------------
| low
| normal
| high


### educationUserRole values
| Value
|:---------------------
| student
| teacher
| none
| unknownFutureValue


### meetingMessageType values

| Value
|:-----------------
| none
| meetingRequest
| meetingCancelled
| meetingAccepted
| meetingTentativelyAccepted
| meetingDeclined


### followupFlagStatus values

| Value
|:-------------------------
| notFlagged
| complete
| flagged


### inferenceClassificationType values

| Value
|:-----------------
| focused
| other


### iosNotificationAlertType values

| Value
|:-------------------------
| deviceDefault
| banner
| modal
| none

### deviceEnrollmentFailureReason values

| Value
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
| Value
|:---------
| text
| html


### locationType values

| Value
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

| Value
|:-------------------------
| unknown
| locationStore
| directory
| private
| bing


### messageActionFlag values

| Value
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

| Value
|:-----------------
| NotStarted
| Running
| Completed
| Failed


### onenotePatchActionType values

| Value
|:-------------------------
| Replace
| Append
| Delete
| Insert
| Prepend

### onenotePatchInsertPosition values

| Value
|:-------------------------
| After
| Before


### phoneType values

| Value
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

| Value
|:-------------------------
| automatic
| noPreview
| checklist
| description
| reference


### status values

| Value
|:-----------------
| active
| updated
| deleted
| ignored
| unknownFutureValue


### weekIndex values

| Value
|:-------------------------
| first
| second
| third
| fourth
| last


### dayOfWeek values

| Value
|:-------------------------
| sunday
| monday
| tuesday
| wednesday
| thursday
| friday
| saturday

### recurrencePatternType values

| Value
|:-------------------------
| daily
| weekly
| absoluteMonthly
| relativeMonthly
| absoluteYearly
| relativeYearly


### recurrenceRangeType values

| Value
|:-------------------------
| endDate
| noEnd
| numbered


### onenoteSourceService values
| Value
|:---------------------
| Unknown
| OneDrive
| OneDriveForBusiness
| OnPremOneDriveForBusiness


### responseType values

| Value
|:-------------------------
| none
| organizer
| tentativelyAccepted
| accepted
| declined
| notResponded


### activityDomain values

| Value
|:-------------------------
| unknown
| work
| personal
| unrestricted


### websiteType values

| Value
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

# Security API enums

# alertFeedback enum type

Possible feedback values on the alert provided by an analyst.

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown.|
|truePositive|1|Alert is true-positive.|
|falsePositive|2| Alert is false-positive.|
|benignPositive|3| Alert is benign-positive.|

# fileHashType enum type

Enum for file hash types.

## Members

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

# connectionDirection enum type

Enum for the direction of the network connection (inbound/outbound).

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown connection.|
|inbound|1|Inbound connection.|
|outbound|2| Outbound connection.|

# connectionStatus enum type

Enum for the status of connections.

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown connection status.|
|attempted|1|Connection attempted.|
|succeeded|2| Connection succeeded.|
|blocked|3| Connection blocked.|
|failed|4| Connection failed.|

# processIntegrityLevel enum type

Possible integrity level values of the process.

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown.|
|untrusted|10|Integrity level is Untrusted.|
|low|20| Integrity level is Low.|
|medium|30| Integrity level is Medium.|
|high|40| Integrity level is High.|
|system|50| Integrity level is System.|

# registryHive enum type

Enum for registry hives as defined by [https://docs.microsoft.com/en-us/windows/desktop/sysinfo/registry-hives](https://docs.microsoft.com/en-us/windows/desktop/sysinfo/registry-hives).

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown hive.|
|currentConfig|1|HKEY_CURRENT_CONFIG hive.|
|currentUser|2| HKEY_CURRENT_USER hive.|
|localMachineSam|3| HKEY_LOCAL_MACHINE\SAM hive.|
|localMachineSamSoftware|4| HKEY_LOCAL_MACHINE\Software hive.|
|localMachineSystem|5| HKEY_LOCAL_MACHINE\System hive.|
|usersDefault|6| HKEY_USERS\\.DEFAULT hive.|

# registryOperation enum type

Operation that changed the registry key name and/or value.

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown registry value type.|
|create|1|Create registry.|
|modify|2|Modify registry.|
|delete|3|Delete registry.|

# registryValueType enum type

Enum for registry value types as defined by [https://docs.microsoft.com/en-us/windows/desktop/sysinfo/registry-value-types](https://docs.microsoft.com/en-us/windows/desktop/sysinfo/registry-value-types).

## Members

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

# alertSeverity enum type

Enum for severity of alerts.

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Severity is unknown.|
|informational|1|Severity is only for information.|
|low|2| Severity is low.|
|medium|3| Severity is medium.|
|high|4| Severity is high.|

# alertStatus enum type

Possible values of an Alert lifecycle status (stage).

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown status.|
|newAlert|10| Alert is new.|
|inProgress|20|Alert is in progress.|
|resolved|30|Alert is resolved.|

# emailRole enum type

Possible values for email roles.

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown Role.|
|sender|1|Sender of the email.|
|recipient|2|Recipient of the email.|

# logonType enum type

Possible values for the method of user signin.

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|-1|Unknown.|
|interactive|0|Logon is interactive.|
|remoteInteractive|1| Logon is remote interactive.|
|network|2| Logon is network.|
|batch|3| Logon is batch.|
|service|4| Logon is service.|

# userAccountSecurityType enum type

Possible values for user account types (group membership), per Windows definition.

## Members

|Member|Value|Description|
|:---|:---|:---|
|unknown|-1|Unknown.|
|standard|0|Member of Standard Users group.|
|power|1| Member of Power Users group.|
|administrator|2| Member of Administrators group.|



### scopeOperatorType values

| Member            |Value
|:------------------|:-------
| binary              | 0
| unary         | 1


### scopeOperatorMultiValuedComparisonType values

| Member            |Value
|:------------------|:-------
| all              | 0
| any         | 1


### scopeOperatorMultiValuedComparisonType values

| Member            |Value
|:------------------|:-------
| low              | 0
| medium         | 1
| high         | 2

### exchangeIdFormat values

| Member            |Value
|:------------------|:-------
| entryId              | 0
| ewsId         | 1
| immutableEntryId         | 2
| restId         | 2
| restImmutableEntryId         | 2

### riskLevel values

| Value           
|:------------------
| none
| low
| medium
| high
| hidden
| unknownFutureValue

### riskState values

| Value           
|:------------------
| none
| low
| medium
| high
| hidden
| unknownFutureValue

### riskDetail values

| Value           
|:------------------
| none
| adminGeneratedTemporaryPassword
| userPerformedSecuredPasswordChange
| userPerformedSecuredPasswordReset
| adminConfirmedSigninSafe
| aiConfirmedSigninSafe
| userPassedMFADrivenByRiskBasedPolicy
| adminDismissedAllRiskForUser
| adminConfirmedSigninCompromised
| unknownFutureValue

# securityNetworkProtocol values

|Member|Value|Description|
|:---|:---|:---|
|unknown|-1|Unknown protocol.|
|ip|0|Internet Protocol.|
|icmp|1| Internet Control Message Protocol.|
|igmp|2| Internet Group Management Protocol.|
|ggp|3| Gateway To Gateway Protocol.|
|ipv4|4| Internet Protocol version 4.|
|tcp|6| Transmission Control Protocol.|
|pup|12| PARC Universal Packet Protocol.|
|udp|17| User Datagram Protocol.|
|idp|22| Internet Datagram Protocol.|
|ipv6|41| Internet Protocol version 6 (ipv6).|
|ipv6RoutingHeader|43| ipv6 Routing header.|
|ipv6FragmentHeader|44| ipv6 Fragment header.|
|ipSecEncapsulatingSecurityPayload|50| ipv6 Encapsulating Security Payload header.|
|ipSecAuthenticationHeader|51| ipv6 Authentication header.|
|icmpV6|58| Internet Control Message Protocol for ipv6.|
|ipv6NoNextHeader|59| ipv6 No next header.|
|ipv6DestinationOptions|60| ipv6 Destination Options header.|
|nd|77| Net Disk Protocol (unofficial).|
|raw|255| Raw IP packet protocol.|
|ipx|1000| Internet Packet Exchange Protocol.|
|spx|1256| Sequenced Packet Exchange protocol.|
|spxII|1257| Sequenced Packet Exchange version 2 protocol.|



### referenceAttachmentPermission values

| Member            |Value
|:------------------|:-------
| other             | 0
| view              | 1
| edit              | 2
| anonymousView     | 3
| anonymousEdit     | 4
| organizationView  | 5
| organizationEdit  | 6


### referenceAttachmentProvider values

| Member            |Value
|:------------------|:-------
| other             | 0
| oneDriveBusiness  | 1
| oneDriveConsumer  | 2
| dropbox           | 3

### modality values

| Member                    |Value
|:--------------------------|:-------
| unknown                   | 0
| audio                     | 1
| video                     | 2
| videoBasedScreenSharing   | 3
| data                      | 4

### routingPolicy values

| Member                        |Value
|:------------------------------|:-------
| none                          | 0
| noMissedCall                  | 1
| disableForwardingExceptPhone  | 2
| disableForwarding             | 3

### callState values

| Member               |Value
|:---------------------|:-------
| incoming             | 0
| establishing         | 1
| ringing              | 2
| established          | 3
| hold                 | 4
| transferring         | 5
| transferAccepted     | 6
| redirecting          | 7
| terminating          | 8
| terminated           | 9

### callDirection values

| Member               |Value
|:---------------------|:-------
| incoming             | 0
| outgoing             | 1

### attributeType values

| Member               |Value
|:---------------------|:-------
| dateTime             | 5
| boolean              | 4
| binary               | 3
| reference            | 2
| integer              | 1
| @string              | 0

### operationStatus values

| Member               |Value
|:---------------------|:-------
| notStarted           | 0
| running              | 1
| completed            | 2
| failed               | 3

### operationStatus values

| Member               |Value
|:---------------------|:-------
| default              | 0
| voicemail             1

### recordCompletionReason values

| Member                    |Value
|:--------------------------|:-------
| operationCanceled         | 0
| stopToneDetected          | 1
| maxRecordDurationReached  | 2
| initialSilenceTimeout     | 3
| maxSilenceTimeout         | 4
| playPromptFailed          | 5
| playBeepFailed            | 6
| mediaReceiveTimeout       | 7
| unspecifiedError          | 8