# Rally Point
## _Manage Disruption Events and Stay Connected_
### by: Micah L. Olson
### created: 5/7/2021

---
## Project Proposal
### Project's Purpose or Goal: (What will it do for users?)
This is an application for organizations and their members to manage emergency, or similar disruption, events by allowing organizers to post response and/or continuity plans, communicate alerts and updates for events to members, and provide a check-in process during events for all users to directly share their status as an alternative to the more antiquated call-tree process.

### List the absolute minimum features the project requires to meet this purpose or goal:
* A database to store information for the organization, users, event posts, and response plans
* Full CRUD functionality for organizers to manage their organizations, members, and events
* Limited RU functionality for members to update their own account details (e.g., contact info, status)
* Authentication and role authorization to limit access of organizers and members solely to their own organization, and members solely to main organization pages and their own accounts
* A UI for users to log in, see or post events depending on role, access or post response plans depending on role, and check-in with their status

### What tools, frameworks, libraries, APIs, modules and/or other resources (whatever is specific to your track, and your language) will you use to create this MVP? List them all here. Be specific.
* Ruby
* Rails
* ERB/HTML
* CSS/SASS
* PostgreSQL

### If you finish developing the minimum viable product (MVP) with time to spare, what will you work on next? Describe these features here: Be specific.
* Improve styling and add responsive design for mobile
* Alert users via email and/or text when a new event has been posted for their organization
* Display a dynamic geographical map to direct members to physical rally points when appropriate
* Feed local disruption event information to organization pages from an API
* Add multiple sites/locations option for organizations, and additional authorization limits to members for these locales
* React front-end

### What additional tools, frameworks, libraries, APIs, or other resources will these additional features require?
* Flexbox and/or Bootstrap
* Rails Action Mailer
* Google Maps (embedded)
* Possible disruption event API being researched
* React, Redux

--- 

## User Stories
* As a leader of an organization, I want to create a manager-role user account that can then create an organization and add member-role users
* As a leader of the organization, I want to show/update a dashboard with the status of my organization at its various locations
* As a leader of the organization, I want to post notices of disruption events impacting members and have alerts automatically sent to them by email and text
* As a leader of the organization, I want to make continuity plans available to members for different disruption scenarios
* As a leader of the organization, I want to see the status of members when they check-in during events
* As a member of the organization, I want to log in and see a dashboard listing all my organizations and their status 
* As a member of the organization, I want to select an organization to see additional information
* As a member of the organization, I want to be able to "check-in" with my organizations to acknowledge events and update my status (e.g., WFH, In-Transit, sheltered in place)
* As a member of the organization, I want to see different scenarios for continuity plans and select them for more details
* As a member of the organization, I want to see a map identifying the physical location of my organizations' rally points
* As a member of the organization, I want to see an evacuation route to the rally point based on my current location

---

## Day 1 Timeline
08:00–08:30: Initialize project, review proposal, brainstorm
08:30–09:00: Research wireframing and tools
09:00–09:30: Create user stories, additional brainstorming
09:30–10:00: Begin information architecture diagram

---

## License
[MIT](https://choosealicense.com/licenses/mit/)  
Copyright &copy; 2021 Micah L. Olson  

---

## Contact
Micah via [email](mailto:micah.olson@protonmail.com) | [LinkedIn](https://www.linkedin.com/in/micah-lewis-olson/) | [GitHub](https://github.com/MicahOlson)
