#  Linux Basic Commands Guide

![Linux](https://img.shields.io/badge/Linux-Basics-blue?style=for-the-badge\&logo=linux)
![Status](https://img.shields.io/badge/Progress-Learning-green?style=for-the-badge)

>  Personal reference guide built while learning Linux system administration from scratch.
>  Designed for beginners and quick revision.

---

##  Navigation Commands

| Command  | Description                                    | Example    |
| -------- | ---------------------------------------------- | ---------- |
| `pwd`    | Display current directory path                 | `pwd`      |
| `ls`     | List files in directory                        | `ls`       |
| `ls -la` | List all files (including hidden) with details | `ls -la`   |
| `cd`     | Change directory                               | `cd /home` |
| `cd ..`  | Move one directory up                          | `cd ..`    |
| `cd ~`   | Navigate to home directory                     | `cd ~`     |
| `clear`  | Clear terminal screen                          | `clear`    |

---

##  File & Directory Commands

| Command  | Description                                      | Example              |
| -------- | ------------------------------------------------ | -------------------- |
| `touch`  | Create an empty file                             | `touch file.txt`     |
| `mkdir`  | Create a new directory                           | `mkdir myfolder`     |
| `cp`     | Copy files/directories                           | `cp file.txt /home`  |
| `mv`     | Move or rename files                             | `mv old.txt new.txt` |
| `rm`     | Remove a file                                    | `rm file.txt`        |
| `rm -rf` | Remove directory and contents (⚠️ Use carefully) | `rm -rf myfolder`    |
| `cat`    | Display file contents                            | `cat file.txt`       |
| `nano`   | Open file in Nano editor                         | `nano file.txt`      |
| `vim`    | Open file in Vim editor                          | `vim file.txt`       |

---

##  Search & Filtering Commands

| Command   | Description              | Example                 |
| --------- | ------------------------ | ----------------------- |
| `find`    | Search files by name     | `find / -name file.txt` |
| `grep`    | Search text inside files | `grep "hello" file.txt` |
| `grep -r` | Recursive search         | `grep -r "hello" /home` |
| `locate`  | Quickly find file paths  | `locate file.txt`       |

---

##  System Monitoring Commands

| Command    | Description                | Example     |
| ---------- | -------------------------- | ----------- |
| `whoami`   | Show current user          | `whoami`    |
| `uname -a` | Display system information | `uname -a`  |
| `top`      | Show real-time processes   | `top`       |
| `ps aux`   | List all running processes | `ps aux`    |
| `kill`     | Terminate a process        | `kill 1234` |
| `df -h`    | Show disk usage            | `df -h`     |
| `free -h`  | Show memory usage          | `free -h`   |
| `uptime`   | Show system uptime         | `uptime`    |

---

##  Networking Commands

| Command    | Description              | Example                |
| ---------- | ------------------------ | ---------------------- |
| `ping`     | Test connectivity        | `ping google.com`      |
| `ifconfig` | Show network interfaces  | `ifconfig`             |
| `ip addr`  | Display IP addresses     | `ip addr`              |
| `netstat`  | Show network connections | `netstat -tulpn`       |
| `curl`     | Transfer data from URL   | `curl google.com`      |
| `wget`     | Download files           | `wget url`             |
| `ssh`      | Remote login to server   | `ssh user@192.168.1.1` |

---

##  Package Management (APT)

| Command            | Description                | Example                |
| ------------------ | -------------------------- | ---------------------- |
| `sudo apt update`  | Update package lists       | `sudo apt update`      |
| `sudo apt upgrade` | Upgrade installed packages | `sudo apt upgrade`     |
| `sudo apt install` | Install a package          | `sudo apt install git` |
| `sudo apt remove`  | Remove a package           | `sudo apt remove git`  |

---

##  Learning Progress

*  **Week 1** — Navigation & File Management
*  **Week 2** — System & Networking
*  **Week 3** — Advanced Commands *(In Progress)*

---

##  Contribution

This is a personal learning project, but suggestions and improvements are welcome!

---

## Author

**Hammad Janjua**
Aspiring DevOps Engineer | Linux | Networking | Cloud

---

