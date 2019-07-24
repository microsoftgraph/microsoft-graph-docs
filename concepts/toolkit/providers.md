---
title: "Microsoft Graph Toolkit providers"
description: "The Microsoft Graph Toolkit providers enable authentication and Microsoft Graph access for all components."
localization_priority: Normal
author: nmetulev
---

# Microsoft Graph Toolkit providers

The Microsoft Graph Toolkit providers enable authentication and Microsoft Graph access for all components. Each provider provides implementation for acquiring the necessary access token for calling the Microsoft Graph APIs.

For the components to use a provider, you must set the `Providers.globalProvider` property to the value for a provider you'd like to use.

The following example shows how to use the MsalProvider.

```js
Providers.globalProvider = new MsalProvider({
  clientId: '[CLIENT_ID]'
});
```

The toolkit implements the following providers:

- [MsalProvider](./providers/msal.md)
- [SharePointProvider](./providers/sharepoint.md)
- [TeamsProvider](./providers/teams.md)
- Office Add-ins provider (coming soon)

## Get started

You can create a provider at any time. We recommend that you create the provider before you use any of the components. This section describes how to initialize a provider.

The `Providers` global variable exposes the following properties and functions

- `globalProvider : IProvider`

Set this property to a provider that you want to use globally. All components use this property to get a reference to the provider. Setting this property will fire the `onProvidersChanged` event.

- `function onProviderUpdated(callbackFunction)`

The `callbackFunction` function will be called when a provider is changed or when the state of a provider changes. A `ProvidersChangedState` enum value will be passed to the function to indicate what updated.

## Implement your own provider

The toolkit provides two ways to create new providers:

- Create a new `SimpleProvider` by passing in a function for getting an access token
- Extend the `IProvider` abstract class

Read more about each one in the [custom providers](./providers/custom.md) documentation.

## Making your own calls to Microsoft Graph

All components can access Microsoft Graph without any customization required as long as you initialize a provider (as described in the previous section). To get a reference to the same Microsoft Graph SDK used by the components, first get a reference to the global IProvider and then use the `Graph` object, as shown.

```js
import { Providers } from '@microsoft/mgt';

let provider = Providers.globalProvider;
if (provider) {
  let graphClient = provider.graph.client;
  let userDetails = await graphClient.api('me').get();
}
```

There might be cases were you will need to pass additional permissions, depending on the API you're calling.

```js
import { prepScopes } from '@microsoft/mgt';

graphClient
  .api('me')
  .middlewareOptions(prepScopes('user.read', 'calendar.read'))
  .get();
```

The `graph` object is an instance of the [Microsoft Graph Javascript SDK](https://github.com/microsoftgraph/msgraph-sdk-javascript) and you can use it to make any calls to Microsoft Graph.
