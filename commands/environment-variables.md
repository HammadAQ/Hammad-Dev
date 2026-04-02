---

#  Linux Environment Variables

![Linux](https://img.shields.io/badge/Linux-Environment_Variables-blue?style=for-the-badge\&logo=linux)
![DevOps](https://img.shields.io/badge/DevOps-Configuration-green?style=for-the-badge)

>  A practical guide to understanding environment variables in Linux.
>  Essential for **DevOps automation, scripting, and secure configuration management**.

---

##  What Are Environment Variables?

Environment variables are **key=value pairs** stored in the shell environment.
They are used by the system and applications to store:

* System configuration
* File paths
* User information
* Application settings
* Secrets (API keys, tokens, etc.)

>  They allow you to **avoid hardcoding values** inside scripts.

---

##  Viewing Environment Variables

```bash
# Show all environment variables
env

# Alternative command
printenv

# View specific variables
echo $HOME
echo $PATH
echo $USER
echo $SHELL

# View PATH (important for command execution)
echo $PATH
```

---

##  Setting Environment Variables

###  Temporary Variables (Session Only)

```bash
# Set variables for current session
export MY_NAME="Hammad"
export MY_ROLE="DevSecOps"

# Verify
echo $MY_NAME
```

###  Shell-Only Variable (Not Exported)

```bash
MY_VAR="hello"
```

>  These variables will be lost when the terminal is closed.

---

##  Making Variables Persistent

```bash
# Open bash configuration file
nano ~/.bashrc
```

Add at the bottom:

```bash
export MY_NAME="Hammad"
export MY_ROLE="DevSecOps Engineer"
export PROJECTS_DIR="/home/user/projects"
```

Apply changes:

```bash
source ~/.bashrc
```

Verify:

```bash
echo $MY_NAME
```

---

##  Important Default Variables

| Variable    | Description          | Example                   |
| ----------- | -------------------- | ------------------------- |
| `$HOME`     | User home directory  | `/home/username`          |
| `$USER`     | Current user         | `hammad`                  |
| `$PATH`     | Command lookup paths | `/usr/bin:/usr/local/bin` |
| `$SHELL`    | Active shell         | `/bin/bash`               |
| `$PWD`      | Current directory    | `/home/user/projects`     |
| `$EDITOR`   | Default editor       | `nano`                    |
| `$HOSTNAME` | System hostname      | `ubuntu-server`           |

---

##  Using Variables in Bash Scripts

```bash
#!/bin/bash

# Define variables
APP_NAME="MyDevSecOpsApp"
APP_VERSION="1.0"
ENVIRONMENT="development"

# Use variables
echo "Starting $APP_NAME version $APP_VERSION"
echo "Environment: $ENVIRONMENT"

# Dynamic paths using variables
LOG_DIR="/var/log/$APP_NAME"
echo "Logs stored in: $LOG_DIR"
```

---

##  DevSecOps Importance

> Environment variables are critical for **secure and scalable systems**.

###  Common Mistakes:

* Hardcoding API keys or passwords
* Exposing `.env` files in GitHub
* Not securing environment variables in CI/CD

###  Best Practices:

* Store secrets in environment variables
* Use `.env` files (and add to `.gitignore`)
* Use secret managers (AWS Secrets Manager, Vault)
* Limit access using least privilege

---

##  Learning Progress

*  Understood environment variable concepts
*  Practiced `env`, `printenv`, `echo`
*  Set temporary variables
*  Made variables persistent using `.bashrc`
*  Using variables in automation scripts

---

##  Next Steps

* Learn `.env` file management
* Explore `dotenv` tools
* Use variables in CI/CD pipelines (GitHub Actions, Jenkins)
* Study secret management tools

---

##  Author

**Hammad Ahmed**
Aspiring DevOps Engineer | Linux | Networking | Cloud

---
