Feature: En este CP se validara el funcionamiento del formulario de registro de mi argentina
  https://testlink.argentina.gob.ar/lib/testcases/tcPrint.php?show_mode=&testcase_id=572&tcversion_id=573

  @id_formulario_registro
  Scenario: Ingrese al ambiente donde realizara la prueba: QA
    Then Ingrese al ambiente donde realizara la prueba: QA

  @id_formulario_registro
  Scenario: Seleccionar el enlace ¿Todavía no estás registrado? debeia redireccionar al formulario
    Then Seleccionar el enlace Todavía no estás registrado

  @id_formulario_registro     @id_formulario_registro_id_type
  Scenario: Seleccione el campo id_type y verificar que es un select con 2 opciones CUIL y Pasaporte
    Then validaciones al campo id_type

  @id_formulario_registro      @mia_id_number
  Scenario: Verificar que el campo id_number sea numérico para CUIL
    Then verificacion del campo id_number CUIL

  @id_formulario_registro       @mia_id_number
  Scenario: Verificar el texto de validación campo id_number para CUIL cuando se ingresa texto debe decir: (El CUIL que ingresaste es incorrecto.)
    Then texto validacion campo id_number CUIL

  @id_formulario_registro       @mia_id_number
  Scenario: Verificar que el campo id_number sea numérico para PASAPORTE
    Then verificacion del campo id_number PASAPORTE

  @id_formulario_registro       @mia_id_number
  Scenario: Verificar el texto de validación campo id_number para PASAPORTE cuando se ingresan números debe decir: (El CUIL que ingresaste es incorrecto.)
    Then texto validacion campo id_number PASAPORTE

  @id_formulario_registro       @mia_id_nombre
  Scenario: Verificar que el campo NOMBRE es de tipo texto
    Then Verificar campo NOMBRE es tipo texto

  @id_formulario_registro       @mia_id_nombre
  Scenario: Verificar texto de validación del campo NOMBRE
    Then Verificar texto de validación del campo NOMBRE

  @id_formulario_registro       @mia_id_apellido
  Scenario: Verificar que el campo APELLIDO es de tipo texto
    Then Verificar campo APELLIDO es tipo texto

  @id_formulario_registro       @mia_id_apellido
  Scenario: Verificar texto de validación del campo APELLIDO
    Then Verificar texto de validación del campo APELLIDO

  @id_formulario_registro       @mia_id_radio
  Scenario: verifique que es un campo tipo RADIO con los géneros MASCULINO y FEMENINO y el texto de validación
    Then verifique el campo tipo RADIO
    Then verifique el texto de validación delRADIO

  @id_formulario_registro       @mia_id_fecha
  Scenario: verifique el campo Fecha de Nacimiento que debe ser del tipo fecha y que el texto de validación es: ['La fecha es incorrecta. Debe tener el formato DD/MM/AAAA.']
    Then Verificar el formato de la fecha de nacimiento
    Then Verificar texto de validación del campo fecha N

  @id_formulario_registro       @mia_id_pais
  Scenario: verifique el campo PAIS DE RESIDENCIA que es un campo tipo select con los paises. Verificar el texto de validación que debe decir es: ['Falta ingresar este dato. ']
    Then verifique el campo PAIS DE RESIDENCIA
    Then texto de validación PAIS DE RESIDENCIA

  @id_formulario_registro       @mia_id_provincia
  Scenario: verifique el campo PROVINCIA que es un campo tipo select con las provincias. Verificar el texto de validación que debe decir es: ['Falta ingresar este dato. ']
    Then verifique el campo PROVINCIA
    Then texto a validar en el campo PROVINCIA

  @id_formulario_registro       @mia_id_municipio
  Scenario: verifique el campo MUNICIPIO que es un campo tipo select con los municipios. Verificar el texto de validación que debe decir es: ['Falta ingresar este dato. ']
    Then verifique el campo MUNICIPIO
    Then texto de validación MUNICIPIO

  @id_formulario_registro       @mia_id_localidad
  Scenario: verifique el campo LOCALIDAD que es un campo tipo select con las localidades. Verificar el texto de validación que debe decir es: ['Falta ingresar este dato. ']
    Then verifique el campo LOCALIDAD
    Then texto de validaciónLOCALIDAD

  @id_formulario_registro       @mia_id_mail
  Scenario: verifique el campo CORREO ELECTRONICO que es del tipo mail, con el texto de validación: ['El correo electrónico no es válido, por favor intentá de nuevo.' ]
    Then verifique el campo CORREO ELECTRONICO
    Then texto de validación CORREO ELECTRONICO

  @id_formulario_registro       @mia_id_pass
  Scenario: verifique el campo CONTRASEÑA que es del tipo password y con un minimo de seguridad de 8 caracteres, con el texto de validación : ['La contraseña es demasiado corta.']
    Then verifique el campo CONTRASEÑA
    Then texto de validación CONTRASEÑA

  @id_formulario_registro       @mia_id_he_leido
  Scenario: verifique que el campo (He leído y acepto los términos y condiciones) es del tipo checkbox con el texto de validación: ['Tenés que aceptar los términos y condiciones.']
    Then verifique el campo HE LEIDO
    Then texto de validación HE LEIDO

  @id_formulario_registro       @mia_id_pasaporte
  Scenario: Ingresar al sistema con un usuario con PASAPORTE
    Then Ingresar con un usuario PASAPORTE

  @id_formulario_registro       @mia_id_cuil
  Scenario: Ingresar al sistema con un usuario con CUIL
    Then Ingresar con un usuario CUIL


