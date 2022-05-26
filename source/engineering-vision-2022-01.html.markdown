---
title: Engineering Vision (2022-01)
---

# Engineering Vision (2022-01)

## Management

Management is there to make room for people to do their jobs, enabling them to do a great job and be proud about that.

Management is there to keep people healthy, to create a place that makes people feel accepted and relevant.

Management serves other team members and shines by making their teams shine.

### Avoiding overpromising

Overpromising hurts motivation, erodes trust and creates unhealthy pressure.

This means that teams must not demo unfinished things that are not available for the respective audience ("Shipped means on production").

The same rule applies for a common problem that arises when following Scrum principles: pretending a planned sprint is a commitment of the team to ship. If taken seriously, team members will vastly over-estimate efforts, in order to protect themselves, or start to work extra hours, which will hurt the team mid-term.

## Organisation

Work is done in autonomous teams that are able to self-organise.

Teams are taking care of functional[^5] *slices* of the system[^1], making a vertical cut through all technological layers.

Intention is to create a sense of *positive ownership* that inspires technical excellence and a sense of achievement.

Ownership is needed to be able to [*iterate*][4] when building up new services or using service communication to create new capabilities.

Teams must be the place where *innovation* starts. This means we need to give team members time and tools they need to be creative and follow their ideas. If things grow bigger or are used in more than one team, topics might be contributed into the Tooling and Platform (see below).

The management's role in this is to

- enable this self-organisation as much as possible;
- give teams the power to make meaningful decisions;
- be available for team members for questions, clarifications or other questions;
- create an atmosphere of trust; and
- make sure technical excellence is valued.

### Cross-Team activities

As much as having universally skilled people is great, specialisation and having preferred parts of the software stack is a reality. To allow people to grow their abilities and stay on top of technological advancements, we must create a place for people to work in technologically organised units across teams. This means we need to give people time and headspace to keep this practice alive.

Management must make sure these cross-team activities are actively done, as the natural tendency is to stay with the teams.

### Demos

Demonstrating working software should play a big role, as being able to demonstrate ensures that the software works, and the ability to explain why it is useful makes sure people think about the context and needs of the business.
At the same time, this can create ownership and creates a place to shine for team members.

## Tooling, Platform

Tools, runtime, common practices and rituals should have collective ownership among teams, allowing to share across teams.

However, a *platform team* should be in place taking care of cross-cutting (across teams) topics. This should (partly) be staffed from within the teams. This is a great place to go deeper technology-wise, as cross-cutting activities need a higher level of abstraction.

List of topics for the platform:

- CI/CD
- Test Coverage
- message bus
- common persistence solution (aka database engine)

The platform should be a convenient default, offering support to others, but not a fixed set of tools that must be used. Teams are allowed and welcome to use different tools – and contribute them into the platform.

Management must make sure Tooling and Platform activities are not side-lined.

## Communication

As teams are working partly (in terms of time) remote, we need to set up the teams as if all work is done remotely, as we cannot make sure people working together can meet in person.
This means we need to foster a culture of written and asynchronous communication. All team members should be capable of writing decent technical documentation.

# Architecture

Standard services are containerised and run inside an environment that is offered as part of the platform[^2].

Architecture is not mainly about the services, it is about how services communicate, interact and integrate with third parties. This means that teams will enjoy a lot of freedom about what's inside a service, but need to be strict about how to communicate. A shared understanding of how services communicate is a key architecture decision.

Following Conway's law[^3], in order to create a system that uses inter-service communication as intended, we must make communication between teams mirror how information should flow thought the system. The power of a microservice setup is depending on the ability of services to communicate. For example, if finding out that another team is offering an API is hard, or if talking to team members of that other team is hard, it is likely that services will start to re-implement functionality, as this is easier than using existing services.

This means having a culture of openness is important. Features must be considered not done if documentation does not meet high, common standards. 
Helping other teams must be made at least as important as delivering for outside stakeholders.

[^1]: A Team should own more than one slice to make it unlikely that technical or business decisions disrupt existing teams by leaving them without a slice.

[^2]: For good reasons, services may choose something else.

[^3]: _Any organization that designs a system (defined broadly) will produce a design whose structure is a copy of the organization's communication structure._ — Melvin E. Conway ([Wikipedia](https://en.wikipedia.org/wiki/Conway%27s_law))

[4]: https://about.gitlab.com/blog/2021/12/01/dont-confuse-these-twelve-shortcuts-with-iteration/

[^5]:in the sense of providing a relevant capability.