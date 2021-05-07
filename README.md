# Rally Point
## _Manage Disruption Events and Stay Connected_
### by: Micah L. Olson
### created: 5/7/2021

---
## Project Proposal
### Project's Purpose or Goal: (What will it do for users?)
This is an application for organizations and their members to manage emergency or similar disruption events by allowing organizers to post response and/or continuity plans, communicate alerts and updates for events to members, and provide a check-in process during events for all users to directly share their status as an alternative to the more antiquated call-tree process.

### List the absolute minimum features the project requires to meet this purpose or goal:
* A database to store information for the organization, users, event posts, and response plans
* Full CRUD functionality for organizers to manage their organization, members, and events
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
* Add many-to-many relationship from many members to many organizations
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
* As a Rally Point site admin, I want to create an organization for a new customer and establish their initial organization admin user account(s) 
* As a Rally Point site admin, I want full control of all site functionality, including deletion of organizations when appropriate
* As an organization admin, I want to see a list of all my members and their status
* As an organization admin, I want to add and remove organization members, as well as update their profile details
* As an organization admin, I want to update my organization's details
* As an organization admin, I want to show/update a dashboard with the status of my organization
* As an organization admin, I want to post notices of disruption events impacting members and have alerts automatically sent to them by email and text
* As an organization admin, I want to make continuity plans available to members for different disruption scenarios
* As an organization admin, I want to see the status of members when they check-in during events
* As an organization member, I want to log in and see a dashboard with the status of my organization
* As an organization member, I want to be able to "check-in" with my organization to acknowledge events and update my status (e.g., WFH, in transit, sheltered in place)
* As an organization member, I want to see different scenarios for my organization's continuity plans and select them to see more details
* As an organization member, I want to see a map identifying the physical location of my organizations' rally points
* As an organization member, I want to see an evacuation route to the rally point based on my current location

---

## 5/7/21 Work Log
* 08:00–08:30: Initialize project, review proposal, brainstorm  
* 08:30–09:00: Research wireframing and tools  
* 09:00–09:30: Create user stories  
* 09:30–10:00: Begin information architecture (IA) diagram  
* 10:00–10:30: Continue with IA diagram and initiate wireframe  
* 10:30–11:00: Search for similar apps for inspiration  
  (https://www.criticalarc.com/ | https://www.everbridge.com/)  
* 11:00–11:30: Continue research on similar apps  
  (Everbridge platform demo: https://www.youtube.com/watch?v=mSD-SVLXF18)  
* 11:30–12:00: Move from wireframe to storyboard  
* 01:00–01:30: Continue storyboard, begin Rails Action Mailer research  
  (https://guides.rubyonrails.org/action_mailer_basics.html)  
* 01:30–02:00: Continue Rails Action Mailer research  
  (https://www.youtube.com/watch?v=wN3rD3cggNw)  
* 02:00–02:30: Revert to working on per-page wireframe   
* 02:30–03:00: Brainstorm user roles and plan out organization and user creation process  
* 03:00-03:30: Re-conceive roles to include a Rally Point site admin who will create an organization (customer) and add initial org admins  
* 03:30–04:00: Update user stories and slightly revise proposal  
* 04:00–04:30: Revise information architecture diagram and wireframe  
* 04:30–05:00: Proofread README and add IA diagram and wireframe to repo  

---

## License
[MIT](https://choosealicense.com/licenses/mit/)  
Copyright &copy; 2021 Micah L. Olson  

---

## Contact
Micah via [email](mailto:micah.olson@protonmail.com) | [LinkedIn](https://www.linkedin.com/in/micah-lewis-olson/) | [GitHub](https://github.com/MicahOlson)
