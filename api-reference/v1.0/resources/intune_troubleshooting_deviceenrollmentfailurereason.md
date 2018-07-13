# deviceEnrollmentFailureReason enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Top level failure categories for enrollment.
## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value, failure reason is unknown.|
|authentication|1|Authentication failed|
|authorization|2|Call was authenticated, but not authorized to enroll.|
|accountValidation|3|Failed to validate the account for enrollment. (Account blocked, enrollment not enabled)|
|userValidation|4|User could not be valiudated. (User does not exist, missing license)|
|deviceNotSupported|5|Device is not supported for mobile device management.|
|inMaintenance|6|Account is in maintenance.|
|badRequest|7|Client sent a request that is not understood/supported by the service.|
|featureNotSupported|8|Feature(s) used by this enrollment are not supported for this account.|
|enrollmentRestrictionsEnforced|9|Enrollment restrictions configured by admin blocked this enrollment.|
|clientDisconnected|10|Client timed out or enrollment was aborted by enduser.|



