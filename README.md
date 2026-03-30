# Open Source Audit Project

## Student Details
Name: Pragya Richa Pandey  
Registration Number: 24BCE10797  
Course: Open Source Software  
Chosen Software: Git  

---

## 📌 Project Description

This project is an audit of an open-source software, specifically **Git**, which is a distributed version control system.  

The report covers:
- The origin and purpose of Git  
- Its license and open-source philosophy  
- Ethical aspects of open source  
- How Git works on a Linux system  
- Its ecosystem and real-world usage  
- Comparison with proprietary software  

Along with the report, 5 shell scripts are included to demonstrate basic Linux and Bash scripting concepts.

---

## 💻 Scripts Included

### 1. script1_system_identity.sh
Displays system information such as:
- Linux distribution
- Kernel version
- Logged-in user
- Uptime and date

---

### 2. script2_package_inspector.sh
Checks whether Git is installed and shows:
- Package version
- Basic description using case statement

---

### 3. script3_disk_auditor.sh
Analyzes important directories and shows:
- Permissions
- Owner details
- Disk usage  
Also checks if Git configuration file exists.

---

### 4. script4_log_analyzer.sh
Reads a log file and:
- Counts occurrences of a keyword (default: error)
- Displays last few matching lines  

Usage:
```bash
./script4_log_analyzer.sh /var/log/syslog error
