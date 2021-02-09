---
title: "Build a web application with the Microsoft Graph Toolkit"
description: "Get started building a web application using the Microsoft Graph Toolkit."
localization_priority: Normal
author: elisenyang
---

# Build a web application with the Microsoft Graph Toolkit

This topic describes how to get started with the Microsoft Graph Toolkit in a web application written in vanilla JavaScript. If you would like to learn how to use the Toolkit with a web framework, see [Build a web app (React)](./use-toolkit-with-react.md) or [Build a web app (Angular)](./use-toolkit-with-angular.md).

Getting started with the Microsoft Graph Toolkit involves the following steps:
1. Add Microsoft Graph Toolkit to your project.
2. Initialize the MSAL Provider.
3. Add components.
4. Test your application.

## Add the Microsoft Graph Toolkit to your project
You can use the Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm package.

# [unpkg](#tab/html)
To use the Toolkit via mgt-loader, add the reference in a script to your code:

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
```
# [npm](#tab/npm)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your application. To use the ES6 modules, add the npm package to your project:

```cmd
npm install @microsoft/mgt
```

---


> **Note**: If you're targeting a browser such as IE11 that does not support web components natively, you might need to [include polyfills](./overview.md#polyfills).

## Initialize the MSAL Provider
The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The [MSAL Provider](../providers/msal.md) uses MSAL.js to sign in users and acquire tokens. You can initialize the MSAL provider in your HTML or JavaScript.

If you would like to use your own backend authentication, use the [Proxy Provider](../providers/proxy.md) in place of the MSAL provider.

You can choose to initialize the provider in either your HTML or your JavaScript code. 

# [html](#tab/HTML)
Add the `mgt-msal-provider` component to your HTML page and set the `client-id` to your application client-id.

```html
<mgt-msal-provider client-id="<YOUR_CLIENT_ID"></mgt-msal-provider>
```
# [js](#tab/JavaScript)
To initialize the MSAL provider in your JavaScript, add the following code to your application:

```js
import {Providers, MsalProvider} from '@microsoft/mgt'

Providers.globalProvider = new MsalProvider({
    clientId: "<YOUR_CLIENT_ID>"
})
```

---


The client ID is the only property required to initialize the provider, but you can set additional options. For the full list, see [Msal Provider](../providers/msal.md).

### Creating an app/client ID
In order to get a client ID, you need to [register your application](./add-aad-app-registration.md) in Azure AD. 
>**Note**: MSAL only supports the Implicit Flow for OAuth. Make sure to enable Implicit Flow in your application in the Azure Portal (it is not enabled by default). Under **Authentication**, find the **Implicit grant** section and select the checkboxes for **Access tokens** and **ID tokens**. 

## Add components
After you initialize the MSAL provider, you can start using any of the Toolkit components.

# [html](#tab/HTML)
The following is a full working example using mgt-loader, the MSAL Provider initialized in HTML, and the Login component:

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
<mgt-msal-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal-provider>
<mgt-login></mgt-login>
```

This is an example using the ES6 modules, the MSAL Provider initialized in HTML, and the Login component:

```html
<script type="module" src="node_modules/@microsoft/mgt/dist/es6/index.js"></script>

<mgt-msal-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal-provider>

<mgt-login></mgt-login>
```
# [js](#tab/JavaScript)
This is an example using the ES6 modules, the MSAL Provider initialized in JavaScript, and the Login component:

```js
import {Providers, MsalProvider} from '@microsoft/mgt'

Providers.globalProvider = new MsalProvider({
    clientId: "<YOUR_CLIENT_ID>"
})

function component() {
    const element = document.createElement('div');
    element.innerHTML = '<mgt-login></mgt-login>'
    return element;
}

document.body.appendChild((component()));
```

---


## Test your app

In order to test your app, MSAL requires the page to be hosted in a web server for the authentication redirects. 

If you're just getting started and want to play around, you can use [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) in Visual Studio Code or any similar lightweight development server. Download the extension and open your HTML file using live server. 
> **Note:** Make sure the **redirect URI** in your app registration is set to the localhost port your application is hosted on. Go to your app registration in the [Azure portal](https://portal.azure.com), click **Authentication** under manage, and add the correct **redirect URI**.

## Next Steps
- Check out this step-by-step tutorial on [building a simple web app](https://developer.microsoft.com/microsoft-365/blogs/a-lap-around-microsoft-graph-toolkit-day-2-zero-to-hero/).
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).