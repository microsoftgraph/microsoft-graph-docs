---
title: "Templates in the Microsoft Graph Toolkit"
description: "Use custom templates to modify the content of a component."
localization_priority: Normal
author: nmetulev
---

# Templates in the Microsoft Graph Toolkit

Use custom templates to modify the content of a component.

All web components support templates based on the `<template>` element. For example, to override the template of a component, add a `<template>` element inside a component.

```html
<mgt-agenda>
  <template data-type="event">
      <div>{{event.subject}}</div>
      <div data-for='attendee in event.attendees'>
          <mgt-person person-query="{{attendee.emailAddress.name}}">
            <template>
              <div data-if="person.image">
                <img src="{{person.image}}" />
              </div>
              <div data-else>
                {{person.displayName}}
              </div>
            </template>
          </mgt-person>
      </div>
  </template>
</mgt-agenda>
```

## Data-type

Each component can have multiple parts that can be templated. For example, in the `mgt-agenda` component, you can template individual events, individual section headers, loading view, no data view, and more. To indicate the template, use the `data-type` attribute on a template. For example, to template each event in the `mgt-agenda`, use the `event` data-type, as shown.

```html
<mgt-agenda>
  <template data-type="event"> </template>
</mgt-agenda>
```

If no `data-type` is specified, the entire component will be replaced with the template. You can also use `data-type="default"` for the same purpose.

## Binding data

Many templates allow binding of data that is passed to the template as data context. For example, the `event` template in the `mgt-agenda` component passes an `{event}` object that can be used directly in the template. To expand an expression, such as `event.subject`, use the double curly brackets.

```html
<template data-type="event">
  <div>{{event.subject}}</div>
</template>
```

This format can also be used inside of attributes:

```html
<template data-type="event">
  <a href="{{ event.onlineMeetingUrl }}" />
</template>
```

> **Note:** You can also expand objects such as `{{event}}` and they will render as JSON strings. This can be useful when you're developing the templates.

## Data context helper properties

The following properties can also be used with the data context object in your templates.

| Property |  Description |
| --- | --- | --- |
| $index | Numerical index of item being rendered while being looped with `data-for`. |
| $parent | If a template is rendered inside another template, this property allows you to access the parent data context. |

The following example shows how to use the `$index` property in a data-for loop.

```html
<mgt-person>
  <mgt-person-card>
    <template data-type="additional-details">
      <span data-for="language in languages">
        {{ language.displayName }}<span data-if="$index < languages.length - 1">, </span>
      </span>
    </template>
  </mgt-person-card>
</mgt-person>
```

## Conditional rendering

You might only want to render elements when a condition is true or false based on the data context. The `data-if` and `data-else` attributes can evaluate an expression and render only if true or false.

```html
<mgt-person person-query="john doe">
  <template>
    <div data-if="person.image">
      <img src="{{ person.image }}" />
    </div>
    <div data-else>
      {{ person.displayName }}
    </div>
  </template>
</mgt-person>
```

## Looping

There will be cases where the data context object contains loop and you will need to loop over the data. For this scenario, use the `data-for` attribute.

```html
<template data-type="event">
  <ul>
    <li data-for='attendee in event.attendees'>
      {{ attendee.displayName }}
    </li>
  </ul>
</template>
```

## Converters

In many cases, you might want to transform the data before presenting it in the template. For example, you might want to properly format a date before it is rendered. In these cases, you might want to use a template converter.

To use a template converter, you first need to define a function that will do the conversion. For example, you might define a function to format a date.

```ts
getTimeRange(event) {
  // TODO: format a string from the event object as you wish
  // timeRange = ...

  return timeRange;
}
```

Then define a new converter on the element and name it as you see fit.

```ts
let agenda = document.querySelector('mgt-agenda');
agenda.templateConverters["myConverter"] = getTimeRange;
```

To use the converter in your template, use the triple curly brackets.

```html
<template data-type="event">
  <div>{{{ myConverter(event) }}}</div>
</template>
```

You can also use built-in functions without defining template converter.

```html
<template data-type="event">
  <div>{{{ event.subject.toUpperCase() }}}</div>
</template>
```

## Template Rendered Event

In certain cases, you might want to get a reference to the rendered element. This can be useful for adding event listeners to elements in the template. In this scenario, you might use the `templateRendered` event.

```ts
let agenda = document.querySelector('mgt-agenda');
agenda.addEventListener('templateRendered', (e) => { });
```

The event details will contain reference to the element that is being rendered, the data context object, and the type of the template.

```ts
agenda.addEventListener('templateRendered', (e) => { 
  let templateType = e.detail.templateType;
  let dataContext = e.detail.context;
  let element = e.detail.element;

  if (templateType === 'event') {
    element.querySelector('.some-button').addEventListener('click', () => {});
  }
});
```

## Styling

The templates can be styled normally via CSS as they are rendered outside of the shadow dom.
