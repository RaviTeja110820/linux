# linux
# 🖥️ Operating System (OS)

An **Operating System (OS)** is a **system software** that acts as a bridge between the **computer hardware** and the **user/programs**.  
It manages resources, provides services to applications, and ensures the system works efficiently.

---

## 📌 Key Functions of an OS

1. **Process Management**
   - Creates, schedules, and terminates processes (running programs).
   - Example: Running browser + text editor simultaneously.

2. **Memory Management**
   - Allocates RAM to programs and reclaims it when no longer needed.
   - Handles **virtual memory** (swap between RAM and disk).

3. **File System Management**
   - Organizes, reads, and writes files on storage devices (SSD, HDD).
   - Provides file permissions (read/write/execute).

4. **Device Management**
   - Manages input/output devices (keyboard, mouse, printer, disk).
   - Uses **drivers** to communicate with hardware.

5. **Security & Access Control**
   - User authentication and authorization.
   - Process isolation & file-level permissions.

6. **User Interface**
   - **CLI (Command Line Interface):** e.g., Linux terminal.
   - **GUI (Graphical User Interface):** e.g., Windows, macOS.

---

## 📌 Examples of Operating Systems

- **Desktop / Laptop:** Windows, Linux, macOS  
- **Mobile:** Android, iOS  
- **Server:** Ubuntu Server, CentOS, RHEL  
- **Embedded:** FreeRTOS, VxWorks  

---

## 📌 Importance in DevOps

- Most **servers, containers, and cloud platforms** (AWS EC2, Docker, Kubernetes) run on **Linux OS**.  
- Strong knowledge of Linux commands, process management, and networking is essential for DevOps engineers.  

---

## 📌 (Optional) Types of Operating Systems

1. **Batch OS** → Executes jobs in batches (no user interaction).  
2. **Time-Sharing / Multitasking OS** → Multiple users/programs share CPU (Linux, Windows).  
3. **Distributed OS** → Runs on multiple machines but appears as one system (cluster systems).  
4. **Real-Time OS (RTOS)** → Immediate response to input; used in embedded systems.  

---

## 📌 OS Architecture (Simplified)

```
+-------------------+
|   User / Apps     |  ← GUI / CLI, Applications
+-------------------+
|        OS         |  ← System Libraries, Utilities, Kernel
+-------------------+
|  Hardware Layer   |  ← CPU, Memory, Storage, Devices
+-------------------+

```

---

## 📌 Core Responsibilities of an OS

1. **Process Management**  
   - Handles creation, scheduling, and termination of processes.  

2. **Application Management**  
   - Provides system calls and APIs for applications to run.  

3. **Network Management**  
   - Manages network protocols, connections, and communication.  

4. **Device Management**  
   - Uses drivers to control hardware devices (keyboard, disk, printer).  

5. **Memory & Storage Management**  
   - Allocates RAM and manages virtual memory.  
   - Organizes files on storage systems.  

---

## 📌 Linux OS in DevOps

Popular Linux distributions:  
- **Red Hat**, **Ubuntu**, **Fedora**, **Amazon Linux**, **BusyBox**, **Alpine**

### Why Linux is Preferred:
- ✅ Open Source (free & customizable)  
- ✅ Secure and stable  
- ✅ Most DevOps tools & servers run on Linux  
- ✅ Easy to set up & widely supported  
- ✅ Helps in automation (shell scripting, cron, Ansible, etc.)  

---

## 📌 Daemons in Linux

- **Daemons** are background processes that run continuously.  
- Provide specific services (e.g., `sshd` for SSH, `httpd` for Apache server).  
- Usually end with `d` in their name.  

---

# 🧠 Linux System Boot & Architecture Components

Understanding how Linux boots and how its components work is important in **DevOps** for troubleshooting, automation, and system administration.

---

## ⚙️ 1. BIOS (Basic Input/Output System)
- The **first program** that runs when you power on your computer.
- Stored in the motherboard’s firmware.
- Performs **POST (Power-On Self-Test)** to check hardware (RAM, CPU, disks, etc.).
- Finds and loads the **bootloader** from the configured storage device (HDD, SSD, USB).

---

## 🚀 2. Boot Loader
- A small program responsible for **loading the Linux kernel** into memory.
- Examples: **GRUB (GRand Unified Bootloader)**, **LILO**, **systemd-boot**.
- Displays a boot menu where you can select the OS or kernel version.

---

## 🧩 3. Kernel
- The **core part of Linux** that manages:
  - CPU scheduling  
  - Memory management  
  - Device drivers  
  - File systems  
  - Process control
- The kernel initializes the **root filesystem** and starts the **init system** (PID 1).
- It acts as a bridge between **hardware** and **user applications**.

---

## 🧠 4. Init System
- The **first process started** by the kernel (`PID 1`).
- Responsible for **starting all other background services (daemons)**.

### Common init systems:
| Init System | Description |
|--------------|-------------|
| **systemd** | Modern default in Ubuntu, CentOS, RHEL |
| **SysVinit** | Older, script-based system |
| **Upstart** | Transitional system used by older Ubuntu versions |

Example: Checks the SSH service managed by `systemd`.
```bash
systemctl status ssh
```

---

## 👻 5. Daemon Process
- Background processes that provide services without direct user interaction.
- Usually start automatically at boot time.
- Examples: These are essential for running services in the background (common in servers).

| Daemon             | Purpose                     |
| ------------------ | --------------------------- |
| `sshd` | Handles SSH remote logins |
| `crond` | Manages scheduled cron jobs |
| `systemd-journald` | Handles system logging |
| `nginx` | Web server daemon |

---

## 🖥️ 6. Graphical Server (Display Server)
- Handles the graphical environment (drawing windows, managing input devices, etc.).
- Converts system output into graphical form.

---

## 🧰 7. Desktop Environment
- Provides the GUI (Graphical User Interface) that users interact with.
- Built on top of the graphical server.
- Examples:

| Environment | Used In |
|--------------|----------|
| **GNOME** | Ubuntu |
| **KDE Plasma** | Kubuntu |
| **XFCE** | Lightweight systems |

## 📌 Additional Notes for DevOps

- **Kernel:** Core part of the OS; interacts directly with hardware.  
- **User Space:** Where applications and utilities run.  
- **Package Management:** (apt, yum, dnf, apk) → for installing software.  
- **System Services:** Managed by **systemd** (Linux init system).  
- **Automation:** Cron jobs, shell scripts, and configuration management tools.
- **Linux Boot Flow summary:**
   ```bash
   BIOS → Boot Loader (GRUB) → Kernel → Init (systemd) → Daemons → Graphical Server → Desktop → Applications
   ```

---

---

# 📊 Linux vs Windows in DevOps

| Feature / Aspect        | 🐧 Linux                               | 🪟 Windows                           |
|--------------------------|----------------------------------------|--------------------------------------|
| **Open Source**         | Yes (free & customizable)              | No (licensed, proprietary)           |
| **Cost**                | Mostly free (Ubuntu, Fedora, Alpine)   | Paid (Windows Server licenses)       |
| **Security**            | More secure, fewer viruses             | More prone to malware/viruses        |
| **Performance**         | Lightweight (esp. Alpine, BusyBox)     | Heavier, resource-consuming          |
| **Command Line (CLI)**  | Powerful (Bash, Zsh, scripting)        | PowerShell (less common in DevOps)   |
| **Automation**          | Easy (shell scripts, cron, Ansible)    | Supported but less flexible          |
| **DevOps Tools**        | Native support (Docker, Kubernetes, Jenkins, Git, etc.) | Limited / indirect support           |
| **Servers**             | Dominates cloud & web servers          | Used in enterprises (IIS, .NET apps) |
| **Package Management**  | `apt`, `yum`, `dnf`, `apk`             | MSI, Chocolatey (less popular)       |
| **Container Support**   | First-class (Docker, Kubernetes)       | Supported, but depends on Linux VM   |
| **Use Cases**           | Cloud-native apps, web servers, CI/CD pipelines | Enterprise apps, .NET stack, AD/Exchange |

---

✅ **Conclusion for DevOps:**  
- Linux is the **primary choice** because almost all modern DevOps tools, CI/CD workflows, and cloud-native applications are **built for Linux first**.  
- Windows is still important in enterprises for **legacy .NET apps, Microsoft services, and Active Directory**.

# 🐧 Setup Linux OS

There are multiple ways to set up and practice Linux:

---

## 1. Virtual Machine (VM) – Free
- Use **VMware** or **Oracle VirtualBox**.  
- Create a virtual machine and install Linux OS.  
- Good for local learning and experimentation.  

---

## 2. Cloud Platforms
- Platforms: **AWS**, **GCP**, **Azure**.  
- Steps:
  1. Create a free account.  
  2. Use free-tier **VM service** (usually available).  
- Useful for real-world practice (cloud + Linux).  

---

## 3. WSL (Windows Subsystem for Linux)
- Download and install WSL on Windows machine.  
- Run Linux commands inside Windows.  
- Great for developers who don’t want to set up a full VM.  

---

## 4. Docker Container
- Install **Docker** on Windows (with WSL) or Mac machine.  
- Spin up a **Docker container** with Linux OS.  
- Practice Linux commands inside containers.  
- Lightweight and quick to start.  

---

✅ **Recommendation (for DevOps practice):**  
- Start with **WSL** (if on Windows) or **Docker Containers**.  
- Move to **Cloud VMs** later for real-world experience.  

# 🐧 Setting up Linux OS as a Docker Container (Windows/Mac)

## 📌 Step 1: Install Docker
- Go to [Docker Desktop Install Guide](https://docs.docker.com/desktop/setup/install/windows-install/)  
- Download **Docker Desktop for Windows (x86_64)** or for Mac.  
- Install and start Docker.

---

## 📌 Step 2: Run Ubuntu Container
Open **CMD Prompt** (Windows) or **Terminal** (Mac), then run:

```bash
docker run -dit --name ubuntu-container1 --hostname ubuntu-dev --restart unless-stopped --cpus="2" --memory="4g" -v /var/run/docker.sock:/var/run/docker.sock -p 2222:22 -p 8989:80 --env TZ=Asia/Kolkata --env LANG=en_US.UTF-8 ubuntu:latest /bin/bash
```

```bash
docker run -dit \
  --name ubuntu-container1 \
  --hostname ubuntu-dev \
  --restart unless-stopped \
  --cpus="2" \
  --memory="4g" \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -p 2222:22 \
  -p 8989:80 \
  --env TZ=Asia/Kolkata \
  --env LANG=en_US.UTF-8 \
  ubuntu:latest /bin/bash
```

## ⚙️ Explanation of Options

- `-dit` → Run container in **detached interactive mode** with terminal.  
- `--name ubuntu-container1` → Custom container name.  
- `--hostname ubuntu-dev` → Sets internal container hostname.  
- `--restart unless-stopped` → Auto-starts container after reboot, unless stopped manually.  
- `--cpus="2"` → Limits container to **2 CPU cores**.  
- `--memory="4g"` → Assigns max **4GB RAM**.  
- `-v /var/run/docker.sock:/var/run/docker.sock` → Mounts Docker socket for **nested Docker usage**.  
- `-p 2222:22` → Maps **container SSH port 22 → host port 2222**.  
- `-p 8989:80` → Maps **container web port 80 → host port 8989**.  
- `--env TZ=Asia/Kolkata` → Sets container **timezone**.  
- `--env LANG=en_US.UTF-8` → Sets **default language/locale**.  
- `ubuntu:latest` → Base image (**latest Ubuntu**).  
- `/bin/bash` → Starts container with **bash shell**.


## 📌 Step 3: Check Running Containers 🐳
```bash
docker ps -a
```
- This lists all running/stopped containers. Copy the Container ID of Ubuntu.

## 📌 Step 3: Access Container Shell
```bash
docker exec -it <container-ID> /bin/bash
```
- Replace <container-ID> with your actual container ID.
- You are now inside Ubuntu Linux shell.
  
## 📌 Step 5: Exit Container
```bash
exit
```
- to leave the container.

## 📌 Step 6: Delete Containers
```bash
docker rm -f $(docker ps -aq)
```

## 📝 Summary

- `docker run` → Creates and starts container  
- `docker ps -a` → Lists all containers  
- `docker exec -it <id> /bin/bash` → Access container shell  
- `exit` → Quit container  
- `docker rm -f $(docker ps -aq)` → Remove all containers  

# 🔐 SSH (Secure Shell) Protocol

## 📌 What is SSH?
- **SSH (Secure Shell)** is a **network protocol** used to securely connect to remote machines over an **untrusted network (like the internet)**.
- It replaces older insecure protocols like **Telnet** and **rlogin**.
- Provides **confidentiality, integrity, and authentication**.

---

## 📌 How SSH Works
1. **Client initiates connection** → You run:
   ```bash
   ssh user@server-ip
   ```
2. Server responds with its public key.
3. Client verifies server identity (to avoid man-in-the-middle attacks).
4. A secure encrypted channel is established.
5. User logs in with password or SSH key pair (public/private key).

## 📌 Example commands

- connect to remote server:
  ```bash
  ssh -i mykey.pem ubuntu@13.233.106.44
  ```
- Copy file to server:
  ```bash
  scp file.txt ubuntu@13.233.106.44:/home/ubuntu/
  ```

## 📌 Default SSH Port
- By default, **SSH uses port `22`** (TCP).
- All SSH connections (login, file transfer, tunneling) happen over this port unless changed.

# 🌐 Common Protocols & Default Ports

| Protocol | Port Number | Transport | Usage |
|----------|-------------|-----------|-------|
| **SSH**  | 22          | TCP       | Secure remote login, file transfer, tunneling |
| **HTTP** | 80          | TCP       | Unsecured web traffic |
| **HTTPS**| 443         | TCP       | Secured web traffic (TLS/SSL) |
| **FTP**  | 21          | TCP       | File Transfer Protocol (unsecured) |
| **SFTP** | 22          | TCP       | Secure File Transfer (over SSH) |
| **SMTP** | 25          | TCP       | Simple Mail Transfer (sending emails) |
| **IMAP** | 143         | TCP       | Email retrieval (unencrypted) |
| **IMAPS**| 993         | TCP       | Secure email retrieval |
| **POP3** | 110         | TCP       | Email retrieval (unencrypted) |
| **POP3S**| 995         | TCP       | Secure email retrieval |
| **DNS**  | 53          | TCP/UDP   | Domain name resolution |
| **MySQL**| 3306        | TCP       | MySQL database |
| **PostgreSQL** | 5432  | TCP       | PostgreSQL database |
| **MongoDB** | 27017    | TCP       | MongoDB database |
| **Redis**| 6379        | TCP       | Redis in-memory database |
| **Kubernetes API** | 6443 | TCP    | Kubernetes cluster management |
| **RDP**  | 3389        | TCP       | Remote Desktop Protocol (Windows) |


# 👤 Linux Users and Root User

## 1. Root User
- The **root** user is the **superuser** in Linux.  
- Has **full control** over the system (install, remove, modify, delete anything).  
- **UID (User ID) = 0**.  
- Prompt symbol:
  - Root → `#`
  - Normal user → `$`

🔹 Example:
```bash
whoami
```
## 2. Creating a User,password and deletion 
```bash
sudo useradd ravi
sudo passwd ravi
sudo userdel ravi
```
## 3. Where User Information is Stored
- /etc/passwd → stores user account details.
- /etc/shadow → stores encrypted passwords (only root can read).
- /etc/group → stores user groups.
  
## 4. Switching Users
- Switch to another user
  ```bash
  su - ravi
  ```
- Switch to root
  ```bash
  sudo -i

  #OR

  su -
  ```
## 5. `getent group ubuntu`
- `getent` is used to query system databases (like passwd, group, hosts, etc.).
- `getent group <group-name>` shows details of a group.
### Example:
```bash
getent group ubuntu
```
Output might look like:
```bash
ubuntu:x:1001:alice,bob
```
Breakdown:
   * ubuntu → Group name
   * x → Password placeholder (not used here)
   * 1001 → Group ID (GID)
   * alice,bob → Members of the group
👉 This tells us which users belong to the ubuntu group.


# 🐧 Common Linux Commands for DevOps

1. uname
- Displays basic information about the system.
  ```bash
   uname
   ```
- Shows all details (kernel version, machine, architecture, etc.).
  ```bash
   uname -a
   ```
2. /etc/os-release
- File containing information about the Linux distribution.
   ```bash
     cat /etc/os-release
   ```
- Example output:
  ```bash
   NAME="Ubuntu"
   VERSION="22.04.3 LTS (Jammy Jellyfish)"
   ID=ubuntu
   PRETTY_NAME="Ubuntu 22.04 LTS"
   ```
3. history
- Displays the command history of the current user.
  ```bash
   history
  ```
4. pwd
- Prints the present working directory.
  ```bash
     pwd
  ```
5. mkdir
- Creates a new directory.
  ```bash
     mkdir devops
  ```
- Creates nested directories (project/src).
  ```bash
     mkdir -p project/src
  ```
6. --help
- Provides help/documentation for a command.
  ```bash
     ls --help             # Shows available options for the ls command.
  ```
7. touch
- Creates an empty file or updates file timestamp.
  ```bash
     touch file1.txt
     touch file{1..5}.txt
  ```
8. Lists all installed packages
     ```bash
     apt list --installed
     dpkg --list
     ```
9. echo
- The `echo` command is used to **print text to the terminal** or **write text into files**.
- Print to screen:
   ```bash
   echo "devops"
   ```
- Overwrite file content. Creates a file named file1 (if not exists) and writes devops into it
   ```bash
   echo "devops" > file1
   ```
- Append to a file. Appends the text hello to the file file1 without overwriting.
   ```bash
   echo "hello" >> file1
   ```
- Append on the same line. By default, echo adds a newline at the end. Use the `-n` flag to avoid a newline.
   ```bash
   echo -n "hello " >> file1
   echo "world" >> file1
   ```
## Nano Editor 
- Nano is a simple command-line text editor.
- open a file:
   ```bash
   nano file1
   ```
- Common shortcuts:
     * `Ctrl + X` → Exit nano
     * `Y` → Save changes when prompted
     * `N` → Discard changes
     * `Enter` → Confirm file name when saving
## Vim Editor
- Vim is a powerful text editor with multiple modes.
- Modes:
   * Normal mode (default) → Navigation and commands
   * Insert mode → Press i to insert text
   * Command mode → Press : to run commands
- Show line numbers & Hide line numbers
   ```bash
   :set number
   :set nonumber
   ```
- Search for a word (e.g., version), Press `n` to go to the next match.
   ```bash
   /version
   ```
- Find and replace globally. Replaces all `version` with `VERSION` in the entire file.`g` means globle, `c` means conforming the change.
   ```bash
   :%s/version/VERSION/gc
   ```
- In Vim, the command `:g/pattern/` executes an action on all lines **matching** the given pattern.By default, it **prints** all matching lines.

## `.vimrc` File
- The .vimrc file is a configuration file for Vim.
- It allows you to set preferences and automate settings when Vim starts.
- With .vimrc, you don’t need to type commands like :set number every time you open Vim.
- Location: `~/.vimrc` (in the home directory)
- Common settings:
   ```bash
   #Enable line numbers
   set number

   #Enable syntax highlighting
   syntax on

   #Show matching brackets
   set showmatch

   #Auto-indent
   set autoindent
   set tabstop=4
   set shiftwidth=4

   ```

## grep
- The grep command searches for text patterns in files.
- Case-sensitive search.Prints all lines containing the exact word `VERSION`:
   ```bash
   grep "VERSION" file1
   ```
- Case-insensitive search. Matches `VERSION`, `version`, `Version`, etc:
   ```bash
   grep -i "VERSION" file1
   ```
- Case-insensitive + show line numbers:
   ```bash
   grep -in "VERSION" file1
   ```
- Search processes with grep
   ```bash
   ps -ef | grep python3
   ```
📌 Common grep Options Cheat Sheet
| Option       | Description                                | Example                      |
| ------------ | ------------------------------------------ | ---------------------------- |
| `-i`         | Ignore case                                | `grep -i "hello" file.txt`   |
| `-n`         | Show line numbers                          | `grep -n "main" program.c`   |
| `-v`         | Invert match (show lines **not** matching) | `grep -v "error" log.txt`    |
| `-r` or `-R` | Recursive search in directories            | `grep -r "TODO" src/`        |
| `-c`         | Count number of matching lines             | `grep -c "root" /etc/passwd` |
| `-l`         | Show filenames with matches                | `grep -l "main" *.c`         |
| `-w`         | Match whole word                           | `grep -w "cat" animals.txt`  |
| `-A N`       | Show N lines **after** a match             | `grep -A2 "error" logfile`   |
| `-B N`       | Show N lines **before** a match            | `grep -B2 "error" logfile`   |
| `-C N`       | Show N lines **before & after**            | `grep -C3 "error" logfile`   |


## `sed` Command
- sed is a stream editor used for text replacement
- Example: Replace VERSION with myVersion
   ```bash
   sed 's/VERSION/myVersion/g' file2
   ```
   * `s` → Substitute
   * `VERSION` → Search pattern
   * `my
   * Version` → Replacement text
   * `g` → Replace all matches in a line

# ⚙️ Linux Process Management Commands
* Process Management `ps -ef`:
   - Lists all running processes in full detail.
   - Columns usually include:
     * UID → User running the process
     * PID → Process ID
     * PPID → Parent process ID
     * CMD → Command used to start the process

**1. `ps` (Process Status)**
The `ps` command shows running processes of the current user/session.

Example:
   ```bash
   ps
   ```
 ➡️ Lists processes running in the current shell.

**2. `ps a`**
   * Shows processes for all terminals, not just the current one.
   * Useful for multi-user systems.
  
**3. `ps au`**
   * `a` → All users’ processes (with terminal).
   * `u` → Shows user-oriented format (owner, CPU, memory, etc.).
   * Output columns:
      * USER → Process owner
      * PID → Process ID
      * %CPU → CPU usage
      * %MEM → Memory usage
      * STAT → Process status
      * COMMAND → Executed command
**4. `ps aux`**
   * `a` → All processes
   * `u` → User format
   * `x` → Show processes without a controlling terminal (background daemons, services).   

**5. Searching with grep**
   * Shows all processes containing `systemd`.
      ```bash
      ps aux | grep systemd
      ```
   * Shows processes whose command contains the word `ubuntu`.
      ```bash
      ps aux | grep ubuntu
      ```
   * Shows processes belonging to the user `ubuntu`.Output is limited to that user only.
      ```bash
      ps -u ubuntu
      ```
      
**6. `kill -l`**
   * Lists all available signals you can send to processes.
   * Common signals:
      * `1 (SIGHUP)` → Reload a process
      * `9 (SIGKILL)` → Force kill a process
      * `15 (SIGTERM)` → Graceful termination (default)

**7. Kill Process by PID**
   * Each process has a PID (Process ID). You can terminate a process using kill.
   * **Graceful termination:**
      * Sends SIGTERM (default). Process can clean up before exiting.
         ```bash
         kill -15 <PID>
         ```
   * **Force kill:**
      * Sends `SIGKILL`. Immediately stops the process (no cleanup).
         ```bash
         kill -9 <PID>
         ```
**8. `pkill -u <username>`**
   * Kills all processes owned by the user `ubuntu`.
   * ⚠️ Dangerous — it can log out or kill all apps for that user.
      ```bash
      pkill -u ubuntu
      ```
**9. `killall` (Kill by Process Name)**
   * Unlike `kill` (which needs a PID), `killall` can directly kill processes by their name.
   * Example: Kill all Firefox processes:
      ```bash
      killall firefox
      ```
   * Example: Kill all processes of a specific user
      * Kills all processes started by user `ubuntu`.
         ```bash
         killall -u ubuntu
         ```

# 🔑 Linux File Permissions & `chmod`

In Linux, every file and directory has **permissions** that control who can read, write, or execute them.


## 1. File Permission Format

Example:
   -rw-rw-r--

Breakdown:
- **First character** → File type (`-` = file, `d` = directory, `l` = link).
- **Next 9 characters** → Permissions grouped in **triplets**:

| Owner | Group | Others |
|-------|--------|--------|
| rw-   | rw-    | r--    |

- **Owner (User):** The user who owns the file.  
- **Group:** Other users in the same group.  
- **Others:** Everyone else on the system.  



## 2. Permission Types & Numeric Values

Each permission has a value:

| Permission | Symbol | Value |
|------------|---------|-------|
| Read       | `r`     | 4     |
| Write      | `w`     | 2     |
| Execute    | `x`     | 1     |

- Example: `rw-` = `4+2 = 6`  
- Example: `r-x` = `4+1 = 5`  

So:
- `7 = rwx` (full access)
- `6 = rw-` (read + write)
- `5 = r-x` (read + execute)
- `4 = r--` (read only)


## 3. Using `chmod`

`chmod` is used to change file permissions.

### Symbolic Method
- `u` → User (owner)
- `g` → Group
- `o` → Others
- `a` → All (user + group + others)

| Command | Meaning |
|---------|----------|
| `chmod g+w file1` | Add **write** permission for **group** |
| `chmod g-w file1` | Remove **write** permission from **group** |
| `chmod a+x file1` | Give execute permission to **all users** |
| `chmod u-x file1` | Remove execute permission from **owner** |


### Numeric Method
Permissions can also be set with numbers.

```bash
chmod 755 file1
```
Breakdown:
   * 7 (rwx) → User
   * 5 (r-x) → Group
   * 5 (r-x) → Others
So 755 = user has full access, group & others can read + execute.

## some examples:

### `chmod -R 600 myfolder`
   * `chmod` changes permissions.
   * `-R` → Apply recursively (to folder and all its files/subfolders).
   * `600` → Numeric permissions:
      | User | Group | Others |
      | ---- | ----- | ------ |
      | rw-  | ---   | ---    |
**Meaning:**
   * Owner (user): Can read & write (no execute).
   * Group: No permissions.
   * Others: No permissions.
     
**Case:** `myfolder` is a directory
   * The folder itself gets 600 → only owner can read and write it.
⚠️ But since it lacks execute (x) permission, even the owner cannot enter the directory.

**Effect on files inside:**
   * All files inside will also be set to 600.
   * This means: files are readable/writable by the owner only, no access for group/others.


# 🌐 Public vs Private IP Addresses


## 🔸 Private IP
- Used **within the same network** (internal communication).
- Not accessible from the internet.
- Assigned to devices like EC2 instances, routers, or VMs inside a VPC/LAN.
- Used for **internal data transfer** between servers or containers.

### Example:
- Private IP ranges (as per RFC 1918):
   * 10.0.0.0 – 10.255.255.255
   * 172.16.0.0 – 172.31.255.255
   * 192.168.0.0 – 192.168.255.255

### Example Use Case:
- When two EC2 instances in the same VPC communicate, they use **private IPs**.


## 🔸 Public IP
- Used for communication **across different networks** or with the **internet**.
- Globally unique — assigned by **ISP** or **cloud provider**.
- Required to access a server from the internet (like SSH, web access, etc.).

### Example: 
   Public IP: 13.233.106.44
### Example Use Case:
- When you SSH into your AWS EC2 instance from your laptop, you use its **public IP**.

## 🧩 Remember
- Same network → **Private IP** communication  
- Different networks (Internet) → **Public IP** communication

# 📦 Package Managers in Different Operating Systems

Package managers are tools that help you **install, update, remove, and manage software** on an operating system.  
They automatically handle **dependencies** and **repositories**, making software management easier and safer.

---

## 🐧 Linux Package Managers

| Distribution | Package Manager | Command Examples | Description |
|---------------|----------------|------------------|--------------|
| **Debian / Ubuntu** | `apt` or `apt-get` | `sudo apt install nginx` | Uses `.deb` packages. Modern Ubuntu prefers `apt` over `apt-get`. |
| **RedHat / Rocky Linux / CentOS / Amazon Linux** | `yum` or `dnf` | `sudo yum install httpd` / `sudo dnf install httpd` | Uses `.rpm` packages. `dnf` is the newer version of `yum`. |
| **SUSE Linux / openSUSE** | `zypper` | `sudo zypper install vim` | Manages `.rpm` packages in SUSE-based systems. |

---

## 🪟 Windows Package Manager

| OS | Package Manager | Command Example | Description |
|----|------------------|------------------|-------------|
| **Windows 10/11** | `winget` | `winget install vscode` | Official Microsoft CLI tool for installing apps and managing software. |

---

## 🍎 macOS Package Manager

| OS | Package Manager | Command Example | Description |
|----|------------------|------------------|-------------|
| **macOS** | `Homebrew` | `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`<br>`brew install wget` | Popular open-source package manager for macOS. |

---

## 🐍 Python Package Manager

| Language | Package Manager | Command Example | Description |
|-----------|----------------|----------------|--------------|
| **Python** | `pip` | `pip install flask` | Used to install Python packages from the **PyPI** repository. |

---

## 🧠 Summary

| Platform | Package Manager | File Type |
|-----------|------------------|-----------|
| Ubuntu / Debian | apt, apt-get | `.deb` |
| RedHat / CentOS / Amazon Linux | yum, dnf | `.rpm` |
| SUSE Linux | zypper | `.rpm` |
| Windows | winget | `.exe` / `.msi` |
| macOS | brew (Homebrew) | `.pkg` / source |
| Python | pip | `.whl` / `.tar.gz` |

---

## 🧩 DevOps Tip
In CI/CD pipelines and automation scripts:
- Use `apt-get -y install <package>` in **Ubuntu-based Dockerfiles**.  
- Use `yum install -y <package>` in **Amazon Linux**.  
- Always run `apt-get update` or `yum update` before installing to refresh package lists.

---

# 🔐 Package Repositories & GPG Keys

A **package repository** is a centralized storage location that contains:

- Software packages  
- Their metadata (version, dependencies, etc.)  
- Digital signatures (for verification)

Your system’s **package manager** (like `apt` in Ubuntu) downloads software from these repositories.

---

## 🔒 Why Security Matters

When downloading software from the internet, we must **ensure**:

- It is from a **trusted source**  
- It hasn’t been **tampered with** during transfer  

That’s why package repositories use **GPG keys (GNU Privacy Guard)**.

---

## 🔑 Role of GPG Keys
When you install software from a package repository (APT/YUM/etc.), you must trust that:
- The repository is *authentic* (it really comes from the vendor).
- Packages haven’t been *tampered with* in transit.

To provide that trust, repositories use **cryptographic signing** (GPG keys).  
- The **repository maintainer** signs repository metadata (Release files).  
- Your package manager verifies signatures using the **public key** you installed locally.
- If signatures match, packages are trusted and installation proceeds. If not, the package manager refuses to install (or warns).

Each repository is **digitally signed** with a **GPG key pair**:

- **Private Key:** Held securely by the repository owner (used to sign packages)  
- **Public Key:** Shared with users (used to verify packages)

---

## ⚙️ Step-by-Step Process

### 1. Download the Public Key

You get the **public GPG key** from the repository provider.

Example:
```bash
curl -fsSL https://example.com/repo.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/example.gpg
```

### 2. Store the Key

Public keys are stored in:

```
/etc/keyrings/
```

This is where APT looks when verifying packages.

### 3. Add the Repository

You add the repository link to your system, referencing the key:

```
deb [signed-by=/etc/keyrings/example.gpg] https://example.com/ubuntu stable main
```

### 4. Download the Package

When you run:
```bash
sudo apt update
sudo apt install <package-name>
```

The system fetches the package and its **digital signature** (signed using the private key).

### 5. Verification Step

APT verifies the package by checking if:

- The **signature** matches the **public key** in `/etc/keyrings`  
- If it matches → package is **authentic and safe**  
- If not → you get a **signature verification error**

### 6. Installation Begins

Once the signature check passes, the system installs the package.

---

## ✅ Summary

| Step | Action | Purpose |
|------|---------|----------|
| 1 | Download public key | Establish trust |
| 2 | Store in `/etc/keyrings` | For verification |
| 3 | Add repository | Source of packages |
| 4 | Download package | Retrieve signed files |
| 5 | Verify signature | Ensure authenticity |
| 6 | Install package | Safe installation |


# 🧠 What is journalctl?

`journalctl` is the **command-line tool** used to view logs collected by **systemd-journald**, the logging service that comes with all systemd-based Linux distributions (Ubuntu, Debian, RHEL, Fedora, Rocky, etc.).

It lets you see logs from:
- The **kernel** (dmesg-like messages)
- **System services** (like sshd, nginx, docker, etc.)
- **User processes**
- **Boot messages** (system startup, shutdown, etc.)

---

## 🏗️ How It Works

`systemd-journald` collects and stores logs in **binary format** under:

```
/var/log/journal/
```

`journalctl` reads that data and displays it in a **human-readable format**.

So instead of multiple files in `/var/log/*.log`, systemd combines them into one journal you can query flexibly.

---

## ⚙️ Basic Syntax

```
journalctl [options]
```

**By default:**

```
journalctl
```

Shows all logs from **oldest to newest** (you might need `sudo`).

---

## 🔍 Useful Options & Examples

| Command | Description |
|----------|-------------|
| `journalctl` | Show all logs from the journal |
| `sudo journalctl -xe` | Shows recent logs with explanations — useful for troubleshooting errors |
| `journalctl -r` | Reverse order (newest first) |
| `journalctl -b` | Show logs from the current boot |
| `journalctl -b -1` | Show logs from the previous boot |
| `journalctl -f` | Follow live logs (like `tail -f /var/log/syslog`) |
| `journalctl -k` | Show kernel messages only (like `dmesg`) |
| `journalctl -u nginx` | Logs from a specific service unit (example: nginx) |
| `journalctl -u ssh.service -b` | Logs for ssh service from this boot |
| `journalctl --since "2 hours ago"` | Logs from the last 2 hours |
| `journalctl --since "2025-10-14 07:00:00"` | Logs since a specific date/time |
| `journalctl --since yesterday --until now` | Logs from yesterday until now |
| `journalctl _PID=1234` | Logs from a specific process ID |
| `journalctl _UID=1000` | Logs for a specific user ID |
| `journalctl _COMM=sshd` | Logs for a specific command/process name |
| `journalctl -n 50` | Show the last 50 log lines |
| `journalctl --disk-usage` | Shows total disk space used by the journal |
| `journalctl --vacuum-size=500M` | Limit logs to 500 MB total (deletes older logs) |

---


# ⚙️ Linux Service and Network Management Commands

---

## 🧩 1. systemd

`systemd` is the **init system** and **service manager** for modern Linux distributions (like Ubuntu 18+, RHEL 7+, etc.).  
It’s the **first process (PID 1)** started after boot.

### 🧠 Responsibilities
- Booting the system  
- Managing services and daemons  
- Mounting file systems  
- Logging (`journalctl`)  
- Handling shutdown/reboot  

🧠 **Think of systemd as the brain that controls all system processes and background services.**

### 🔍 Check if your system uses systemd
```bash
ps 1
```

**Output example:**
```
PID TTY          TIME CMD
1   ?        00:00:04 systemd
```

---

## 🧰 2. systemctl

`systemctl` is the **command-line tool** used to control and manage `systemd` services.

### 🧾 Common `systemctl` Commands

| Command | Description |
|----------|-------------|
| `systemctl status jenkins` | Show status of Jenkins service |
| `systemctl start jenkins` | Start Jenkins service |
| `systemctl stop jenkins` | Stop Jenkins service |
| `systemctl restart jenkins` | Restart Jenkins |
| `systemctl enable jenkins` | Auto-start Jenkins at boot |
| `systemctl disable jenkins` | Disable auto-start |
| `systemctl list-units --type=service` | List all active services |
| `systemctl is-active jenkins` | Check if Jenkins is running |
| `systemctl daemon-reload` | Reload systemd configuration |

---

## 🌐 3. netstat

`netstat` (**network statistics**) displays network connections, ports, and protocols used by your system.

🧠 **Note:** In some newer systems, `netstat` is replaced by `ss`.

### 🔹 Command
```bash
sudo netstat -plant
```

### 🔍 Explanation

| Option | Description |
|---------|-------------|
| `-p` | Show the program (process) using the port |
| `-l` | Show only listening sockets |
| `-a` | Show all connections (listening + established) |
| `-n` | Show numerical addresses (no DNS names) |
| `-t` | Show TCP connections |

**Example output:**
```
Proto Recv-Q Send-Q Local Address   Foreign Address  State   PID/Program name
tcp6       0      0 :::8080        :::*             LISTEN  1234/java
```

📘 **This means port 8080 is being used by a Java process (like Jenkins or Tomcat).**

---

## 🧠 4. lsof (List Open Files)

`lsof` means **List Open Files** — and since “everything is a file” in Linux, this includes **network sockets**.

### 🔹 Command
```bash
sudo lsof -i :8080
```

### 🔍 Explanation
`-i :8080` → Show which process is using port 8080

**Output example:**
```
COMMAND   PID   USER     FD   TYPE DEVICE SIZE/OFF NODE NAME
java     1234  jenkins  42u  IPv6  12345      0t0  TCP *:8080 (LISTEN)
```

**This means:**
- Process `java` with PID `1234`  
- Owned by user `jenkins`  
- Is listening on TCP port `8080`  

---

## 🧩 5. How to Kill a Process Using a Port

If you find a process occupying a port (e.g., 8080), you can stop it:

```bash
sudo kill -9 <PID>
```

**Example:**
```bash
sudo kill -9 1234
```

---

## 🧾 Summary Table

| Command | Purpose |
|----------|----------|
| `systemd` | Core system and service manager |
| `systemctl` | Manage and control services |
| `netstat -plant` | Show all active ports and related processes |
| `lsof -i :8080` | Check which process is using port 8080 |
| `kill -9 <PID>` | Forcefully stop a process by ID |

---
