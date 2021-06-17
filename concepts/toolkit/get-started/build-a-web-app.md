---
title: "Build a web application with the Microsoft Graph Toolkit"
description: "Get started building a web application using the Microsoft Graph Toolkit."
localization_priority: Normal
author: elisenyang
---

# Build a web application with the Microsoft Graph Toolkit

This topic describes how to get started with the Microsoft Graph Toolkit in a web application written in vanilla JavaScript. For a step-by-step tutorial, try the [Get started with Microsoft Graph Toolkit module](/learn/modules/msgraph-toolkit-intro/). If you would like to learn how to use the Toolkit with a web framework, see [Build a web app (React)](./use-toolkit-with-react.md) or [Build a web app (Angular)](./use-toolkit-with-angular.md).

Getting started with the Microsoft Graph Toolkit involves the following steps:
1. Add Microsoft Graph Toolkit to your project.
2. Initialize the MSAL 2.0 Provider.
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

## Initialize the MSAL 2.0 Provider
The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The [MSAL 2.0 Provider](../providers/msal2.md) uses msal-browser to sign in users and acquire tokens. You can initialize this provider in your HTML or JavaScript.

> **Note**: If you are currently using MSAL Provider and would like to update to MSAL 2.0 Provider, follow the steps listed [here](../providers/msal2.md#migrating-from-msal-provider-to-msal-2-provider).
If you would like to use your own backend authentication, use the [Proxy Provider](../providers/proxy.md) in place of the MSAL 2.0 provider.

You can choose to initialize the provider in either your HTML or your JavaScript code. 

# [HTML](#tab/HTML)
Add the `mgt-msal2-provider` component to your HTML page and set the `client-id` to your application client-id.

```html
<mgt-msal2-provider client-id="<YOUR_CLIENT_ID"></mgt-msal2-provider>
```
# [JavaScript](#tab/JavaScript)
To initialize the MSAL provider in your JavaScript, add the following code to your application:

```javascript
import {Providers, Msal2Provider} from '@microsoft/mgt'

Providers.globalProvider = new Msal2Provider({
    clientId: "<YOUR_CLIENT_ID>"
})
```

---


The client ID is the only property required to initialize the provider, but you can set additional options. For the full list, see [Msal 2.0 Provider](../providers/msal2.md).

### Creating an app/client ID
In order to get a client ID, you need to [register your application](./add-aad-app-registration.md) in Azure AD. 

## Add components
After you initialize the MSAL 2.0 provider, you can start using any of the Toolkit components.

# [HTML](#tab/HTML)
The following is a full working example using mgt-loader, the MSAL Provider initialized in HTML, and the Login component:

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
<mgt-msal2-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal2-provider>
<mgt-login></mgt-login>
```

This is an example using the ES6 modules, the MSAL 2.0 Provider initialized in HTML, and the Login component:

```html
<script type="module" src="node_modules/@microsoft/mgt/dist/es6/index.js"></script>

<mgt-msal2-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal2-provider>

<mgt-login></mgt-login>
```
# [JavaScript](#tab/JavaScript)
This is an example using the ES6 modules, the MSAL 2.0 Provider initialized in JavaScript, and the Login component:

```javascript
import {Providers, Msal2Provider} from '@microsoft/mgt'

Providers.globalProvider = new Msal2Provider({
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

## Track a user's sign in state

You can detect when a user has successfully signed in and display specific components accordingly. For example, display the agenda component if the user has signed in. Otherwise, display the sign in interface.

You can determine if a user is signed in by evaluating the `globalProvider` and `providerState`.

# [HTML](#tab/HTML)

If you're using the `mgt-loader` library, you can access the `provider` and `providerState` from the `mgt` property.

```html
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<mgt-msal-provider client-id="<YOUR_CLIENT_ID>"></mgt-msal-provider>

<div id="main"><mgt-login></mgt-login></div>

<script>
    const provider = mgt.Providers.globalProvider;
    const isLoggedIn = provider && provider.state === mgt.ProviderState.SignedIn

    // Show the mgt-agenda component ONLY if the user is logged in, show the mgt-login component if not
    function loadAgenda(){
        if(isLoggedIn){
            const main = document.getElementById("main");
            main.innerHTML = `<mgt-agenda></mgt-agenda>`;
        } else {
            main.innerHTML = `<mgt-login></mgt-login>`;
        }
    }

    loadAgenda();
</script>
```

# [JavaScript](#tab/JavaScript)
If you're using the Toolkit via the npm packages, you can import the `provider` and `providerState` from `@microsoft/mgt`.

```javascript
import {Providers, ProviderState} from '@microsoft/mgt'

Providers.globalProvider = new MsalProvider({
    clientId: "<YOUR_CLIENT_ID>"
})

function isLoggedIn(){
    const provider = Providers.globalProvider;
    return provider && provider.state === ProviderState.SignedIn;
}

function loadAgenda(){
    const agenda = document.createElement("mgt-agenda");
    const loginComponent = document.createElement("mgt-login");
    if(isLoggedIn()){
        // the user is logged in, load their agenda
        document.body.innerHTML = `<mgt-agenda></mgt-agenda>`;
    } else {
        // the user is not logged in, show them the login component
        document.body.innerHTML = `<mgt-login></mgt-login>`
    }
}

loadAgenda();
```

---


## Next Steps
- Check out the [Get started with Microsoft Graph Toolkit](/learn/modules/msgraph-toolkit-intro/) step-by-step tutorial.
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).
