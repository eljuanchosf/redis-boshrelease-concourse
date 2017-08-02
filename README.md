# redis-boshrelease-concourse
A simple pipeline to deploy Redis with BOSH and Concourse

## Dependencies

* A functioning *BOSH director* working with cloud config enabled.
* A *Concourse* server ready to use.
* Your `fly` CLI ready to use

> This release uses the BOSH CLI v2, which will need a `ca-cert` to work.

## How to use it

### 1. Clone

```
git clone https://github.com/eljuanchosf/redis-boshrelease-concourse.git
```

### 2. Configure

```
cp creds.yml.example creds.yml
cp params.yml.example params.yml
```

Edit both files and change the variables.

### 3. Trigger the job!

```
./trigger.sh my-concourse-target
```
