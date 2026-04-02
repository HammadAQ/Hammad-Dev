#  Linux File Permissions & chmod

![Linux](https://img.shields.io/badge/Linux-Security-blue?style=for-the-badge\&logo=linux)
![Level](https://img.shields.io/badge/Level-Beginner_to_Intermediate-green?style=for-the-badge)

>  A practical guide to understanding Linux file permissions and ownership.
>  Essential knowledge for **DevOps, DevSecOps, and System Administration**.

---

##  Permission Structure Explained

Every file in Linux follows a **3-level permission model**:

```
-rwxrwxrwx
│││││││││└─ Others: Execute (x)
││││││││└── Others: Write (w)
│││││││└─── Others: Read (r)
││││││└──── Group: Execute
│││││└───── Group: Write
││││└────── Group: Read
│││└─────── Owner: Execute
││└──────── Owner: Write
│└───────── Owner: Read
└────────── File Type (- = file, d = directory)
```

###  Key Concepts:

* **Owner (User)** → File creator
* **Group** → Users in the same group
* **Others** → Everyone else

---

##  Numeric Permission Values

| Value | Binary | Permission | Meaning         |
| ----- | ------ | ---------- | --------------- |
| `7`   | 111    | `rwx`      | Full access     |
| `6`   | 110    | `rw-`      | Read + Write    |
| `5`   | 101    | `r-x`      | Read + Execute  |
| `4`   | 100    | `r--`      | Read only       |
| `3`   | 011    | `-wx`      | Write + Execute |
| `2`   | 010    | `-w-`      | Write only      |
| `1`   | 001    | `--x`      | Execute only    |
| `0`   | 000    | `---`      | No access       |

---

##  chmod (Change Permissions)

###  Numeric Mode

```bash
# Owner: full access
chmod 700 file.txt

# Owner: read/write, Group: read, Others: none
chmod 640 file.txt

# Read-only for everyone
chmod 444 file.txt

# Full access to everyone (insecure)
chmod 777 file.txt
```

###  Symbolic Mode

```bash
# Add execute permission
chmod +x script.sh

# Remove write permission from all
chmod -w file.txt

# Give group write permission
chmod g+w file.txt

# Remove execute from others
chmod o-x file.txt
```

---

##  chown (Change Ownership)

```bash
# Change file owner
chown username file.txt

# Change owner and group
chown username:groupname file.txt

# Recursive ownership change
chown -R username /folder
```

---

##  Viewing File Permissions

```bash
# List all files with permissions
ls -la

# Check specific file
ls -la file.txt
```

---

##  DevSecOps Importance

> File permissions act as the **first line of defense** in Linux systems.

###  Common Security Mistakes:

* Using `chmod 777` in production
* Giving unnecessary write access
* Misconfigured ownership in services
* Exposed sensitive files (e.g., `.env`, SSH keys)

###  Best Practices:

* Follow **Principle of Least Privilege**
* Use `640` or `600` for sensitive files
* Restrict script execution carefully
* Regularly audit permissions

---

##  Learning Progress

*  Learned permission structure
*  Practiced numeric (`chmod 755`, `644`)
*  Practiced symbolic mode (`+x`, `-w`)
*  Practiced ownership management (`chown`)
*  Applying in real-world scenarios

---

##  Next Steps

* Learn `chmod 755 vs 777` deeply
* Explore `umask`
* Understand **ACL (Access Control Lists)**
* Practice securing real Linux servers

---

##  Author

**Hammad Ahmed**
Aspiring DevOps Engineer | Linux | Networking | Cloud

---
* Add **real-world attack + misconfiguration examples (very important for DevSecOps)**
* Or create a **GitHub repo structure (folders + roadmap + projects)** for you 🚀
