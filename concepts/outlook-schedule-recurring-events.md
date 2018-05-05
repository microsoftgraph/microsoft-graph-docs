# Schedule repeating appointments as recurring events in Outlook

Recurring events are an important part of Outlook calendaring. Whether it's a weekly one-on-one meeting with your manager, or a division-wide review meeting that happens on the second Tuesday of each month, recurring events make it easy to create the event once, and let the server fill in the rest of the series.

The key bit of information that allows recurring events to "expand" into individual occurrences is the recurrence rule. The rule specifies both how often an event repeats, and for how long. The Outlook REST APIs model recurrence rules in the **recurrence** property of the [event resource](../api-reference/v1.0/resources/event.md). Each recurrence is made up of two parts: the recurrence pattern (how often), and the recurrence range (for how long).

## Recurrence patterns

The first part of a recurrence is the pattern. This specifies how often the event repeats. For example, an event could repeat "every 3 days", "every Thursday", or "on July 22 every year". A pattern is represented in the API by the [recurrencePattern resource](../api-reference/v1.0/resources/recurrencepattern.md).

Depending on the type of pattern, certain fields of the **recurrencePattern** are required, optional, or ignored.

> **NOTE:** 
> Even if a field is ignored, it is still validated. If a field has a set list of possible values, using a value outside the allowed set will cause an error, even if that field is ignored.

Let's take a look at each of the possible pattern types.

### Daily

The daily recurrence pattern causes an event to repeat based on a number of days between each occurrence.

#### Relevant properties

| Property | Relevance | Description |
|----------|-----------|-------------|
| **interval** | Required | Specifies the number of days between each occurrence. |
| **type** | Required | Must be set to `daily`. |

#### Examples

- Repeat this event every day

    ```json
    "pattern": {
      "type": "daily",
      "interval": 1
    }
    ```
- Repeat this event every three days

    ```json
    "pattern": {
      "type": "daily",
      "interval": 3
    }
    ```

### Weekly

The weekly recurrence pattern causes an event to repeat on the same day or days of the week, based on the number of weeks between each set of occurrences.

#### Relevant properties

| Property | Relevance | Description |
|----------|-----------|-------------|
| **daysOfWeek** | Required | Specifies on which day(s) of the week the event occurs. |
| **firstDayOfWeek** | Optional | Specifies which day is considered the first day of the week. Default value: `Sunday`. |
| **interval** | Required | Specifies the number of weeks between each set of occurrences. |
| **type** | Required | Must be set to `weekly`. |

#### Examples

- Repeat this event every Thursday

    ```json
    "pattern": {
      "type": "weekly",
      "interval": 1,
      "daysOfWeek": [ "Thursday" ]
    }
    ```
- Repeat this event every other Monday and Tuesday

    ```json
    "pattern": {
      "type": "weekly",
      "interval": 2,
      "daysOfWeek": [
        "Monday",
        "Tuesday"
      ]
    }
    ```

### Absolute monthly

The absolute monthly pattern causes an event to repeat on the same day of the month (e.g. the 15th), based on the number of months between each occurrence.

#### Relevant properties

| Property | Relevance | Description |
|----------|-----------|-------------|
| **dayOfMonth** | Required | Specifies on which day of the month the event occurs. |
| **interval** | Required | Specifies the number of months between each occurrence. |
| **type** | Required | Must be set to `absoluteMonthly`. |

#### Examples

- Repeat this event on the 15th of every month

    ```json
    "pattern": {
      "type": "absoluteMonthly",
      "interval": 1,
      "dayOfMonth": 15
    }
    ```
- Repeat this event quarterly (every 3 months) on the 7th

    ```json
    "pattern": {
      "type": "absoluteMonthly",
      "interval": 3,
      "dayOfMonth": 7
    }
    ```

### Relative monthly

The relative monthly pattern causes an event to repeat on the same day of the week in the same relative position in the month, based on the number of months between each occurrence. For example, "every second Wednesday of the month".

#### Relevant properties

| Property | Relevance | Description |
|----------|-----------|-------------|
| **daysOfWeek** | Required | Specifies on which day(s) of the week the event can occur. Relative monthly events only occur once per month, so if more than one value is specified, the event falls on the first day that satisfies the pattern. |
| **index** | Optional | Specifies on which instance of the allowed days specified in **daysOfsWeek** the event occurs, counted from the first instance in the month. Possible values: `first`, `second`, `third`, `fourth`, and `last`. Default value: `first`. |
| **interval** | Required | Specifies the number of months between each occurrence. |
| **type** | Required | Must be set to `relativeMonthly`. |

#### Examples

- Repeat this event on the second Wednesday of every month

    ```json
    "pattern": {
      "type": "relativeMonthly",
      "interval": 1,
      "daysOfWeek": [ "Wednesday" ],
      "index": "second"
    }
    ```
- Repeat this event on the first Thursday or Friday of every month

    ```json
    "pattern": {
      "type": "relativeMonthly",
      "interval": 1,
      "daysOfWeek": [ "Thursday", "Friday" ],
      "index": "first"
    }
    ```

### Absolute yearly

The absolute yearly pattern causes an event to repeat on the same month and day (e.g. April 15th), based on the number of years between each occurrence.

#### Relevant properties

| Property | Relevance | Description |
|----------|-----------|-------------|
| **dayOfMonth** | Required | Specifies on which day of the month the event occurs. |
| **month** | Required | Specifies in which month the event occurs. |
| **interval** | Required | Specifies the number of years between each occurrence. |
| **type** | Required | Must be set to `absoluteYearly`. |

#### Example

- Repeat this event on April 15 every year

    ```json
    "pattern": {
      "type": "absoluteYearly",
      "interval": 1,
      "dayOfMonth": 15,
      "month": 4
    }
    ```

### Relative yearly

The relative yearly pattern causes an event to repeat on the same day of the week in the same relative position in a specific month, based on the number of years between each occurrence. For example, "every last Wednesday of November".

#### Relevant properties

| Property | Relevance | Description |
|----------|-----------|-------------|
| **daysOfWeek** | Required | Specifies on which day(s) of the week the event can occur. Relative yearly events only occur once per year, so if more than one value is specified, the event falls on the first day that satisfies the pattern. |
| **index** | Optional | Specifies on which instance of the allowed days specified in **daysOfsWeek** the event occurs, counted from the first instance in the month. Possible values: `first`, `second`, `third`, `fourth`, and `last`. Default value: `first`. |
| **month** | Required | Specifies in which month the event occurs. |
| **interval** | Required | Specifies the number of years between each occurrence. |
| **type** | Required | Must be set to `relativeMonthly`. |

#### Examples

- Repeat this event on the last Wednesday of November every year

    ```json
    "pattern": {
      "type": "relativeYearly",
      "interval": 1,
      "daysOfWeek": [ "Wednesday" ],
      "index": "last",
      "month": 11
    }
    ```

## Recurrence ranges

The second part of a recurrence is the range. This specifies how long the pattern repeats. For example, an event could end after 10 occurrences, by a specific date, or could have no end. A range is represented in the API by the [recurrenceRange resource](../api-reference/v1.0/resources/recurrencepattern.md).

Depending on the type of range, certain fields of **recurrenceRange** are required or ignored.

> **NOTE:**
> Even if a field is ignored, it is still validated. If a field has a set list of possible values, using a value outside the allowed set will cause an error, even if that field is ignored.

Let's take a look at each of the possible range types.

### Numbered range

The numbered range causes an event to occur a fixed number of times (based on the pattern) from a start date.

#### Relevant properties

| Property | Relevance | Description |
|----------|-----------|-------------|
| **numberOfOccurences** | Required | Specifies the number of occurrences. Must be a positive integer. |
| **recurrenceTimeZone** | Optional | Specifies the time zone for the **startDate** property. If not specified, the time zone of the event is used. |
| **startDate** | Required | Specifies the date to start applying the pattern. The value of **startDate** MUST correspond to the date value of the **start** property on the [event resource](../api-reference/v1.0/resources/event.md). Note that the first occurrence of the meeting may not occur on this date if it does not fit the pattern. |
| **type** | Required | Must be set to `numbered`. |

#### Examples

- Repeat this event 10 times

    ```json
    "range": {
      "type": "numbered",
      "startDate": "2017-04-02",
      "numberOfOccurrences": 10
    }
    ```

### End date range

The end date range causes an event to occur on all days that fit the applicable pattern between a start date and an end date.

#### Relevant properties

| Property | Relevance | Description |
|----------|-----------|-------------|
| **endDate** | Required | Specifies the date to stop applying the pattern. Note that the last occurrence of the meeting may not occur on this date if it does not fit the pattern. |
| **recurrenceTimeZone** | Optional | Specifies the time zone for the **startDate** and **endDate** properties. If not specified, the time zone of the event is used. |
| **startDate** | Required | Specifies the date to start applying the pattern. The value of **startDate** MUST correspond to the date value of the **start** property on the [event resource](../api-reference/v1.0/resources/event.md). Note that the first occurrence of the meeting may not occur on this date if it does not fit the pattern. |
| **type** | Required | Must be set to **endDate**. |

#### Examples

- Repeat this event from July 1 2017 to July 31 2017

    ```json
    "range": {
      "type": "endDate",
      "startDate": "2017-07-01",
      "endDate": "2017-07-31"
    }
    ```

### No end range

The no end range causes an event to occur on all days that fit the applicable pattern after a start date.

#### Relevant properties

| Property | Relevance | Description |
|----------|-----------|-------------|
| **recurrenceTimeZone** | Optional | Specifies the time zone for the **startDate** property. If not specified, the time zone of the event is used. |
| **startDate** | Required | Specifies the date to start applying the pattern. The value of **startDate** MUST correspond to the date value of the **start** property on the [event resource](../api-reference/v1.0/resources/event.md). Note that the first occurrence of the meeting may not occur on this date if it does not fit the pattern. |
| **type** | Required | Must be set to `noEnd`. |

#### Examples

- Repeat this event from May 15 2017 forever

    ```json
    "range": {
      "type": "noEnd",
      "startDate": "2017-05-15"
    }
    ```

## Using patterns and ranges to create recurring events

Now that we've looked at patterns and ranges separately, let's look at how they work together and how they interact with the **start** and **end** properties on the event.

### Creating a recurrence rule

In order to create a recurrence rule, you must specify both a pattern and a range. Any pattern type can work with any range type. Here are a couple of examples.

- **Meet from 1:00 PM to 1:30 PM every Monday starting September 4, 2017 until the end of the year**

    - The "every Monday" requirement is easily met by the `weekly` recurrence pattern type.
    - The "until the end of the year" requirement indicates an `endDate` recurrence range type.

    ```json
    "recurrence": {
      "pattern": {
        "type": "weekly",
        "interval": 1,
        "daysOfWeek": [ "Monday" ]
      },
      "range": {
        "type": "endDate",
        "startDate": "2017-09-04",
        "endDate": "2017-12-31"
      }
    }
    ```

    Because December 31, 2017 is on a Sunday, the last occurrence in this series will be on Monday, December 25.

- **Meet from 2:00 PM to 3:00 PM on the first Thursday of every other month starting August 29, 2017**

    - The "first Thursday of every other month" requirement is achievable using a relative monthly pattern. The "every other month" portion indicates the **interval** should be set to `2`.
    - Since there is no requirement on an end date, a `noEnd` range type can be used.

    ```json
    "recurrence": {
      "pattern": {
        "type": "relativeMonthly",
        "interval": 2,
        "daysOfWeek": [ "Thursday" ],
        "index": "first"
      },
      "range": {
        "type": "noEnd",
        "startDate": "2017-08-29"
      }
    }
    ```

    Because the value of **startDate** is after the first Thursday in August, the first occurrence of this series will be in September.

## Next steps
    
Find out more about [integrating with Outlook calendar](outlook-calendar-concept-overview.md).
