# Testing and Running Documentation

## Command Line Module

### Easy Level
- Ran `ls`, `cd`, `nano`, `cat` commands
- Created and modified `easy-log.txt`
- Verified file operations:
  ```bash
  pwd
  ls
  cd command-line
  mkdir command-line-easy && cd command-line-easy
  touch hello.txt
  nano hello.txt
  cp hello.txt hello-copy.txt
  mv hello-copy.txt ../.
  rm hello.txt
  cat ../hello-copy.txt
  man ls
  ```

### Intermediate Level
- Used `grep` and `find` commands
- Created secret.txt with specific permissions
- Tested pipe operations and redirection
- Monitored processes with `top` and `ps`

### Advanced Level
- Installed required packages:
  ```bash
  sudo apt update
  sudo apt install tree gcc net-tools iputils-ping
  ```
- Tested network commands
- Created and tested aliases

## Shell Scripts Module

### Easy Level
- Created and executed `easy-script.sh`:
  ```bash
  chmod +x easy-script.sh
  ./easy-script.sh
  ```
- Input name successfully
- Verified output format

### Intermediate Level
- Tested `file-check.sh`:
  ```bash
  ./file-check.sh file-check.sh
  ./file-check.sh nonexistent.txt
  ```
- Verified file existence checks
- Confirmed permission display

### Advanced Level
- Ran `file-count.sh`:
  ```bash
  ./file-count.sh /workspaces/linux-c-lab/command-line
  ```
- Confirmed accurate file type counting
- Validated output logging

## C Programming Module

### Easy Level
- Compiled and ran hello.c:
  ```bash
  gcc hello.c -o hello
  ./hello
  ```
- Output: "Hello, C!"

### Intermediate Level
- Tested factorial program:
  ```bash
  gcc factorial.c -o factorial
  ./factorial
  # Input: 5
  # Output: 120
  ```
- Verified recursive implementation

### Advanced Level
- Developed contacts management program:
  ```bash
  gcc contacts.c -o contacts -g
  ./contacts
  ```
- Added test contact: "Alice, 25"
- Verified view functionality
- Used gdb for debugging

## Integration Project

### Project Script Testing
```bash
chmod +x project.sh
./project.sh
```

### Verification Steps:
1. Checked compilation of contacts.c
2. Verified backup creation:
   ```bash
   ls -l contacts-backup.tar.gz
   ```
3. Confirmed log file creation:
   ```bash
   cat project-log.txt
   ```
4. Tested contacts program functionality

### Error Resolution
1. Permission Issues:
   - Fixed with `chmod +x` on all scripts
2. Path Issues:
   - Updated relative paths in project.sh
3. C Program Debugging:
   - Used gdb to resolve segmentation faults
   - Fixed memory management in contacts.c
   
## Final Verification
- All scripts executable ✓
- C programs compile without warnings ✓
- Project integration complete ✓
- All required files backed up ✓
- Regular commits maintained ✓
