---
title: "Person component in the Microsoft Graph Toolkit"
description: "The person component is used to display a person or contact by using their photo, name, and/or email address."
localization_priority: Normal
author: nmetulev
---

# Person component in the Microsoft Graph Toolkit

The person component is used to display a person or contact by using their photo, name, and/or email address.

The person component also uses the [mgt-person-card](./person-card.md) to display a flyout card with additional information about the user. For details, see the [Person Card](#person-card) section.

## Example

The following example displays a person using the `mgt-person` component. You can use the code editor to see how [properties](#properties) change the behavior of the component.

<iframe src="https://mgt.dev/iframe.html?id=components-mgt-person--person&source=docs" height="250"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-person--person&source=docs)

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

## Properties

You can use several properties to customize the component.

| Attribute    | Property   | Description                                                   |
| -----------  | ---------- | ------------------------------------------------------------- |
| show-name    | showName   | Set flag to display person display name - default is `false`. |
| show-email   | showEmail  | Set flag to display person email - default is `false`.        |

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

| Data type     | Data context              | Description                                                       |
| ---------     | ------------------------- | ----------------------------------------------------------------- |
| default     | person: The person details object <br> `personImage`: The URL of the image | The default template replaces the entire component with your own. |
| person-card | person: The person details object <br> `personImage`: The URL of the image | The template to update the mgt-person-card displayed on hover or click. |

The following example defines a template for the person component.

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

## Person Card

The `mgt-person` component can show an `mgt-person-card` on either hover or click.

### Add the control to the HTML page
```html
<mgt-person person-query="me" person-card="hover"></mgt-person>
```

| Attribute    |  Property     | Description                                                                     |
| ------------ | ------------- | ------------------------------------------------------------------------------- |
| person-card | personCard | An enumeration to determine user action necessary to activate flyout panel - `hover` or `click`. Default value is `none` |


For more information about templating, styling, and attributes, see [Person Card component](./person-card.md).

## Microsoft Graph permissions

This control uses the following Microsoft Graph APIs and permissions.

| Resource                                                                                                    | Permission     |
| ----------------------------------------------------------------------------------------------------------- | -------------------- |
| [/me](/graph/api/user-get?view=graph-rest-1.0)                              | User.Read          |
| [/me/photo/$value](/graph/api/profilephoto-get?view=graph-rest-beta)        | User.Read          |
| [/me/people/?$search=](/graph/api/user-list-people?view=graph-rest-1.0)     | People.Read        |
| [/me/contacts/\*](/graph/api/user-list-contacts?view=graph-rest-1.0&tabs=cs) | Contacts.Read      |
| [/users/{id}/photo/$value](/graph/api/user-list-people?view=graph-rest-1.0) | User.ReadBasic.All |

> **Note:** to access the `*/photo/$value` resources for personal Microsoft accounts, use the Microsoft Graph beta endpoint.

## Authentication

The control uses the global authentication provider described in the [authentication documentation](./../providers.md) to fetch the required data.
