---
title: "Person component in the Microsoft Graph Toolkit"
description: "The person component is used to display a person or contact by using their photo, name, and/or email address."
localization_priority: Normal
author: nmetulev
---

# Person component in the Microsoft Graph Toolkit

The person component is used to display a person or contact by using their photo, name, and/or email address. 

## Example

[jsfiddle example](https://jsfiddle.net/metulev/0jkzfr42/)

### Add the control to the HTML page
```html
<mgt-person person-query=""></mgt-person>
```

## Setting the person details

You can use three properties to set the person details. Use only one of the following properties per instance:

* Set the `user-id` attribute or `userId` property to fetch the user from Microsoft Graph by using their ID.  

* Set the `person-query` attribute or `personQuery` property to search Microsoft Graph for a given person. It will choose the first person available and fetch the person details. An email works best to ensure the right person is queried, but a name works as well.

* Set the `person-details` attribute or `personDetails` property to manually set the person details, as shown in the following example.


    ```js
    let personControl = document.getElementById('myPersonControl');
    personControl.personDetails = {
        displayName: 'Nikola Metulev',
        email: 'nikola@contoso.com',
        image: 'url'
    }
    ```

  If no image is provided, one will be fetched (if available).

## Changing how the component looks

You can use several propertiesto customize the component.

| Property | Attribute | Description |
| --- | --- | --- |
| `showName` | `show-name` | Set flag to display person display name - default is `false`. |
| `showEmail` | `show-email` | Set flag to display person email - default is `false`. |

## CSS custom properties

The `mgt-person` component defines the following CSS custom properties.

```css
mgt-person {
  --avatar-size-s: 24px;
  --avatar-size: 48px; // avatar size when both name and email are shown
  --avatar-font-size--s: 16px;
  --avatar-font-size: 32px; // font-size when both name and email are shown
  --avatar-border: 0;
  --initials-color: white;
  --initials-background-color: magenta;
  --font-size: 12px;
  --font-weight: 500;
  --color: black;
  --email-font-size: 12px;
  --email-color: black;
}
```

To learn more, see [styling components](../style.md).

## Templates

The `mgt-person` component supports several [templates](../templates.md) that allow you to replace certain parts of the component. To specify a template, include a `<template>` element inside a component and set the `data-type` value to one of the following:

| Data type | Data context | Description |
| --- | --- | --- |
| `default` | `person`: a person object | The default template replaces the entire component with your own. |

The following example defines a template for the person component:

```html
<mgt-person>
  <template>
    <div data-if="person.image">
      <img src="{{person.image}}" />
    </div>
    <div data-else>
      {{person.displayName}}
    </div>
  </template>
</mgt-person>
```

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Resource | Permission/scope |
| - | - |
| [/me](https://docs.microsoft.com/en-us/graph/api/user-get?view=graph-rest-1.0) | `User.Read` |
| [/me/photo/$value](https://docs.microsoft.com/en-us/graph/api/profilephoto-get?view=graph-rest-beta) | `User.Read` |
| [/me/people/?$search=](https://docs.microsoft.com/en-us/graph/api/user-list-people?view=graph-rest-1.0) | `People.Read` |
| [/me/contacts/*](https://docs.microsoft.com/en-us/graph/api/user-list-contacts?view=graph-rest-1.0&tabs=cs) | `Contacts.Read` |
| [/users/{id}/photo/$value](https://docs.microsoft.com/en-us/graph/api/user-list-people?view=graph-rest-1.0) | `User.ReadBasic.All` |

> [!NOTE]
> to access the `*/photo/$value` resources for personal Microsoft accounts, use the Microsoft Graph beta endpoint.

## Authentication

The control uses the global authentication provider described in the [authentication documentation](./../providers.md) to fetch the required data.
