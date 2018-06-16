Ansible Project to create entire highly available infrastructure in AWS cloud

Usage: ansible-playbook ec2_site.yml

Following steps are performed after executing this playbook:

  1. Create VPC and subnets

    - 1 custom vpc
    - 2 public subnets and 2 private subnets spread across 2 availability zones
    - 1 Internet Gateway
    - 2 NAT Gateways
    - 2 public routes tables connecting public subnets to Internet gateway
    - 2 private routes tables connecting private subnets to NAT gateways

  2. Provision EC2 instances

    - provision 2 EC2 instances (webservers) in public subnets 
    - provision 2 EC2 instances (databases) in private subnets

  3. Boostrap instances with respective packages

    - install basic packages and apache for 2 webserver instances
    - install basic packages and mysql for 2 database instances

  4. Delete EC2 instances after use (optional)

    - delete 2 EC2 instances (webservers) in public subnets 
    - delete 2 EC2 instances (databases) in private subnets      

  5. Delete VPC and subnets after use (optional)

    - delete custom vpc
    - delete 2 public subnets and 2 private subnets spread across 2 availability zones
    - delete 1 Internet Gateway
    - delete 2 NAT Gateways
    - delete 2 public routes tables connecting public subnets to Internet gateway
    - delete 2 private routes tables connecting private subnets to NAT gateways

 
