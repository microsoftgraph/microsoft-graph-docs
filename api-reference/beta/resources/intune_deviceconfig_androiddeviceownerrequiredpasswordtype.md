# androidDeviceOwnerRequiredPasswordType enum type

> **Important:** APIs under the / beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Android Device Owner policy required password type.
## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Device default value, no intent.|
|required|1|There must be a password set, but there are no restrictions on type.|
|numeric|2|At least numeric.|
|numericComplex|3|At least numeric with no repeating or ordered sequences.|
|alphabetic|4|At least alphabetic password.|
|alphanumeric|5|At least alphanumeric password|
|alphanumericWithSymbols|6|At least alphanumeric with symbols.|



