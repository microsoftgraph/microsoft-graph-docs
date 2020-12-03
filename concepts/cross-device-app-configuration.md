---
title: "Build cross-device apps powered by Project Rome "
description: "You can use Project Rome to build experiences that cross devices and platforms seamlessly, reducing friction for users and helping to drive app engagement. For applications to share data across devices and platforms using Project Rome APIs, you need to configure a cross-device app that includes information about your platform-specific apps. "
localization_priority: Normal
ms.prod: "project-rome"
---

# Build cross-device apps powered by Project Rome 

You can use Project Rome to build experiences that cross devices and platforms seamlessly, reducing friction for users and helping to drive app engagement. For applications to share data across devices and platforms using Project Rome APIs, you need to configure a cross-device app that includes information about your platform-specific apps. 

A cross-device app enables you to: 

- Use the Project Rome activity feed API in Microsoft Graph.  
- Read and  write user activities published by a group of platform-specific applications by using the Project Rome SDK for Windows, Android, and/or iOS.
-  Target apps via the device relay capabilities in Project Rome by using the Project Rome SDK for Android or iOS.

**Pick up where you left off across devices with the activity feed API**

You can configure a cross-device app to associate your apps for Windows, iOS, Android, and the web so that the app on each platform can read and write user activities that are published by any app in the group. 

For example, a user is finishing up a press release on her PC at work before dinner with friends. At the restaurant, she gets a notification from her boss about a typo that needs to be fixed asap. She opens the app on her Android phone and sees a card showing the press release she was editing earlier. She taps the card to open it so she can fix the release immediately and get back to her friends. 
 
With this cross-device app configuration in place, the user's activity feed is synchronized across devices and platforms effortlessly so you can build experiences that help users pick up important tasks where they left off from any app surface. 

**Choose the right screen at the right time with the device relay API**

You can configure a cross-device app with push notification credentials for each of the platforms your app is available on so that a command or notification can be delivered to you on any device where you use the app, regardless of platform. 

For example, a user is watching a video on the bus ride home from work. When she arrives home, she taps the app to launch the video on her Xbox One so she can continue watching on the big screen. 

When you associate push notification credentials for each of the platforms where your app is available with your cross-device app, the user's app can send commands across devices, so you can build experiences that cross multiple screens or transition a workflow from one device to another in real time. 

## Select the right hosting method for your cross-device app configuration
You can host your cross-device app configuration either as a JSON file on your domain or as a profile configurable via the [Windows Dev Center](https://developer.microsoft.com/windows). Choose a hosting option based on the Project Rome capabilities you want to enable in your apps. 

### Windows Dev Center profile (recommended) 
You can access all Project Rome capabilities using a cross-device app managed in the [Windows Dev Center](https://developer.microsoft.com/windows). The Windows Dev Center also offers the *best* way to manage any cross-device app configuration changes. You can save updates to an existing profile more securely until you're ready to publish changes to production. When you publish changes to an existing cross-device app in the Dev Center, the new profile will be effective after approximately **one hour**.  

### Externally hosted JSON file (limited) 
You can use the following Project Rome capabilities on all supported platforms using a cross-device app managed as an externally hosted JSON file:  

* Read and write user activities from all platforms using the [activity feed API](/graph/api/resources/activity-feed-api-overview?view=graph-rest-1.0)
* Write user activities from all platforms (Windows, iOS, Android, web) using the Project Rome SDKs.

If you **only** access these capabilities, you can host your cross-device app configuration externally on your domain as a JSON file.

## Configure a cross-device app using the Windows Dev Center
A cross-device app ID is represented as a domain that you own. The domain points to a mapping of your platform-specific app IDs stored either as a JSON file hosted on your domain or configurable via the Windows Dev Center. After you identify the domain you'll use to represent your cross-device app ID, you'll need to collect information to configure the associated profile. 

### Step 1: Select a secure domain for your cross-device app ID and enable domain verification
The domain used as your cross-device app ID must either be a top-level domain or a subdomain and must be protected via TLS. For example: https://contoso.com or https://myapp.contoso.com, but NOT https://myapp.contoso.com/somepath. **You must have a unique domain (or subdomain) per cross-device app.** However, you decide which apps to associate with a single cross-device app based on the cross-platform behavior you want to support. 

For example, an app developer with a suite of game apps might use a separate subdomain for each of these to ensure that each app is only subscribed to the user activities it can resume when reading data across devices and platforms. On the other hand, an app developer with a suite of productivity apps designed to work together might use a single domain for all of these so that any app is able to launch a member of the suite across devices.  

#### Assert domain ownership with the Windows Dev Center
When using the Windows Dev Center to manage your cross-device app configuration, the domain representing your cross-device app ID is stored as part of your cross-device app profile so Microsoft can verify that you are the domain owner. Your domain ownership **must be verified** in order to finish publishing your cross-device app configuration, so it's a good idea to tackle this first. If your domain is not yet verified, you can save your cross-device app details and rerun the verification after you complete this step so you can publish your cross-device app.

To assert your domain ownership for your cross-device app, you'll need to add a [DNS TXT](https://go.microsoft.com/fwlink/?linkid=871417) entry for your domain with a unique value provided to you in the Dev Center. This value is unique per cross-device app. To find the unique value for your app, sign in to the Windows Dev Center and choose **Cross-device experiences** from the left menu to start configuring a new cross-device app. After you give your new cross-device app a name, select **Verify your cross-device app domain** from the submenu. This page will display instructions with a unique value **inline** (for example, MS=95ff4557-813f-45a5-b2f6-1f94170b979f). Make sure to copy the entire value including 'MS='.

### Step 2: Collect your platform-specific application IDs
Collect the platform-specific application IDs for each application and platform that will use [Project Rome APIs](/graph/api/resources/project-rome-overview?view=graph-rest-1.0).

You'll need to collect each of the platform-specific application IDs in order to associate them with your cross-device app identity. Using the Windows Dev Center, you'll be able to select from Universal Windows Platform apps associated with your developer account, but you'll need to manually provide application IDs for any of your win32, iOS, or Android apps and identify the primary URL for any associated web apps. You can associate up to 10 IDs per platform. 

To find the IDs:

* **windows_universal** - Provide an AUMID for each UWP app. For details, see [Find the Application User Model ID of an installed app (Industry 8.1)](/previous-versions/windows/embedded/dn449300(v=winembedded.82)) and [Application](/uwp/schemas/appxpackage/appxmanifestschema/element-application).
* **windows_win32** - Provide an AUMID for each app. For win32 apps, you'll need to use a script to retrieve this information. For details, see For details, see [Find the Application User Model ID of an installed app (Industry 8.1)](/previous-versions/windows/embedded/dn449300(v=winembedded.82)).
* **android** - For details, see [Change the package name](https://developer.android.com/studio/build/application-id.html#change_the_package_name). 
* **ios** - For details, see [Bundle](https://developer.apple.com/documentation/foundation/bundle) and [Required, localizable, and editable properties](https://help.apple.com/itunes-connect/developer/#/devfc3066644).
* **msa** – Sign in to the [Application registration portal](https://apps.dev.microsoft.com). You can view the App ID/client ID for any of your apps. Both Live SDK (hex values) and Converged app IDs (GUIDs) are supported.   

### Step 3: Configure support for Microsoft account or Azure AD
To enable cross-device experiences, your app users must sign in with either a [Microsoft account](https://account.microsoft.com/account) or an [Azure Active Directory](/azure/active-directory/develop/active-directory-developers-guide) (Azure AD) account. You will provide the app ID/client IDs to support authentication as part of your cross-device app configuration to enable cross-platform support. You can provide up to 10 instances.

You can find your existing app ID/client IDs or provision new ones by signing in to the [Application registration portal](https://apps.dev.microsoft.com) with your developer account. When you sign in to the portal, you can view the App ID/client ID for any of your apps. Both Live SDK (hex values) and converged app IDs (GUIDs) are supported.   

If you're building an application that will support Azure AD users, and you do not use a converged application ID issued through the [Application registration portal](https://apps.dev.microsoft.com), you will need to provide the GUID for the application ID of your Azure app. To find the GUID for your tenant: 

1. Sign in to the [Azure portal](https://portal.azure.com). 
2. Select **Azure Active Directory**.
3. Under **Manage**, select **App registrations**. 
4. Select your app from the list and view your Application ID (GUID) listed under **Essentials**.

### Step 4: Configure support for cross-platform push notifications (optional) 
If you've opted to configure your cross-device app in the Windows Dev Center, you can enable support for cross-platform push notifications by providing the credentials you use with the APIs for Android and iOS push messaging platforms. These are required if you're using the Project Rome SDKs for iOS and Android and you want to do more than publish user activities. If you're using Project Rome APIs for Microsoft Graph only, you don't need to perform this step. You can associate up to 10 sets of credentials per platform. 

>**Important:** Do not store push notification credentials in an externally hosted JSON file.

To find the IDs:

* **Windows Notification Service** - See [Registering your app and receiving the credentials for your cloud service](/previous-versions/windows/apps/hh913756(v=win.10)#registering-your-app-and-receiving-the-credentials-for-your-cloud-service) and the [Application registration portal](https://apps.dev.microsoft.com).
* **Apple Push Notification Service** -See [APNs Overview](https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/APNSOverview.html).
* **Google Cloud Messaging** - See [Firebase Cloud Messaging](https://firebase.google.com/docs/cloud-messaging/).

**Note:** If you're using Firebase to push notifications to iOS devices using Android credentials, you'll need to provide your APNs credentials as part of your cross-device app configuration. 

## Configure a cross-device app using an externally hosted JSON file
A cross-device app ID is represented as a domain that you own. The domain points to a mapping of your platform-specific app IDs stored either as a JSON file hosted on your domain or configurable via the Windows Dev Center. After you identify the domain you'll use to represent your cross-device app ID, you'll need to collect information to configure the associated profile. 

### Step 1: Select a secure domain for your cross-device app ID
A cross-device app ID is represented as a domain that you own. This must either be a top-level domain or a subdomain, and must be protected via TLS. For example: https://contoso.com or https://myapp.contoso.com but NOT https://myapp.contoso.com/somepath. You must have a unique domain (or subdomain) per cross-device app. However, you decide which apps to associate with a single cross-device app based on the cross-platform behavior you want to support. 

For example, an app developer with a suite of game apps might use a separate subdomain for each to ensure that each app is only subscribed to the user activities it can resume when reading data across devices and platforms. An app developer with a suite of productivity apps designed to work together might use a single domain for all of these so that any app is able to launch a member of the suite across devices.  

#### Assert domain ownership with an externally hosted JSON file 
If you're using an externally hosted JSON file to manage your cross-device app, you assert domain ownership by including your Microsoft account or Azure AD app IDs in the cross-platform-app-identifiers file. Your domain ownership will be verified as part of the publish process when you use the activity feed API to create user activities.

The system will cache the contents of the JSON file to avoid generating frequent requests on your domain. If configured, the service will respect HTTP cache headers when evaluating when to refresh the cache. If not configured, the service will refresh every 24 hours. 

### Step 2: Collect your platform-specific application IDs and construct your JSON file
Collect the platform-specific application IDs for each application and platform that will use the activity feed and/or device relay API. 

You'll need to collect each of the platform-specific application IDs in order to associate them with your cross-device app identity. Using an externally hosted JSON file, you'll need to collect app IDs for each of the platform-specific apps to configure as part of your cross-device app and assemble them into the specified format. You can associate up to 10 IDs per platform. 

#### Constructing your cross-platform-app-identifiers file
The JSON file itself must be named **cross-platform-app-identifiers** and hosted at root of your HTTPS domain. The contents of the file are a JSON array of mappings between your application's supported platforms and the application IDs on those platforms. When constructing the file, include a JSON object for each application and platform that will use Project Rome APIs. 
 
The file will allow for multiple JSON objects with the same platform identifier. For example, an iPhone app and an iPad app should be listed as separate JSON objects, each with a platform value of iOS. The web platform identifier is shown in the following example.
 
You don't need to include a JSON object for all platforms. Only include JSON objects for platforms where your application is using Project Rome APIs. For example, if you don't have an app client for the Android platform, you don’t need an entry in the file for Android.
 
The following example includes all the valid platform identifiers currently accepted. JSON objects that include an invalid platform value will be stripped out.  

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

To find the IDs:

* **windows_universal** - Provide an AUMID for each UWP app. For details, see [Find the Application User Model ID of an installed app (Industry 8.1)](/previous-versions/windows/embedded/dn449300(v=winembedded.82)) and [Application](/uwp/schemas/appxpackage/appxmanifestschema/element-application).
* **windows_win32** - Provide an AUMID for each app. For win32 apps, you'll need to use a script to retrieve this information. For details, see For details, see [Find the Application User Model ID of an installed app (Industry 8.1)](/previous-versions/windows/embedded/dn449300(v=winembedded.82)).
* **android** - For details, see [Change the package name](https://developer.android.com/studio/build/application-id.html#change_the_package_name). 
* **ios** - For details, see [Bundle](https://developer.apple.com/documentation/foundation/bundle) and [Required, localizable, and editable properties](https://help.apple.com/itunes-connect/developer/#/devfc3066644).
* **msa** – Sign in to the [Application registration portal](https://apps.dev.microsoft.com). You can view the App ID/client ID for any of your apps. Both Live SDK (hex values) and Converged app IDs (GUIDs) are supported.   

### Step 3: Configure support for Microsoft account or Azure AD
To enable cross-device experiences, your app users must sign in with either a Microsoft account or an Azure AD account. You will provide the app ID/client IDs to support authentication as part of your cross-device app configuration to enable cross-platform support. You can provide up to 10 instances.

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

You can find your existing app ID/client IDs or provision new ones by signing in to the [Application Registration Portal](https://apps.dev.microsoft.com) with your developer account. When you sign in, you can view the App ID/client ID for any of your apps. Both Live SDK (hex values) and converged app IDs (GUIDs) are supported. Use the platform type "msa" when you add the IDs used to enable support for a Microsoft account or Azure AD, as shown in the previous example.  

>**Note:** If you're building an application that supports Azure AD users, and you do not use a converged application ID issued through the [Application Registration Portal](https://apps.dev.microsoft.com), you will need to provide the GUID for the application ID of your Azure app. This type of ID should also be configured as platform type "msa". 

To find the GUID in the Azure Portal for your tenant: 

1. Sign in to the [Azure portal](https://portal.azure.com).
2. Select **Azure Active Directory**. 
3. Under **Manage**, select **App registrations**.
4. Select your app from the list. You can view your application ID (GUID) under **Essentials**.

#### Encoding the cross-platform-app-identifiers file 
If you're not seeing activities resume in the correct native applications across platforms, or you're unable to read activities published by all members in the group, your JSON file might not be getting parsed appropriately. When outputting this file, make sure you're saving the cross-platform-app-identifiers file with "Unicode (UTF-8 without signature) - Codepage 65001" encoding.

#### Updating the cross-platform-app-identifiers JSON file 
The system will cache the contents of the JSON file to avoid generating frequent requests on your domain. If configured, the service will respect HTTP cache headers when evaluating when to refresh the cache. If not configured, the service will refresh every 24 hours. 

## Configure your app client 
If you're using the client-side APIs for Windows, iOS, or Android, you'll need to make sure your app client is configured with the host value that represents your cross-device app identity (for example, contoso.com).

### Microsoft Graph apps 
If you have an app using the activity feed API in Microsoft Graph, your host value must be supplied in the **activitySourceHost** property. For details, see [activity resource type](/graph/api/resources/projectrome-activity?view=graph-rest-1.0).

### Universal Windows apps
If you have a Windows app, you will need to configure the host value in your app manifest before publishing data. For details, see 
[uap5:UserActivity](/uwp/schemas/appxpackage/uapmanifestschema/element-uap5-useractivity). 

<!-- Removing until we add the details.
### iOS & Android apps
*Details coming soon.*
-->

## Maintaining your cross-device app configuration
When releasing a new application that will generate user activities, it's important to update the cross-device app with the new configuration values in advance so that any new activities published are correctly associated with the cross-device app. The cross-device app configuration associated with user activities that have been published prior to a change in configuration will not be updated automatically. However, an update operation performed on any activity with an old configuration will be updated to the most recent version on file.  

## Troubleshooting

The following are some common issues that can occur with the activity feed API.

### Activities are not available to read and write for all apps in the cross-device app configuration
The activity feed API ingests the cross-device app configuration asynchronously, so configuration errors might not be readily apparent when publishing user activities. In the event the service fails to ingest the JSON file, either due to TLS or formatting error, any activities that have been published will be attributed to the app ID that posted the activity, only. In the case of activities published via Microsoft Graph, this is the Microsoft account app ID used to authorize requests to Microsoft Graph. In the case of activities published via client-side APIs, the activity.applicationId will record the ID of the platform-specific app that posted the activity, only. This will prevent read and write operations on activities from any other platform-specific apps identified in the cross-device app configuration. 

### Platform will not initialize on Android or iOS
The device relay API for Android or iOS requires the cross-device app configuration in order to instantiate connections to the Android or iOS app. In the event that the platform fails to initialize successfully, make sure you have correctly identified the Microsoft account app IDs and push notification credentials used to configure your cross-device app in the Windows Dev Center, and configure your client apps' host value with the domain that identifies your cross-device app.