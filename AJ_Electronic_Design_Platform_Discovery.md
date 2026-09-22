# AJ Electronic Design Platform - Product Discovery

> Documento de descubrimiento de producto basado en el sitio web actual (referencia).  
> Alcance: landing pública, usuario administrador, módulos de Clientes, Cotizaciones y Certificados de entrega.  
> Fecha de análisis: agosto 2026.  
> Idioma del contenido público actual: principalmente inglés. Meta description en español.

---

## 1. Resumen general del proyecto actual

El proyecto actual es el sitio web de **AJ Electronic Design SA de CV**, una casa de diseño electrónico con sede en Zapopan, Jalisco. Cumple dos funciones principales:

| Función | Descripción |
|---------|-------------|
| **Landing pública** | Presenta la empresa, servicios, proyectos visuales, video institucional y canal de contacto. Objetivo: generar confianza y captar prospectos. |
| **Panel administrativo interno** | Permite al administrador gestionar clientes, elaborar cotizaciones comerciales y emitir certificados de entrega asociados a órdenes de compra. |

En términos de negocio, el sistema actual actúa como:

1. **Vitrina comercial** de una solución integral (“one-stop”) para convertir una idea en producto.
2. **Herramienta operativa** para el ciclo comercial interno: alta de cliente → cotización → orden de compra → certificado(s) de entrega.
3. **Canal de captación** mediante formulario de contacto (nombre, email, teléfono opcional, mensaje).

No existe en la landing un CTA directo de “solicitar cotización” conectado al módulo interno; la captación pública termina en el formulario de contacto, y la cotización se genera después de forma administrativa.

---

## 2. Descripción de la empresa

### Qué hace

**AJ Electronic Design** es una *electronic design house* que desarrolla:

- Hardware
- Firmware
- Software
- Diseño industrial
- Manufactura / ensamble

Mensaje central (texto institucional actual):

> “AJ Electronic Design is an electronic design house that develops hardware, firmware, software, industrial design as well as manufacture, located in Zapopan Jalisco, Mexico. We are a **one-stop** solution ready to listen anyone interested in turning an idea into a **product**.”

Meta description (español):

> “AJ Electronic Design somos una casa de diseño electrónico especializados en el desarrollo de Hardware, Firmware, Software y Diseño Industrial.”

### Industria

Diseño electrónico, desarrollo de producto embebido, PCB, firmware, software (web/móvil/cloud) y manufactura electrónica de bajo/medio volumen.

### Tipo de clientes que atiende

Por logos y referencias visibles en páginas de servicios, atienden principalmente:

- Empresas industriales y manufactureras (ej. Bosch, Mabe, Continental, Intel, NXP)
- Empresas de producto tecnológico / IoT / dispositivos médicos o sensores (ej. iBiosense, EMED)
- Otras marcas/proyectos regionales o especializados (CIU, Ditra, Delphian, Zoltek, Nacuri, Diaman, DMI, Foodever, Strap, etc.)

Perfil inferido: B2B, clientes que necesitan llevar un producto electrónico desde concepto hasta prototipo o producción.

### Problemas que resuelve

- Fragmentación de proveedores (diseño, firmware, software, mecánica y ensamble en un solo proveedor).
- Necesidad de pasar de idea a producto con acompañamiento técnico.
- Desarrollo de PCB, firmware embebido, apps/plataformas y carcasas/mecánica.
- Prototipado y ensamble SMT/TH de bajo volumen.
- Documentación comercial (cotizaciones) y evidencia de entrega (certificados).

### Imagen que intenta transmitir

- Solución integral (“one-stop”)
- Capacidad técnica amplia (herramientas, procesadores, clientes reconocidos)
- Profesionalismo industrial
- Ubicación local en Zapopan con alcance nacional/internacional (envíos mencionados en manufactura)

Razón social visible: **AJ Electronic Design SA de CV**.

---

## 3. Servicios identificados

### 3.1 Hardware

| Aspecto | Detalle |
|---------|---------|
| **Nombre** | Hardware |
| **Subtítulo** | Consultancy, design, production |
| **Descripción** | Diseño electrónico personalizado, prototipos, migraciones tecnológicas, selección de componentes, documentación y contacto con proveedores. |
| **Beneficio** | Llevar el diseño de PCB/producto electrónico desde consultoría hasta archivos de fabricación. |
| **Evidencia** | Página `Services_hardware`; ícono `assets/images/hardware.png`; tiles en home; logos de herramientas (Altium, Cadence, Eagle, KiCad) y clientes. |

Capacidades destacadas: multilayer (hasta 14 capas), alto voltaje AC, SMPS, señales analógicas/mixtas, high-speed, control de impedancia, length-match, HDI, BGA, RF, EMC, rigid/flex/rigid-flex, fixtures, ICT, panelizado.

Proceso comunicado: component selection → libraries → schematic capture → placement → layout → fabrication files.

### 3.2 Firmware

| Aspecto | Detalle |
|---------|---------|
| **Nombre** | Firmware |
| **Subtítulo** | Consultancy, architecture, development |
| **Descripción** | Prototipos, migraciones, desarrollo de producto, consultoría, drivers y arquitectura. |
| **Beneficio** | Software embebido listo para IoT, RTOS, comunicaciones y algoritmos. |
| **Evidencia** | Página `Services_firmware`; ícono `assets/images/firmware.png`; cinta de procesadores (Broadcom, Renesas, Microchip, Nordic, NXP, ST, TI). |

Capacidades: C y embedded Linux, IoT (WiFi, BLE, LoRa), gráficos, RTOS, RFID, analógico, algoritmos, power, voice assistants, protocolos (USB, Ethernet, Profibus, etc.).

### 3.3 Software

| Aspecto | Detalle |
|---------|---------|
| **Nombre** | Software |
| **Descripción** | UI/UX, web, bases de datos, servidores, cloud, migraciones, algoritmos, procesamiento de imagen, prototipos, apps iOS/Android. |
| **Beneficio** | Complementar el producto electrónico con interfaces, backends y apps. |
| **Evidencia** | Página `Services_software`; ícono `assets/images/software.png`; herramientas (Java, Python, Android, AWS, Firebase, Flutter, Mongo, Node.js, SQL, Visual Studio, Xcode). |

### 3.4 Diseño industrial

| Aspecto | Detalle |
|---------|---------|
| **Nombre** | Industrial Design |
| **Descripción** | Dirección de proyecto de diseño, investigación, concepto, MVP funcional, diseño para manufactura, soluciones mecánicas, moldes, FEA, modelado 3D, materiales, proveedores nacionales/internacionales, prototipado digital y de gran formato. |
| **Beneficio** | Dar forma física y fabricabilidad al producto. |
| **Evidencia** | Página `Services_industrial`; ícono `assets/images/industrial_design.png`. |

### 3.5 Manufactura

| Aspecto | Detalle |
|---------|---------|
| **Nombre** | Manufacture |
| **Descripción** | Ensamble prototipo/bajo volumen, SMT y TH, bring-up, automatización de materiales, perfiles de horno, inspección visual/eléctrica, programación, pruebas con fixture, empaque y envíos nacionales/internacionales, consultoría de diseño. Servicios adicionales: control de inventario, importación custom, reparación, ensamble de producto. |
| **Beneficio** | Pasar del diseño a unidades físicas entregables. |
| **Evidencia** | Página `Services_manufacture`; ícono `assets/images/manufacture.png`; proceso paste → placement → bake → inspection → cleaning → packaging; clientes Intel, NXP, Bosch, Continental, etc. |

---

## 4. Secciones actuales de la landing principal

### Navegación pública

**Home · Our Services · Contact · Privacy · Log In**

### Estructura de la página de inicio

| # | Sección | Contenido principal | Medios | Conservar | Mejorar visualmente |
|---|---------|---------------------|--------|-----------|---------------------|
| 1 | **Top bar** | Logo + menú | `logo.png` | Marca y navegación clara | Jerarquía, CTA primario |
| 2 | **Hero / carrusel** | 3 imágenes rotativas | `carousel1/2/3.jpeg` | Imágenes de ambiente/producto | Agregar mensaje + CTA; hoy el texto del carrusel está vacío |
| 3 | **What is AJ?** | Texto institucional + video + imagen | `AJ_SUB.mp4`, `about_us.png` | Copy “one-stop” y video | Layout más moderno; video muy pesado |
| 4 | **Our Services** | 5 tiles circulares con íconos | Íconos de cada servicio | Los 5 pilares | Mejor storytelling y beneficios |
| 5 | **Projects** | Galería de 20 imágenes con “likes” | `projects/1.jpg`…`20.jpg` | Evidencia visual de trabajo | Convertir en casos de éxito con nombre/problema/resultado |
| 6 | **Footer** | Nav, contacto, redes, copyright | `FooterAJ.png`, íconos sociales | Datos de contacto y legal | Claridad y consistencia |

### Otras páginas públicas

| Página | Propósito |
|--------|-----------|
| **Our Services** (5 verticales) | Detalle de cada servicio, capacidades, herramientas, clientes |
| **Contact** | Formulario + datos + mapa + QR |
| **Privacy** | Diálogo / descarga de política de privacidad (PDF en Drive) |
| **Log In** | Acceso al panel interno |

### Contenido legacy no montado en la home actual

Existen componentes no usados en la composición viva (banner de slogan placeholder, team banner, estadísticas “800 Products / 100 Clients”). No deben tomarse como hechos de negocio confirmados hasta validarlos con dirección.

---

## 5. Contenido que vale la pena conservar

### Textos y mensajes comerciales

- Posicionamiento **“one-stop solution”**: idea → producto.
- Descripción de casa de diseño electrónico en Zapopan, Jalisco.
- Cinco pilares de servicio: Hardware, Firmware, Software, Industrial Design, Manufacture.
- Enfoque B2B y capacidad técnica amplia.
- Razón social: AJ Electronic Design SA de CV.

### Servicios

- Listados completos de capacidades por vertical.
- Procesos de Hardware y Manufacture (útiles para sección “Cómo trabajamos”).
- Stacks/herramientas y familias de procesadores (prueba de expertise).

### Casos / credibilidad

- Logos de clientes por vertical.
- Galería de proyectos (aunque hoy sin narrativa).
- Video institucional `AJ_SUB.mp4`.

### Datos de contacto

- Teléfono, email, dirección, Google Maps, Facebook, Instagram, LinkedIn.
- Formulario de contacto (campos y flujo de agradecimiento).

### Frases de valor

- “turning an idea into a product”
- “one-stop solution”
- “electronic design house”

### Información institucional

- Meta description en español (útil para SEO bilingüe).
- Política de privacidad (aunque deba revisarse legalmente).

### Documentos comerciales internos (contenido de negocio)

- Estructura de cotización (proyecto, folio, atención a, solicitado por, términos, tabla de conceptos).
- Estructura de certificado de entrega (folio, OC, productos, IVA, firma).

---

## 6. Identidad visual actual

### Tipografía

- Familia principal: **Nunito**

### Colores principales

| Rol | Color | Aprox. |
|-----|-------|--------|
| Primario de tema | Verde Material `green[400]` | `#66BB6A` |
| Secundario de tema | Azul Material `blue[400]` | `#42A5F5` |
| Acento de UI pública / botones | Teal oscurecido con negro | `#00786D` → `#004B44` |
| Texto institucional | Teal + negro (~0.3–0.5) | `#00695F` / `#004B44` |
| Fondos | Blancos y grises claros | `#FFFFFF`, `#F5F5F5`, `#EEEEEE` |

### Colores secundarios / de apoyo

| Color | Uso típico |
|-------|------------|
| `darkNight` `#263238` | Contraste / admin |
| `lila` `#D3D8FE` | Acento suave |
| `red` / `yellow` / `darkAmber` | Estados y alertas (admin/OC) |
| Gradientes `white→teal→white` y `green→white` | Decoración |

### Logo

| Asset | Uso |
|-------|-----|
| `assets/images/logo.png` | Logo principal en navegación |
| `assets/images/logo_aj.png` | Variante |
| `assets/images/AJletras.png` | Wordmark (uso limitado) |
| `assets/images/HeaderAJ.png` / `FooterAJ.png` | Branding en piezas/PDF |
| `assets/images/headerPDF.png` / `footerPDF.png` / `pdfLogo.png` | Documentos PDF |

### Estilo general

- Sitio corporativo clásico de empresa tecnológica/industrial.
- Mucho blanco, acentos teal/verde, tipografía redondeada (Nunito).
- Secciones con tiles, cintas de logos (belts) y grids de proyectos.
- Sensación: profesional, técnica, algo genérica/datada; fuerte en contenido técnico, débil en narrativa visual moderna.

### Qué podría mantenerse

- Paleta teal/verde como base de marca (previa validación de brand book).
- Logo principal.
- Íconos de los 5 servicios.
- Video institucional (optimizado).
- Logos de clientes (con permiso de uso).

### Qué podría modernizarse

- Hero sin mensaje ni CTA.
- Dependencia excesiva de tiles/cards genéricos.
- Galería de proyectos sin contexto.
- Video de 119 MB.
- Imágenes de proyectos muy pesadas (varias >2 MB, una de 6.2 MB).
- Mezcla de inglés dominante en UI pública vs. mercado mexicano (oportunidad bilingüe).
- Estética Material por defecto vs. sistema visual propio más distintivo.

---

## 7. User Admin actual

### Quién lo usa

Usuario de tipo **`admin`** (administrador interno).  
Accede por pantalla **Log In** (usuario + contraseña) y llega al dashboard/menú administrativo.

> Nota: existen otros tipos de usuario en el sistema (`employee`, `client`, `guest`), pero **fuera de alcance** para este discovery. Aquí solo se documenta el administrador actual.

### Cómo accede

1. Navegación pública → **Log In**
2. Credenciales → autenticación por token
3. Menú administrativo con accesos a módulos

### Pantallas relevantes al alcance

| Módulo en menú | Nombre visible | Función |
|----------------|----------------|---------|
| Customers | Customers | Alta/edición/listado de clientes |
| Quotations | Quotations | Cotizaciones por cliente |
| Deliver Certificate | Deliver Certificate | Órdenes de compra y certificados de entrega |

### Qué puede hacer el administrador (alcance)

- Administrar clientes (crear, editar, eliminar, asociar logo y dirección).
- Configurar porcentajes/márgenes por cliente.
- Definir tipo de cambio (dólar compra/venta) para cotizar.
- Crear, editar, copiar, eliminar y exportar cotizaciones (PDF/Word, EN/ES).
- Crear órdenes de compra (OC) por cliente.
- Emitir, editar y eliminar certificados de entrega parciales o totales.
- Exportar certificados en PDF (español/inglés).
- Dar seguimiento visual al avance de surtido de cada OC.

### Información que administra

Datos maestros de clientes, perfiles de costo/margen, cotizaciones comerciales, órdenes de compra del cliente y evidencias de entrega con conceptos, montos e IVA.

---

## 8. Clientes

### Campos identificados

| Campo | Significado |
|-------|-------------|
| `id_customer` | Identificador |
| `name` | Nombre de empresa / cliente |
| `email` | Correo de contacto |
| `rfc` | RFC (México) |
| `contact` | Persona de contacto |
| `phone` | Teléfono |
| `lada` | Clave lada / país |
| `country`, `state`, `city`, `street`, `cp` | Dirección |
| `logo` | Logo del cliente (almacenado como bytes/serializado) |
| `vicinity` | Colonia/vicinity (se combina con street en captura) |

### Datos que se capturan

Identidad fiscal/comercial, contacto operativo, domicilio (con apoyo de autocomplete de lugares) y logo para documentos.

### Acciones del administrador

- Listar clientes
- Agregar / editar / eliminar
- Abrir cotizaciones del cliente
- Abrir órdenes de compra / certificados del cliente

### Relación con cotizaciones

- Toda cotización pertenece a un cliente (`id_Customer`).
- Cada cliente puede tener un perfil de porcentajes (`Porcentajes`) usado al cotizar.
- El nombre del cliente se guarda también como snapshot en la cotización.

### Relación con certificados de entrega

- Las OC y los certificados se asocian al mismo cliente.
- La dirección del cliente se reutiliza/prellena al crear OC/entregas.

### Reglas de negocio inferidas

- Un cliente es la entidad raíz del flujo comercial.
- El logo del cliente aparece en documentos exportados.
- Eliminar un cliente es acción confirmada (impacto en históricos: **pendiente por confirmar** a nivel backend).
- RFC sugiere operación formal mexicana.

---

## 9. Cotizaciones

### Tipos de cotización

| Tipo | Nombre | Enfoque |
|------|--------|---------|
| 1 | **Assemblies** | Costeo completo de ensamble (componentes, PCB, ensamble, Digi-Key, DHL, márgenes) |
| 2 | **Projects** | Costeo por horas/disciplinas (Hardware, Firmware, Software, Industrial design, Administrative, Other) |
| 3 | **Services/Material** | Líneas libres de servicios/materiales (qty, precio, descripción, imagen, notas) |

### Campos principales de la cotización

| Campo | Significado |
|-------|-------------|
| `id_Quote` | Identificador |
| `id_Customer` / `customerName` | Cliente |
| `id_Percentages` | Perfil de márgenes |
| `quoteType` | 1 / 2 / 3 |
| `quoteNumber` | Folio (ej. `PREFIX_00001`; copias con `*`) |
| `date` | Fecha |
| `proyectName` | Nombre del proyecto |
| `requestedByName`, `requestedByEmail` | Solicitante |
| `attentionTo` | Atención a (default: “Departamento de Compras”) |
| `quantity` | Cantidad (especialmente Assemblies) |
| `dollarSell`, `dollarBuy` | Tipo de cambio |
| `deliverTimeInfo` | Tiempo de entrega comercial |
| `currency` | MXN / USD |
| `conIva`, `iva`, `isr` | Tratamiento fiscal / factores |

Bloques adicionales en Assemblies: componentes, PCB (capas, tamaño, color, imagen, tiempos, costos), ensamble (SMT/TH, MPN, capas), Digi-Key, totales USD/MXN.

### Información que aparece en el documento

- Branding AJ + logo del cliente
- Proyecto, número de cotización, empresa, atención a, solicitado por
- Términos / tiempo de entrega
- Tabla: Descripción · Unitario · Cantidad · Total
- Notas comerciales (plantillas EN/ES)
- Exportación PDF o Word, inglés o español
- Nombre típico: `quotation-{folio}.pdf/.docx`

### Acciones del administrador

- Definir FX global de sesión
- Configurar porcentajes del cliente
- Crear cotización eligiendo tipo
- Editar / copiar / eliminar
- Vista previa
- Exportar PDF/Word

> **Pendiente por confirmar:** la edición/descarga de cotizaciones tipo Projects desde el listado parece incompleta en la versión actual (“No data yet”).

### Relación con clientes

Obligatoria: se cotiza siempre bajo un cliente existente, usando sus márgenes.

### Relación con certificados de entrega

- Relación **conceptual** por cliente, no un estado formal “cotización aceptada → certificado”.
- El modelo de productos contempla `id_quote`, pero al crear entregas actualmente se guarda sin vínculo efectivo (`id_quote = 0`).
- **Inferencia:** la aceptación comercial ocurre fuera del sistema; después se crea una OC.

### Reglas de negocio inferidas

- Folio autogenerado por cliente con prefijo y correlativo de 5 dígitos.
- Copiar cotización genera nuevo folio con `*`.
- Los porcentajes son factores multiplicadores (ej. IVA 1.16, márgenes AJ por rubro), no simples porcentajes UI.
- Defaults de porcentajes al crear perfil nuevo (aprox.): IVA 1.16, ISR 1.32, liberation 0.19, ajComponents 1.1, ajDigikey 1.18, ajPCB 3.35, ajEnsamble 1.4.
- No hay campo de estatus de cotización (borrador/enviada/aceptada) visible. **Inferencia / pendiente por confirmar.**

---

## 10. Certificados de entrega

### Modelo operativo real

El módulo trabaja en dos niveles:

1. **Orden de Compra (OC / Purchase Order)** — contrato/pedido del cliente.
2. **Certificado de Entrega (Entrega)** — evidencia de entrega parcial o total contra esa OC.

### Campos de Orden de Compra

| Campo | Significado |
|-------|-------------|
| `id_OC` | Identificador |
| `id_customer` | Cliente |
| `OC` | Número de OC del cliente |
| `fecha_inicio`, `fecha_fin` | Vigencia / fechas |
| `solicitante` | Quién solicita |
| `prioridad` | High / Medium / Low |
| `pais`, `estado`, `ciudad`, `street`, `cp` | Destino |
| `moneda` | USD / MXN |
| `descripcion` | Descripción del producto/servicio |
| `cantidad` | Unidades contratadas |
| `status` | Unidades ya entregadas (contador numérico, no enum) |
| `prefijo` | Prefijo de folio de certificados |
| `precioUnitario` | Precio unitario default |
| `tag` | Alias / etiqueta del producto |

### Campos del Certificado de Entrega

| Campo | Significado |
|-------|-------------|
| `id_Entrega` | Identificador |
| `id_OC` | OC asociada |
| `id_Customer` | Cliente |
| `certificadoEntrega` | Folio del certificado |
| `Fecha` | Fecha de entrega |
| `Direccion` | Dirección de entrega |
| `Solicitante` | Solicitante |
| `Remitente` | Remitente (default: admin logueado) |
| `Notes` | Notas; frecuentemente progreso `entregado/total` |
| `entregasRelacionadas` | Otros folios de la misma OC |

### Conceptos del certificado

| Campo | Significado |
|-------|-------------|
| `descripcion` | Concepto |
| `cantidad` | Cantidad entregada |
| `precioUnitario` | Precio |
| `importe` | cantidad × precio |
| `image`, `type` | Opcionales |

### Cómo se genera

1. Elegir cliente.
2. Crear OC (número de PO, prefijo, descripción, cantidad, precio, fechas, prioridad, moneda, dirección).
3. Sobre la OC, crear Entrega (folio auto, datos prellenados).
4. Agregar uno o más conceptos/productos.
5. Guardar y exportar PDF EN/ES.
6. El contador `status` de la OC refleja avance de surtido.

### Relación con cotización

- Misma familia comercial y mismo cliente.
- **No hay conversión automática cotización → certificado** en el flujo actual.
- **Inferencia:** cotización → aceptación externa → alta de OC → certificados.

### Relación con clientes

Directa y obligatoria. El estado visual del cliente en el selector de OC resume si todas sus OC están surtidas.

### Resultado final

Documento PDF **Certificado de Entrega / Delivery Certificate** con:

- Folio, OC, fecha, empresa, solicitado por, dirección
- Tabla de conceptos y montos
- Subtotal, IVA (16% fijo en PDF), total
- Nota de progreso
- Bloque de firma digital del usuario admin (nombre, email, timestamp)
- Entregas relacionadas
- Línea de conformidad (“Recibí el producto…”)
- Teléfono de oficina
- Branding AJ

Nombre típico: `CertificadoEntrega_{folio}_{empresa}.pdf`

### Reglas de negocio inferidas

- Una OC puede tener múltiples entregas parciales.
- Folio: `{prefijo}00001` y siguientes correlativos de 5 dígitos; unicidad por cliente.
- Semáforo de OC: 0 entregado (rojo), parcial (naranja), completo (verde).
- IVA de certificado en PDF parece fijo a 16% (independiente de factores de cotización). **Pendiente por confirmar si debe unificarse.**
- El admin puede ajustar manualmente el contador de entregados.

---

## 11. Flujo principal esperado

```text
Prospecto (landing/contacto)
        ↓
Cliente (alta administrativa)
        ↓
Configuración de porcentajes + tipo de cambio
        ↓
Cotización (Assemblies / Projects / Services-Material)
        ↓
Exportación PDF/Word → envío al cliente
        ↓
[Aceptación comercial — fuera del sistema / pendiente por confirmar]
        ↓
Orden de Compra (OC)
        ↓
Certificado(s) de Entrega (parciales o total)
        ↓
Cierre cuando unidades entregadas = cantidad OC
```

### Cómo inicia

- **Público:** contacto por formulario, teléfono, email o redes.
- **Interno:** el admin crea el cliente y arranca la cotización.

### Datos que se capturan en el camino

1. Datos del cliente y logo  
2. Márgenes/impuestos/DHL  
3. Detalle técnico-comercial de la cotización  
4. Datos de OC del cliente  
5. Evidencia de cada entrega y conceptos  

### Pasos del administrador

Login → Customers → (Percentages) → Quotations → exportar → Deliver Certificate → crear OC → crear entregas → exportar certificados → monitorear surtido.

### Documento que se genera primero

**Cotización** (PDF/Word). Después, el **Certificado de Entrega** (PDF) como evidencia de cumplimiento.

### Cómo una cotización podría convertirse en certificado

Hoy **no hay conversión automática**. El puente operativo es la **OC** del mismo cliente.  
Oportunidad de producto: vincular cotización aceptada → OC → entregas.

### Resultado final para la empresa

- Propuesta comercial formal.
- Control de pedidos del cliente.
- Evidencia documental de entregas (útil para cobranza, calidad y cierre operativo).

---

## 12. Entidades importantes del negocio

| Entidad | Representa | Campos clave | Relaciones |
|---------|------------|--------------|------------|
| **Administrador** | Usuario interno con acceso total | usuario, nombre, email, token | Crea/edita todas las entidades del alcance; firma certificados |
| **Cliente** | Empresa compradora | nombre, RFC, contacto, dirección, logo | 1 → N cotizaciones; 1 → N OC; 0..1 porcentajes |
| **Porcentajes** | Perfil de márgenes/impuestos del cliente | IVA, ISR, DHL, liberation, márgenes AJ | Pertenece a 1 cliente; usado por cotizaciones |
| **Cotización** | Propuesta comercial | folio, tipo, proyecto, moneda, FX, totales | Pertenece a 1 cliente; tiene líneas/preview; Digi-Key si Assemblies |
| **Conceptos de cotización** | Renglones de la propuesta | descripción, unitario, cantidad, total, notas, imagen | N por cotización |
| **Digi-Key (línea)** | Costos Digi-Key en Assemblies | digikey, impuesto, aj | N por cotización tipo Assemblies |
| **Orden de Compra (OC)** | Pedido/contrato del cliente | número OC, cantidad, status entregado, prefijo, moneda | Pertenece a 1 cliente; 1 → N certificados |
| **Certificado de entrega** | Evidencia de envío/entrega | folio, fecha, dirección, remitente, notas | Pertenece a 1 OC y 1 cliente |
| **Conceptos del certificado** | Productos/servicios entregados | descripción, cantidad, precio, importe | N por certificado |
| **Servicios (catálogo comercial público)** | Oferta de la empresa | 5 verticales | Informativos en landing; no son catálogo transaccional del admin |
| **Folios** | Identificadores de negocio | quoteNumber, certificadoEntrega, prefijo OC | Reglas de correlativo por cliente |
| **Archivos / evidencias** | Logos, imágenes de PCB/líneas, PDF/Word exportados | logo cliente, imágenes de concepto, PDFs | Adjuntas a cliente/cotización/certificado |

---

## 13. Datos de contacto y comunicación

### Contacto

| Canal | Dato |
|-------|------|
| **Teléfono** | +52 (33) 2733 0962 |
| **Email** | contact@aj-electronic-design.com |
| **Dirección** | Enrique Díaz de León 157, Miguel de la Madrid Hurtado, Zapopan, Jalisco, Mexico |
| **Maps** | https://g.page/AJElectronicDesign?share |

### Redes sociales

| Red | URL |
|-----|-----|
| Facebook | http://www.Facebook.com/AJElectronicDesign/ |
| Instagram | http://www.Instagram.com/aj.electronic.design |
| LinkedIn | http://www.linkedin.com/company/aj-electronic-design/ |

### Formulario público

| Campo | Obligatorio |
|-------|-------------|
| Name | Sí |
| Email | Sí |
| Phone | No |
| Message | Sí |
| CTA | **Send** |

Mensajes del formulario:

- Éxito: “Thank you for contacting us / Soon someone will be in touch with you”
- Error: “There was a problem sending the message. / Sorry for the inconvenience”
- Validación: “Please provide a Name, Email and a Message”

### CTAs actuales

- Navegación a Services / Contact / Privacy / Log In
- Tiles de servicios → detalle
- Send (contacto)
- Download (privacy)
- Interacción de likes en proyectos
- Play/mute del video

### Mensajes comerciales clave

- Casa de diseño electrónico integral
- One-stop solution
- Idea → product
- Especialistas en Hardware, Firmware, Software y Diseño Industrial (+ Manufacture)

---

## 14. Assets importantes

### Logos y branding

| Ruta | Uso actual | Peso aprox. | Recomendación |
|------|------------|-------------|---------------|
| `assets/images/logo.png` | Logo header | 56K | Conservar |
| `assets/images/logo_aj.png` | Variante | 48K | Conservar |
| `assets/images/AJletras.png` | Wordmark | ~16K | Evaluar uso en nueva marca |
| `assets/images/HeaderAJ.png` | Header gráfico / docs | 60K | Conservar / modernizar |
| `assets/images/FooterAJ.png` | Footer gráfico | 168K | Optimizar / modernizar |
| `assets/images/headerPDF.png` | PDF docs | 76K | Conservar para documentos |
| `assets/images/footerPDF.png` | PDF docs | 16K | Conservar |
| `assets/images/pdfLogo.png` | PDF | 52K | Conservar |

### Imágenes principales landing

| Ruta | Uso | Peso | Recomendación |
|------|-----|------|---------------|
| `assets/images/carousel1.jpeg` | Hero | 160K | Conservar / reemplazar con fotos nuevas |
| `assets/images/carousel2.jpeg` | Hero | 116K | Idem |
| `assets/images/carousel3.jpeg` | Hero | 168K | Idem |
| `assets/images/about_us.png` | About | 208K | Conservar o actualizar |
| `assets/images/map.png` | Contacto | 1.4M | Optimizar o usar mapa embebido |
| `assets/images/qr_contact.png` | Contacto | ~4.5K | Conservar si sigue vigente |
| Íconos de servicios (`hardware.png`, etc.) | Tiles servicios | 5–8K | Conservar como base |

### Video

| Ruta | Uso | Peso | Recomendación |
|------|-----|------|---------------|
| `assets/videos/AJ_SUB.mp4` | Video institucional en About | **119M** | Conservar contenido; **optimizar/re-encodear** urgentemente; considerar hosting streaming |

### Proyectos / casos visuales

| Ruta | Uso | Peso | Recomendación |
|------|-----|------|---------------|
| `assets/images/projects/1.jpg` … `20.jpg` | Galería pública | 28K–**6.2M** | Conservar selección; optimizar todas; agregar narrativa |

Imágenes especialmente pesadas a optimizar: `4.jpg` (6.2M), `16.jpg` (5.3M), `10.jpg` (2.6M), `12.jpg`/`15.jpg` (2.2M).

### Logos de clientes / herramientas

Carpetas relevantes:

- `assets/images/hardware/clientes/`
- `assets/images/firmware/clientes/`
- `assets/images/software/Clientes/`
- `assets/images/manufacture/clientes/`
- `assets/images/hardware/herramientas/`
- `assets/images/software/herramientas/`
- `assets/images/firmware/Procesadores/`

**Recomendación:** conservar para credibilidad; validar permisos de marca; unificar set maestro.

### Documentos

| Ruta | Uso | Peso | Recomendación |
|------|-----|------|---------------|
| `assets/template.docx` | Plantilla Word cotizaciones | 12K | Conservar como referencia de formato |
| Privacy PDF (Google Drive) | Política de privacidad | externo | Revisar vigencia legal |

### Íconos sociales

`assets/icons/fb.png`, `instagram.png`, `linkedin.png` (+ `google.png` sin uso claro).

---

## 15. Reglas de negocio inferidas

> Leyenda: **Confirmado en producto actual** · **Inferencia** · **Pendiente por confirmar**

### Acceso administrador

- El acceso interno requiere login con usuario/contraseña y token. **Confirmado**
- El menú admin expone Customers, Quotations y Deliver Certificate. **Confirmado**
- Solo el tipo admin tiene permiso amplio de rutas. **Inferencia** (matriz de permisos sugiere esto)

### Clientes

- Cliente es prerequisito para cotizar y emitir OC/certificados. **Confirmado**
- Se capturan RFC, contacto, dirección y logo. **Confirmado**
- Un cliente tiene un perfil de porcentajes asociado. **Confirmado / inferido como 0..1**

### Cotizaciones

- Existen exactamente 3 tipos: Assemblies, Projects, Services/Material. **Confirmado**
- Folio autogenerado por cliente. **Confirmado**
- Se exporta PDF/Word EN/ES. **Confirmado**
- No existe estatus de aceptación dentro del sistema. **Confirmado (ausencia)**
- La aceptación ocurre fuera de la plataforma. **Inferencia**

### Certificados / OC

- El certificado no nace directo de la cotización; nace de una OC. **Confirmado**
- Una OC admite entregas parciales. **Confirmado**
- `status` de OC = unidades entregadas. **Confirmado**
- Folio de certificado correlativo por prefijo/cliente. **Confirmado**
- IVA en PDF de certificado = 16%. **Confirmado en generación actual**
- Relación formal cotización ↔ certificado está débil/no usada. **Confirmado**

### Folios

- Cotización: `{prefijo}_{#####}` (+ `*` en copias). **Confirmado**
- Certificado: `{prefijo}{#####}` con 5 dígitos. **Confirmado**

### Campos obligatorios (inferidos por formularios)

- Contacto público: Name, Email, Message. **Confirmado**
- Cliente/cotización/OC/entrega: hay validaciones de formulario; lista exacta de obligatoriedad backend **pendiente por confirmar**.

### Documentos generados

- Cotización PDF/Word. **Confirmado**
- Certificado de entrega PDF. **Confirmado**
- No se observó generación automática de OC como PDF separado. **Inferencia**

---

## 16. Oportunidades para la nueva plataforma

### Landing

- Hero con mensaje claro + CTA (“Solicitar cotización” / “Contáctanos”).
- Presentar los 5 servicios con beneficios de negocio, no solo listas técnicas.
- Convertir la galería en **casos de éxito** (cliente/industria/reto/resultado).
- Landing realmente responsive y bilingüe (ES/EN).
- Optimizar video e imágenes para carga rápida.
- Navegación más clara y menos dependiente de páginas densas de bullets.

### Clientes

- Ficha de cliente unificada (datos + cotizaciones + OC + entregas).
- Búsqueda/filtros y estado comercial del cliente.
- Evitar duplicados (RFC/nombre).

### Cotizaciones

- Asistente de creación por tipo con menos pasos.
- Estatus del ciclo: borrador → enviada → aceptada → rechazada → vencida.
- Vista previa fiel al documento final antes de exportar.
- Reutilizar líneas/plantillas frecuentes.
- Vincular cotización aceptada con creación de OC.
- **Oportunidad futura:** asistente de IA para armar borradores de cotización, sugerir tiempos/márgenes y revisar completitud (sin reemplazar criterio comercial).

### Certificados

- Flujo guiado OC → entrega parcial/total.
- Cálculo automático de avance y cierre.
- Relación explícita con cotización de origen.
- Mejor previsualización del PDF.
- Historial de entregas relacionadas más claro para el cliente interno.

### Admin general (dentro del alcance)

- Dashboard básico: cotizaciones del mes, OC abiertas, entregas pendientes, clientes recientes.
- Reducir idas y vueltas entre pantallas.
- Unificar idioma de trabajo interno (hoy mezcla ES/EN en labels).

---

## 17. Recomendación de estructura para la nueva landing

Propuesta de estructura moderna (contenido, no implementación):

| Sección | Propósito | Contenido reusable del proyecto actual |
|---------|-----------|----------------------------------------|
| **1. Hero** | Primera impresión + CTA | Mensaje one-stop; imágenes de carrusel o foto industrial nueva; CTA a contacto/cotización |
| **2. Propuesta de valor** | Explicar por qué AJ | Texto “What is AJ?”; énfasis idea → producto |
| **3. Servicios** | Mostrar los 5 pilares | Hardware, Firmware, Software, Industrial Design, Manufacture + íconos y resúmenes |
| **4. Proceso de trabajo** | Reducir incertidumbre | Procesos ya descritos en Hardware y Manufacture; adaptar a 4–6 pasos transversales |
| **5. Tecnologías** | Prueba de capacidad | Logos de herramientas, procesadores y stacks actuales |
| **6. Casos de éxito** | Credibilidad | Selección de `projects/*.jpg` + logos de clientes; agregar narrativa nueva |
| **7. Video de presentación** | Conexión humana/técnica | `AJ_SUB.mp4` optimizado |
| **8. Industrias / clientes** | Prueba social | Logos Bosch, Mabe, Intel, NXP, Continental, etc. |
| **9. CTA de cotización** | Conversión | Nuevo bloque: “Cuéntanos tu proyecto” (más directo que solo Contact) |
| **10. Contacto** | Cierre | Teléfono, email, dirección, mapa, redes, formulario |
| **11. Footer** | Legal y navegación | Razón social, privacy, redes, copyright |

### Principios de contenido recomendados

- Una idea por sección.
- Beneficio primero, detalle técnico después.
- Casos con resultado, no solo fotos.
- CTA visible desde el hero y repetido antes de contacto.
- Mantener la profundidad técnica en páginas de servicio, no saturar el home.

---

## 18. Resumen ejecutivo

El proyecto actual de AJ Electronic Design concentra **valor real de negocio** en tres capas:

1. **Marca y oferta pública** bien definida: casa de diseño electrónico integral en Zapopan, con cinco servicios claros y un mensaje potente de *one-stop / idea to product*.
2. **Credenciales comerciales** (clientes, capacidades, video, proyectos visuales) suficientes para reinventar una landing moderna.
3. **Operación interna prioritaria** ya existente alrededor de **Clientes → Cotizaciones → Órdenes de Compra → Certificados de Entrega**.

### Qué conviene conservar

- Posicionamiento y copy institucional.
- Catálogo de servicios y capacidades.
- Datos de contacto y presencia en redes.
- Lógica de negocio de clientes, folios, tipos de cotización, OC y certificados.
- Estructura documental de cotizaciones y certificados.
- Assets de marca, video y evidencia visual (optimizados).

### Qué debe replantearse

- Presentación visual y narrativa de la landing (hero, casos, CTA).
- Experiencia móvil y performance de medios.
- Claridad del flujo cotización → aceptación → OC → entrega (hoy fragmentado).
- Vista unificada del cliente y dashboard del administrador.
- Casos de éxito con historia, no solo imágenes con likes.

### Módulos internos prioritarios para la nueva plataforma

1. **Clientes**
2. **Cotizaciones**
3. **Certificados de entrega** (incluyendo OC como contenedor operativo)

### Cómo sirve este discovery

Este documento define el **mapa de producto y negocio** necesario para construir **AJ Electronic Design Platform** desde cero en React:

- Qué decir en la nueva landing.
- Qué servicios y mensajes son canónicos.
- Qué entidades y flujos debe soportar el admin.
- Qué reglas ya existen y cuáles hay que confirmar.
- Qué oportunidades de UX/producto aportan valor sin salir del alcance.

La siguiente etapa natural (fuera de este documento) será transformar este discovery en requerimientos funcionales, wireframes y backlog priorizado para la nueva plataforma.

---

## Anexo A — APIs relacionadas al alcance

Base observada: servidor AWS EC2 `:8000`

| Dominio | Endpoints relevantes |
|---------|----------------------|
| Auth | `/Login` |
| Contacto público | `/Contact` |
| Clientes | `/Customers/{post\|get\|delete\|select\|update}` |
| Cotizaciones | `/quotes/{post\|get\|delete\|update\|select\|select/customer}` |
| Porcentajes | `/porcentajes/{post\|update\|select/customer}` |
| Digi-Key | `/digikeys/{post\|get\|delete\|update\|select/quote}` |
| Preview cotización | `/preview/{post\|get\|delete\|update\|select/quote}` |
| OC | `/OrdenCompra/{post\|get\|delete\|update\|select/orden\|select/customer}` |
| Entregas | `/Entregas/{post\|get\|delete\|update\|select\|select/customer}` |
| Productos OC/líneas | `/ProductosOC/{post\|get\|delete\|update\|select\|select/oc}` |
| Likes proyectos (público) | `/AboutProjects` |

> Las APIs se documentan solo como referencia de capacidades actuales del negocio, no como diseño técnico de la nueva plataforma.

---

## Anexo B — Pendientes por confirmar con dirección / operaciones

1. ¿La aceptación de cotización debe formalizarse dentro del sistema?
2. ¿Debe existir vínculo obligatorio Cotización → OC → Certificado?
3. ¿Los porcentajes e IVA deben unificarse entre cotización y certificado?
4. ¿El módulo Projects de cotizaciones está en uso real hoy?
5. ¿Qué casos de la galería pueden publicarse con nombre de cliente y resultados?
6. ¿Idioma oficial de la nueva landing: ES, EN o bilingüe?
7. ¿Brand book oficial (colores/logo) distinto al implementado actualmente?
8. ¿Permisos exactos: solo admin opera estos tres módulos?

---

*Fin del documento de Product Discovery — AJ Electronic Design Platform.*
