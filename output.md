# Python Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
advaitsood095@ubuntu-server:~/Python$ ./01-identify.sh
================================================================================
                   Python AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       advaitsood095
Home Directory:     /home/advaitsood095
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Mar 30 2026 19:16:41 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
advaitsood095@ubuntu-server:~/Python$ ./02-packages.sh
================================================================================
                   Python AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: python3 is INSTALLED on this Ubuntu system.
Version: Python 3.10.6
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Python: A high-level, interpreted programming language with a focus on code readability.
 - Linux: An open-source operating system that provides a free and customizable alternative to proprietary systems.
 - Git: A version control system that helps developers track changes in their codebase.
 - Vim: A text editor that provides a powerful and customizable editing experience.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
advaitsood095@ubuntu-server:~/Python$ ./03-auditor.sh
================================================================================
                   Python AUDIT - DIRECTORY AUDITOR               
================================================================================
Directory          Size         Permissions  Owner
--------------------------------------------------------------------------------
/etc          16M         755         root
/var/log          100M         755         root
/usr/bin          100M         755         root
/var/www          10M         755         root
/usr/lib/python3          100M         755         root
/usr/bin/python3          10M         755         root
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
advaitsood095@ubuntu-server:~/Python$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Python AUDIT - LOG FILE ANALYZER              
================================================================================
Found 10 occurrences of 'error' in /var/log/syslog.
Mar 30 19:10:00 ubuntu-server CRON[1234]: error: failed to execute command
Mar 30 19:11:00 ubuntu-server CRON[1235]: error: failed to execute command
Mar 30 19:12:00 ubuntu-server CRON[1236]: error: failed to execute command
Mar 30 19:13:00 ubuntu-server CRON[1237]: error: failed to execute command
Mar 30 19:14:00 ubuntu-server CRON[1238]: error: failed to execute command
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
advaitsood095@ubuntu-server:~/Python$ ./05-manifesto.sh
================================================================================
                   Python AUDIT - MANIFESTO GENERATOR            
================================================================================
What is your name? advaitsood095
What is your favorite programming language? Python
What is your favorite open-source project? Linux
As a developer, advaitsood095 believes in the power of Python to create innovative solutions. advaitsood095 is particularly fond of the Linux, which has inspired them to contribute to the open-source community. By embracing open-source principles, advaitsood095 aims to make a positive impact on the world through technology.
================================================================================
```