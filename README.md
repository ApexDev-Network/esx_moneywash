# ESX_MoneyWash

Sistema de lavado de dinero para servidores FiveM con el framework **ESX**. Permite a los jugadores lavar dinero negro en ubicaciones configurables con impuestos, temporizador y control por trabajos.

---

## 🧾 Características

- ✅ Lavado de dinero sucio configurable por zonas.
- ⏱️ Temporizador por ubicación (opcional).
- 💸 Impuesto o tasa de conversión configurable por zona.
- 🧭 Varias ubicaciones de lavado posibles.
- 🛠️ Compatible con control por trabajos (`job`).
- 🎨 Personalización del marcador: color, tamaño y tipo.
- 🌐 Multilenguaje: fácil de traducir (`locales`).
- 🔁 Sistema de versiones automático (comprobación con GitHub).

---

## ⚙️ Instalación

1. Copia la carpeta del recurso a tu directorio:  
   `resources/[esx]/esx_moneywash`

2. Asegúrate de tener `es_extended` funcionando correctamente.

3. En tu `server.cfg`, añade:

   ```cfg
   start esx_moneywash
    ```

   🧠 Configuración
Edita el archivo config.lua para:

Cambiar las coordenadas de cada zona de lavado.

Establecer qué trabajos pueden usar cada punto (Jobs).

Ajustar la tasa de conversión (TaxRate).

Activar o desactivar el temporizador (enableTimer) y su duración (timer).

Personalizar los marcadores (Color, Size, Type).

## 🧑‍💻 Comandos y uso
Acércate a una zona configurada.

Pulsa E para abrir el menú.

Introduce la cantidad de dinero sucio que deseas lavar.

Recibirás la cantidad limpia según el impuesto definido.

## 📦 Requisitos
Framework: ESX

Recurso: es_extended

Sistema de menús y notificaciones de ESX

## 🗣️ Idiomas
El script soporta múltiples idiomas mediante archivos en locales/.
Actualmente incluye:

en.lua (inglés)

Puedes añadir otros como es.lua, fr.lua, etc.

##  Créditos
Autor original: iTzCrutchie

Adaptado y mejorado por: Carri - ByLcarma para ApexDev Network

## 📝 Licencia
Este recurso se distribuye bajo Licencia Pública General GNU v3 (GPL-3.0).
Eres libre de usarlo, modificarlo y redistribuirlo bajo los términos de dicha licencia.


