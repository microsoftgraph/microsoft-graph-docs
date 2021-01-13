---
title: "MSAL provider"
description: "The MSAL provider uses MSAL.js to sign in users and acquire tokens to use with the Microsoft Graph"
localization_priority: Normal
author: nmetulev
---

# MSAL provider

The MSAL provider uses [MSAL.js](https://github.com/AzureAD/microsoft-authentication-library-for-js) to sign in users and acquire tokens to use with Microsoft Graph.

To learn more, see [providers](./providers.md).

## Get started

You can initialize the MSAL provider in HTML or JavaScript.

### Initialize in your HTML page

Initializing the MSAL provider in HTML is the simplest way to create a new provider. Use the `mgt-msal-provider` component to set the **client-id** and other properties. This will create a new `UserAgentApplication` instance that will be used for all authentication and acquiring tokens.

```html
<mgt-msal-provider client-id="<YOUR_CLIENT_ID>"
                   login-type="redirect/popup"
                   scopes="user.read,people.read"
                   redirect-uri="https://my.redirect/uri"
                   authority=""></mgt-msal-provider>
```

| Attribute    | Description                                                                                                                                                                                                                                                           |
|--------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| client-id    | String client ID (see Creating an app/client ID). Required.                                                                                                                                                                                                           |
| login-type   | Enumeration between `redirect` and `popup` - default value is `redirect`. Optional.                                                                                                                                                                                   |
| scopes       | Comma separated strings for scopes the user must consent to on sign in. Optional.                                                                                                                                                                                     |
| authority    | Authority string - default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-name].onmicrosoft.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |
| redirect-uri | Redirect URI string - by default the current window URI is used. Optional.                                                                                                                                                                                            |
| depends-on   | Element selector string of another higher priority provider component. Optional.                                                                                                                                                                                      |

### Initialize in JavaScript

You can provide more options by initializing the provider in JavaScript.

```ts
import {Providers, MsalProvider} from '@microsoft/mgt'
import {UserAgentApplication} from "msal";

Providers.globalProvider = new MsalProvider(config: MsalConfig);
```

You can configure the `MsalProvider` constructor parameter in two ways, as described in the following sections.

#### Provide a `clientId` to create a new `UserAgentApplication`

This option makes sense when Graph Toolkit is responsible for all authentication in your application.

```ts
interface MsalConfig {
  clientId: string;
  scopes?: string[];
  authority?: string;
  redirectUri?: string;
  loginType?: LoginType; // LoginType.Popup or LoginType.Redirect (redirect is default)
  loginHint?: string
  options?: Configuration; // msal js Configuration object
}
```

#### Pass an existing `UserAgentApplication` in the `userAgentApplication` property.

Use this when your app uses MSAL functionality beyond what's exposed by the `MsalProvider` and other Microsoft Graph Toolkit features. This is particularly appropriate if a framework automatically instantiates and exposes a `UserAgentApplication` for you; for example, when using [msal-angular](https://docs.microsoft.com/azure/active-directory/develop/tutorial-v2-angular).

Be sure to understand opportunities for collisions when using this option. By its very nature, there is a risk that the `MsalProvider` can change the state of a session, for example by having the user sign in or consent to additional scopes. Make sure that your app and other frameworks respond gracefully to these changes in state, or consider using a [custom provider](/graph/toolkit/providers/custom) instead.

```ts
interface MsalConfig {
  userAgentApplication: UserAgentApplication;
  scopes?: string[];
  loginType?: LoginType; // LoginType.Popup or LoginType.Redirect (redirect is default)
  loginHint?: string;
}
```

To learn more about MSAL.js and for additional options you can use when initializing the MSAL library, see the [MSAL documentation](/azure/active-directory/develop/msal-js-initializing-client-applications).

## Creating an app/client ID

For details about how to register an app and get a client ID, see [Create an Azure Active Directory app](../get-started/add-aad-app-registration.md).
