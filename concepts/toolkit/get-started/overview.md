---
title: "Getting started with the Microsoft Graph Toolkit"
description: "Get started using the Microsoft Graph Toolkit in your application."
localization_priority: Normal
author: elisenyang
---

# Getting started with the Microsoft Graph Toolkit

The Microsoft Graph Toolkit components can easily be added to your web application, SharePoint web part, or Microsoft Teams tabs. The components are based on web standards and can be used in both plain JavaScript projects or with popular web frameworks such as Reach, Angular, Vue.js, and more.

You can watch this short video to see how quick and easy it is to get started with the Toolkit.

> [!VIDEO https://www.youtube-nocookie.com/embed/oZCGb2MMxa0]

## Set up your Microsoft 365 tenant
In order to develop with the Toolkit, you need access to a Microsoft 365 tenant. If you don't have one, you can get a free Microsoft 365 developer subscription by [joining the Microsoft 365 Developer Program](https://developer.microsoft.com/microsoft-365/dev-program). For details about how to configure your subscription, see [Set up a Microsoft 365 developer subscription](/office/developer-program/microsoft-365-developer-program-get-started).

## Set up your development environment
To develop with the Toolkit, you will need a text editor or IDE. You can use the editor or IDE of your choice or install and use [Visual Studio Code](https://code.visualstudio.com/download) for free. You will also need a modern web browser like Microsoft Edge, Google Chrome, or Firefox. You'll also need an LTS version of Node.js, which you can install from [nodejs.org](https://nodejs.org).

## Using the Microsoft Graph Toolkit
You can use the Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm package.

# [unpkg](#tab/html)
To use the Toolkit via mgt-loader, add the reference in a script to your code:

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<mgt-msal-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal-provider>
<mgt-login></mgt-login>
```
# [npm](#tab/npm)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your application. To use the ES6 modules, add the npm package to your project:

```cmd
npm install @microsoft/mgt
```
Now you can reference all the components in the page you're using:

```html
<script type="module" src="node_modules/@microsoft/mgt/dist/es6/index.js"></script>

<mgt-login></mgt-login>
<mgt-agenda></mgt-agenda>
```


---


## NPM packages

The Microsoft Graph Toolkit is made up of several NPM packages, allowing you to only include the code you need for your applications.

<b>@microsoft/mgt-element</b>

The `@microsoft/mgt-element` is the core package that contains only the base classes used for building components and providers. This package exposes all  necessary classes and interfaces needed to build your own components and exports the [IProvider interface and SimpleProvider class](../providers/custom.md) for building custom providers.

<b>@microsoft/mgt-components</b>

The `@microsoft/mgt-components` package contains all Microsoft Graph connected web components, such as `Person`, `PeoplePicker`, and more. 

**Providers**

Providers are available via a single package and can be installed as needed. The following provider packages are available:

- <b>@micosoft/mgt-msal-provider</b>

    [`@micosoft/mgt-msal-provider`](../providers/msal.md) contains the `MsalProvider` and `mgt-msal-provider` component. The msal provider leverages msal.js for authenticating in web apps and PWAs.

-  <b>@microsoft/mgt-teams-provider</b>

    [`@microsoft/mgt-teams-provider`](../providers/teams.md) contains the `TeamsProvider` and `mgt-teams-provider` component. The Microsoft Teams provider enables authentication in Microsoft Teams tab application.

- <b>@microsoft/mgt-sharepoint-provider</b>

    [`@microsoft/mgt-sharepoint-provider`](../providers/sharepoint.md) contains the `SharePointProvider` for authenticating in a SharePoint environment. 

- <b>@microsoft/mgt-proxy-provider</b>

    [`@microsoft/mgt-proxy-provider`](../providers/proxy.md) contains the `ProxyProvider` for application that proxy Graph calls through a backend service. 

<b>@microsoft/mgt</b>

The `@microsoft/mgt` is the main package that includes all above packages and re-exports them so they are available via a single package you can install. 

<b>@microsoft/mgt-react</b>

The [`@microsoft/mgt-react`](./mgt-react.md) package contains all auto-generated React components and takes dependency on the `@microsoft/mgt` package.

## Polyfills

If you're using the ES6 modules from the npm package and you're [targeting a browser such as IE11](https://caniuse.com/#search=components) that does not support web components natively, you will need to include polyfills in your project, as they are not automatically included. Polyfills help to fill in missing browser capabilities in browsers that are still in the process of updating to support Web Component standards. For instructions and to learn more, see [polyfills documentation](https://www.webcomponents.org/polyfills). 

The polyfills are already included if you're using the Toolkit via the mgt-loader script.

## Next Steps
You're now ready to start developing with the Microsoft Graph Toolkit! The following guides are available to help you get started:

- [Register an Azure Active Directory app](./add-aad-app-registration.md)
- [Build a web app (JavaScript)](./build-a-web-app.md) (vanilla JavaScript)
- [Build a web app (React)](./use-toolkit-with-react.md)
- [Build a web app (Angular)](./use-toolkit-with-angular.md)
- [Build a SharePoint web part](./build-a-sharepoint-web-part.md)
- [Build a Microsoft Teams tab](./build-a-microsoft-teams-tab.md)
