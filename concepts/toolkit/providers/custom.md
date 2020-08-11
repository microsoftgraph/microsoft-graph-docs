---
title: "Custom provider"
description: "Create a custom provider to enable authentication and graph access for the Microsoft Graph Toolkit components, if you have existing authentication code in your application."
localization_priority: Normal
author: nmetulev
---

# Custom provider

If you have existing authentication code in your application, you can create a custom provider to enable authentication and access to Microsoft Graph for Microsoft Graph Toolkit components. There are two ways to create custom providers:

- Create a new `SimpleProvider` by passing in a function for getting an access token
- Extend the `IProvider` abstract class

This article describes each approach in more detail.

## SimpleProvider

Instantiate the `SimpleProvider` class by passing in a function that will return an access token for passed-in scopes.

```ts
let provider = new SimpleProvider((scopes: string[]) => {
  // return a promise with accessToken
});
```

In addition, you can also provide an optional `login` and `logout` functions that can handle the sign in and sign out calls from the [Login](../components/login.md) component.

```ts
function getAccessToken(scopes: string[]) {
  // return a promise with accessToken string
}

function login() {
  // login code
}

function logout() {
  // logout code
}

let provider = new SimpleProvider(getAccessToken, login, logout);
```

### Manage state

For the components to be aware of the state of the provider, you will need to call the `provider.setState(state: ProviderState)` method whenever the state changes. For example, when the user has signed in, call `provider.setState(ProviderState.SignedIn)`. The `ProviderState` enum defines three states, as shown.

```ts
export enum ProviderState {
  Loading,
  SignedOut,
  SignedIn
}
```

## IProvider

You can extend the `IProvider` abstract class to create your own provider.

### State

A provider must keep track of the authentication state and update the components when the state changes. The `IProvider` class already implements the `onStateChanged(eventHandler)` handler and the `state: ProviderState` property. You just need to use the `setState(state:ProviderState)` method in your implementation to update the state when it changes. Updating the state will fire the `stateChanged` event and update all the components automatically.

### Login/Logout

If your provider provides login or logout functionality, implement the `login(): Promise<void>` and `logout(): Promise<void>` methods. These methods are optional.

### Access token

You must implement the `getAccessToken({'scopes': scopes[]}) : Promise<string>` method. This method is used to get a valid token before every call to Microsoft Graph.

### Graph

The components use the Microsoft Graph Javascript SDK for all calls to Microsoft Graph. Your provider must make the SDK available through the `graph` property. In your constructor, create a new `Graph` instance, as shown.

```js
this.graph = new Graph(this);
```

The `Graph` class is a light wrapper on top of the Microsoft Graph SDK.

### Example

All the providers extend the `IProvider` abstract class. For examples, take a look at the source code for any of the [existing providers](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/main/packages/mgt/src/providers).

## Set the global provider

Components use the `Providers.globalProvider` property to access a provider. After you create your own provider, set this property to your provider.

```ts
import { Providers } from '@microsoft/mgt';

Providers.globalProvider = myProvider;
```

All the components will be notified of the new provider and start using it.
