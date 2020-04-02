---
title: "Person-Card component in the Microsoft Graph Toolkit"
description: "A Person-Card component is a component to display more information relating to a person."
localization_priority: Normal
author: vogtn
---

# Person-Card component in the Microsoft Graph Toolkit

A Person-Card component is a responsive component to display more information related to a person. It is generally used as a flyout on the `mgt-person` component.

For more information about the `mgt-person` component, see [mgt-person docs](./person.md).

## Example

The following example shows the use of the `mgt-person-card` component with a `mgt-person` component. Hover over the person to see the Person Card and use the code editor to see how [properties](#properties) change the behavior of the component.
  
<iframe src="https://mgt.dev/iframe.html?id=components-mgt-person-card--person-card-hover&source=docs" height="400"></iframe>

[Open this example in mgt.dev](https://mgt.dev/?path=/story/components-mgt-person-card--person-card-hover&source=docs)

## Properties

The component uses Microsoft Graph to provide additional details about the user. To define a user, you must use the **person-query** property of `mgt-person`.

| Attribute         | Type                     | Description                                                                           |
| ---------------- | -------------------------------- | ------------------------------------------------------------------------------------- |
| person-details | MicrosoftGraph.User <br> MicrosoftGraph.Person <br> MicrosoftGraph.Contact | Person object as defined by Microsoft Graph, containing details related to the user. |
| person-image   | png/jpg/svg                    | Image related to the person displayed in the card.                                   |
| inherit-details   | None.                  | Allows person-card to walk parent tree for `mgt-person` component to use the same `person-details` and `person-image` data.                      |


## Templates

The Person-Card component uses [templates](../templates.md) that allow you to add or replace portions of the component. To specify a template, include a `<template>` element inside of a component and set the `data-type` value to one of the following.

| Data type | Data context | Description |
| --- | --- | --- |
| default | `person`: The person details object <br> `personImage`: The URL of the image | The default template replaces the entire component with your own. |
| additional-details | `person`: The person details object <br> `personImage`: the URL of the image | The template used to add additional content to the card. |

For example, you can use a template to customize the component attached to the `mgt-person` component and a template to add additional details in the card. 

```html
    <mgt-person person-query="me" show-name show-email person-card="hover">
      <template data-type="person-card">
        <mgt-person-card inherit-details>
          <template data-type="additional-details">
            <h3>Stuffed Animal Friends:</h3>
            <ul>
              <li>Giraffe</li>
              <li>lion</li>
              <li>Rabbit</li>
            </ul>
          </template>
        </mgt-person-card>
      </template>
    </mgt-person>

```

## CSS custom properties

The `mgt-person-card` component defines the following CSS custom properties.

```css
mgt-person-card {
  --font-size: 14px;
  --font-weight: 600;
  --height: '100%';
  --background-color: transparent;
}
```

To learn more, see [styling components](../style.md).

## Microsoft Graph permissions

This component uses the [Person component](./person.md) to display the user and inherits all permissions. 

## Authentication

The Person-Card control uses the global authentication provider described in the [authentication documentation](./../providers.md). 
