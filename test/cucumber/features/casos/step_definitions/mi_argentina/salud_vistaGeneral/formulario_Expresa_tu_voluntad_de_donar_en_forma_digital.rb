
Then /^Verificaciones Formulario Expresá tu voluntad de donar en forma digital$/ do
  menu_salud
  menu_credenciales
  menu_discapacidad
  #menu_configurarMiCuenta
  menu_salud
  menu_credenciales
  menu_discapacidad
  menu_inicio
  menu_turnos
  menu_perfilConductor
  menu_formacion
  #menu_datosBasicos
  #menu_datosOpcionales
  #menu_misVehiculos
  #menu_misDispositivos
  #menu_redesSociales
  menu_configurarNotificaciones
  menu_salud
  ir_formulario = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/a')
  ir_formulario.click
  puts "Verificando que este el Formulario Expresá tu voluntad de donar en forma digital"
  puts "================================================================================"
  tarjeta_formulario = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[1]/h2').text
  texto_tarjeta_formulario = 'Completá los datos que falten del formulario'
  esIgual(texto_tarjeta_formulario, tarjeta_formulario, 'Formulario ¿está?:')
  puts "Verificando que coincidan los textos de los Datos Personales del CUIL 20-25848974-9"
  puts "===================================================================================="
  datos_personales = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[2]/div/h3/b').text
  texto_datos_personales = 'Datos personales'
  esIgual(texto_datos_personales, datos_personales, 'Datos personales:')
  datos_personales_p = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[2]/div/h3/small').text
  texto_datos_personales = '(Obligatorio)'
  esIgual(texto_datos_personales, datos_personales_p, '(Obligatorio):')
  parrafo_darospersonales = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[2]/div/p').text
  texto_parrafo_darospersonales = 'Si algún dato no es correcto, podés modificarlo o cargarlo desde tus Datos básicos o tus Datos opcionales.'
  esIgual(texto_parrafo_darospersonales, parrafo_darospersonales, 'Si algún dato no es correcto, podés modificarlo o cargarlo desde tus Datos básicos o tus Datos opcionales.:')
  documento = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[1]/label').text
  texto_documento = 'Tipo de documento'
  esIgual(texto_documento, documento, 'Tipo de documento:')
  contenido_documento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[1]/p/b').text
  texto_contenido_documento = 'DNI'
  esIgual(texto_contenido_documento, contenido_documento, 'DNI:')
  numero_documento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[2]/label').text
  texto_numero_documento = 'Número de documento'
  esIgual(texto_numero_documento, numero_documento, 'Número de documento:')
  contenido_numero_documento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[2]/p/b').text
  texto_contenido_numero_documento = '27104266'
  esIgual(texto_contenido_numero_documento, contenido_numero_documento, '27104266:')
  nombre = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[3]/label').text
  texto_nombre = 'Nombre'
  esIgual(texto_nombre, nombre, 'Nombre:')
  contenido_nombre = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[3]/p').text
  texto_contenido_nombre = 'Adriana Ivonne'
  esIgual(texto_contenido_nombre, contenido_nombre, 'Adriana Ivonne:')
  apellido = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[4]/label').text
  texto_apellido = 'Apellido'
  esIgual(texto_apellido, apellido, 'Apellido:')
  contenido_apellido = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[4]/p/b').text
  texto_contenido_apellido = 'Lista'
  esIgual(texto_contenido_apellido, contenido_apellido, 'Lista:')
  sexo = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[5]/label').text
  texto_sexo = 'Sexo'
  esIgual(texto_sexo, sexo, 'Sexo:')
  contenido_sexo = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[5]/p/b').text
  texto_contenido_sexo = 'F'
  esIgual(texto_contenido_sexo, contenido_sexo, 'F:')
  correo_electronico = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[6]/label').text
  texto_correo_electronico = 'Correo electrónico'
  esIgual(texto_correo_electronico, correo_electronico, 'Correo electrónico:')
  contenido_correo_electronico = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[6]/p/b').text
  texto_contenido_correo_electronico = 'eaarached+003@gmail.com'
  esIgual(texto_contenido_correo_electronico, contenido_correo_electronico, 'eaarached+003@gmail.com:')
  fecha_nacimiento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[7]/label').text
  texto_fecha_nacimiento  = 'Fecha de nacimiento'
  esIgual(texto_fecha_nacimiento, fecha_nacimiento, 'Fecha de nacimiento:')
  contenido_fecha_nacimiento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[7]/p/b').text
  texto_contenido_fecha_nacimiento  = '16/04/1985'
  esIgual(texto_contenido_fecha_nacimiento, contenido_fecha_nacimiento, '16/04/1985:')
  puts "Verificando que esten todos los campos y los textos de los mismos"
  puts "=================================================================="
  manifestacion_positiva = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[1]/div[1]/label/b').text
  texto_manifestacion_positiva = 'Quiero ser donante'
  esIgual(texto_manifestacion_positiva, manifestacion_positiva, 'Quiero ser donante:')
  manifestacion_positiva_p = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[1]/div[1]/p/small').text
  texto_manifestacion_positiva_p = 'Manifestación afirmativa a la donación de órganos y tejidos.'
  esIgual(texto_manifestacion_positiva_p, manifestacion_positiva_p, 'Manifestación afirmativa a la donación de órganos y tejidos.:')
  manifestacion_negativa = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[1]/div[2]/label/b').text
  texto_manifestacion_negativa = 'No quiero ser donante'
  esIgual(texto_manifestacion_negativa, manifestacion_negativa, 'No quiero ser donante:')
  manifestacion_negativa_p = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[1]/div[2]/p/small').text
  texto_manifestacion_negativa_p = 'Manifestación de oposición a la donación de órganos y tejidos.'
  esIgual(texto_manifestacion_negativa_p, manifestacion_negativa_p, 'Manifestación de oposición a la donación de órganos y tejidos.:')
  estado_civil = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[8]/div/label').text
  texto_estado_civil = 'Estado civil'
  esIgual(texto_estado_civil, estado_civil, "#{texto_estado_civil}")
  telefonoMovil0  = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[9]/div/fieldset/div[1]/label').text
  texto_telefonoMovil0   = 'Teléfono móvil'
  esIgual(texto_telefonoMovil0, telefonoMovil0, "#{texto_telefonoMovil0}")
  datos_del_domicilio = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[4]/div/h3/b').text
  texto_datos_del_domicilio  = 'Datos del domicilio'
  esIgual(texto_datos_del_domicilio, datos_del_domicilio, "#{texto_datos_del_domicilio}")
  small_obligatorio = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[4]/div/h3/small').text
  texto_small_obligatorio = '(Obligatorio)'
  esIgual(texto_small_obligatorio, small_obligatorio, "#{texto_small_obligatorio}")
  calle = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[1]/div/label').text
  texto_calle = 'Calle'
  esIgual(texto_calle, calle, "#{texto_calle}")
  numero = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[2]/div/label').text
  texto_numero = 'Número'
  esIgual(texto_numero, numero, "#{texto_numero}")
  piso = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[4]/div/label').text
  texto_piso  = 'Piso (Opcional)'
  esIgual(texto_piso, piso, "#{texto_piso}")
  departamento = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[5]/div/label').text
  texto_departamento  = 'Departamento (Opcional)'
  esIgual(texto_departamento, departamento, "#{texto_departamento}")
  provincia = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[1]/label').text
  texto_provincia = 'Provincia'
  esIgual(texto_provincia, provincia, "#{texto_provincia}")
  partidoDepartamento = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[2]/label').text
  texto_partidoDepartamento = 'Partido/Departamento'
  esIgual(texto_partidoDepartamento, partidoDepartamento, "#{texto_partidoDepartamento}")
  localidad = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[3]/label').text
  texto_localidad = 'Localidad'
  esIgual(texto_localidad, localidad, "#{texto_localidad}")
  datos_del_familiar_amigo = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[4]/div/h3/b').text
  texto_datos_del_familiar_amigo = 'Datos del familiar/amigo a quien comunico mi decisión (Opcional)'
  esIgual(texto_datos_del_familiar_amigo, datos_del_familiar_amigo, "#{texto_datos_del_familiar_amigo}")
  nombre_del_familiar_amigo = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[1]/label').text
  texto_nombre_del_familiar_amigo = 'Nombre del familiar/amigo'
  esIgual(texto_nombre_del_familiar_amigo, nombre_del_familiar_amigo, "#{texto_nombre_del_familiar_amigo}")
  apellido_del_familiar_amigo = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[2]/label').text
  texto_apellido_del_familiar_amigo = 'Apellido del familiar/amigo'
  esIgual(texto_apellido_del_familiar_amigo, apellido_del_familiar_amigo, "#{texto_apellido_del_familiar_amigo}")
  vinculo_del_familiar_amigo = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[3]/label').text
  texto_vinculo_del_familiar_amigo = 'Vínculo'
  esIgual(texto_vinculo_del_familiar_amigo, vinculo_del_familiar_amigo, "#{texto_vinculo_del_familiar_amigo}")
  correo_electronico_del_familiar_amigo = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[4]/label').text
  texto_correo_electronico_del_familiar_amigo = 'Correo electrónico'
  esIgual(texto_correo_electronico_del_familiar_amigo, correo_electronico_del_familiar_amigo, "#{texto_correo_electronico_del_familiar_amigo}")
  telefonoMovil1  = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[1]/label').text
  texto_telefonoMovil1   = 'Teléfono móvil'
  esIgual(texto_telefonoMovil1, telefonoMovil1, "#{texto_telefonoMovil1}")
  puts "Validaciones de campos"
  puts "======================"
  puts "Verificando campo Estado civil:"
  campo_estado_civil_Soltero   = capturar(:css, '#estado_civil > select:nth-child(2) > option:nth-child(2)')
  texto_campo_estado_civil_Soltero = 'Soltero/a'
  campo_estado_civil_Soltero.click
  campo_estado_civil_Soltero = campo_estado_civil_Soltero.text
  esIgual(texto_campo_estado_civil_Soltero, campo_estado_civil_Soltero, "#{texto_campo_estado_civil_Soltero}")
  campo_estado_civil_Casado   = capturar(:css, '#estado_civil > select:nth-child(2) > option:nth-child(3)')
  texto_campo_estado_civil_Casado = 'Casado/a'
  campo_estado_civil_Casado.click
  campo_estado_civil_Casado = campo_estado_civil_Casado.text
  esIgual(texto_campo_estado_civil_Casado, campo_estado_civil_Casado, "#{texto_campo_estado_civil_Casado}")
  campo_estado_civil_Divorciado   = capturar(:css, '#estado_civil > select:nth-child(2) > option:nth-child(4)')
  texto_campo_estado_civil_Divorciado = 'Divorciado/a'
  campo_estado_civil_Divorciado.click
  campo_estado_civil_Divorciado = campo_estado_civil_Divorciado.text
  esIgual(texto_campo_estado_civil_Divorciado, campo_estado_civil_Divorciado, "#{texto_campo_estado_civil_Divorciado}")
  campo_estado_civil_Viudo   = capturar(:css, '#estado_civil > select:nth-child(2) > option:nth-child(5)')
  texto_campo_estado_civil_Viudo = 'Viudo/a'
  campo_estado_civil_Viudo.click
  campo_estado_civil_Viudo = campo_estado_civil_Viudo.text
  esIgual(texto_campo_estado_civil_Viudo, campo_estado_civil_Viudo, "#{texto_campo_estado_civil_Viudo}")
  campo_estado_civil_Vinculo   = capturar(:css, '#estado_civil > select:nth-child(2) > option:nth-child(6)')
  texto_campo_estado_civil_Vinculo = 'Vinculo'
  campo_estado_civil_Vinculo.click
  campo_estado_civil_Vinculo = campo_estado_civil_Vinculo.text
  esIgual(texto_campo_estado_civil_Vinculo, campo_estado_civil_Vinculo, "#{texto_campo_estado_civil_Vinculo}")
  campo_estado_civil_Separado   = capturar(:css, '#estado_civil > select:nth-child(2) > option:nth-child(7)')
  texto_campo_estado_civil_Separado = 'Separado/a'
  campo_estado_civil_Separado.click
  campo_estado_civil_Separado = campo_estado_civil_Separado.text
  esIgual(texto_campo_estado_civil_Separado, campo_estado_civil_Separado, "#{texto_campo_estado_civil_Separado}")
  puts "Verificando que muestre datos de usuario:"
  prefijoTelefonoMovil = capturar(:css , '#telefono_movil_0 > input:nth-child(2)')
  texto_prefijoTelefonoMovil = '0388'
  prefijoTelefonoMovil.send_keys texto_prefijoTelefonoMovil
  telefonoMovil12 = capturar(:css , '#telefono_movil_1 > input:nth-child(2)')
  texto_telefonoMovil = '33191433'
  telefonoMovil12.send_keys texto_telefonoMovil
  calleD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[1]/div/input')
  texto_calleD = 'Esperanza Ibáñez de Yecora s/n Mariano Moreno'
  calleD.send_keys texto_calleD
  numeroD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[2]/div/input')
  texto_numeroD = '157.257'
  numeroD.send_keys texto_numeroD
  pisoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[4]/div/input')
  texto_pisoD = 'PB'
  pisoD.send_keys texto_pisoD
  departamentoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[5]/div/input')
  texto_departamentoD = 'CP: 4'
  departamentoD.send_keys texto_departamentoD
  provinciaD = capturar(:css , '#provincia > select:nth-child(2) > option:nth-child(11)')
  provinciaD.click
  partidoDepartamentoD = capturar(:css , '#partido > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(10)')
  partidoDepartamentoD.click
  localidadD = capturar(:css , '#localidad > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(3)')
  localidadD.click
  nombreAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[1]/input')
  texto_nombreAmigoD = 'Marina Melisa'
  nombreAmigoD.send_keys texto_nombreAmigoD
  apellidoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[2]/input')
  texto_apellidoAmigoD = 'Aguirre Perez Guillo'
  apellidoAmigoD.send_keys texto_apellidoAmigoD
  vinculoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[3]/input')
  texto_vinculoAmigoD = 'La hija de un Tio que se llama'
  vinculoAmigoD.send_keys texto_vinculoAmigoD
  correoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[4]/input')
  texto_correoAmigoD = 'eaarached+012@gmail.com'
  correoAmigoD.send_keys texto_correoAmigoD
  prefijoTelefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[1]/div/input')
  texto_prefijoTelefonoMovilAmigoD = '0388'
  prefijoTelefonoMovilAmigoD.send_keys texto_prefijoTelefonoMovilAmigoD
  telefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[2]/div/input')
  texto_telefonoMovilAmigoD = '21321450'
  telefonoMovilAmigoD.send_keys texto_telefonoMovilAmigoD
  donante = capturar(:css, 'div.radio:nth-child(1) > label:nth-child(1) > input:nth-child(1)')
  nodonante = capturar(:css, 'div.radio:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
  donante.click
  nodonante.click
  cancelar_boton = capturar(:xpath , '//*[@id="incucai_cancelar"]')
  cancelar_boton.click
  menu_salud
  capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/a').click
  puts "Verificando que se pueda cancelar............[PASSED]"
puts "validaciones de obligatoriedad"
  continuar_boton = capturar(:xpath, '//*[@id="verificacion_incucai"]')
  continuar_boton.click
obligatoriedad_alerta_icono = esta_este_elemento(:css , '.fa-exclamation-circle')
  if obligatoriedad_alerta_icono  == true
    puts "Ícono fa fa-exclamation-circle fa-fw fa-3x: #{obligatoriedad_alerta_icono}.......[PASSED]"
  else
    puts fail "Ícono fa fa-exclamation-circle fa-fw fa-3x: #{obligatoriedad_alerta_icono}..........[ERROR]"
  end
  texto_a_validar_obligatoriedad_0 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div/div[2]/p').text
  texto_texto_a_validar_obligatoriedad_0 = 'Hay campos obligatorios sin completar o con error! Por favor, revisá los datos ingresados.'
  esIgual(texto_texto_a_validar_obligatoriedad_0, texto_a_validar_obligatoriedad_0, "#{texto_texto_a_validar_obligatoriedad_0}")
  obligatoriedad_1 = capturar(:css , 'span.help-block:nth-child(2)').text
  texto_a_validar_obligatoriedad_1 = 'Debés elegir una opción para continuar.' # Manifestación de voluntad expresa
  esIgual(texto_a_validar_obligatoriedad_1, obligatoriedad_1, "#{texto_a_validar_obligatoriedad_1}")
  texto_a_validar = 'Este campo es obligatorio.' # Estado civil # Teléfono móvil prefijo # Teléfono móvil # Calle # Número # Provincia # Partido/Departamento # Localidad
  obligatoriedad_2 = capturar(:css , '#estado_civil > span:nth-child(3)').text
  esIgual(texto_a_validar, obligatoriedad_2, "#{texto_a_validar}")
  obligatoriedad_3 = capturar(:css , 'div.col-md-12:nth-child(9) > div:nth-child(1) > fieldset:nth-child(1) > div:nth-child(1) > span:nth-child(3)').text
  esIgual(texto_a_validar, obligatoriedad_3, "#{texto_a_validar}")
  obligatoriedad_4 = capturar(:css , 'div.col-md-12:nth-child(9) > div:nth-child(1) > fieldset:nth-child(1) > div:nth-child(2) > span:nth-child(3)').text
  esIgual(texto_a_validar, obligatoriedad_4, "#{texto_a_validar}")
  obligatoriedad_5 = capturar(:css , '#direccion > span:nth-child(3)').text
  esIgual(texto_a_validar, obligatoriedad_5, "#{texto_a_validar}")
  obligatoriedad_6 = capturar(:css , '#direccion_numero > span:nth-child(3)').text
  esIgual(texto_a_validar, obligatoriedad_6, "#{texto_a_validar}")
  obligatoriedad_7 = capturar(:css , '#provincia > span:nth-child(3)').text
  esIgual(texto_a_validar, obligatoriedad_7, "#{texto_a_validar}")
  obligatoriedad_8 = capturar(:css , '#partido > span:nth-child(3)').text
  esIgual(texto_a_validar, obligatoriedad_8, "#{texto_a_validar}")
  obligatoriedad_9 = capturar(:css , '#provincia > span:nth-child(3)').text
  esIgual(texto_a_validar, obligatoriedad_9, "#{texto_a_validar}")
  obligatoriedad_10 = capturar(:css , '#localidad > span:nth-child(3)').text
  esIgual(texto_a_validar, obligatoriedad_10, "#{texto_a_validar}")
  cancelar_boton = capturar(:xpath , '//*[@id="incucai_cancelar"]')
  cancelar_boton.click
  menu_salud
  capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/a').click
  capturar(:css , '#estado_civil > select:nth-child(2) > option:nth-child(3)').click
  prefijoTelefonoMovil = capturar(:css , '#telefono_movil_0 > input:nth-child(2)')
  texto_prefijoTelefonoMovil = 'AAAAAAAAAAAAAAAAAA'
  prefijoTelefonoMovil.send_keys texto_prefijoTelefonoMovil
  telefonoMovil12 = capturar(:css , '#telefono_movil_1 > input:nth-child(2)')
  texto_telefonoMovil = 'AAAAAAAAAAAAAAAAAAAAAAAAA'
  telefonoMovil12.send_keys texto_telefonoMovil
  calleD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[1]/div/input')
  texto_calleD = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
  calleD.send_keys texto_calleD
  numeroD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[2]/div/input')
  texto_numeroD = 'AAAAAAAAAAAAAAAAAAAAAAAAAAA'
  numeroD.send_keys texto_numeroD
  pisoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[4]/div/input')
  texto_pisoD = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
  pisoD.send_keys texto_pisoD
  departamentoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[5]/div/input')
  texto_departamentoD = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
  departamentoD.send_keys texto_departamentoD
  provinciaD = capturar(:css , '#provincia > select:nth-child(2) > option:nth-child(11)')
  provinciaD.click
  partidoDepartamentoD = capturar(:css , '#partido > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(10)')
  partidoDepartamentoD.click
  localidadD = capturar(:css , '#localidad > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(3)')
  localidadD.click
  nombreAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[1]/input')
  texto_nombreAmigoD = 'Marina Melisa AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
  nombreAmigoD.send_keys texto_nombreAmigoD
  apellidoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[2]/input')
  texto_apellidoAmigoD = 'Aguirre Perez Guillo AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAa'
  apellidoAmigoD.send_keys texto_apellidoAmigoD
  vinculoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[3]/input')
  texto_vinculoAmigoD = 'La hija de un Tio que se llama AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
  vinculoAmigoD.send_keys texto_vinculoAmigoD
  correoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[4]/input')
  texto_correoAmigoD = 'eaarached+012@gmail.comAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
  correoAmigoD.send_keys texto_correoAmigoD
  prefijoTelefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[1]/div/input')
  texto_prefijoTelefonoMovilAmigoD = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
  prefijoTelefonoMovilAmigoD.send_keys texto_prefijoTelefonoMovilAmigoD
  telefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[2]/div/input')
  texto_telefonoMovilAmigoD = 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
  telefonoMovilAmigoD.send_keys texto_telefonoMovilAmigoD
  donante = capturar(:css, 'div.radio:nth-child(1) > label:nth-child(1) > input:nth-child(1)')
  nodonante = capturar(:css, 'div.radio:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
  donante.click
  nodonante.click
  donante.click
  continuar_boton = capturar(:xpath, '//*[@id="verificacion_incucai"]')
  continuar_boton.click
  puts "validaciones de Tipo de campo texto:"
  texto_alerta_icono = esta_este_elemento(:css , '.fa-exclamation-circle')
  if texto_alerta_icono  == true
    puts "Ícono fa fa-exclamation-circle fa-fw fa-3x: #{texto_alerta_icono}.......[PASSED]"
  else
    puts fail "Ícono fa fa-exclamation-circle fa-fw fa-3x: #{texto_alerta_icono}..........[ERROR]"
  end
  validar_tipo_0 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div/div[2]/p').text
  texto_validar_tipo_0 = 'Hay campos obligatorios sin completar o con error! Por favor, revisá los datos ingresados.'
  esIgual(texto_validar_tipo_0, validar_tipo_0, "#{texto_validar_tipo_0}")
  texto_a_validar = 'Este campo sólo admite números.'
  tipo_texto_2 = capturar(:css , 'div.col-md-12:nth-child(9) > div:nth-child(1) > fieldset:nth-child(1) > div:nth-child(1) > span:nth-child(3)').text
  esIgual(texto_a_validar, tipo_texto_2, "#{texto_a_validar}")
  tipo_texto_3 = capturar(:css , 'div.col-md-12:nth-child(9) > div:nth-child(1) > fieldset:nth-child(1) > div:nth-child(2) > span:nth-child(3)').text
  esIgual(texto_a_validar, tipo_texto_3, "#{texto_a_validar}")
  texto_a_validarMail = 'No es un formato de correo electrónico válido.'
  tipo_texto_4 = capturar(:css , '#contacto_email > span:nth-child(3)').text
  esIgual(texto_a_validarMail, tipo_texto_4, "#{texto_a_validarMail}")
  tipo_texto_5 = capturar(:css , '.m-t-2 > div:nth-child(1) > form:nth-child(1) > div:nth-child(8) > div:nth-child(1) > div:nth-child(5) > fieldset:nth-child(1) > div:nth-child(1) > span:nth-child(3)').text
  esIgual(texto_a_validar, tipo_texto_5, "#{texto_a_validar}")
  tipo_texto_6 = capturar(:css , '.m-t-2 > div:nth-child(1) > form:nth-child(1) > div:nth-child(8) > div:nth-child(1) > div:nth-child(5) > fieldset:nth-child(1) > div:nth-child(2) > span:nth-child(3)').text
  esIgual(texto_a_validar, tipo_texto_6, "#{texto_a_validar}")
  cancelar_boton = capturar(:xpath , '//*[@id="incucai_cancelar"]')
  cancelar_boton.click
  menu_salud
  capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/a').click
  capturar(:css , '#estado_civil > select:nth-child(2) > option:nth-child(3)').click
  prefijoTelefonoMovil = capturar(:css , '#telefono_movil_0 > input:nth-child(2)')
  texto_prefijoTelefonoMovil = '33333333333333333333333333333333333333333333333333333333333333333'
  prefijoTelefonoMovil.send_keys texto_prefijoTelefonoMovil
  telefonoMovil12 = capturar(:css , '#telefono_movil_1 > input:nth-child(2)')
  texto_telefonoMovil = '33333333333333333333333333333333333333333333333333333333333333333'
  telefonoMovil12.send_keys texto_telefonoMovil
  calleD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[1]/div/input')
  texto_calleD = '33333333333333333333333333333333333333333333333333333333333333333'
  calleD.send_keys texto_calleD
  numeroD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[2]/div/input')
  texto_numeroD = '33333333333333333333333333333333333333333333333333333333333333333'
  numeroD.send_keys texto_numeroD
  pisoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[4]/div/input')
  texto_pisoD = '33333333333333333333333333333333333333333333333333333333333333333'
  pisoD.send_keys texto_pisoD
  departamentoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[5]/div/input')
  texto_departamentoD = '33333333333333333333333333333333333333333333333333333333333333333'
  departamentoD.send_keys texto_departamentoD
  provinciaD = capturar(:css , '#provincia > select:nth-child(2) > option:nth-child(11)')
  provinciaD.click
  partidoDepartamentoD = capturar(:css , '#partido > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(10)')
  partidoDepartamentoD.click
  localidadD = capturar(:css , '#localidad > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(3)')
  localidadD.click
  nombreAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[1]/input')
  texto_nombreAmigoD = '33333333333333333333333333333333333333333333333333333333333333333'
  nombreAmigoD.send_keys texto_nombreAmigoD
  apellidoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[2]/input')
  texto_apellidoAmigoD = '3333333333333333333333333333333333333333333333333333333333333333'
  apellidoAmigoD.send_keys texto_apellidoAmigoD
  vinculoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[3]/input')
  texto_vinculoAmigoD = '33333333333333333333333333333333333333333333333333333333333333333'
  vinculoAmigoD.send_keys texto_vinculoAmigoD
  correoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[4]/input')
  texto_correoAmigoD = '33333333333333333333333333333333333333333333333333333333333333333'
  correoAmigoD.send_keys texto_correoAmigoD
  prefijoTelefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[1]/div/input')
  texto_prefijoTelefonoMovilAmigoD = '33333333333333333333333333333333333333333333333333333333333333333'
  prefijoTelefonoMovilAmigoD.send_keys texto_prefijoTelefonoMovilAmigoD
  telefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[2]/div/input')
  texto_telefonoMovilAmigoD = '33333333333333333333333333333333333333333333333333333333333333333'
  telefonoMovilAmigoD.send_keys texto_telefonoMovilAmigoD
  donante = capturar(:css, 'div.radio:nth-child(1) > label:nth-child(1) > input:nth-child(1)')
  nodonante = capturar(:css, 'div.radio:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
  donante.click
  nodonante.click
  donante.click
  capturar(:xpath,'//*[@id="verificacion_incucai"]').click
  puts "validaciones de Tipo de campo numérico:"
  texto_alerta_icono = esta_este_elemento(:css , '.fa-exclamation-circle')
  if texto_alerta_icono  == true
    puts "Ícono fa fa-exclamation-circle fa-fw fa-3x: #{texto_alerta_icono}.......[PASSED]"
  else
    puts fail "Ícono fa fa-exclamation-circle fa-fw fa-3x: #{texto_alerta_icono}..........[ERROR]"
  end
  validar_tipo_numero_0 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div/div[2]/p').text
  texto_validar_tipo_numero_0 = 'Hay campos obligatorios sin completar o con error! Por favor, revisá los datos ingresados.'
  esIgual(texto_validar_tipo_numero_0, validar_tipo_numero_0, "#{texto_validar_tipo_numero_0}")
  texto_a_validarn = 'Este campo sólo admite letras.'
  tipo_texto_n2 = capturar(:css , '#contacto_nombre > span:nth-child(3)').text
  esIgual(texto_a_validarn, tipo_texto_n2, "#{texto_a_validarn}")
  tipo_texto_n3 = capturar(:css , '#contacto_apellido > span:nth-child(3)').text
  esIgual(texto_a_validarn, tipo_texto_n3, "#{texto_a_validarn}")
  texto_a_validarnMail = 'No es un formato de correo electrónico válido.'
  tipo_texto_n4 = capturar(:css , '#contacto_email > span:nth-child(3)').text
  esIgual(texto_a_validarnMail, tipo_texto_n4, "#{texto_a_validarnMail}")
  tipo_texto_n5 = capturar(:css , '#contacto_vinculo > span:nth-child(3)').text
  esIgual(texto_a_validarn, tipo_texto_n5, "#{texto_a_validarn}")
  cancelar_boton = capturar(:xpath , '//*[@id="incucai_cancelar"]')
  cancelar_boton.click
  menu_salud
  capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/a').click
  capturar(:css , '#estado_civil > select:nth-child(2) > option:nth-child(3)').click
  prefijoTelefonoMovil = capturar(:css , '#telefono_movil_0 > input:nth-child(2)')
  texto_prefijoTelefonoMovil = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  prefijoTelefonoMovil.send_keys texto_prefijoTelefonoMovil
  telefonoMovil12 = capturar(:css , '#telefono_movil_1 > input:nth-child(2)')
  texto_telefonoMovil = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  telefonoMovil12.send_keys texto_telefonoMovil
  calleD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[1]/div/input')
  texto_calleD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  calleD.send_keys texto_calleD
  numeroD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[2]/div/input')
  texto_numeroD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  numeroD.send_keys texto_numeroD
  pisoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[4]/div/input')
  texto_pisoD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  pisoD.send_keys texto_pisoD
  departamentoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[5]/div/input')
  texto_departamentoD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  departamentoD.send_keys texto_departamentoD
  provinciaD = capturar(:css , '#provincia > select:nth-child(2) > option:nth-child(11)')
  provinciaD.click
  partidoDepartamentoD = capturar(:css , '#partido > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(10)')
  partidoDepartamentoD.click
  localidadD = capturar(:css , '#localidad > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(3)')
  localidadD.click
  nombreAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[1]/input')
  texto_nombreAmigoD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  nombreAmigoD.send_keys texto_nombreAmigoD
  apellidoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[2]/input')
  texto_apellidoAmigoD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  apellidoAmigoD.send_keys texto_apellidoAmigoD
  vinculoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[3]/input')
  texto_vinculoAmigoD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  vinculoAmigoD.send_keys texto_vinculoAmigoD
  correoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[4]/input')
  texto_correoAmigoD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  correoAmigoD.send_keys texto_correoAmigoD
  prefijoTelefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[1]/div/input')
  texto_prefijoTelefonoMovilAmigoD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  prefijoTelefonoMovilAmigoD.send_keys texto_prefijoTelefonoMovilAmigoD
  telefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[2]/div/input')
  texto_telefonoMovilAmigoD = 'W!"§ $%& /() =?* \'<> #|; ²³~ @`´ ©«» ¤¼× {} abc def ghi jkl wxyz !"§ $%& /() =?* \'<> #'
  telefonoMovilAmigoD.send_keys texto_telefonoMovilAmigoD
  donante = capturar(:css, 'div.radio:nth-child(1) > label:nth-child(1) > input:nth-child(1)')
  nodonante = capturar(:css, 'div.radio:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
  donante.click
  nodonante.click
  donante.click
  continuar_boton = capturar(:xpath, '//*[@id="verificacion_incucai"]')
  continuar_boton.click
  puts "validaciones de Tipo caracteres especiales:"
  texto_alerta_icono = esta_este_elemento(:css , '.fa-exclamation-circle')
  if texto_alerta_icono  == true
    puts "Ícono fa fa-exclamation-circle fa-fw fa-3x: #{texto_alerta_icono}.......[PASSED]"
  else
    puts fail "Ícono fa fa-exclamation-circle fa-fw fa-3x: #{texto_alerta_icono}..........[ERROR]"
  end
  validar_tipo_numero_0 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div/div[2]/p').text
  texto_validar_tipo_numero_0 = 'Hay campos obligatorios sin completar o con error! Por favor, revisá los datos ingresados.'
  esIgual(texto_validar_tipo_numero_0, validar_tipo_numero_0, "#{texto_validar_tipo_numero_0}")
  texto_a_validarn = 'El dato ingresado no tiene un formato válido.'   #Teléfono móvil
  tipo_texto_n2 = capturar(:css , 'div.col-md-12:nth-child(9) > div:nth-child(1) > fieldset:nth-child(1) > div:nth-child(1) > span:nth-child(3)').text
  esIgual(texto_a_validarn, tipo_texto_n2, "#{texto_a_validarn}")
  tipo_texto_n3 = capturar(:css , 'div.col-md-12:nth-child(9) > div:nth-child(1) > fieldset:nth-child(1) > div:nth-child(2) > span:nth-child(3)').text
  esIgual(texto_a_validarn, tipo_texto_n3, "#{texto_a_validarn}")
  texto_a_validarn1 = 'Este campo sólo admite letras y números.'   #Calle
  tipo_texto_n5 = capturar(:css , '#direccion > span:nth-child(3)').text
  esIgual(texto_a_validarn1, tipo_texto_n5, "#{texto_a_validarn1}")
  texto_a_validarn2 = 'Este campo sólo admite letras, números , - y /.'   #Número
  tipo_texto_n6 = capturar(:css , '#direccion_numero > span:nth-child(3)').text
  esIgual(texto_a_validarn2, tipo_texto_n6, "#{texto_a_validarn2}")
  tipo_texto_n7 = capturar(:css , '#direccion_piso > span:nth-child(3)').text   #Piso (Opcional)
  esIgual(texto_a_validarn1, tipo_texto_n7, "#{texto_a_validarn1}")
  tipo_texto_n8 = capturar(:css , '#direccion_departamento > span:nth-child(3)').text  #  Departamento (Opcional)
  esIgual(texto_a_validarn1, tipo_texto_n8, "#{texto_a_validarn1}")
  tipo_texto_n9 = capturar(:css , '#contacto_nombre > span:nth-child(3)').text  # Nombre del familiar/amigo
  esIgual(texto_a_validarn1, tipo_texto_n9, "#{texto_a_validarn1}")
  tipo_texto_n10 = capturar(:css , '#contacto_apellido > span:nth-child(3)').text   #  Apellido del familiar/amigo
  esIgual(texto_a_validarn1, tipo_texto_n10, "#{texto_a_validarn1}")
  tipo_texto_n11 = capturar(:css , '#contacto_vinculo > span:nth-child(3)').text  #  Vínculo
  esIgual(texto_a_validarn1, tipo_texto_n11, "#{texto_a_validarn1}")
  texto_a_validarnMail = 'No es un formato de correo electrónico válido.'   #Correo electrónico
  tipo_texto_n4 = capturar(:css , '#contacto_email > span:nth-child(3)').text
  esIgual(texto_a_validarnMail, tipo_texto_n4, "#{texto_a_validarnMail}")
  tipo_texto_n12 = capturar(:css , '.m-t-2 > div:nth-child(1) > form:nth-child(1) > div:nth-child(8) > div:nth-child(1) > div:nth-child(5) > fieldset:nth-child(1) > div:nth-child(1) > span:nth-child(3)').text  # Teléfono móvil prefijo
  esIgual(texto_a_validarn, tipo_texto_n12, "#{texto_a_validarn}")
  tipo_texto_n13 = capturar(:css , '.m-t-2 > div:nth-child(1) > form:nth-child(1) > div:nth-child(8) > div:nth-child(1) > div:nth-child(5) > fieldset:nth-child(1) > div:nth-child(2) > span:nth-child(3)').text # Teléfono móvil
  esIgual(texto_a_validarn, tipo_texto_n13, "#{texto_a_validarn}")
  cancelar_boton = capturar(:xpath , '//*[@id="incucai_cancelar"]')
  cancelar_boton.click
  menu_salud
  capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/a').click
  capturar(:css , '#estado_civil > select:nth-child(2) > option:nth-child(3)').click
  prefijoTelefonoMovil = capturar(:css , '#telefono_movil_0 > input:nth-child(2)')
  n_max = 4
  contar(prefijoTelefonoMovil, n_max)
  telefonoMovil12 = capturar(:css , '#telefono_movil_1 > input:nth-child(2)')
  n_max = 16
  contar(telefonoMovil12, n_max)
  calleD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[1]/div/input')
  n_max = 100
  contar(calleD, n_max)
  numeroD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[2]/div/input')
  n_max = 10
  contar(numeroD, n_max)
  pisoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[4]/div/input')
  n_max = 100
  contar(pisoD, n_max)
  departamentoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[5]/div/input')
  n_max = 5
  contar(departamentoD, n_max)
  provinciaD = capturar(:css , '#provincia > select:nth-child(2) > option:nth-child(11)')
  provinciaD.click
  partidoDepartamentoD = capturar(:css , '#partido > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(10)')
  partidoDepartamentoD.click
  localidadD = capturar(:css , '#localidad > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(3)')
  localidadD.click
  nombreAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[1]/input')
  n_max = 40
  contar(nombreAmigoD, n_max)
  apellidoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[2]/input')
  n_max = 40
  contar(apellidoAmigoD, n_max)
  vinculoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[3]/input')
  n_max = 40
  contar(vinculoAmigoD, n_max)
  correoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[4]/input')
  n_max = 100
  contar(correoAmigoD, n_max)
  prefijoTelefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[1]/div/input')
  n_max = 4
  contar(prefijoTelefonoMovilAmigoD, n_max)
  telefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[2]/div/input')
  n_max = 16
 contar(telefonoMovilAmigoD, n_max)
  donante = capturar(:css, 'div.radio:nth-child(1) > label:nth-child(1) > input:nth-child(1)')
  esradio?(donante,'radio')
  nodonante = capturar(:css, 'div.radio:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
  esradio?(nodonante,'radio')
  donante.click
  nodonante.click
  donante.click
  continuar_boton = capturar(:xpath, '//*[@id="verificacion_incucai"]')
  continuar_boton.click
end

Then /^Verificaciones al contenido de la tarjeta de CONFIRMACIÓN$/ do
  menu_salud
  menu_credenciales
  menu_discapacidad
  menu_salud
  capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/a').click
  capturar(:css , '#estado_civil > select:nth-child(2) > option:nth-child(3)').click
  prefijoTelefonoMovil = capturar(:css , '#telefono_movil_0 > input:nth-child(2)')
  texto_prefijoTelefonoMovil = '0321'
  prefijoTelefonoMovil.send_keys texto_prefijoTelefonoMovil
  telefonoMovil12 = capturar(:css , '#telefono_movil_1 > input:nth-child(2)')
  texto_telefonoMovil = '37521444'
  telefonoMovil12.send_keys texto_telefonoMovil
  calleD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[1]/div/input')
  texto_calleD = 'Bonorino Coronel Esteban'
  calleD.send_keys texto_calleD
  numeroD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[2]/div/input')
  texto_numeroD = '11421'
  numeroD.send_keys texto_numeroD
  pisoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[4]/div/input')
  texto_pisoD = '4'
  pisoD.send_keys texto_pisoD
  departamentoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[5]/div/input')
  texto_departamentoD = 'A'
  departamentoD.send_keys texto_departamentoD
  provinciaD = capturar(:css , '#provincia > select:nth-child(2) > option:nth-child(11)')
  provinciaD.click
  partidoDepartamentoD = capturar(:css , '#partido > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(10)')
  partidoDepartamentoD.click
  localidadD = capturar(:css , '#localidad > fieldset:nth-child(2) > select:nth-child(1) > option:nth-child(3)')
  localidadD.click
  nombreAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[1]/input')
  texto_nombreAmigoD = 'Marina Melisa Agustina'
  nombreAmigoD.send_keys texto_nombreAmigoD
  apellidoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[2]/input')
  texto_apellidoAmigoD = 'Aguirre Perez Guillóna'
  apellidoAmigoD.send_keys texto_apellidoAmigoD
  vinculoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[3]/input')
  texto_vinculoAmigoD = 'La hija de un Tio que se llama Antonia'
  vinculoAmigoD.send_keys texto_vinculoAmigoD
  correoAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[4]/input')
  texto_correoAmigoD = 'eaarached@gmail.com'
  correoAmigoD.send_keys texto_correoAmigoD
  prefijoTelefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[1]/div/input')
  texto_prefijoTelefonoMovilAmigoD = '0321'
  prefijoTelefonoMovilAmigoD.send_keys texto_prefijoTelefonoMovilAmigoD
  telefonoMovilAmigoD = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/fieldset/div[2]/div/input')
  texto_telefonoMovilAmigoD = '23239898'
  telefonoMovilAmigoD.send_keys texto_telefonoMovilAmigoD
  donante = capturar(:css, 'div.radio:nth-child(1) > label:nth-child(1) > input:nth-child(1)')
  nodonante = capturar(:css, 'div.radio:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
  donante.click
  nodonante.click
  donante.click
  continuar_boton = capturar(:xpath, '//*[@id="verificacion_incucai"]')
  continuar_boton.click

  puts " Manifestación de voluntad expresa CONFIRMACÓN"
  puts "==============================================="
  tarjeta_confirma = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[1]/h2').text
  texto_tarjeta_confirma = 'Confirmá los datos del formulario'
  esIgual(texto_tarjeta_confirma, tarjeta_confirma, 'Confirmá los datos del formulario:')
  manifestacionvoluntadexpresa = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/label/b').text
  texto_manifestacionvoluntadexpresa = 'Manifestación de voluntad expresa'
  esIgual(texto_manifestacionvoluntadexpresa, manifestacionvoluntadexpresa, 'Manifestación de voluntad expresa:')
  serdonante = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[1]/div/div/p/label/b').text
  texto_serdonante = 'Quiero ser donante'
  esIgual(texto_serdonante, serdonante, 'Quiero ser donante:')
  afirmativa = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[1]/div/div/p/small').text
  texto_afirmativa = 'Manifestación afirmativa a la donación de órganos y tejidos.'
  esIgual(texto_afirmativa, afirmativa, 'Manifestación afirmativa a la donación de órganos y tejidos.:')
  datos_personales = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[2]/div/h3/b').text
  texto_datos_personales = 'Datos personales'
  esIgual(texto_datos_personales, datos_personales, 'Datos personales:')
  datos_personales_p = capturar(:xpath , '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[2]/div/h3/small').text
  texto_datos_personales = '(Obligatorio)'
  esIgual(texto_datos_personales, datos_personales_p, '(Obligatorio):')
  documento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[1]/label').text
  texto_documento = 'Tipo de documento'
  esIgual(texto_documento, documento, 'Tipo de documento:')
  contenido_documento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[1]/p/b').text
  texto_contenido_documento = 'DNI'
  esIgual(texto_contenido_documento, contenido_documento, 'DNI:')
  numero_documento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[2]/label').text
  texto_numero_documento = 'Número de documento'
  esIgual(texto_numero_documento, numero_documento, 'Número de documento:')
  contenido_numero_documento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[2]/p/b').text
  texto_contenido_numero_documento = '27104266'
  esIgual(texto_contenido_numero_documento, contenido_numero_documento, '27104266:')
  nombre = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[3]/label').text
  texto_nombre = 'Nombre'
  esIgual(texto_nombre, nombre, 'Nombre:')
  contenido_nombre = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[3]/p').text
  texto_contenido_nombre = 'Adriana Ivonne'
  esIgual(texto_contenido_nombre, contenido_nombre, 'Adriana Ivonne:')
  apellido = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[4]/label').text
  texto_apellido = 'Apellido'
  esIgual(texto_apellido, apellido, 'Apellido:')
  contenido_apellido = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[4]/p/b').text
  texto_contenido_apellido = 'Lista'
  esIgual(texto_contenido_apellido, contenido_apellido, 'Lista:')
  sexo = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[5]/label').text
  texto_sexo = 'Sexo'
  esIgual(texto_sexo, sexo, 'Sexo:')
  contenido_sexo = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[5]/p/b').text
  texto_contenido_sexo = 'F'
  esIgual(texto_contenido_sexo, contenido_sexo, 'F:')
  correo_electronico = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[6]/label').text
  texto_correo_electronico = 'Correo electrónico'
  esIgual(texto_correo_electronico, correo_electronico, 'Correo electrónico:')
  contenido_correo_electronico = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[6]/p/b').text
  texto_contenido_correo_electronico = 'eaarached+003@gmail.com'
  esIgual(texto_contenido_correo_electronico, contenido_correo_electronico, 'eaarached+003@gmail.com:')
  fecha_nacimiento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[7]/label').text
  texto_fecha_nacimiento  = 'Fecha de nacimiento'
  esIgual(texto_fecha_nacimiento, fecha_nacimiento, 'Fecha de nacimiento:')
  contenido_fecha_nacimiento = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[7]/p/b').text
  texto_contenido_fecha_nacimiento  = '16/04/1985'
  esIgual(texto_contenido_fecha_nacimiento, contenido_fecha_nacimiento, '16/04/1985:')
  stadocivil = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[8]/label').text
  texto_stadocivil  = 'Estado civil'
  esIgual(texto_stadocivil, stadocivil, 'Estado civil:')
  casado = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[8]/p/b').text
  texto_casado = 'Casado/a'
  esIgual(texto_casado, casado, 'Casado/a:')
  telefono_movil = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[9]/label').text
  texto_telefono_movil  = 'Teléfono móvil'
  esIgual(texto_telefono_movil, telefono_movil, 'Teléfono móvil:')
  telefono_movil1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[3]/div[9]/p/b').text
  texto_telefono_movil1  = '00321 - 1537521444'
  esIgual(texto_telefono_movil1, telefono_movil1, '00321 - 1537521444:')
  datos_domicilio = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[4]/div/h3').text
  texto_datos_domicilio  = 'Datos del domicilio (Obligatorio)'
  esIgual(texto_datos_domicilio, datos_domicilio, 'Datos del domicilio (Obligatorio):')
  callew = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[1]/div/label').text
  texto_callew  = 'Calle'
  esIgual(texto_callew, callew, 'Calle:')
  bonorino = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[1]/div/p/b').text
  texto_bonorino  = 'Bonorino Coronel Esteban'
  esIgual(texto_bonorino, bonorino, 'Bonorino Coronel Esteban:')
  bonorino_numero = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[2]/div/label').text
  texto_bonorino_numero  = 'Número'
  esIgual(texto_bonorino_numero, bonorino_numero, 'Número:')
  bonorino_numero1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[2]/div/p/b').text
  texto_bonorino_numero1  = '11421'
  esIgual(texto_bonorino_numero1, bonorino_numero1, '11421:')
  pisos = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[4]/div/label').text
  texto_pisos  = 'Piso (Opcional)'
  esIgual(texto_pisos, pisos, 'Piso (Opcional):')
  pisosnum = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[5]/div[4]/div/p/b').text
  texto_pisosnum  = '4'
  esIgual(texto_pisosnum, pisosnum, '4:')
  provin = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[1]/label').text
  texto_provin  = 'Provincia'
  esIgual(texto_provin, provin, 'Provincia:')
  provin1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[1]/p/b').text
  texto_provin1  = 'JUJUY'
  esIgual(texto_provin1, provin1, 'JUJUY:')
  partidoDep = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[2]/label').text
  texto_partidoDep  = 'Partido/Departamento'
  esIgual(texto_partidoDep, partidoDep, 'Partido/Departamento:')
  partidoDep1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[2]/p/b').text
  texto_partidoDep1  = 'SAN PEDRO'
  esIgual(texto_partidoDep1, partidoDep1, 'SAN PEDRO:')
  localidad_de = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[3]/label').text
  texto_localidad_de  = 'Localidad'
  esIgual(texto_localidad_de, localidad_de, 'Localidad:')
  localidad_de1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[3]/p/b').text
  texto_localidad_de1  = 'LA ESPERANZA'
  esIgual(texto_localidad_de1, localidad_de1, 'LA ESPERANZA:')
  datos_familiar = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[4]/div/h3/b').text
  texto_datos_familiar  = 'Datos del familiar/amigo a quien comunico mi decisión (Opcional)'
  esIgual(texto_datos_familiar, datos_familiar, 'Datos del familiar/amigo a quien comunico mi decisión (Opcional):')
  nombre_amigo = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[1]/label').text
  texto_nombre_amigo  = 'Nombre del familiar/amigo'
  esIgual(texto_nombre_amigo, nombre_amigo, 'Nombre del familiar/amigo:')
  nombre_amigo1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[2]/p/b').text
  texto_nombre_amigo1  = 'Aguirre Perez Guilló'
  esIgual(texto_nombre_amigo1, nombre_amigo1, 'Aguirre Perez Guilló:')
  vinculo_amigo = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[3]/label').text
  texto_vinculo_amigo  = 'Vínculo'
  esIgual(texto_vinculo_amigo, vinculo_amigo, 'Vínculo:')
  vinculo_amigo1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[3]/p/b').text
  texto_vinculo_amigo1  = 'La hija de un Tio que se llama'
  esIgual(texto_vinculo_amigo1, vinculo_amigo1, 'La hija de un Tio que se llama:')
  mailc = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[4]/label').text
  texto_mailc  = 'Correo electrónico'
  esIgual(texto_mailc, mailc, 'Correo electrónico:')
  mailc1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[4]/p/b').text
  texto_mailc1  = 'eaarached@gmail.com'
  esIgual(texto_mailc1, mailc1, 'eaarached@gmail.com:')
  telefonoAmigou = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/div/label').text
  texto_telefonoAmigou  = 'Teléfono móvil'
  esIgual(texto_telefonoAmigou, telefonoAmigou, 'Teléfono móvil:')
  telefonoAmigou1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/div[6]/div/form/div[5]/div/div[5]/div/p/b').text
  texto_telefonoAmigou1  = '00321 - 1523239898'
  esIgual(texto_telefonoAmigou1, telefonoAmigou1, '00321 - 1523239898:')
  botn_volver = capturar(:xpath, '//*[@id="editar_incucai"]')
  botn_volver.click
  menu_salud
  menu_salir
end