---
title: "Microsoft Graph Toolkit: Web Components powered by Microsoft Graph"
description: "The Microsoft Graph Toolkit is a collection of resuable, framework-agnostic web components and helpers for accessing and working with Microsoft Graph."
localization_priority: Normal
author: elisenyang
---

# Microsoft Graph Toolkit: Web Components powered by Microsoft Graph

The Microsoft Graph Toolkit is a collection of reusable, framework-agnostic web components and helpers for accessing and working with Microsoft Graph. The components are fully functional right of out of the box, with built in providers that authenticate with and fetch data from Microsoft Graph.

The Microsoft Graph Toolkit makes it easy to use Microsoft Graph in your application. In the example below, see how a signed in user and their calendar events are displayed with just two lines of code by using the [Login](./components/login.md) and [Agenda](./components/agenda.md) components.

<iframe src="https://mgt.dev/iframe.html?id=samples-general--login-to-show-agenda&source=docs&source=docs" height="400"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/samples-general--login-to-show-agenda&source=docs)

## What's in the Microsoft Graph Toolkit?

### Components

The Microsoft Graph Toolkit includes a collection of web components for the most commonly built experiences powered by Microsoft Graph APIs.

|Component|Description|
|---------|-----------|
|[Login](./components/login.md)|A button and a flyout control to authenticate a user with the Microsoft Identity platform and display the user's profile information on sign in.|
|[Person](./components/person.md)|Displays a person or contact by their photo, name, and/or email address.|
|[People](./components/people.md)|Displays a group of people or contacts by their photos or initials.|
|[Agenda](./components/agenda.md)|Displays events in a user or group's calendar.|
|[Tasks](./components/tasks.md)|Displays and enables adding, removing, completing, or editing of tasks from Microsoft Planner or Microsoft To-Do.|
|[People picker](./components/people-picker.md)|Provides the ability to search for people and renders the list of results.|
|[Person card](./components/person-card.md)|A flyout used on the person component to display more profile information about a user.|
|[Get](./components/get.md)|Make a GET query to any Microsoft Graph API directly in your HTML.|
|[Channel picker](./components/teams-channel-picker.md)|Provides the ability to search for Microsoft Teams channels to select a channel from a rendered list of results.|

### Providers

The components work best when used with a [provider](/providers/providers.md). Providers enable authentication and provide the implementation for acquiring the access tokens for calling the Microsoft Graph APIs.

|Providers|Description|
|---------|-----------|
|[Msal](./providers/msal.md)|Uses MSAL.js to sign in users and acquire tokens to use with Microsoft Graph.|
|[SharePoint](./providers/sharepoint.md)|Authenticates and provides Microsoft Graph access to components inside of SharePoint web parts.|
|[Teams](./providers/teams.md)|Authenticates and provides Microsoft Graph access to components inside of Microsoft Teams tabs.|
|[Proxy](./providers/proxy.md)|Allows the use of backend authentication by routing all calls to Microsoft Graph through your backend.|
|[Custom](./providers/custom.md)|Create a custom provider to enable authentication and access to Microsoft Graph with your application's existing authentication code.|

## Why use the Microsoft Graph Toolkit?

The Microsoft Graph Toolkit makes integrating common experiences powered by Microsoft Graph into your own application quick and easy.

:::row:::
   :::column span="":::
    **Cut Development Time**

    The work to connect to Microsoft Graph APIs and render the data in a UI that looks and feels like a Microsoft365 experience is done for you, with no customization required.
  :::column-end:::
  :::column span="":::
    **Works Everywhere**

    All components are based on web standards and work seamlessly with any modern browser and web framework (React, Angular, Vue, etc.). 
  :::column-end:::
  :::column span="":::
    **Beautiful but Flexible**

    The components are designed to look and feel like Microsoft365 experiences, but are also customizable using [CSS custom properties](./style.md) and [templating](./templates.md).
  :::column-end:::
:::row-end:::

## Who should use it?

The Microsoft Graph Toolkit is great for developers of all experience levels looking to develop a web application, Microsoft Teams tab, or SharePoint web part that connects to and accesses data from Microsoft Graph.

## Where can I use it?

The Microsoft Graph Toolkit is supported in the following browsers.

|![Edge](images/edgeIcon.png)|![Internet Explorer 11](images/internetExplorerIcon.png)|![Firefox](images/firefoxIcon.png)|![Chrome](images/chromeIcon.png)|![Safari](images/safariIcon.png)|![Opera](images/operaIcon.png)|![Samsung Internet](images/samsungInternetIcon.png)|
|----|----|----|----|----|----|----|
|**Edge**|**IE 11**|**Firefox**|**Chrome**|**Safari**|**Opera**|**Samsung**|

## Next steps

- Try out the components in the [playground](https://mgt.dev).
- [Get started](./get-started/overview.md) with the Microsoft Graph Toolkit.
- Check out the Microsoft Graph Toolkit on [GitHub](https://aka.ms/mgt).
