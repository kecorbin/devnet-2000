# devnet-2000

Scripts used for Cisco Live DEVNET-2000


# Requirements

* Docker
* Postman
* Python3
* Ansible


# Setup

```
pip install -r requirements.txt
```

# Postman Samples

The postman samples are published here.
[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/44d0cd5fc8c7ec70bce9)


# Running the samples

Most of the samples can be ran with [Makefile](./Makefile) targets

## 1. Configure Tenant with Ansible

```
make deploy
```

## 2. ACI Diagram (acitoolkit sample)


```
make diagram
```

## 3. ACI Lint (acitoolkit sample)

```
make lint
```

## 4. WebArya

```
make webarya
```


## Cleanup

```
make clean
```
