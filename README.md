# chef Node Terraform Code

The Code is intended to spin up Chef Nodes in AWS bootstrapped to a Chef Server, thereby providing a Chef Environment to Play around with

This Terraform code is used to spin up chef nodes that come up and bootstrap themselves the Chef Server
This code can also be used to spin up a Chef Workstation bootstrapped to the Chef Server.
The Chef Workstation would be used to download/create cookbooks, test cookbooks and upload the same to the Chef Server

Requirements
============
Currently the code spins up only ubuntu 14.04 instances on AWS

Usage
=====

terrform init
Copy your AWS key and rename it to mykey.pem
terrform apply -var 'chefserverfqdn=\<https://FQDN_of_Chef_Server\>' -var 'chefserver=internal_ip_address of chef'

Testing
=======

This section needs to be filled
