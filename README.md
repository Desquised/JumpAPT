# JumpAPT
This script adds a function to suggest and install missing commands directly in your Bash or Zsh terminal with a simple shortcut, saving time and avoiding interruptions in your workflow!

# Bash/Zsh Autofix: Easily Install Missing Commands 🚀

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This script enhances your **Bash** and **Zsh** command line experience by adding an “autofix” function that suggests and installs commands that are not installed directly from your terminal. Tired of seeing the “command not found” error? This script helps you solve it quickly!

**How does it work?**

When you try to run a command that is not installed on your system, instead of just displaying the standard error, this script does the following:

1. **Detects the “command not found” error.**
2. **Suggests the installation command** using `apt install` (for Debian/Ubuntu and derivative systems) or `snap install` (if `snap` is available).  *Currently only `apt` and `snap` are supported, but this can be expanded.
3. **Display the hint in your terminal** in color so that it is easy to identify.
4. **Allows you to insert the hint in your terminal** with a simple keyboard shortcut: **Double Esc**.

With just two presses of the Esc key, you can insert the suggested installation command, execute it and continue working without interruption!

**Key Features ✨**.

* **Support for Bash and Zsh:** Works perfectly on both shells, the most popular on Linux and macOS.
* **Simple Installation:** Installs with a single command: `source install.sh`.
* **Minimalistic and Non-Intrusive:** The script is lightweight and efficient, without affecting the performance of your shell.
* **Intelligent Suggestions:** Automatically detects whether to use `apt install` or `snap install` based on the availability of package managers on your system.
* **Quick and Convenient Shortcut:** Insert the hint with a double tap of the Esc key, keeping your hands on the keyboard.
* **Easy to Uninstall (Manually):** Simply remove the code block added to your configuration file (`.bashrc` or `.zshrc`).

**Installation 🛠️**

1. **Download the `install.sh`** script from this repository to your local machine. You can use `wget` or `curl`:

   ````bash
   wget https://raw.githubusercontent.com/Desquised/JumpAPT/main/install.sh
                                     # or
   curl -O https://raw.githubusercontent.com/Desquised/JumpAPT/main/install.sh

2. **Ejecuta el script de instalación:**

   ```bash
   source install.sh
   ```

   **Importante:** Debes ejecutar el script con `source install.sh` (o `. install.sh`) para que los cambios se apliquen correctamente en tu sesión actual y se modifique tu archivo de configuración.

3. **Reinicia tu terminal o abre una nueva ventana de terminal** para que los cambios en el archivo de configuración surtan efecto completamente.  (Aunque el script ya aplica los cambios a la sesión actual, reiniciar asegura que todo esté configurado correctamente para futuras sesiones).

¡Listo! Ya tienes el autofix de comandos instalado y funcionando.

**Uso ⌨️**

1. **Intenta ejecutar un comando que no está instalado** en tu sistema, por ejemplo: `htop` (si no lo tienes instalado).
2. **Verás un mensaje en la terminal** que te indica que el comando no se encontró y te sugiere el comando de instalación (por ejemplo, `sudo apt install htop`).  La sugerencia estará resaltada en color.
3. **Pulsa la tecla `Esc` dos veces rápidamente `Esc` `Esc`.**
4. **El comando de instalación sugerido se insertará automáticamente en tu terminal.**
5. **Presiona Enter** para ejecutar el comando de instalación.
6. **Introduce tu contraseña de administrador (si es necesario)** e instala el comando.

¡Ahora puedes usar el comando que necesitabas sin interrumpir tu flujo de trabajo!

**Ejemplo**

```bash
$ docker
zsh: comando no encontrado: docker
El comando 'docker' no se encontró.
Pulsa Esc dos veces para insertar: sudo apt install docker  <-- SUGERENCIA
```

Luego, al pulsar `Esc` `Esc`, la línea de comandos se convertirá en:

```bash
$ sudo apt install docker
```

¡Solo tienes que presionar Enter para instalarlo!

**¿Por qué usar este script? 🤔**

* **Aumenta tu Productividad:** Evita interrumpciones y búsquedas manuales para instalar comandos.
* **Ahorra Tiempo:** Instala comandos rápidamente con un atajo de teclado.
* **Flujo de Trabajo Más Fluido:**  Continúa trabajando sin salir de la terminal para buscar cómo instalar algo.
* **Fácil de Usar:**  Instalación y uso muy sencillos.
* **Personalizable:**  Si eres un usuario avanzado, puedes modificar el script para añadir soporte para otros gestores de paquetes o personalizar las sugerencias.

**Próximas Mejoras (Ideas) 💡**

* **Soporte para más gestores de paquetes:**  Añadir soporte para `yum`, `dnf`, `pacman`, `brew`, etc.
* **Configuración:**  Permitir configurar el atajo de teclado o el gestor de paquetes preferido.
* **Mensajes más informativos:**  Mostrar más detalles sobre la sugerencia o el proceso de instalación.
* **Desinstalación automática:**  Crear un script de desinstalación para revertir los cambios.

**Contribuciones 🤝**

¡Las contribuciones son bienvenidas! Si tienes ideas para mejorar este script, encuentras errores o quieres añadir soporte para otros shells o gestores de paquetes, siéntete libre de abrir un "Issue" o enviar un "Pull Request".

**Licencia 📄**

Este proyecto está bajo la licencia **MIT License**. Consulta el archivo `LICENSE` para más detalles.  (Si decides añadir un archivo de licencia).

**Author: Encrypted 👤**

¡Espero que este script te sea útil!  Si te gusta, ¡déjame una estrella en el repositorio! ⭐
