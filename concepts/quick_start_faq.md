# Microsoft Graph quick start FAQ

This FAQ answers questions related to the [Microsoft Graph Quick Starts](https://developer.microsoft.com/en-us/graph/quick-start).

## What do the quick starts do?

The quick start samples show you how to access the power of Microsoft Graph. 

If you use the Office 365 REST APIs, you have to authenticate to each service you want to call. Microsoft Graph eliminates this complexity by unifying authentication and giving you access to all APIs via a single entry point. You can authenticate once and access information across multiple applications and services. 

The Microsoft Graph quick starts access three services with one authentication: Microsoft account, OneDrive, and Outlook. Each quick start accesses information from Microsoft account users' profiles, writes data to OneDrive (a photo), and generates an email using Outlook (including a link to the photo). 

The quick starts involve four steps:

- Select your platform 
- Get your app ID (client ID)
- Build the sample
- Sign in, and send a profile photo via email

When you complete the quick start, you have an app that's ready to run.


## General quick start sample questions
This section answers questions about the organization and contents of the quick start samples.

### Why does my quick start contain a readme file?

Each quick start registers a new application and creates a zip file that contains the contents of a GitHub repository. It updates the files in the repository so that you don't have to configure the sample application in the repository. You'll find these repositories in the [MicrosoftGraph organization](https://github.com/microsoftgraph?utf8=%E2%9C%93&q=connect) on GitHub.

Feel free to look at the repository associated with each quick start, file issues there, and/or follow the instructions in the Readme to register your own application. To go to the repository, follow the **Just give me the sample code** link under step 2 of each quick start.

### Which Microsoft Graph features do the quick start samples use?

We're continually updating the quick start samples. To get the updates, watch the repository for the sample that you're interested in. As we add features, we'll update the sample readme file with the new information. The following table lists the current features for each sample.
 +<!-- Replace the check mark images with an actual character that can be read by a screen reader. Or you could add alt text to each instance of the image. -->

|Sample|Authenticate|Get profile pic|Upload pic to OneDrive|Sharing link in email|Attach pic to email|Send email|
|-----:|-----:|-----:|------:|------:|------:|-----:|
|[Android Connect](https://github.com/microsoftgraph/android-java-connect-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[Angular 2 Connect](https://github.com/microsoftgraph/angular-connect-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|
|[Angular 2 Connect REST](https://github.com/microsoftgraph/angular2-connect-rest-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|
|[ASP.NET Connect](https://github.com/microsoftgraph/aspnet-connect-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[iOS Connect - Swift](https://github.com/microsoftgraph/ios-swift-connect-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[iOS Connect REST - Objective C](https://github.com/microsoftgraph/ios-objectivec-connect-rest-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|[](./images/Check.PNG)|
|[Node.js Connect REST](https://github.com/microsoftgraph/nodejs-connect-rest-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)| |![](./images/Check.PNG)|
|[php Connect REST](https://github.com/microsoftgraph/php-connect-rest-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|
|[php Connect](https://github.com/microsoftgraph/php-connect-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|
|[Ruby Connect REST](https://github.com/microsoftgraph/ruby-connect-rest-sample)|![](./images/Check.PNG)| | | | |![](./images/Check.PNG)|
|[UWP Connect](https://github.com/microsoftgraph/uwp-csharp-connect-sample) |![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|
|[Xamarin Connect](https://github.com/microsoftgraph/uwp-csharp-connect-sample)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|![](./images/Check.PNG)|

## Authentication and authorization
This section answers questions related to authentication and authorization issues. 

### Why don't any of the quick start samples show advanced authentication use cases?

The quick start samples give you an introduction to authentication and Microsoft Graph API calls. When you add authentication and Microsoft Graph API calls to your production application, you need to know how to design for advanced authentication scenarios involving security and conditional access issues.

You can find out more about advanced authentication scenarios for the authentication library you are using by visiting the page for the authentication library publisher:

- [OAuth2Client for Android and iOS](https://github.com/nxtbgthng/OAuth2Client)
- [Passport for Node](http://passportjs.org/)
- [Illuminate Auth for PHP](https://github.com/illuminate/auth)
- [Flask for Python 3](https://pypi.python.org/pypi/Flask-OAuth2-Provider/0.2.1)
- [OmniAuth for Ruby](https://github.com/omniauth/omniauth)
- [Microsoft Authentication Library (MSAL) for .NET](https://github.com/AzureAD/microsoft-authentication-library-for-dotnet)
- [Microsoft Authentication Library for Android](https://github.com/AzureAD/microsoft-authentication-library-for-android)
- [Microsoft Authentication Library for JavaScript](https://github.com/AzureAD/microsoft-authentication-library-for-js)

## Microsoft Graph API
This section answers questions about coding applications that use Microsoft Graph APIs.

### I didn’t get an email and I don't see any errors or exceptions. Why didn't this work?

If the sample appears to send an email but you don't see it in your Inbox, check your junk or spam folder. If you're sending the message from a test tenant, the message might get flagged as spam.

### Why doesn't the email sent by the sample have my profile picture?

This is usually because your profile has not been set up with a user profile picture. If you signed in with a Microsoft account, then even if you have a profile picture, it will not appear in the email. The Microsoft Graph API does not currently support user profile pictures from Microsoft accounts. Most of the quick start samples get your profile picture and upload it to the root directory of your OneDrive account. If you sign in with a Microsoft account (live.com, hotmail.com), Microsoft Graph can't currently fetch your profile picture and will fall back to the thought bubble image.

The Node iOS Objective C samples do not attach user profile pictures to the email message. 

## ASP.NET
This section answers questions related to coding, building, or running the ASP.NET quick start sample.

### Why won't my ASP.NET project build?
If a sample that uses .NET libraries fails to build in Visual Studio, one or more of your projects might be running up against the 260-character Windows path length limit. Try moving the solution to a location at or close to the root directory. 

## Universal Windows Platform (UWP)
This section answers questions related to coding, building, or running the UWP quick start sample.

### Why won't my UWP project build?
If a sample that uses .NET libraries fails to build in Visual Studio, one or more of your projects might be running up against the 260-character Windows path length limit. Try moving the solution to a location at or close to the root directory. 

## Xamarin
This section answers questions related to coding, building, or running the Xamarin quick start sample.

### Why won't my Xamarin project build?

If a sample that uses .NET libraries fails to build in Visual Studio, one or more of your projects might be running up against the 260-character Windows path length limit. Xamarin solutions, in particular, are susceptible to this, especially Android projects inside Xamarin solutions. Try moving the solution to a location at or close to the root directory. 

## Web stack samples
This section answers questions related to coding, building, or running quick start samples built with web technology.

### How do I know if my local computer supports a local web server?
The quick start samples based on web technology provide the logic necessary to start and host a local web server. For example, the PHP sample based on the PHP 5.4.0+ runtime includes a [built-in web server](http://php.net/manual/en/features.commandline.webserver.php) that you will use for development. It is not intended to be used in a production environment. 

If you have downloaded the Node.js sample, read the [Node.js getting started guide](https://nodejs.org/en/docs/guides/getting-started-guide/) to learn about starting the Node web server. 

For the ASP.NET sample, Visual Studio 2015 and later versions include a development web server that starts automatically when you run the sample. You don't need to configure the sample project to use the web server. 

The Ruby connect sample [readme](https://github.com/microsoftgraph/ruby-connect-rest-sample/blob/master/README.md) provides the instructions you need to start a local Ruby web server. 

### If a web platform quick start provides REST and SDK samples, can I run them both at the same time?

Yes, you can run both samples at the same time. Just make sure that one of them isn't running on the default port. This means that when you start your test web server, you'll need to specify a port number for at least one version of the sample.

### Why do some quick starts include an app secret and others don’t?

Server-side web applications that need to make secure calls to the Microsoft Graph API require app secrets. This is why the quick starts for ASP.NET MVC, Node.js, PHP, and Ruby provide an app secret.

### Why doesn't the Angular quick start give me an app secret when all the other web platform quick starts do?

An app secret is required only for server-side web applications.

### I get an error when I try to sign in and authorize the sample app. What steps can I take to fix this? 

First try to run the sample app in an InPrivate or Incognito window. Sometimes web browser cache settings can cause the authorization step to fail, especially if you sign in with multiple Microsoft accounts. If that doesn't work, please follow up with us on [Stack Overflow](https://stackoverflow.com/questions/tagged/microsoft-graph). Be sure to tag your question with microsoft-graph and copy the error information into the question.

## Didn't find what you need?

If this FAQ didn't address a question or problem you encountered with one or more of the quick starts, please report your question or problem on [Stack Overflow](https://stackoverflow.com/questions/tagged/microsoft-graph). Be sure to tag your question with microsoft-graph.

If your problem is related to the code sample provided by the quick start, you can also file an issue in the GitHub sample repository. You can find the repository by following the **Just give me the sample code** link under step 2 for each quick start.
