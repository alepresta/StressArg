

Then /^Tarjeta donación de Médula ósea con usuario Donante 20288463213$/ do
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
  puts "Tarjeta Donación de médula ósea"
  puts "==============================="
  tarjeta_medula = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[1]/h2').text
  texto_tarjeta_medula = 'Donación de médula ósea'
  esIgual(texto_tarjeta_medula, tarjeta_medula,"#{texto_tarjeta_medula}:")
  soy_donante = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[2]/div/div[2]/h3/b').text
  texto_soy_donante = 'Soy donante'
  esIgual(texto_soy_donante, soy_donante,"#{texto_soy_donante}:")
  estoy_inscripto = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[2]/div/div[2]/div/small').text
  texto_estoy_inscripto = 'Estoy inscripto en el Registro Nacional de Donantes Voluntarios de CPH.'
  esIgual(texto_estoy_inscripto, estoy_inscripto,"#{texto_estoy_inscripto}:")
  fecha_expresion = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[2]/div/div[2]/small').text
  texto_fecha_expresion = 'Fecha de expresión de voluntad'
  esIgual(texto_fecha_expresion, fecha_expresion,"#{texto_fecha_expresion}:")
  fecha_expresion1 = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[2]/div/div[2]/p/b').text
  texto_fecha_expresion1 = '27/08/2016'
  esIgual(texto_fecha_expresion1, fecha_expresion1,"#{texto_fecha_expresion1}:")
  mas_informacion = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[3]/div/div[1]/a').text
  texto_mas_informacion = 'Ver más información'
  esIgual(texto_mas_informacion, mas_informacion,"#{texto_mas_informacion}:")
  puts "Verificando logos , íconos e imágenes"
  puts "======================================"
  instituto_Ablacion_e_Implante =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[2]/div/div[3]/div[1]/img')
  puts "Logo del Instituto Nacional Central Único Coordinador de Ablación e Implante: [#{instituto_Ablacion_e_Implante}]"
  logo_Ministerio_Salud =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[2]/div/div[3]/div[2]/img')
  puts "Logo de Ministerio de Salud: [#{logo_Ministerio_Salud}]"
  logo_CoberturaUniversal =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[2]/div/div[3]/div[3]/img')
  puts "Logo de Cobertura Universal de Salud: [#{logo_CoberturaUniversal}]"
  icono_fa_edit =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[2]/div/div[1]/i')
  puts "ícono: fa-heart-o: [#{icono_fa_edit}]"
  if instituto_Ablacion_e_Implante  == false
    puts fail "no se encuentran todos los logos , íconos e imágenes...[ERROR]"
  end
  if instituto_Ablacion_e_Implante and logo_Ministerio_Salud and logo_CoberturaUniversal and  icono_fa_edit == true
    puts  "Se encuentran todos los logos , íconos e imágenes...[PASSED]"
  end
  puts "Verificando Links"
  puts "======================================"
  css = capturar(:css, 'div.panel:nth-child(2) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > a:nth-child(1)')
  link_css_selector(css,'https://qa-mi.argentina.gob.ar/salud/donar-medula')
=begin
  puts "Verificando que se pueda publicar en Redes Sociales Twiter y Facebook"
  puts "======================================"
  facebooke = capturar(:css, 'div.panel:nth-child(2) > div:nth-child(3) > div:nth-child(1) > div:nth-child(2) > ul:nth-child(1) > li:nth-child(1) > a:nth-child(1) > i:nth-child(1)')
  facebooke.click
  twiter = capturar(:css, 'div.panel:nth-child(2) > div:nth-child(3) > div:nth-child(1) > div:nth-child(2) > ul:nth-child(1) > li:nth-child(2) > a:nth-child(1) > i:nth-child(1)')
  twiter.click
  windowsGO('2147483663')
  twiter_name  =  capturar(:xpath, '/html/body/div[1]/div[2]/div/div/div[1]/form/fieldset/div[1]/input')
  twiter_name.send_keys('wweeer')
  twiter_psw  =  capturar(:xpath, '/html/body/div[1]/div[2]/div/div/div[1]/form/fieldset/div[2]/input')
  twiter_psw.send_keys('wweeer')
  miArgentina_cerrar
  windowsGO('2147483660')
  facebook_name  =  capturar(:xpath, '//*[@id="email"]')
  facebook_name.send_keys('wweeer')
  facebook_psw  =  capturar(:xpath, '//*[@id="pass"]')
  facebook_psw.send_keys('wweeer')
  miArgentina_cerrar
  puts  "Redes Sociales Twiter y Facebook...[PASSED]"
  windowsGO('2147483649')
=end
  menu_salud
  menu_credenciales
  menu_discapacidad
  menu_salud
  puts "Tarjeta DETALLES"
  puts "==============================="
  detalles = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[3]/div/div[1]/a')
  detalles.click
  tarjeta_donacion_de_medula_osea = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[1]/div/div[2]/h2').text
  texto_tarjeta_donacion_de_medula_osea = 'Donación de médula ósea'
  esIgual(texto_tarjeta_donacion_de_medula_osea,tarjeta_donacion_de_medula_osea,"#{texto_tarjeta_donacion_de_medula_osea}: ")
  soy_donante = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[1]/label/p/b').text
  texto_soy_donante = 'Soy donante'
  esIgual(texto_soy_donante,soy_donante,"#{texto_soy_donante}: ")
  estoy_inscripto  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[1]/p/small').text
  texto_estoy_inscripto = 'Estoy inscripto en el Registro Nacional de Donantes Voluntarios de CPH.'
  esIgual(texto_estoy_inscripto,estoy_inscripto,"#{texto_estoy_inscripto}: ")
  fecha_expresion  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[4]/label').text
  texto_fecha_expresion = 'Fecha de expresión de voluntad'
  esIgual(texto_fecha_expresion,fecha_expresion,"#{texto_fecha_expresion}: ")
  fecha_expresion1  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[4]/p/b').text
  texto_fecha_expresion1 = '27/08/2016'
  esIgual(texto_fecha_expresion1,fecha_expresion1,"#{texto_fecha_expresion1}: ")
  nombres  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[5]/label').text
  texto_nombres = 'Nombre'
  esIgual(texto_nombres,nombres,"#{texto_nombres}: ")
  nombres1  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[5]/p/b').text
  texto_nombres1 = 'HERNAN'
  esIgual(texto_nombres1,nombres1,"#{texto_nombres1}: ")
  apellido  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[6]/label').text
  texto_apellido = 'Apellido'
  esIgual(texto_apellido,apellido,"#{texto_apellido}: ")
  apellido1  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[6]/p/b').text
  texto_apellido1 = 'CHILABERT'
  esIgual(texto_apellido1,apellido1,"#{texto_apellido1}: ")
  tipo_de_documento  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[7]/label').text
  texto_tipo_de_documento = 'Tipo de documento'
  esIgual(texto_tipo_de_documento,tipo_de_documento,"#{texto_tipo_de_documento}: ")
  tipo_de_documento1  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[7]/p/b').text
  texto_tipo_de_documento1 = 'DNI'
  esIgual(texto_tipo_de_documento1,tipo_de_documento1,"#{texto_tipo_de_documento1}: ")
  numero_de_documento  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[8]/label').text
  texto_numero_de_documento = 'Número de documento'
  esIgual(texto_numero_de_documento,numero_de_documento,"#{texto_numero_de_documento}: ")
  numero_de_documento1  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[8]/p/b').text
  texto_numero_de_documento1 = '31.703.611'
  esIgual(texto_numero_de_documento1,numero_de_documento1,"#{texto_numero_de_documento1}: ")
  provincia  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[9]/label').text
  texto_provincia = 'Provincia'
  esIgual(texto_provincia,provincia,"#{texto_provincia}: ")
  provincia1  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[9]/p/b').text
  texto_provincia1 = 'BUENOS AIRES'
  esIgual(texto_provincia1,provincia1,"#{texto_provincia1}: ")
  situacion_de_la_medula  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[10]/label').text
  texto_situacion_de_la_medula = 'Situación de la médula'
  esIgual(texto_situacion_de_la_medula,situacion_de_la_medula,"#{texto_situacion_de_la_medula}: ")
  situacion_de_la_medula1  = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[10]/p/b').text
  texto_situacion_de_la_medula1 = 'TIPIFICADO'
  esIgual(texto_situacion_de_la_medula1,situacion_de_la_medula1,"#{texto_situacion_de_la_medula1}: ")
  codigoQR =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[2]/div/canvas')
  puts "Código QR: [#{codigoQR}]"
  if codigoQR  == false
    puts fail "no se encuentra Código QR...[ERROR]"
  end
  if codigoQR  == true
    puts  "Se encuentra Código QR...[PASSED]"
  end
  menu_salud
  menu_salir
end

Then /^Tarjeta donación de Médula ósea con usuario no Donante 27271042669$/ do
  menu_salud
  menu_salud
  tarjeta_donacion_de_medula_osean = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[1]').text
  texto_tarjeta_donacion_de_medula_osean = 'Donación de médula ósea'
  esIgual(texto_tarjeta_donacion_de_medula_osean,tarjeta_donacion_de_medula_osean,"#{texto_tarjeta_donacion_de_medula_osean}: ")
  sabias_que = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/h3/b').text
  texto_sabias_que = "\¿Sabías que un donante puede salvar hasta 7 vidas\?"
  esIgual(texto_sabias_que,sabias_que,"#{texto_sabias_que}: ")
  si_queres = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/p').text
  texto_si_queres = 'Si querés expresar tu voluntad de donar, podés hacerlo ahora. Es fácil y rápido.'
  esIgual(texto_si_queres,si_queres,"#{texto_si_queres}: ")
  fa_edit =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[2]/div/div[1]/i')
  puts "Ícono fa fa-edit text-muted fa-2x m-t-1: [#{fa_edit}]"
  boton_expresa = capturar(:css, 'div.panel:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > a:nth-child(3)')
  link_css_selector(boton_expresa,'https://qa-mi.argentina.gob.ar/salud/donar-organos/formulario')
  link_conoce_mas = capturar(:css, 'div.panel:nth-child(2) > div:nth-child(3) > a:nth-child(1)')
  link_css_selector(link_conoce_mas,'https://www.argentina.gob.ar/donar-medula')
  menu_salud
  menu_salir
end
