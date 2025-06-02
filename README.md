
# 🐧 Domain Configuration Examples on Linux

This repository contains examples and scripts for setting up **domain-related services** or **integrating Linux systems into domain environments**.

These scripts are useful for educational purposes, labs, and network simulations involving **Linux-based authentication**, **directory services**, or **Windows domain interoperability**.

---

## 📁 Repository Contents

| File / Script               | Description                                                 |
|----------------------------|-------------------------------------------------------------|
| `install_samba.sh`         | Installs and configures Samba as a domain member or server  |
| `check_domain_status.sh`   | Verifies domain join status and user resolution             |

> File names are examples — adapt them to match actual scripts in your repo.

---

## ✅ Requirements

- Linux distribution (Debian/Ubuntu, CentOS/RHEL, etc.)
- Root/sudo privileges
- Network connectivity to a domain controller (for AD integration scenarios)

---

## 🚀 How to Use

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Nirvaaww/domain_examples_Linux.git
   cd domain_examples_Linux


2. **Make scripts executable:**

   ```bash
   chmod +x *.sh
   ```

3. **Run the script you need:**

   ```bash
   sudo ./install_samba.sh
   ```

> ⚠️ Make sure to review and edit configurations inside the scripts before running them, especially realm/domain details.

---

## 🧠 Use Cases

* Simulating domain setups with Samba and Kerberos
* Learning Linux–Windows interoperability
* Preparing for sysadmin or DevOps scenarios involving mixed environments

---

## 🛠 Tools Involved

* `samba` / `winbind`
* `kerberos` (`krb5.conf`)
* `sssd`
* `realmd`, `realm`, `net`, `kinit`, etc.

---

## 👨‍💻 Author

* **Nirvaaww**
  [GitHub Profile](https://github.com/Nirvaaww)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE), unless otherwise specified.

