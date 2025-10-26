# 🐚 Shell Scripting Basics (`#!/bin/bash`)

---

## ⚙️ What is `#!/bin/bash`?

The line:
```bash
#!/bin/bash
```
is called a **shebang** (or hashbang).  
It tells the system to use the **Bash shell** to interpret and execute the script.

### Example
```bash
#!/bin/bash
echo "Hello, World!"
```

---

## 🧩 What is Shell Scripting?

A **shell script** is a text file containing Linux commands that the shell executes line by line — used for **automation** of repetitive tasks.

You can run it manually or schedule it using tools like **cron**.

---

## 💾 How to Create and Run a Script

1. **Create the script file**
   ```bash
   nano myscript.sh
   ```

2. **Add the code**
   ```bash
   #!/bin/bash
   echo "My first shell script!"
   ```

3. **Make it executable**
   ```bash
   chmod +x myscript.sh
   ```

4. **Run the script**
   ```bash
   ./myscript.sh
   ```

---

## 🧮 Variables in Shell Script

You can store values in variables and use them later.

### Example
```bash
#!/bin/bash
name="Ravi"
age=25
echo "Hello $name, you are $age years old."
```

### 🔹 Rules
- No spaces before or after `=`
- Access variable with `$varname`

---

## 📥 Reading Input from User

You can take input using the `read` command.

### Example
```bash
#!/bin/bash
echo "Enter your name:"
read username
echo "Welcome, $username!"
```

You can also read input silently (like passwords):
```bash
read -s password
```

---

## 💬 Command Line Arguments

You can pass values to your script as arguments.

### Example
```bash
#!/bin/bash
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
```

Run it:
```bash
./myscript.sh hello world
```

Output:
```
Script name: ./myscript.sh
First argument: hello
Second argument: world
```

---

## 🔁 Conditional Statements (if / else)

### Example
```bash
#!/bin/bash
echo "Enter a number:"
read num

if [ $num -gt 10 ]; then
    echo "Number is greater than 10"
else
    echo "Number is less than or equal to 10"
fi
```

---

## 🔄 Loops

### **For Loop**
```bash
#!/bin/bash
for i in 1 2 3 4 5
do
  echo "Number: $i"
done
```

### **While Loop**
```bash
#!/bin/bash
count=1
while [ $count -le 5 ]
do
  echo "Count is $count"
  ((count++))
done
```

---

## 🧰 Useful Shell Variables

| Variable | Description |
|-----------|--------------|
| `$0` | Script name |
| `$1`, `$2`, ... | Arguments passed to the script |
| `$#` | Number of arguments |
| `$@` | All arguments |
| `$$` | Process ID of the script |
| `$?` | Exit status of last command (0 = success) |

---

## ✅ Example: Combined Script

```bash
#!/bin/bash
echo "Enter your name:"
read name
echo "Enter your age:"
read age

if [ $age -ge 18 ]; then
    echo "Hi $name, you are eligible to vote."
else
    echo "Sorry $name, you are not eligible to vote yet."
fi
```

---

# 🐚 Shell Scripting Examples

## 🧩 1. File and Directory Existence Check

```bash
if [ -f "/etc/passwd" ]; then
  echo "File exists"
else
  echo "File does not exist"
fi

if [ -d "/etc" ]; then
  echo "Directory exists"
else
  echo "Directory does not exist"
fi
```

### 🔍 Explanation

- `if [ -f "/etc/passwd" ]`: Checks if a file exists and is a regular file.  
  - `-f` → test for a file.  
  - `/etc/passwd` → path to check.

- `if [ -d "/etc" ]`: Checks if a directory exists.  
  - `-d` → test for a directory.

- `then … else … fi`: Standard Bash if structure.  
  - `then` → run the next command if condition is true.  
  - `else` → run alternative commands if false.  
  - `fi` → end of the if block.

✅ **Output Example**

```
File exists
Directory exists
```

---

## 🌐 2. Array of URLs

```bash
# A variable storing list of values
# Variable name is endpoints
endpoints=(
  "https://httpbin.org/status/200"
  "https://httpbin.org/status/404"
  "https://httpbin.org/status/500"
)

for endpoint in "${endpoints[@]}"; do
  curl $endpoint
done
```

### 🔍 Explanation

- `endpoints=( ... )` → defines a Bash array.  
- Each line is one element in the array.  
- `"${endpoints[@]}"` → expands all elements of the array (like a list).  
- `for endpoint in "${endpoints[@]}"; do … done`: Loops through each element in the array and stores it temporarily in the variable `endpoint`.  
- `curl $endpoint` → runs an HTTP request for each URL.

✅ **Output Example**  
This will print HTTP responses from all three URLs.

---

## 🧠 3. HTTP Status Code Checker

```bash
endpoints=(
  "https://httpbin.org/status/200"
  "https://httpbin.org/status/404"
  "https://httpbin.org/status/500"
)

for endpoint in "${endpoints[@]}"; do
  status=$(curl -o /dev/null -s -w "%{http_code}" $endpoint)

  if [ "$status" = "200" ]; then
    echo "The URL returned success status as $status"
  else
    echo "The URL returned failure status as $status"
  fi
done
```

### 🔍 Explanation

- `curl -o /dev/null -s -w "%{http_code}" $endpoint`:  
  - `-o /dev/null` → discard the actual output.  
  - `-s` → silent mode (no progress bar).  
  - `-w "%{http_code}"` → print only the HTTP status code.

- `status=$( ... )` → captures the command output into a variable.

- The `if` block checks whether the status code equals `200`.  
  - `200` → success (OK)  
  - `404` or `500` → failure (Not Found / Server Error)

✅ **Sample Output**

```
The URL returned success status as 200
The URL returned failure status as 404
The URL returned failure status as 500
```

---

## ⚙️ Key Concepts Covered

| Concept | Meaning |
|----------|----------|
| `-f` | Tests if a file exists |
| `-d` | Tests if a directory exists |
| `if … then … else … fi` | Conditional branching |
| `Arrays ()` | Store multiple values |
| `for … in … do … done` | Loops through items |
| `$( … )` | Command substitution (store output in a variable) |
| `curl` | Command-line HTTP client |
| `%{http_code}` | Prints HTTP status code only |


## 🧩4. HTTP Status Code Checker

code checks multiple URLs and prints custom messages depending on the HTTP response code.

```bash
#!/bin/bash

# A variable storing list of values
# Variable name is endpoints
endpoints=(
  "https://httpbin.org/status/200"
  "https://httpbin.org/status/404"
  "https://httpbin.org/status/500"
)

# Loop through each endpoint
for endpoint in "${endpoints[@]}"; do
  # Get HTTP status code only
  status=$(curl -o /dev/null -s -w "%{http_code}" $endpoint)

  # Conditional logic based on status
  if [ "$status" = "200" ]; then
    echo "The URL $endpoint returned success status as $status"
  elif [ "$status" = "404" ]; then
    echo "The URL $endpoint returned status as $status"
    echo "This httpbin.org page can't be found"
  elif [ "$status" = "500" ]; then
    echo "The URL $endpoint returned status as $status"
    echo "This page isn't working"
  else
    echo "The URL $endpoint returned an unexpected status code: $status"
  fi
done
```
### 💡 Explanation

*   endpoints=( ... ) → Stores multiple URLs in an array.
    
*   for endpoint in "${endpoints\[@\]}" → Loops through each URL.
    
*   curl -o /dev/null -s -w "%{http\_code}":
    
    *   \-o /dev/null → Discards body output
        
    *   \-s → Silent mode
        
    *   \-w "%{http\_code}" → Outputs HTTP code only
        
*   if / elif / else → Decides what message to print for each response.
    

### ✅ Example Output

```rust
The URL https://httpbin.org/status/200 returned success status as 200
The URL https://httpbin.org/status/404 returned status as 404
This httpbin.org page can't be found
The URL https://httpbin.org/status/500 returned status as 500
This page isn't working
```

## ⚙️5. OS Detection and NGINX Installation

install NGINX differently depending on whether the system uses APT (Debian/Ubuntu) or YUM (RHEL/Amazon Linux).

```bash
#!/bin/bash

install_nginx_debian() {
  echo "Detected Debian/Ubuntu OS system. Installing NGINX and PHP..."
  sudo apt update
  sudo apt install nginx php -y
}

install_nginx_rhel() {
  echo "Detected RHEL/Amazon Linux OS system. Installing NGINX..."
  sudo yum install epel-release -y
  sudo yum install nginx -y
}

# Detect OS by checking which package manager exists
if command -v apt >/dev/null 2>&1; then
  install_nginx_debian
elif command -v yum >/dev/null 2>&1; then
  install_nginx_rhel
else
  echo "Unsupported Linux distribution or package manager not found"
  exit 1
fi

# Check if nginx service is active
SERVICE="nginx"
if systemctl is-active --quiet "$SERVICE"; then
  echo "$SERVICE is running"
else
  echo "$SERVICE is not running.. Attempting to restart.."
  sudo systemctl restart $SERVICE
fi

```

🧠 Explanation
--------------

### 🏗️ Functions

Functions let you group commands for reuse.

**Syntax:**

```bash
function_name() {
  # commands
}

```

You defined:

*   `install_nginx_debian()`
    
*   `install_nginx_rhel()`
    

### 🧩 Command Detection

*   `command -v apt` → Checks if apt command exists (Debian/Ubuntu)
    
*   `command -v yum` → Checks if yum command exists (RHEL/Amazon)
    

### 🛠️ Package Installation

*   **Debian/Ubuntu** → `apt install nginx php`
    
*   **RHEL/Amazon** → `yum install nginx`
    

### 🧩 Service Check

*   `systemctl is-active --quiet nginx`
    
    *   Returns `0` if service is active.
        
    *   If not active, script restarts it.
        

### ✅ Output Example

```bash
Detected Debian/Ubuntu OS system. Installing NGINX and PHP...
nginx is running

```
Or if it’s down:

```bash
nginx is not running.. Attempting to restart..

```

## ⚡ Key Learnings Recap

| Concept            | Description                  |
| ------------------ | ---------------------------- |
| `if [ condition ]` | Conditional statement        |
| `elif`             | Else if                      |
| `command -v`       | Checks if a command exists   |
| `function_name()`  | Defines a function           |
| `systemctl`        | Controls and checks services |
| `exit 1`           | Stops the script on error    |
| `curl`             | Used to test URLs            |
| `status=$(...)`    | Command substitution         |
