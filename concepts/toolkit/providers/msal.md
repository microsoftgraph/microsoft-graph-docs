---
title: "MSAL provider"
description: "The MSAL Provider uses MSAL.js to sign in users and acquire tokens to use with the Microsoft Graph"
localization_priority: Normal
author: nmetulev
---

# MSAL provider

The MSAL Provider uses [MSAL.js](https://github.com/AzureAD/microsoft-authentication-library-for-js) to sign in users and acquire tokens to use with the Microsoft Graph.

To learn more, see [providers](../providers.md).

## Get started

You can initialize the MSAL provider in HTML or JavaScript.

### Initialize in your HTML page

Initializing the MSAL provider in HTML is the simplest way to create a new provider. Use the `mgt-msal-provider` component to set the **client-id** and other properties. This will create a new `UserAgentApplication` instance that will be used for all authentication and acquiring tokens.

```html
<mgt-msal-provider client-id="<YOUR_CLIENT_ID>"
                   login-type="redirect/popup"
                   scopes="user.read,people.read"
                   authority=""></mgt-msal-provider>
```

| Attribute | Description |
| --- | --- | --- |
| client-id   | String client ID (see Creating an app/client ID). Required.|
| login-type  | Enumeration between `redirect` and `popup` - default value is `redirect`. Optional. |
| scopes  | Comma separated strings for scopes the user must consent to on sign in. Optional.|
| authority  | Authority string - default is the common authority. Optional.|
| depends-on | Element selector string of another higher priority provider component. Optional. |

### Initialize in JavaScript

You can provide more options by initializing the provider in JavaScript.

```ts
import {Providers, MsalProvider} from '@microsoft/mgt'
import {UserAgentApplication} from "msal";

Providers.globalProvider = new MsalProvider(config: MsalConfig);
```

where MsalConfig is:

```ts
interface MsalConfig {
  clientId: string;
  scopes?: string[];
  authority?: string;
  loginType?: LoginType;
  options?: Configuration; // msal js Configuration object
}
```

You must provide a `clientId` (to create a new `UserAgentApplication`).

To learn more, see the [MSAL documentation](https://github.com/AzureAD/microsoft-authentication-library-for-js/wiki/MSAL-basics).

## Creating an app/client ID

For details about how to register an app and get a client ID, see the [Register an app quick start](/azure/active-directory/develop/quickstart-register-app).

>**Note:** MSAL only supports the Implicit Flow for OAuth. Make sure to enable Implicit Flow in your application in the Azure Portal (it is not enabled by default). Under **Authentication**, find the **Implicit grant** section and select the checkboxes for **Access tokens** and **ID tokens**.
