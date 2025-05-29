# Prueba Técnica de Automatización 🧪

Automatización del formulario disponible en [demoqa.com/automation-practice-form](https://demoqa.com/automation-practice-form) usando Robot Framework y Selenium.

## Tecnologías usadas 🚀

- Python 3.13.3
- Robot Framework
- SeleniumLibrary
- Git Bash

## Estructura del proyecto 📁

```
prueba-tecnica-robot/
├── tests/              # Pruebas automatizadas (.robot)
├── resources/          # Keywords y recursos reutilizables
├── drivers/            # WebDriver (chromedriver.exe)
├── results/            # Logs y reportes generados por Robot
├── requirements.txt    # Librerías necesarias
├── README.md           # Documentación del proyecto
└── .gitignore          # Archivos/carpetas ignoradas por git
```

## Preparar el entorno ⚙️

1. Clona este repositorio:

```bash
git clone https://github.com/tu-usuario/prueba-tecnica-robot.git
cd prueba-tecnica-robot
```

2. Crea y activa el entorno virtual:

```bash
python -m venv venv
source venv/Scripts/activate  # En Git Bash (Windows)
```

3. Instala las dependencias:

```bash
pip install -r requirements.txt
```

4. Descarga y coloca `chromedriver.exe` en la carpeta `drivers/`.

## Ejecutar pruebas ▶️

```bash
robot -d results tests/formulario.robot
```

- `-d results`: guarda los logs y reportes en la carpeta `results/`.

## Resultados 📊

Se generan automáticamente los archivos:

- `log.html`
- `report.html`
- `output.xml`

en la carpeta `results/`.

## Autor ✅

Joseph Rujano  
[https://www.linkedin.com/in/joseph-rujano/]
