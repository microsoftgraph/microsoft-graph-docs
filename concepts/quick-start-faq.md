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

## General quick start sample questions

<!-- markdownlint-disable MD026 -->

This section answers questions about the contents of the quick start samples.

### Can I get the quick start code without downloading through the quick start page?

Absolutely! Each quick start download is based on a [Microsoft Graph tutorial](tutorials.yml), so you have two other options to get the same source code:

- Build the code yourself by following the step-by-step tutorial.
- Download the completed project from the corresponding GitHub repository and follow the instructions in the README to configure and run the sample.

> [!NOTE]
> We are in the process of generating tutorials for each of the platforms that currently have a quick start. Some of the quick starts do not have corresponding tutorials yet.

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

## Didn't find what you need?

If this FAQ didn't address a question or problem you encountered with one or more of the quick starts, please let us know using the **Feedback** section below.
