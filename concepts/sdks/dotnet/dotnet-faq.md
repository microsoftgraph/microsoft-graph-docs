---
title: "Frequently asked questions"
description: "Contains frequently asked questions for the .Net client library."
localization_priority: Normal
author: MichaelMainer
---

# Frequently Asked Questions

## How do I get past the System.IO.FileLoadException

We built the .Net Microsoft Graph client library against a specific version of the JSON.Net library. That version is specified in the .Net client library assembly manifest. We specify a range of potential JSON.Net versions that can be used by our client library in our Nuget package specification.

Your project may already have a reference to JSON.Net. When you add the Microsoft Graph library via Nuget, Nuget won't install the JSON.Net dependency that was used to build the Microsoft Graph library <u>when</u> you already have a reference to JSON.Net in your project. This may lead to a FileLoadException as the CLR will try to load the version used to build the Microsoft Graph library and won't find it in the case that your project reference to JSON.Net is different than the version of JSON.Net used to build the Microsoft Graph library.

 You have three options to get around this scenario:

1. Add a [binding redirect to your application](https://docs.microsoft.com/en-us/dotnet/framework/configure-apps/redirect-assembly-versions#redirecting-assembly-versions-at-the-app-level) to unify the version of JSON.Net used by your application.
2. [Assembly resolution at runtime](https://docs.microsoft.com/en-us/dotnet/framework/app-domains/resolve-assembly-loads) if the binding redirect option is not available. Here's an [AssemblyResolutionDemo](https://github.com/danmalcolm/AssemblyResolutionDemo) that shows how this works.
3. Change the version of the JSON.Net dependency in your project to match the version used by Microsoft Graph .Net client library. This will be your only option for UWP applications at the time of this writing.