---
title: "deviceEnrollmentFailureReason enum type"
description: "Top level failure categories for enrollment."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceEnrollmentFailureReason enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Top level failure categories for enrollment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value, failure reason is unknown.|
|authentication|1|Authentication failed|
|authorization|2|Call was authenticated, but not authorized to enroll.|
|accountValidation|3|Failed to validate the account for enrollment. (Account blocked, enrollment not enabled)|
|userValidation|4|User could not be validated. (User does not exist, missing license)|
|deviceNotSupported|5|Device is not supported for mobile device management.|
|inMaintenance|6|Account is in maintenance.|
|badRequest|7|Client sent a request that is not understood/supported by the service.|
|featureNotSupported|8|Feature(s) used by this enrollment are not supported for this account.|
|enrollmentRestrictionsEnforced|9|Enrollment restrictions configured by admin blocked this enrollment.|
|clientDisconnected|10|Client timed out or enrollment was aborted by enduser.|
|userAbandonment|11|Enrollment was abandoned by enduser. (Enduser started onboarding but failed to complete it in timely manner)|




