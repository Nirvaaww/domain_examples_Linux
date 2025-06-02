#Nirvaww
import subprocess

def run_command(command):
    print(f"Ejecutando: {command}")
    subprocess.run(command, shell=True, check=True)

def main():
    try:
        run_command("sudo apt update")
        run_command("sudo apt upgrade -y")
        print("\nSistema actualizado correctamente.")
    except subprocess.CalledProcessError as e:
        print(f"\nError al ejecutar el comando: {e}")

if __name__ == "__main__":
    main()
