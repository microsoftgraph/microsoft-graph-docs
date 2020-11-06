---
title: "Microsoft Teams provider"
description: "Use the Teams provider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components."
localization_priority: Normal
author: nmetulev
---

# Microsoft Teams provider

Use the Teams provider inside your Microsoft Teams tab to facilitate authentication and Microsoft Graph access to all components.

To learn more, see [providers](../providers.md).

## Get started

Before using the Teams provider, you will need to make sure you have referenced the [Microsoft Teams SDK](/javascript/api/overview/msteams-client?view=msteams-client-js-latest#using-the-sdk) in your page.

### via script tag
The following example uses the provider in HTML (via CDN).

```html
<!-- Microsoft Teams sdk must be referenced before the toolkit -->
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<mgt-teams-provider
  client-id="<YOUR_CLIENT_ID>"
  auth-popup-url="https://<YOUR-DOMAIN>.com/AUTH-PATH"
  authority=""
></mgt-teams-provider>
```

| Attribute | Description |
| --- | --- |
| client-id   | String client ID (see [Configure your Teams app](#configure-your-teams-app). Required. |
| auth-popup-url  | Absolute or relative path to the page that will handle auth in the popup (see [Create the popup page](#create-the-popup-page)). Required. |
| scopes  | Comma separated strings for scopes the user must consent to on sign in. Optional. |
| depends-on | Element selector string of another higher-priority provider component. Optional. |
| authority    | Authority string. The default is the common authority. For single-tenant apps, use your tenant ID or tenant name. For example, `https://login.microsoftonline.com/[your-tenant-name].onmicrosoft.com` or `https://login.microsoftonline.com/[your-tenant-id]`. Optional. |


### via NPM
The following example uses the provider in JS modules (via NPM).

Make sure to install both the toolkit and the Microsoft Teams SDK.

```bash
npm install @microsoft/mgt @microsoft/teams-js
```

Next, import and use the provider.

```ts
import '@microsoft/teams-js';
import {Providers, TeamsProvider} from '@microsoft/mgt';
Providers.globalProvider = new TeamsProvider(config);
```

where `config` is

```ts
export interface TeamsConfig {
  clientId: string;
  authPopupUrl: string;
  scopes?: string[];
  msalOptions?: Configuration;
}
```

Alternatively, you might need to set the reference to the Microsoft Teams Library. Here is an example:

```ts
import * as MicrosoftTeams from "@microsoft/teams-js/dist/MicrosoftTeams";
import {Providers, TeamsProvider} from '@microsoft/mgt';

TeamsProvider.microsoftTeamsLib = MicrosoftTeams;
Providers.globalProvider = new TeamsProvider(config);
```

For a complete example, see [Microsoft Teams tab sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/master/samples/teams-tab).

## Configure your Teams app

If you're just getting started with Teams apps, see [Add tabs to Microsoft Teams apps](/microsoftteams/platform/concepts/tabs/tabs-overview). You can also use [App Studio](/microsoftteams/platform/get-started/get-started-app-studio) to quickly develop your app manifest.

After you install your app with a tab, and you're ready to use the components, you need to make sure that your app has the right permissions to access Microsoft Graph. To configure your app with the necessary permissions:

1. [Retrieve your domain name](/azure/active-directory/identity-protection/graph-get-started#retrieve-your-domain-name)
2. [Create a new app registration](/azure/active-directory/identity-protection/graph-get-started#create-a-new-app-registration)
3. [Grant your application permission](/azure/active-directory/identity-protection/graph-get-started#grant-your-application-permission-to-use-the-api)

It's important to add the right permission on the **Add API access page**. You will need an administrator to add and approve the permissions, depending on which component you need.

>**Tip:** If you're not sure what permissions to add, see the documentation for each component.

### Enable implicit grant Flow

Make sure to enable implicit grant flow; this is a requirement for web apps that request tokens from the client side. In the Azure Portal, when managing your app registration, edit the manifest and change `oauth2AllowImplicitFlow` to `true`.

### Create the popup page

In order to sign in with your Teams credentials, you need to provide a URL that the Teams app will open in a popup, which will follow the authentication flow. This URL needs to be in your domain, and it needs to call the `TeamsProvider.handleAuth();` method. That's the only thing that this page needs to do. For example:

```html
<script src="https://unpkg.com/@microsoft/teams-js/dist/MicrosoftTeams.min.js" crossorigin="anonymous"></script>
<script src="https://unpkg.com/@microsoft/mgt/dist/bundle/mgt-loader.js"></script>

<script>
  mgt.TeamsProvider.handleAuth();
</script>
```

or via a module referenced in your auth popup page:

```ts
import * as MicrosoftTeams from "@microsoft/teams-js/dist/MicrosoftTeams";
import {Providers, TeamsProvider} from '@microsoft/mgt';

TeamsProvider.microsoftTeamsLib = MicrosoftTeams;
TeamsProvider.handleAuth();
```

### Configure redirect URIs

After you publish this page on your website, you need to use the URL in the `auth-popup-url/authPopupUrl` property. This URL also needs to be configured as a valid redirect URI in your app configuration in the Azure AD portal.
