Feature: salud
  Se valida que se ejecutan todos los casos de prueba de la suite Salud:

  cp: salud_vistaGeneral
  Se valida que coinciden los textos de bajada y pie de sección
  Se valida que existe la tarjeta Vacunas
  Se valida que existe la tarjeta Te puede interesar
  Se valida que existe la tarjeta Donación de Órganos y Tejidos
  Se valida que existe la tarjeta Donación de médula ósea
  cp: tarjeta_D_Organos
  Se valida la ejecución de cp: usuario_donante
  Se valida que esta presente la tarjeta: Donación de órganos y tejidos
  Se valida que coinciden los textos: Donación de órganos y tejidos  Manifestación a la donación de órganos y tejidos. Fecha de expresión de voluntad Ver más información
  Se valida que esta presente el logo: Logo del Instituto Nacional Central Único Coordinador de Ablación e Implante
  Se valida que esta presente el logo: Logo de Ministerio de Salud
  Se valida que esta presente el logo: Logo de Cobertura Universal de Salud
  Se valida que esta presente el ícono: fa-heart-o
  Se valida que el link Ver más información   lleva a link a https://qa-mi.argentina.gob.ar/salud/donar-organos donde se muestran los DETALLES de la tarjeta
  Se valida que la tarjeta detalles permite volver a la pantalla anterior
  Se valida el contenido de la tarjeta detalles. campo =   Manifestación en oposición a la donación de órganos y tejidos.
  Se valida el contenido de la tarjeta detalles. campo =   Fecha de expresión de voluntad.
  Se valida el contenido de la tarjeta detalles. campo =   Apellido.
  Se valida el contenido de la tarjeta detalles. campo =   Nombres.
  Se valida el contenido de la tarjeta detalles. campo =   Tipo de documento.
  Se valida el contenido de la tarjeta detalles. campo =   Número de documento.
  Se valida que esta presente el Código QR (qrcode)
  Se valida que se puede descargar credencial
  Se valida que esta presente la sección Compartir mi expresión en redes sociales con los íconos fa-facebook y fa-twitter
  Se valida la ejecución de cp: usuario_no_donante
  Se valida que esta presente la tarjeta: Donación de órganos y tejidos
  Se valida que coinciden los textos: Donación de órganos y tejidos  Manifestación en oposición a la donación de órganos y tejidos.Fecha de expresión de voluntad Ver más información
  Se valida que esta presente el logo: Logo del Instituto Nacional Central Único Coordinador de Ablación e Implante
  Se valida que esta presente el logo: Logo de Ministerio de Salud
  Se valida que esta presente el logo: Logo de Cobertura Universal de Salud
  Se valida que esta presente el ícono: fa-heart-o
  Se valida que el link Ver más información   lleva a link a https://qa-mi.argentina.gob.ar/salud/donar-organos donde se muestran los DETALLES de la tarjeta
  Se valida que esta presente la sección Compartir mi expresión en redes sociales con los íconos fa-facebook y fa-twitter
  Se valida que la tarjeta detalles permite volver a la pantalla anterior
  Se valida el contenido de la tarjeta detalles. campo =   Manifestación en oposición a la donación de órganos y tejidos.
  Se valida el contenido de la tarjeta detalles. campo =   Fecha de expresión de voluntad.
  Se valida el contenido de la tarjeta detalles. campo =   Apellido.
  Se valida el contenido de la tarjeta detalles. campo =   Nombres.
  Se valida el contenido de la tarjeta detalles. campo =   Tipo de documento.
  Se valida el contenido de la tarjeta detalles. campo =   Número de documento.
  Se valida que esta presente el Código QR (qrcode)
  Se valida que se puede descargar credencial
  Se valida la ejecución de cp: usuario_sin_expresion_de_voluntad
  Se valida que existe la tarjeta Donación de órganos y tejidos
  Se valida que contiene el texto: (¿Sabías que un donante puede salvar hasta 7 vidas?)
  Se valida que contiene el texto: (Si querés expresar tu voluntad de donar, podés hacerlo ahora. Es fácil y rápido.)
  Se valida que esta el botón EXPRESÁ TU VOLUNTAD EN FORMA DIGITAL y al seleccionarlo se muestre el formulario (Expresá tu voluntad de donar en forma digital)
  Se valida que esta presente el link Conocé más sobre la donación de órganos y tejidos  (https://www.argentina.gob.ar/donar-organos)
  Se valida la ejecución de cp: formulario_Expresa_tu_voluntad_de_donar_en_forma_digital
  Se valida que esta presente el Formulario Expresá tu voluntad de donar en forma digital
  Se valida que esta presente el campo “Quiero ser donante” y es del tipo (radio) si/no(obligatorio) (radio con las opciones si/no) Por defecto: Vacío.
  Se valida que esta presente el campo “No quiero ser donante” y es del tipo (obligatorio) (radio con las opciones si/no) Por defecto: Vacío.
  Se valida que esta presente el campo “Tipo de documento" trae los datos personales
  Se valida que esta presente el campo “Número de documento" trae los datos personales
  Se valida que esta presente el campo “Nombre" trae los datos personales
  Se valida que esta presente el campo “Apellido" trae los datos personales
  Se valida que esta presente el campo “Sexo" trae los datos personales
  Se valida que esta presente el campo “Correo electrónico" trae los datos personales
  Se valida que esta presente el campo “Fecha de nacimiento" trae los datos personales
  Se valida que el link Datos básicos lleva a Datos básicos
  Se valida que el link Datos opcionales lleva a Datos opcionales
  Se valida que este el campo “Estado civil” y es del tipo (select: Soltero, Casado, Divorciado, Viudo, Vínculo de hecho, Separado.) (obligatorio)
  Se valida que el campo “Teléfono móvil” y es del tipo (obligatorio) Varchar(20) numérico
  Se valida que el campo “Calle” y es del tipo (obligatorio) Varchar(100) alfanumérico
  Se valida que el campo “Número” y es del tipo (obligatorio) Varchar (10) alfanumérico
  Se valida que el campo “Piso” y es del tipo (Opcional) Varchar(100) alfanumérico
  Se valida que el campo “Departamento” y es del tipo (obligatorio) Varchar(5) alfanumérico
  Se valida que el campo “Provincia” y es del tipo (obligatorio) (select con provincias)
  Se valida que el campo “Partido/Departamento” y es del tipo (obligatorio) (select con departamentos)
  Se valida que el campo “Localidad” y es del tipo  (obligatorio) (select con localidades)
  Se valida que el campo “Nombre del familiar/amigo” y es del tipo (opcional)  alfabéticos
  Se valida que el campo “Apellido del familiar/amigo” y es del tipo (opcional)  alfabéticos
  Se valida que el campo “Vínculo” y es del tipo (opcional)  alfabéticos
  Se valida que el campo “Correo electrónico” y es del tipo (opcional) formato mail
  Se valida que el campo “Teléfono móvil” y es del tipo (opcional)  Varchar(20) numérico
  Se valida que el  botón “CANCELAR” borra los datos y vuelva a la sección Salud
  Se valida que el  botón “CONTINUAR” al seleccionarlo muestra la tarjeta DE CONFIRMACIÓN
  validaciones a la tarjeta de CONFIRMACIÓN
  Se valida que esta presente la tarjeta CONFIRMACIÓN despues de seleccionar el botón CONTINUAR el formulario anterior
  Se valida que el texto del campo  “Manifestación de voluntad expresa”  coincide con la Manifestación de voluntad expresa
  Se valida que el campo “Estado civil” trae los datos personales ingresados en el formulario
  Se valida que el campo “Teléfono móvil”  trae los datos personales ingresados en el formulario
  Se valida que el campo “Calle” trae los datos personales ingresados en el formulario
  Se valida que el campo “Número” trae los datos personales ingresados en el formulario
  Se valida que el campo “Piso” trae los datos personales ingresados en el formulario
  Se valida que el campo “Departamento” trae los datos personales ingresados en el formulario
  Se valida que el campo “Provincia” trae los datos personales ingresados en el formulario
  Se valida que el campo “Partido/Departamento” trae los datos personales ingresados en el formulario
  Se valida que el campo “Localidad” trae los datos personales ingresados en el formulario
  Se valida que el campo “Nombre del familiar/amigo” trae los datos personales ingresados en el formulario
  Se valida que el campo “Apellido del familiar/amigo” trae los datos personales ingresados en el formulario
  Se valida que el campo “Vínculo” trae los datos personales ingresados en el formulario
  Se valida que el campo “Correo electrónico” trae los datos personales ingresados en el formulario
  Se valida que el campo “Teléfono móvil” trae los datos personales ingresados en el formulario
  Se valida que esta presente el  botón “VOLVER” y que se puede volver a la instancia anterior para modificar algo y CANCELAR
  cp: tarjeta_M_Osea
  Se valida que esta presente la tarjeta de Donación de médula ósea
  Se valida que estan los textos: Donación de órganos y tejidos  Manifestación en oposición a la donación de órganos y tejidos.Fecha de expresión de voluntad Ver más información
  Se valida que esta presente el ícono: text-muted
  Se valida que esta presente el botón: BUSCÁ LOS CENTROS MÁS CERCANOS y que lleve a https://www.argentina.gob.ar/donar-medula/donde
  Se valida que esta presente el link Conocé más sobre la donación de médula ósea   lleva a https://www.argentina.gob.ar/donar-medula
  cp: tarjeta_Te_puede_Interesar
  Se valida que esta presente la tarjeta Te puede interesar
  Se valida que esta el texto: Te puede interesar Cuidar la salud Recomendaciones para cuidar tu salud en cada momento de tu vida. Prevención y cuidados Información y recomendaciones para que vos y tu familia adopten hábitos saludables. Crecer con salud Recomendaciones para el embarazo, parto, puerperio, lactancia y crianza.
  Se valida que el link Cuidar la salud   lleva a https://www.argentina.gob.ar/tema/cuidarlasalud
  Se valida que el link Prevención y cuidados   lleva a https://www.argentina.gob.ar/salud/prevencionycuidados
  Se valida que el link Crecer con salud   lleva a https://www.argentina.gob.ar/salud/crecerconsalud
  cp: tarjeta_Vacunas
  Se valida que está presente la Tarjeta Vacunas
  Se valida que la tarjeta tiene el texto:
  Configurá tu perfil para notificaciones Queremos ofrecerte información personalizada. Completá tus datos y podrás recibir notificaciones de las vacunas que te corresponden, actualizaciones en el calendario de vacunación y avisos de campañas.¿Trabajás como personal de saludSí    No    No quiero declarar ¿Tenés hijos de entre 6 meses y 2 años de edad? Sí    No    No quiero declararTu edadTenés 26 años.La calculamos en base a tu fecha de nacimiento.Abrir vínculo en nueva pestañaConocé todas las vacunas que están incluidas en el Calendario Nacional de Vacunación y cuáles te tocan aplicarte según tu edad. Siempre consultalo antes con tu médico.
  Se valida que en el caso de ingrresar con usuario mujer está el texto: ¿Estás embarazada o tuviste un bebé en los últimos 10 días? Sí    No    No quiero declarar
  Se valida que en el caso de ingresar con usuarario Hombre no está el texto: ¿Estás embarazada o tuviste un bebé en los últimos 10 días? Sí    No    No quiero declarar
  Se valida que esta presente el ícono: icono-arg-vacunas
  Se valida que esta presente el link Conocé todas las vacunas  y lleva a https://www.argentina.gob.ar/salud/vacunas
  Se valida que esta presente el link fecha de nacimiento  y lleva a https://qa-id.argentina.gob.ar/perfil/

  Cada cp tiene su explicación de ejecución en el link del mismo


  Scenario: Salud

    Given Ingresar a QA con CUIL 20172243259
    Then  Se verifican los textos de bajada y pie de sección Salud
    Then  Se verifica si esta presente en la sección Vacunas la tarjeta Vacunas
    Then  Se verifica si esta presente en la sección Vacunas tarjeta Te puede interesar
    Then  Se verifica si esta presente en la sección Vacunas tarjeta Donación de Órganos y Tejidos
    Then  Se verifica si esta presente en la sección Vacunas tarjeta Donación de médula ósea

    Given Ingresar a QA con CUIL 20172243259
    Then Se verificara la tarjeta Donación de Órganos
    Given Ingresar a QA con CUIL 20172243259
    Then Se verificara la tarjeta Detalles Donación de Órganos

    Given Ingresar a QA con CUIL 20258489749
    Then Se verificara la tarjeta Donación de Órganos 20258489749
    Given Ingresar a QA con CUIL 20258489749
    Then Se verificara la tarjeta Detalles Donación de Órganos 20258489749

    Given Ingresar a QA con CUIL 27271042669
    Then Se verificara la tarjeta Donación de Órganos con usuario sin expresión Donar 27271042669

    Given Ingresar a QA con CUIL 27271042669
    Then Verificaciones Formulario Expresá tu voluntad de donar en forma digital
    Then Verificaciones al contenido de la tarjeta de CONFIRMACIÓN

    Given Ingresar a QA con CUIL 20288463213
    Then Tarjeta donación de Médula ósea con usuario Donante 20288463213

    Given Ingresar a QA con CUIL 27271042669
    Then Tarjeta donación de Médula ósea con usuario no Donante 27271042669

    Given Ingresar a QA con CUIL 20288463213
    Then Verificar la tarjeta Te puede interesar para el CUIL 20288463213

    Given Ingresar a QA con CUIL 20288463213
    Then Verificar la tarjeta Vacunas Hombre CUIL 20288463213

    Given Ingresar a QA con CUIL 20258489749
    Then Verificar la tarjeta Vacunas Mujer CUIL 20258489749

    Then cerrar la sesión









