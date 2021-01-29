---
title: "Build a Microsoft Teams tab with the Microsoft Graph Toolkit"
description: "Get started building a Microsoft Teams tab using the Microsoft Graph Toolkit."
localization_priority: Normal
author: elisenyang
---

# Build a Microsoft Teams tab with the Microsoft Graph Toolkit

This topic covers how to get started using the Microsoft Graph Toolkit in a Microsoft Teams solution. Getting started involves the following steps:

1. Create a new Teams application with a custom tab.
2. Set up ngrok and create a tunnel.
3. Add the Microsoft Graph Toolkit.
4. Initialize the Microsoft Teams provider.
5. Create the auth popup page.
6. Add components.
7. Test your app.

## Create a new Teams application with a custom tab

The easiest way to create a new Teams app is to use the [Microsoft Teams Toolkit extension](https://marketplace.visualstudio.com/items?itemName=TeamsDevApp.ms-teams-vscode-extension) for Visual Studio Code. Follow the instructions to [set up a new Teams project](/microsoftteams/platform/toolkit/visual-studio-code-overview#set-up-a-new-teams-project). When you get to the **Add capabilities** screen, select **Tab**, and then **Personal tab**.

## Set up ngrok and create a tunnel

In order to test your application later, you will need to host your application over a public-facing URL using HTTPS. Install [ngrok](https://ngrok.com/download) and create a tunnel from the Internet to localhost:3000 with the following command:

```bash
ngrok http 3000
```
In your project directory, locate the `.publish\Development.env` file and replace the value for `baseUrl0` with your ngrok URL.

## Add the Microsoft Graph Toolkit

You can use the Microsoft Graph Toolkit in your application by referencing the loader directly (via unpkg) or by installing the npm package. To use the Toolkit, you will also need the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest).

### Use via mgt-loader
To use the Toolkit and the Teams SDK via the loaders, add the following references to `public/index.html`:

```html
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>
```

### Use via npm (ES6 modules)
Using the Toolkit via ES6 modules will give you full control of the bundling process and allow you to bundle only the code you need for your application. To use the ES6 modules, add the npm packages for both the Toolkit and the Microsoft Teams SDK to your project:

```bash
npm install @microsoft/mgt @microsoft/teams-js
```

## Initialize the Teams provider

The Microsoft Graph Toolkit providers enable authentication and access to Microsoft Graph for the components. To learn more, see [Using the providers](../providers/providers.md). The [Teams provider](../providers/teams.md) handles all of the logic and interactions that need to be implemented with the Teams SDK to authenticate the user.

You can choose to initialize the provider in either your HTML or your JavaScript code. 

### Initialize in HTML

In `public/index.html`, add the Teams provider as shown.

```html
<mgt-teams-provider
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="https://<YOUR_NGROK_URL>/auth.html"
></mgt-teams-provider>
```

Replace `<YOUR_CLIENT_ID>` with the client ID for your application and `<YOUR_NGROK_URL>` with the ngrok URL you created.

### Initialize in JavaScript

To initialize the provider in your JavaScript code, Locate the `src/components/App.js` file in your project directory. Import the Teams Provider and initialize the provider.

```js
import * as microsoftTeams from "@microsoft/teams-js/dist/MicrosoftTeams";
import { Providers, TeamsProvider } from '@microsoft/mgt';

TeamsProvider.microsoftTeamsLib = microsoftTeams;
Providers.globalProvider = new TeamsProvider ({
    clientId: '<YOUR_CLIENT_ID>',
    authPopupUrl: '/auth.html'
})
```
Replace `<YOUR_CLIENT_ID>` with the client ID for your application.

### Creating an app/client ID
In order to get a client ID, you need to [register your application](../../auth-register-app-v2.md) in Azure AD. Make sure to add your ngrok URL with the full path to the auth popup page to your redirect URIs (for example, `https://<YOUR_NGROK_URL>/auth.html`).
>**Note**: MSAL only supports the Implicit Flow for OAuth. Make sure to enable Implicit Flow in your application in the Azure Portal (it is not enabled by default). Under **Authentication**, find the **Implicit grant** section and select the checkboxes for **Access tokens** and **ID tokens**. 

## Create the auth popup page

In order to allow users to sign in, you need to provide a URL that the Teams app will open in a popup to follow the authentication flow. The URL needs to be in your domain, and all this page needs to do is call the `TeamsProvider.handleAuth()` method.

You can do this in your HTML by adding a new `auth.html` file in the `public` folder (which should be at the same level as `index.html`) and adding the following code: 

```html
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<script>
  mgt.TeamsProvider.handleAuth();
</script>
```

## Add components

Now, you're ready to add any of the Microsoft Graph Toolkit components to your tab. 

You can add components to your HTML as you normally would. For example, to add the Login component add the below code to the body of your `index.html`:

```html
<mgt-login></mgt-login>
```

Or, you can add the components in JSX to the Tab component. We recommend using the `mgt-react` library if you created your Teams app using the Microsoft Teams Toolkit extension. To learn more, see [Using Microsoft Graph Toolkit with React](./use-toolkit-with-react.md)

First, install `mgt-react`:

```bash
npm install @microsoft/mgt-react
```

Locate the `src/components/Tab.js` file and import the components you want to use from the `mgt-react` library. For example to add the `Login` component use:

```js
import { Login } from "@microsoft/mgt-react"
```

Then, add the the component to the `return()` statement of the `render()` method of `Tab`:

```jsx
render() {
  return(
    <Login />
  );
}
```

## Test your application

Build and run your application using the following commands:
```bash
npm install
npm start
```

To test your application, you need to upload your application to Teams. Open the Microsoft Teams client, select the **...** on the left-hand menu and go to **App Studio**. Click the **Manifest Editor** tab and select **Import an existing app**.

Locate your project directory and upload the **Development.zip** file inside of the **.publish** folder.

After your app has loaded, scroll down on the left menu and select **Test and Distribute**. Click the **Install** button and then click **Add**. You will be redirected to the tab you created.

## Next Steps
- Check out this step-by-step tutorial on [building a Teams tab](https://developer.microsoft.com/graph/blogs/a-lap-around-microsoft-graph-toolkit-day-10-microsoft-graph-toolkit-teams-provider/).
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Stack Overflow](https://aka.ms/mgt-question).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).