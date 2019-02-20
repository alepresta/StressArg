Feature: En este Cp se verificara el formulario Expresá tu voluntad de donar en forma digital

  Verificaciones que se van a realizar al formulario  EXPRESÁ TU VOLUNTAD DE DONAR EN FORMA DIGITAL
  ==================================================================================================
  Verificar que este presente el Formulario Expresá tu voluntad de donar en forma digital
  Verificar que este el campo “Quiero ser donante” y sea del tipo (radio) si/no(obligatorio) (radio con las opciones si/no) Por defecto: Vacío.
  Verificar que este el campo “No quiero ser donante” y sea del tipo (obligatorio) (radio con las opciones si/no) Por defecto: Vacío.
  Verificar que este el campo “Tipo de documento“ traiga los datos personales
  Verificar que este el campo “Número de documento“ traiga los datos personales
  Verificar que este el campo “Nombre“ traiga los datos personales
  Verificar que este el campo “Apellido“ traiga los datos personales
  Verificar que este el campo “Sexo“ traiga los datos personales
  Verificar que este el campo “Correo electrónico“ traiga los datos personales
  Verificar que este el campo “Fecha de nacimiento“ traiga los datos personales
  Verificar que el link Datos básicos lleva a Datos básicos
  Verificar que el link Datos opcionales lleva a Datos opcionales
  Verificar que este el campo “Estado civil” y sea del tipo (select: Soltero, Casado, Divorciado, Viudo, Vínculo de hecho, Separado.) (obligatorio)
  Verificar que este el campo “Teléfono móvil” y sea del tipo (obligatorio) Varchar(20) numérico
  Verificar que este el campo “Calle” y sea del tipo (obligatorio) Varchar(100) alfanumérico
  Verificar que este el campo “Número” y sea del tipo (obligatorio) Varchar (10) alfanumérico
  Verificar que este el campo “Piso” y sea del tipo (Opcional) Varchar(100) alfanumérico
  Verificar que este el campo “Departamento” y sea del tipo (obligatorio) Varchar(5) alfanumérico
  Verificar que este el campo “Provincia” y sea del tipo (obligatorio) (select con provincias)
  Verificar que este el campo “Partido/Departamento” y sea del tipo (obligatorio) (select con departamentos)
  Verificar que este el campo “Localidad” y sea del tipo  (obligatorio) (select con localidades)
  Verificar que este el campo “Nombre del familiar/amigo” y sea del tipo (opcional)  alfabéticos
  Verificar que este el campo “Apellido del familiar/amigo” y sea del tipo (opcional)  alfabéticos
  Verificar que este el campo “Vínculo” y sea del tipo (opcional)  alfabéticos
  Verificar que este el campo “Correo electrónico” y sea del tipo (opcional) formato mail
  Verificar que este el campo “Teléfono móvil” y sea del tipo (opcional)  Varchar(20) numérico
  Verificar que esté el  botón “CANCELAR” borre los datos y vuelva a la sección Salud
  Verificar que esté el  botón “CONTINUAR” y al seleccionarlo muestra una tarjeta DE CONFIRMACIÓN con todos los datos que van a ser enviados para que

  Verificaciones que se van a realizar al contenido de la tarjeta de CONFIRMACIÓN
  ===============================================================================
  Verificar que este presente la tarjeta CONFIRMACIÓN despues de seleccionar CONTINUAR el formulario anterior
  Verificar el texto del campo  “Manifestación de voluntad expresa”  coincida con la Manifestación de voluntad expresa
  Verificar que este el campo “Estado civil” coincida con lo ingresado en el formulario
  Verificar que este el campo “Teléfono móvil”  coincida con lo ingresado en el formulario
  Verificar que este el campo “Calle” coincida con lo ingresado en el formulario
  Verificar que este el campo “Número” coincida con lo ingresado en el formulario
  Verificar que este el campo “Piso” coincida con lo ingresado en el formulario
  Verificar que este el campo “Departamento” coincida con lo ingresado en el formulario
  Verificar que este el campo “Provincia” coincida con lo ingresado en el formulario
  Verificar que este el campo “Partido/Departamento” coincida con lo ingresado en el formulario
  Verificar que este el campo “Localidad” coincida con lo ingresado en el formulario
  Verificar que este el campo “Nombre del familiar/amigo” coincida con lo ingresado en el formulario
  Verificar que este el campo “Apellido del familiar/amigo” coincida con lo ingresado en el formulario
  Verificar que este el campo “Vínculo” coincida con lo ingresado en el formulario
  Verificar que este el campo “Correo electrónico” coincida con lo ingresado en el formulario
  Verificar que este el campo “Teléfono móvil” coincida con lo ingresado en el formulario
  Verificar que esté el  botón “VOLVER” y que se vuelva a la instancia anterior para modificar algo y CANCELAR

  @formulario_Expresa_tu_voluntad_de_donar_en_forma_digital    @salud
  Scenario:
    Given Ingresar a QA con CUIL 27271042669
    Then Verificaciones Formulario Expresá tu voluntad de donar en forma digital
    Then Verificaciones al contenido de la tarjeta de CONFIRMACIÓN


