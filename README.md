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
