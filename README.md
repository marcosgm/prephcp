# This Repo

This is a demo of a prototype that creates a set of Azure Resources as a foundational landing zone. It also has some modules to create application servers using the no-code terraform approach, to provide a devtest environment to developers.

# Infra layer
- Network
- SQL DB with Private Endpoints
- Load Balancer
- NSGs

# DevTest layer
- Storage Account ?
- VM

# Auto-approval
- Configure LB + NSGs to open a new port that fronts the dev VM