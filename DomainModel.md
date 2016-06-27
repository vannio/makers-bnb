## Tables

#### Users
| ID | Email Address | Encrypted Password |
| --- | --- | --- |
| Serial | String | String |

#### Spaces
| ID | Name | Description | Price | User ID
| --- | --- | --- | --- | --- |
| Serial | String | String | Number | Number |

#### Bookings
| ID | Date | Space ID | User ID (of booker) | Approved
| --- | --- | --- | --- | --- |
| Serial | Date | Number | Number | Boolean |

#### Availability
| ID | Space ID | Date |
| --- | --- | --- |
| Serial | Number | Date |


## Space-ships?

### User
**Responsibility**: creates new users
- Form on view page
- Asks for email, password and confirmation of password
- Saves user details to `users` table


### Space
**Responsibility**: creates new spaces
- Form on view page
- Asks for name, description, price per night
- Saves user details to `spaces` table

### Availability
**Responsibility**: saves availability
- Form on view page (checkboxes)
- Checkboxes for individual dates / months
- Saves availability of a space to `availability` table

### Request
**Responsibility**: creates a new request to book
- Allows user to select a date
- Allows user to request a booking
- Delegates to `BookingChecker` to check availability

### BookingChecker
**Responsibility**: checks a space's availability
- checks `availability` table
- checks `bookings` table for existing bookings
- throws error at any point where availability is false
- Delegates to `BookingCreator` when all is valid

### BookingCreator
**Responsibility**: creates a new 'pending' booking
- Creates a new row in the `bookings` table, with `false` in the `approved` column

### ManagePendingBookings
**Responsibility**: approves or rejects bookings
- Loads existing 'pending' bookings
- Approve or reject a booking
