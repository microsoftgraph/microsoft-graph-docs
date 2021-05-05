---
title: "Use the Microsoft Graph Toolkit with Electron"
description: "Get started using the Microsoft Graph Toolkit in an Electron application."
localization_priority: Normal
author: amrutha95
---

# Use the Microsoft Graph Toolkit with Electron

This article describes the step-by-step process of using the Microsoft Graph Toolkit to create an Electron app and connect it to Microsoft 365. After completing the steps, you'll have a Electron app that shows the upcoming appointments of the currently signed in user from Microsoft 365.

## Create an Electron app 
Create a new Electron app by cloning the [electron-quick-start-typescript](https://github.com/electron/electron-quick-start-typescript) repository. This will create a new Electron app using TypeScript, which will help you write more robust code and avoid runtime errors.

```cmd
git clone https://github.com/electron/electron-quick-start-typescript
```

Change the working directory to the newly created app and install all dependencies.

```cmd
cd electron-quick-start-typescript
npm install
```

Install the '@microsoft/mgt-components' package that contains all the Microsoft Graph-connected web components.

```cmd
npm i @microsoft/mgt-components
```

Install the `@microsoft/mgt-electron-provider` and `@microsoft/mgt-element` npm packages as well. These will allow you to provide authentication for your app using MSAL and use the Microsoft Graph Toolkit components.

```cmd
npm i @microsoft/mgt-element @microsoft/mgt-electron-provider
```

Confirm that you can run the app.

```cmd
npm start
```

## Create an app/client ID

### Add new application registration in Azure AD to get a client ID

To create an application in Azure Active Directory (Azure AD), you need to add a new application registration, and then configure an app name and redirect URI.

To create the app in Azure AD:

1. Go to the [Azure portal](https://portal.azure.com).
1. From the menu, select **Azure Active Directory**.
1. From the Azure Active Directory menu, select **App registrations**.
1. From the top menu, select the **New registration** button.
1. Enter the name for your app; for example, `My Electron-App`.
1. For the type of [supported account types](/azure/active-directory/develop/single-and-multi-tenant-apps#who-can-sign-in-to-your-app), select **Accounts in any organizational directory (Any Azure AD directory - Multitenant) and personal Microsoft accounts (e.g. Skype, Xbox)**.
1. In the **Redirect URI** field, in the dropdown, select **Public client/native (mobile & desktop)**, and in the URL field, enter `msal://redirect`.
1. Confirm changes by selecting the **Register** button.
1. Go to your application registration.
1. Verify that you are on the **Overview** page.
1. From the **Essentials** section, copy the value of the **Application (client) ID** property.

## Configure the Microsoft Graph Toolkit authentication provider

### Initializing ElectronProvider in your renderer process

The `ElectronProvider` is responsible for communicating with `ElectronAuthenticator` (in the main process) to request access tokens and receive information regarding signed in state that is required for the mgt components to work. 

To initialize the `ElectronProvider`, add the following code to the *src/renderer.ts* file.
```ts
import {Providers} from '@microsoft/mgt-element';
import {ElectronProvider} from '@microsoft/mgt-electron-provider/dist/Provider';
// import the mgt components so we can use them in our html
import '@microsoft/mgt-components';

// initialize the auth provider globally
Providers.globalProvider = new ElectronProvider();
```

### Initializing ElectronAuthenticator in your main process

The `ElectronAuthenticator` is responsible for setting up the configuration variables for MSAL authentication, acquiring access tokens, and communicating with the `ElectronProvider`. Initialize the `ElectronAuthenticator` in the main process and set up the configuration variables such as client ID and required scopes. 

First, open *src/main.ts* and import `ElectronAuthenticator` and  `MsalElectronConfig` from `@microsoft/mgt-electron-provider` at the top of the page.

```ts
import { ElectronAuthenticator, MsalElectronConfig } from '@microsoft/mgt-electron-provider/dist/Authenticator'; 
```
Next, add these lines of code in the `createWindow()` function to initialize the ElectronAuthenticator, right after where `mainWindow` is declared. Replace `<your_client_id>` with the client ID from your app registration.

```ts
const config: MsalElectronConfig = {
  clientId: '<your_client_id>',
  mainWindow: mainWindow, //This is the BrowserWindow instance that requires authentication
  scopes: [
    'user.read',
        'user.read',
        'people.read',
        'user.readbasic.all',
        'contacts.read',
        'presence.read.all',
        'presence.read',
        'user.read.all',
        'calendars.read'
  ],
};
ElectronAuthenticator.initialize(config);
```

### Set nodeIntegration to true
 
In main.ts, where the new instance of BrowserWindow is created, make sure that you set `nodeIntegration` to `true` under webPreferences. If you skip this step, you might run into a ```Uncaught ReferenceError: require is not defined``` error. To keep this simple, remove any preloading scripts.

```ts
const mainWindow = new BrowserWindow({
  height: 600,
  webPreferences: {
    nodeIntegration: true //Set this to true
  },
  width: 800
});
```
 
### Add components to your HTML page
 
Add some content to your app. You can now use the Microsoft Graph toolkit components in your *index.html* page and show the user's agenda. Replace the content of the *index.html* page with the following.
 
 ```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Sample Electron-MGT App</title>
  </head>
  <body>
    <mgt-login></mgt-login>
    <mgt-agenda group-by-day></mgt-agenda>
    <script type="module" src="./dist/renderer.js"></script>
  </body>
</html>
 ```
 >**Note:** Remove any Content-Security-Policy response headers or `meta` tags if you are copying this onto an existing file.
 
 ### Bundle your app using webpack
 
Before you can run the app, you  need to bundle your code to ensure that all your modular dependencies are included in the final payload. If you are already bundling your app code, you can skip this step.
 
 #### Install webpack
 
 ```cmd 
 npm install webpack webpack-cli ts-loader --save-dev
 ```
 
 #### webpack.config.js
 
Create a new *webpack.config.js* file in the root folder of your project, and paste the following configuration.
 
 ```js
 const path = require('path');
 module.exports = [
  {
    mode: 'development',
    entry: './src/renderer.ts',
    target: 'electron-renderer',
    module: {
      rules: [
        {
          test: /\.ts$/,
          include: [/src/],
          use: [{ loader: 'ts-loader' }]
        }
      ]
    },
    output: {
      path: __dirname + '/dist',
      filename: 'renderer.js'
    },
    resolve: {
      extensions: ['.ts', '.js'],
      modules: ['node_modules', path.resolve(__dirname + 'src')]
    }
  },
  {
    mode: 'development',
    entry: './src/main.ts',
    target: 'electron-main',
    module: {
      rules: [
        {
          test: /\.ts$/,
          include: [/src/],
          use: [{ loader: 'ts-loader' }]
        }
      ]
    },
    output: {
      path: __dirname + '/dist',
      filename: 'main.js'
    },
    resolve: {
      extensions: ['.ts', '.js'],
      modules: ['node_modules', path.resolve(__dirname + 'src')]
    }
  }
 ];

 ```
 
 As you can see, the front end (renderer process) and the back-end (main process), are bundled separately. This is because in Electron, the renderer process runs in the browser context and the main process runs in the node context.
 
 #### Add the webpacking script in ```package.json```
 
 Add the following under ```scripts``` in your ```package.json```.
 
 ```json
"scripts": {
   "webpack": "webpack",
   "start": "npm run webpack && electron dist/main.js"
 }                
 ```
 
 #### Run your app
 
 ```cmd
 npm start
 ```

### Add token caching capabilities to your app and enable silent sign ins (advanced)

MSAL Node supports an in-memory cache by default and provides the ICachePlugin interface to perform cache serialization, but does not provide a default way of storing the token cache to disk. If you need persistent cache storage to enable silent sign ins or cross-platform caching, we recommend using the default implementation provided by MSAL Node as an [extension](https://github.com/AzureAD/microsoft-authentication-library-for-js/tree/dev/extensions/msal-node-extensions). You can import this plugin, and pass the instance of the cache plugin while initializing `ElectronAuthenticator`.

```ts
let config: MsalElectronConfig = {
  ...
  cachePlugin: new PersistenceCachePlugin(filePersistence) //filePersistence is the instance of type IPersistence that you will need to create
};
```
For more details about how to implement this, see the [microsoft-authentication-library-for-js](https://github.com/AzureAD/microsoft-authentication-library-for-js/blob/dev/extensions/samples/msal-node-extensions/index.js) sample.

## Next Steps
- Try out the components in the [playground](https://mgt.dev).
- Ask a question on [Microsoft Q&A](/answers/products/m365#microsoft-graph).
- Report bugs or leave a feature request on [GitHub](https://aka.ms/mgt).
