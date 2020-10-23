---
title: "Microsoft Graph quick start FAQ"
description: "This FAQ answers questions related to the Microsoft Graph Quick Starts."
author: jasonjoh
ms.author: jasonjoh
localization_priority: Normal
---

# Microsoft Graph quick start FAQ

This FAQ answers questions related to the [Microsoft Graph Quick Starts](https://developer.microsoft.com/graph/quick-start).

## General design

The quick start samples show you how to access the power of Microsoft Graph. These samples access two services with one authentication: Microsoft account and Outlook. Each quick start accesses information from Microsoft account users' profiles and displays events from their calendar.

The quick starts involve four steps:

- Select your platform
- Get your app ID (client ID)
- Build the sample
- Sign in, and view events on your calendar

When you complete the quick start, you have an app that's ready to run.

## Prerequisites

All quick start samples require access to either a personal Microsoft account with a mailbox on Outlook.com, or a Microsoft work or school account with an Exchange Online mailbox. If you don't have a Microsoft account, there are a couple of options to get a free account:

- You can [sign up for a new personal Microsoft account](https://signup.live.com/signup?wa=wsignin1.0&rpsnv=12&ct=1454618383&rver=6.4.6456.0&wp=MBI_SSL_SHARED&wreply=https://mail.live.com/default.aspx&id=64855&cbcxt=mai&bk=1454618383&uiflavor=web&uaid=b213a65b4fdc484382b6622b3ecaa547&mkt=E-US&lc=1033&lic=1).
- You can [sign up for the Microsoft 365 Developer Program](https://developer.microsoft.com/office/dev-program) to get a free Microsoft 365 subscription.

## General quick start sample questions

<!-- markdownlint-disable MD026 -->

This section answers questions about the contents of the quick start samples.

### Can I get the quick start code without downloading through the quick start page?

Absolutely! Each quick start download is based on a [Microsoft Graph tutorial](tutorials.yml), so you have two other options to get the same source code:

- Build the code yourself by following the step-by-step tutorial.
- Download the completed project from the corresponding GitHub repository and follow the instructions in the README to configure and run the sample.

#### Tutorials and GitHub repositories

The following table lists the corresponding tutorial and GitHub repository for each quick start sample.

| Quick start | Tutorial | GitHub repository |
|-------------|----------|-------------------|
| Android | [Tutorial](/graph/tutorials/android) | [GitHub](https://github.com/microsoftgraph/msgraph-training-android) |
| Angular | [Tutorial](/graph/tutorials/angular) | [GitHub](https://github.com/microsoftgraph/msgraph-training-angularspa) |
| ASP.NET MVC | [Tutorial](/learn/modules/msgraph-build-aspnetmvc-apps) | [GitHub](https://github.com/microsoftgraph/msgraph-training-aspnetmvcapp) |
| iOS Swift | [Tutorial](/graph/tutorials/ios-swift) | [GitHub](https://github.com/microsoftgraph/msgraph-training-ios-swift) |
| iOS Objective-C | [Tutorial](/graph/tutorials/ios-objectivec) | [GitHub](https://github.com/microsoftgraph/msgraph-training-ios-objectivec) |
| Node.js | [Tutorial](/graph/tutorials/node) | [GitHub](https://github.com/microsoftgraph/msgraph-training-nodeexpressapp) |
| PHP | [Tutorial](/graph/tutorials/php) | [GitHub](https://github.com/microsoftgraph/msgraph-training-phpapp) |
| Python | [Tutorial](/graph/tutorials/python) | [GitHub](https://github.com/microsoftgraph/msgraph-training-pythondjangoapp) |
| React | [Tutorial](/graph/tutorials/react) | [GitHub](https://github.com/microsoftgraph/msgraph-training-reactspa) |
| Ruby | [Tutorial](/graph/tutorials/ruby) | [GitHub](https://github.com/microsoftgraph/msgraph-training-rubyrailsapp) |
| UWP | [Tutorial](/graph/tutorials/uwp) | [GitHub](https://github.com/microsoftgraph/msgraph-training-uwp) |
| Xamarin | [Tutorial](/graph/tutorials/xamarin) | [GitHub](https://github.com/microsoftgraph/msgraph-training-xamarin) |

### Why don't any of the quick start samples show advanced authentication use cases?

The quick start samples give you an introduction to authentication and Microsoft Graph API calls. You can learn more about other authentication flows in the [Azure Active Directory](/azure/active-directory/develop/authentication-scenarios) documentation.

### What if I run into an unexpected error or problem with a quick start?

If you have trouble getting the quick start to work properly, please open an issue on the corresponding GitHub repository.

## Known issues

### ASP.NET quick start displays an error when running it: Cannot find a part of the path '[...]\Graph Tutorial\graph-tutorial\bin\roslyn\csc.exe'.

This is caused by an [issue with Visual Studio and the Roslyn compiler](https://github.com/dotnet/roslyn/issues/15556). One of the following options should resolve the error.

- Unload/reload project in Solution Explorer
- Clean/Rebuild solution
- Upgrade NuGet packages

### I'm getting "AADSTS50011: The reply url specified in the request does not match the reply urls configured for the application" when running a quick start.

This indicates a problem with the application registration for the quick start. When you download a quick start from the [Microsoft Graph Quick Starts page](https://developer.microsoft.com/graph/quick-start), we create the application registration for you, and configure a reply URL (also known as a redirect URL) that matches the default URL used by the sample project. If you change the URL, the app registration will no longer match and could cause this error. To resolve this error, consult the README.md file included with the quick start project for instructions on how to create an app registration and configure it in the sample code.

### After signing in, I'm told I need admin approval.

After signing into one of the quick start samples, you may see a message that says **Need admin approval** "XXX Tutorial needs permission to access resources in your organization that only an admin can grant. Please ask an admin to grant permission to this app before you can use it." This isn't a bug with the sample! None of the quick starts request any Graph permission scopes that *by default* require admin consent. Tenant administrators can disable your ability to consent to Graph permissions scopes for any apps that they have not approved. In that case, you'll see this error.

You'll need to work with your administrators to get approval, use a personal Microsoft account (Outlook.com), or use a test Microsoft 365 tenant with Exchange Online.

## Didn't find what you need?

If this FAQ didn't address a question or problem you encountered with one or more of the quick starts, please let us know using the **Feedback** section below.
