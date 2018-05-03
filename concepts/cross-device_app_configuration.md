# Build cross-device apps, powered by Project Rome 
Project Rome aims to help developers build experiences that cross devices and platforms seamlessly, reducing friction for users and helping to drive app engagement. In order for applications to share data across devices & platforms using Project Rome APIs an app developer can configure a cross-device app which includes information about your platform-specific apps. **Let's learn why and how you should configure a cross-device app.**  

A cross-device app is required to take advantage of the following capabilities powered by Project Rome: 

1. Use the activity feed API on MSGraph  
2. Read & write user activities published by a group of platform-specific applications using the Project Rome SDK for Windows, Android, and/or iOS
3. Use the device relay capabilities to target apps using the Project Rome SDK for Android or iOS 

Here are some examples of scenarios which can be enabled through Project Rome APIs with a cross-device app: 

### Pick up where you left off across devices with the Activity Feed API
For example, an app developer may configure a cross-device app to associate his apps for Windows, iOS, Android and the web so that the app on each platform may read & write user activities which are published by any app in the group. 

*A user is finishing up a press release on her PC at work before drinks with friends, at the bar she gets a notification from her boss about a typo that needs to be fixed asap. She opens the app on her android phone and sees a card showing the press release she was editing earlier; she taps the card to open it so she can fix the release immediately and get back to her friends.* 
 
With this cross-device app configuration in place, the user's activity feed is synchronized across devices and platforms effortlessly so you can build experiences that help users pick up important tasks where they left off from any app surface. 

### Choose the right screen at the right time with the Device Relay API
For example, an app developer may configure a cross-device app with push notification credentials for each of the platforms his app is available on so that a command or notification may be delivered to her on any of her devices where she uses the app, regardless of platform. 

*A user is watching a video on the bus ride home from work, when she arrives home she taps the app to launch the video on her Xbox One so she can continue watching on the big screen.* 

By associating push notification credentials for each of the platforms where your app is available to your cross-device app, the user's app can send commands across devices so you can build experiences that leverage multiple screens or transition a workflow from one device to another in real-time. 

## Select the right hosting method for your cross-device app configuration
You can host your cross-device app configuration either as a JSON file hosted on your domain or as a profile configurable via [Windows Dev Center](https://developer.microsoft.com/en-us/windows). You should choose a hosting option based on the Project Rome capabilities you want to enable in your apps. 

### Windows Dev Center profile - *Recommended* 
You can use all Project Rome capabilities using a cross-device app managed in [Windows Dev Center](https://developer.microsoft.com/en-us/windows). The Windows Dev Center also offers the *best* way to manage any cross-device app configuration changes. You can save updates to an existing profile securely until you're ready to publish changes to production. When you publish changes to an existing cross-device app in the Dev Center the new profile will be effective after approximately **one hour**.  

### Externally hosted JSON file - *Limited* 
You can use the following Project Rome capabilities on all supported platforms using a cross-device app managed as an externally hosted JSON file:   
* Read & write user activities from all platforms using the MSGraph [Activity Feed API](../api-reference/v1.0/resources/activity-feed-api-overview.md)
* Write user activities from all platforms (Windows, iOS, Android, web) using either the Project Rome SDK
If you will **only** use the capabilities outlined above, you can host your cross-device app configuration externally on your domain as a JSON file.

Once you've determined the method you'll use to manage your cross-device app, you're ready to get started collecting the information you'll need to configure it. Instructions for how to configure your cross-device app using each hosting method are outlined below.  

## Configure a cross-device app using Windows Dev Center
A cross-device app ID is represented as a domain which you own. The domain points to a mapping of your platform-specific app IDs stored either as a JSON file hosted on your domain or configurable via Windows Dev Center. Once you've identified the domain you'll use to represent your cross-device app ID, you'll need to collect information to configure the associated profile. Let's review how to configure and manage a cross-device app ID and associated profile *using Windows Dev Center*.  

### Step 1: Select a secure domain for your cross-device app ID and enable domain verification
The domain used as your cross-device app ID must either be a top level domain or a sub domain and be protected via TLS. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. **You must have a unique domain (or sub domain) per cross-device app.** However, you decide which apps to associate into a single cross-device app based on the cross-platform behavior you want to support. 

For example, an app developer with a suite of game apps may use a separate sub-domain for each of these to ensure each app is only subscribed to the user activities it can resume when reading data across devices & platforms. *By contrast*, an app developer with a suite of productivity apps designed to work together may use a single domain for all of these so that any app is able to launch a member of the suite across devices.  

#### Assert domain ownership with Windows Dev Center
When using Windows Dev Center to manage your cross-device app configuration, the domain representing your cross-device app ID is stored as part of your cross-device app profile so Microsoft can verify you are the domain owner. Your domain ownership **must be verified** in order to finish publishing your cross-device app configuration so it's a good idea to tackle this first. If your domain is not yet verified, you can save your cross-device app details and rerun the verification once you’ve completed this step so you can publish your cross-device app.

To assert your domain ownership for your cross-device app, you'll need to add a [DNS TXT](https://go.microsoft.com/fwlink/?linkid=871417) entry for your domain with a unique value provided to you in the Dev Center. This value is unique per cross-device app. To find the unique value for your app, simply login to Windows Dev Center and choose **Cross-device experiences** from the menu at left to start configuring a new cross-device app. Once you've given your new cross-device app a name, select **Verify your cross-device app domain** from the sub-menu. This page will display instructions with a unique value **inline** (*e.g. MS=95ff4557-813f-45a5-b2f6-1f94170b979f*). Make sure to copy the entire value including 'MS='

### Step 2: Collect your platform-specific application IDs
**Collect the platform-specific application IDs for each application and platform which will use [Project Rome APIs](https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/project_rome_overview).**
You'll need to collect each of the platform-specific application IDs in order to associate them to your cross-device app identity. Using Windows Dev Center, you'll be able to select from *Universal Windows Platform* apps associated to your developer account, but you'll need to manually provide application ids for any of your win32, iOS and/or Android apps and identify the primary URL for any associated web apps. You can associate up to 10 ids per platform. 

#### Where do I find these ids?
* **windows_universal** - Please provide an AUMID for each UWP app. You can refer to documentation here: 
	* https://docs.microsoft.com/en-us/previous-versions/windows/embedded/dn449300(v=winembedded.82) 
	* https://docs.microsoft.com/en-US/uwp/schemas/appxpackage/appxmanifestschema/element-application
* **windows_win32** - Please provide an AUMID for each app. For win32 apps, you'll need to use a script to retrieve this information. Use the instructions here:  https://docs.microsoft.com/en-us/previous-versions/windows/embedded/dn449300(v=winembedded.82)
* **android** - Find details here: https://developer.android.com/studio/build/application-id.html#change_the_package_name 
* **ios** - Find details here:
	* https://developer.apple.com/documentation/foundation/bundle
	* https://help.apple.com/itunes-connect/developer/#/devfc3066644
* **msa** – https://apps.dev.microsoft.com This is the portal where you can obtain an application ID for your app supporting Microsoft account. Upon logging in, you can view the App Id / client Id for any of your apps. Both Live SDK (hex values) and Converged app ids (GUIDs) are supported.   

### Step 3: Configure support for Microsoft Account or Azure Active Directory
To enable cross-device experiences, your app users must login with either a [Microsoft Account](https://account.microsoft.com/account) or an [Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/develop/active-directory-developers-guide) account. You will provide the app ID / client IDs used to support authentication in your apps powered by Project Rome APIs as part of your cross-device app configuration to enable cross-platform support. You can provide up to ten instances.

You can find your existing app ID / client IDs or provision new ones by logging into https://apps.dev.microsoft.com with your developer account. Upon logging in, you can view the App Id / client Id for any of your apps. Both Live SDK (hex values) and Converged app ids (GUIDs) are supported.   

**Note:** *Application Developers using AAD only* 

If you are building an application which will support AAD users, and you do not use a Converged application id issued through https://apps.dev.microsoft.com  you will need to provide the GUID for the Application ID of your Azure app. You can find the GUID in the Azure Portal for your Tenant, using the following steps: 
1. Login to the Azure portal https://portal.azure.com 
2. Select **Azure Active Directory** 
3. Under **Manage** select **App registrations** 
4. Select your app from the list and you can view your Application ID (GUID) listed under **Essentials** 

### Step 4: Configure support for cross-platform push notifications (optional) 
If you've opted to configure your cross-device app in Windows Dev Center, you can enable support for cross-platform push notifications by providing the credentials you use with the APIs for Android and iOS push messaging platforms. These are required if you're using the Project Rome SDKs for iOS and Android and you want to do more than publish user activities. If you are using Project Rome APIs for MSGraph only, you do not need to perform this step. You can associate up to 10 sets of credentials per platform. **Never store push notification credentials in an externally hosted JSON file.** 

#### Where do I find these ids?
* **Windows Notification Service** - find details here: 
	* https://docs.microsoft.com/en-us/previous-versions/windows/apps/hh913756(v=win.10)#registering-your-app-and-receiving-the-credentials-for-your-cloud-service
	* https://go.microsoft.com/fwlink/?linkid=871424
* **Apple Push Notification Service** - https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/APNSOverview.html
* **Google Cloud Messaging** - https://firebase.google.com/docs/cloud-messaging/

**Note:** If you are using Firebase to push notifications to iOS devices using Android credentials, you will still need to provide your APNS credentials as part of your cross-device app configuration. 

## Configure a cross-device app using an externally hosted JSON file
A cross-device app ID is represented as a domain which you own. The domain points to a mapping of your platform-specific app IDs stored either as a JSON file hosted on your domain or configurable via Windows Dev Center. Once you've identified the domain you'll use to represent your cross-device app ID, you'll need to collect information to configure the associated profile. Let's review how to configure and manage a cross-device app ID and associated profile *using an externally hosted JSON file*.   

### Step 1: Select a secure domain for your cross-device app ID
A cross-device app ID is represented as a domain which you own. The domain used as your cross-device app ID must either be a top level domain or a sub domain and be protected via TLS. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique domain (or sub domain) per cross-device app. However, you decide which apps to associate into a single cross-device app based on the cross-platform behavior you want to support. 

For example, an app developer with a suite of game apps may use a separate sub-domain for each of these to ensure each app is only subscribed to the user activities it can resume when reading data across devices & platforms. By contrast, an app developer with a suite of productivity apps designed to work together may use a single domain for all of these so that any app is able to launch a member of the suite across devices.  

#### Assert domain ownership with an externally hosted JSON file 
If you are using an externally hosted JSON file to manage your cross-device app, you assert domain ownership by including your Microsoft Account or Azure Active Directory app ids in the cross-platform-app-identifiers file as outlined in the instructions below. Your domain ownership will be verified as part of the publish process when you use the activity feed API to create user activities.

The system will cache the contents of the JSON file to avoid generating frequent requests on your domain. If configured, the service will respect HTTP cache headers when evaluating when to refresh the cache. If not configured, the service will refresh every 24hrs. 

### Step 2: Collect your platform-specific application IDs & construct your JSON file
Collect the platform-specific application IDs for each application and platform which will use the Activity Feed and/or Device Relay API. 
You'll need to collect each of the platform specific application IDs in order to associate them to your cross-device app identity. Using an externally hosted JSON file, you'll need to collect app ids for each of the platform-specific apps to configure as part of your cross-device app and assemble them into the specified format below. You can associate up to 10 ids per platform. 

#### Constructing your *cross-platform-app-identifiers* file
The JSON file itself must be named **cross-platform-app-identifiers** and hosted at root of your HTTPS domain. The contents of the file are a JSON array of mappings between your application's supported platforms and the application IDs on those platforms. When constructing the file, you should include a JSON object for each application and platform which will use Project Rome APIs. 
 
The file will allow for multiple JSON objects with the same platform identifier. For example, an iphone app and ipad app should be listed as separate JSON objects each with a platform value of *ios*. You can see this demonstrated in the sample below for the web platform identifier.
 
There is no need to include a JSON object for all platforms. Only include JSON objects for platforms where your application is using Project Rome APIs.  For example, if you don't have an app client for the Android platform you don’t need an entry in the file for that platform.
 
This sample includes all valid platform identifiers accepted at this time. JSON objects which include an invalid platform value will be stripped out.  

*Example:*
```[
{"platform":"windows_universal", "application":"Microsoft.Contoso_8wekyb3d8bbwe"},
{"platform":"windows_win32", "application":"DefaultBrowser_NOPUBLISHERID!Microsoft.Contoso.Default"},
{"platform":"android","application":"com.example.myapp"},
{"platform":"ios", "application":"com.example.myapp"},
{"platform":"web", "application":"https://contoso.com"},
{"platform":"web", "application":"https://chat.contoso.com"},
{"platform":"msa", "application":"00000000603E0BF"},
{"platform":"msa", "application":"48932b46-98b1-4020-9be4-cc7a65643c9e"},
]
```

#### Where do I find these ids?
* **windows_universal** - Please provide an AUMID for each UWP app. You can refer to documentation here: 
	* https://docs.microsoft.com/en-us/previous-versions/windows/embedded/dn449300(v=winembedded.82) 
	* https://docs.microsoft.com/en-US/uwp/schemas/appxpackage/appxmanifestschema/element-application
* **windows_win32** - Please provide an AUMID for each app. For win32 apps, you'll need to use a script to retrieve this information. Use the instructions here:  https://docs.microsoft.com/en-us/previous-versions/windows/embedded/dn449300(v=winembedded.82)
* **android** - Find details here: https://developer.android.com/studio/build/application-id.html#change_the_package_name 
* **ios** - Find details here:
	* https://developer.apple.com/documentation/foundation/bundle
	* https://help.apple.com/itunes-connect/developer/#/devfc3066644
* **msa** – https://apps.dev.microsoft.com This is the portal where you can obtain an application ID for your app supporting Microsoft account. Upon logging in, you can view the App Id / client Id for any of your apps. Both Live SDK (hex values) and Converged app ids (GUIDs) are supported.   

### Step 3: Configure support for Microsoft Account or Azure Active Directory
To enable cross-device experiences, your app users must login with either a Microsoft Account or an Azure Active Directory account. You will provide the app ID / client IDs used to support authentication in your apps powered by Project Rome APIs as part of the cross-device app configuration stored in your externally hosted JSON file to enable cross-platform support. You can provide up to ten instances.

*Example:*
```[
{"platform":"windows_universal", "application":"Microsoft.Contoso_8wekyb3d8bbwe"},
{"platform":"windows_win32", "application":"DefaultBrowser_NOPUBLISHERID!Microsoft.Contoso.Default"},
{"platform":"android","application":"com.example.myapp"},
{"platform":"ios", "application":"com.example.myapp"},
{"platform":"web", "application":"https://contoso.com"},
{"platform":"web", "application":"https://chat.contoso.com"},
{"platform":"msa", "application":"00000000603E0BF"},
{"platform":"msa", "application":"48932b46-98b1-4020-9be4-cc7a65643c9e"},
]
```

You can find your existing app ID / client IDs or provision new ones by logging into https://apps.dev.microsoft.com  with your developer account. Upon logging in, you can view the App Id / client Id for any of your apps. Both Live SDK (hex values) and Converged app ids (GUIDs) are supported. The IDs used to enable support for Microsoft Account or Azure Active Directory must be added using the platform type "msa" as outlined in the example above.  

**Note:** *Application Developers using AAD only* 
If you are building an application which will support AAD users, and you do not use a Converged application id issued through https://apps.dev.microsoft.com  you will need to provide the GUID for the Application ID of your Azure app. This type of ID should also be configured as platform type *msa*. 

You can find the GUID in the Azure Portal for your Tenant, using the following steps: 
1. Login to the Azure portal https://portal.azure.com 
2. Select **Azure Active Directory** 
3. Under **Manage** select **App registrations** 
4. Select your app from the list and you can view your Application ID (GUID) listed under **Essentials** 

#### Encoding the cross-platform-app-identifiers file 
If you're not seeing activities resume in the correct native applications across platforms or you're unable to read activities published by all members in the group -- there may be an issue with your JSON file being parsed appropriately. When outputting this file ensure you're saving the cross-platform-app-identifiers file with "Unicode (UTF-8 without signature) - Codepage 65001" encoding.

#### Updating the cross-platform-app-identifiers JSON file 
The system will cache the contents of the JSON file to avoid generating frequent requests on your domain. If configured, the service will respect HTTP cache headers when evaluating when to refresh the cache. If not configured, the service will refresh every 24hrs. 

## Configure your app client 
If you're using the client side API's for Windows, iOS or Android you'll need to make sure your app client is configured with the host value that represents your cross-device app identity (e.g. contoso.com).

### MSGraph apps 
If you have an app using the Activity Feed API on MSGraph, your host value must be supplied in the activitySourceHost property. Refer to documentation available here: https://developer.microsoft.com/en-us/graph/docs/api-reference/v1.0/resources/projectrome_activity

### Universal Windows apps
If you have a Windows app, you will need to  configure the host value in your app manifest before publishing data. See details here: 
https://docs.microsoft.com/en-us/uwp/schemas/appxpackage/uapmanifestschema/element-uap5-useractivity 

### iOS & Android apps
*Details coming soon.*

## Maintaining your cross-device app configuration
When releasing a new application which will generate user activities, it's important to update the cross-device app with the new configuration values in advance so that any new activities published are correctly associated with the cross device app. The cross-device app configuration associated to user activities which have been published prior to a change in configuration will not be updated automatically. However, an update operation performed on any activity with an old configuration will be updated to the most recent version on file.  

## Troubleshooting
### Activities are not available to read & write for all apps in the cross-device app configuration
The activity feed API ingests the cross-device app configuration asynchronously so configuration errors may not be readily apparent when publishing user activities. In the event the service fails to ingest the JSON file either due to TLS or formatting error any activities which have been published will be attributed to the app id which posted the activity, only. In the case of activities published via MSGraph, this is the MSA app id used to authorize requests to the Graph. In the case of activities published via client side APIs, the activity.applicationId will record the id of the platform-specific app which posted the activity, only. This will prevent read & write operations on activities from any other platform-specific apps identified in the cross-device app configuration. 

### Platform will not initialize on Android or iOS
The device relay API for Android or iOS requires the cross-device app configuration in order to instantiate connections to the Android or iOS app. In the event the platform fails to initialize successfully make sure you have correctly identified the MSA app ids & push notification credentials used to configure your cross-device app in Windows Dev Center and configured your client apps' host value with the domain that identifies your cross-device app. 
