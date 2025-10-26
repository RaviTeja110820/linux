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
