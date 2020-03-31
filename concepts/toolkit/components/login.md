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
    email: 'nikola@contoso.com',
    profileImage: 'url'
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
  --height: '100%';
  --margin: 0;
  --padding: 12px 20px;
  --color: #201f1e;
  --color-hover: var(--theme-primary-color);
  --background-color: transparent;
  --background-color--hover: #edebe9;
  --popup-content-background-color: white;
  --popup-command-font-size: 12px;
  --popup-color: #201f1e;
}
```

To learn more, see [styling components](../style.md).

## Events

The following events are fired from the control.

| Event | Description |
| --- | --- |
| `loginInitiated` | The user clicked the sign in button to start the login process - cancelable.|
| `loginCompleted` | the login process was successful and the user is now signed in. |
| `loginFailed` | The user canceled the login process or was unable to sign in.|
| `logoutInitiated` | The user started to logout - cancelable. |
| `logoutCompleted` | The user signed out. |

## Microsoft Graph permissions

This component uses the [Person component](./person.md) to display the user and inherits all permissions. 

## Authentication

The login control uses the global authentication provider described in the [authentication documentation](./../providers.md). 
