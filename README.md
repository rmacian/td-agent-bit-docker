# td-agent-bit-docker
Docker image to run td-agent-bit for testing purposes

# Deployment with ansible

## Enable virtualenv ##
```
yum install python-virtualenv
mkdir -p ~/.config/pip/
virtualenv /home/user/virtualenvs/ansible-2.9
source /home/user/virtualenvs/ansible-2.9/bin/activate
```
## Pip dependencies ##

Install dependencies
```
 pip install -r requirements.txt 
```

## login to kubernetes/openshift with your credentials

## Test your code
```
ansible-playbook -i inventory/hosts td-agent-bit.yaml --check  --diff
```
