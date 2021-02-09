---
title: "Login component in the Microsoft Graph Toolkit"
description: "A Login component is a button and flyout control to facilitate Microsoft identity platform authentication."
localization_priority: Normal
author: nmetulev
---

# Login component in the Microsoft Graph Toolkit

A Login component is a button and flyout control to facilitate Microsoft identity platform authentication. It provides two states:
* When user is not signed in, the control is a simple button to initiate the sign in process.
* When user is signed in, the control displays the current signed in user name, profile image, and email. When clicked, a flyout is opened with a command to sign out.

## Example

The following example shows the `mgt-login` component with a signed-in user. 

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-login--login&source=docs" height="350"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-login--login&source=docs)

## Using the control without an authentication provider

The component works with a provider and Microsoft Graph out of the box. However, if you want to provide your own logic and authentication, you can use the `userDetails` property to set the signed in user's details. 

| Attribute | Property | Description |
| --- | --- | -- |
| user-details | userDetails | Set the user object that will be displayed on the control. |

The following example sets the person details.

```js
let loginControl = document.getElementById('myLoginControl');
loginControl.userDetails = {
    displayName: 'Nikola Metulev',
    mail: 'nikola@contoso.com',
    personImage: 'url'
}
```

Setting `userDetails` to `null` will go to the signed out state.

Use the `loginInitiated` and `logoutInitiated` events to handle signing in and out. 

## CSS custom properties

The `mgt-login` component defines the following CSS custom properties.

```css
mgt-login {
  --font-size: 14px;
  --font-weight: 600;
  --weith: '100%';
  --height: '100%';
  --margin: 0;
  --padding: 12px 20px;
  --button-color: #201f1e;
  --button-color--hover: var(--theme-primary-color);
  --button-background-color: transparent;
  --button-background-color--hover: #edebe9;
  --popup-background-color: white;
  --popup-command-font-size: 12px;
  --popup-color: #201f1e;
}
```

To learn more, see [styling components](../customize-components/style.md).

## Events

The following events are fired from the control.

| Event | Description |
| --- | --- |
| `loginInitiated` | The user clicked the sign in button to start the login process - cancelable.|
| `loginCompleted` | the login process was successful and the user is now signed in. |
| `loginFailed` | The user canceled the login process or was unable to sign in.|
| `logoutInitiated` | The user started to logout - cancelable. |
| `logoutCompleted` | The user signed out. |

## Templates

The `mgt-login` component supports several [templates](../customize-components/templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the values listed in the following table. 

| Data type | Data context | Description |
| --- | --- | --- |
| signed-in-button-content | personDetails: person object, `personImage`: person image string | The template used to render the content in the button when the user is signed in. |
| signed-out-button-content | null | The template used to render the content in the button when the user is not signed in. |
| flyout-commands | handleSignOut: sign out function | The template used to render the commands in the flyout |
| flyout-person-details | personDetails: person object, personImage: person image string | The template used to render the person details in the flyout. |

## Microsoft Graph permissions

This component uses the [Person component](./person.md) to display the user and inherits all permissions. 

## Authentication

The login control uses the global authentication provider described in the [authentication documentation](../providers/providers.md). 

## Extend for more control

For more complex scenarios or a truly custom UX, this component exposes several `protected render*` methods for override in component extensions.

| Method | Description |
| - | - |
| renderButton | Renders the button chrome. |
| renderButtonContent | Renders the button content. |
| renderSignedInButtonContent | Render the button content when the user is signed in. |
| renderSignedOutButtonContent | Render the button content when the user is not signed in. |
| renderFlyout | Renders the flyout chrome. |
| renderFlyoutContent | Renders the flyout content. |
| renderFlyoutPersonDetails | Render the flyout person details. |
| renderFlyoutCommands | Render the flyout commands. |

### Bring your own flyout

It is possible to use your own flyout component in place of the built-in one, by overriding the `renderFlyout()` method and providing the new flyout.

In this case, ensure the login component continues to work as expected by overriding the `protected` flyout display methods to update the visibility of your alternative flyout.

| Method | Description |
| - | - |
| hideFlyout | Dismisses the flyout. |
| showFlyout | Displays the flyout. |
| toggleFlyout | Toggles the state of the flyout. |
