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

## 📌 Additional Notes for DevOps

- **Kernel:** Core part of the OS; interacts directly with hardware.  
- **User Space:** Where applications and utilities run.  
- **Package Management:** (apt, yum, dnf, apk) → for installing software.  
- **System Services:** Managed by **systemd** (Linux init system).  
- **Automation:** Cron jobs, shell scripts, and configuration management tools.  

---

---

## 📊 Linux vs Windows in DevOps

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
