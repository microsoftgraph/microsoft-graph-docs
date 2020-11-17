---
title: "Microsoft Teams SSO provider"
description: "Use the Teams SSO provider inside your Microsoft Teams tab to via single sign on (SSO) facilitate authentication and Microsoft Graph access to all components."
localization_priority: Normal
author: simonagren
---

# Microsoft Teams SSO provider

Use the Teams SSO provider inside your Microsoft Teams tab to via single sign on (SSO) facilitate authentication and Microsoft Graph access to all components

The Teams SSO provider will use the Microsoft Teams single sign on flow using the Teams SDK to get a client side access token. It will then pass the required values to your backend for an token exchange (Auth2.0 On-Behalf-Of flow) to get an access token for the requested scopes.

Your backend service must expose an API that enables the token exchange, for every time a component attempts to get a resource.

To learn more, see [providers](../providers.md).

## Get started

Before using the Teams SSO provider, you will need to make sure you have referenced the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest#using-the-sdk) in your page.

### via script tag
The following example uses the provider in HTML (via CDN).

```html
<!-- Microsoft Teams sdk must be referenced before the toolkit -->
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<mgt-teams-sso-provider
  client-id="<YOUR_CLIENT_ID>"
  sso-url="api/token"
  scopes="user.read,people.read...">
</mgt-teams-sso-provider>
```

| Attribute | Description |
| --- | --- |
| client-id   | String client ID (see [Configure your Teams app](#configure-your-teams-app)). **Required**. |
| sso-url  | Absolute or relative path to the base URL for the proxy API. **Required**. |
| scopes  | The scopes that will be used in the application. Required if there's a need to consent. **Required**. |

### via NPM
The following example uses the provider in JS modules (via NPM).

Make sure to install both the toolkit and the Microsoft Teams SDK.

```bash
npm install @microsoft/mgt @microsoft/teams-js
```

Next, import and use the provider.

```ts
import '@microsoft/teams-js';
import {Providers, TeamsSSOProvider} from '@microsoft/mgt';
Providers.globalProvider = new TeamsSSOProvider(config);
```

where `config` is
```ts
export interface TeamsConfig {
  clientId: string;
  ssoUrl: string;
  scopes: string[];
}
```

Alternatively, you might need to set the reference to the Microsoft Teams Library. Here is an example:

```ts
import * as MicrosoftTeams from "@microsoft/teams-js/dist/MicrosoftTeams";
import {Providers, TeamsSSOProvider} from '@microsoft/mgt';

TeamsSSOProvider.microsoftTeamsLib = MicrosoftTeams;
Providers.globalProvider = new TeamsSSOProvider(config);
```

> Note: For a Node example, see [Microsoft Teams SSO Node.js sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/master/samples/teams-sso-node). And if you need more detailed instructions you could read the sample's [Readme](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/master/samples/teams-sso-node/readme.md)


## Configure your Teams SSO app

If you're just getting started with Teams apps, see [Add tabs to Microsoft Teams apps](/microsoftteams/platform/concepts/tabs/tabs-overview). You can also use [App Studio](/microsoftteams/platform/get-started/get-started-app-studio) to quickly develop your app manifest.

After you install your app with a tab, and you're ready to use the components, your must create an Azure AD app registration and configure it to work with Microsoft Teams SSO:

1. [Creat AAD Application](/microsoftteams/platform/tabs/how-to/authentication/auth-aad-sso#1-create-your-aad-application-in-azure)
2. [Configure for Teams SSO](/microsoftteams/platform/tabs/how-to/authentication/auth-aad-sso#registering-your-app-through-the-azure-active-directory-portal-in-depth)

### Enable implicit grant Flow

Make sure to enable implicit grant flow; this is a requirement for web apps that request tokens from the client side. In the Azure Portal, when managing your app registration, edit the manifest and change `oauth2AllowImplicitFlow` to `true`.

### Configure redirect URIs

You need to add a valid redirect URI  in your app configuration in the Azure AD portal. This needs to point to the base of your application, ex: `https://mgtsso.ngrok.io`. This redirect URI will be used if we need to consent to the requested scopes.