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
To develop with the Toolkit, you will need a text editor or IDE. You can use the editor or IDE of your choice or install and use [Visual Studio Code](https://code.visualstudio.com/download) for free. You will also need a modern web browser like Microsoft Edge, Google Chrome, or Firefox.

## Using the Microsoft Graph Toolkit
You can use the Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm package.

### Use via mgt-loader
To use the Toolkit via mgt-loader, add the reference in a script to your code:

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
```

### Use via npm (ES6 modules)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your application. To use the ES6 modules, add the npm package to your project:

```bash
npm install @microsoft/mgt
```
Now you can reference all the components in the page you're using:

```html
<script src="node_modules/@microsoft/mgt/dist/es6/components.js"></script>
```

Or, just reference the component you need and avoid loading everything else:
```html
<script src="node_modules/@microsoft/mgt/dist/es6/components/mgt-login/mgt-login.js"></script>
```

#### Polyfills

If you're using the ES6 modules from the npm package and you're [targeting a browser such as IE11](https://caniuse.com/#search=components) that does not support web components natively, you will need to include polyfills in your project, as they are not automatically included. Polyfills help to fill in missing browser capabilities in browsers that are still in the process of updating to support webcComponent standards. For instructions and to learn more, see [polyfills documentation](https://www.webcomponents.org/polyfills). 

The polyfills are already included if you're using the Toolkit via the mgt-loader script.

## Next Steps
You're now ready to start developing with the Microsoft Graph Toolkit! The following guides are available to help you get started:
- [Build a web application](./build-a-web-app.md) (vanilla JavaScript)
- [Build a SharePoint web part](./build-a-sharepoint-web-part.md)
- [Build a Microsoft Teams tab](./build-a-microsoft-teams-tab.md)
- [Use the Toolkit with React](./use-toolkit-with-react.md)
- [Use the Toolkit with Angular](./use-toolkit-with-angular.md)