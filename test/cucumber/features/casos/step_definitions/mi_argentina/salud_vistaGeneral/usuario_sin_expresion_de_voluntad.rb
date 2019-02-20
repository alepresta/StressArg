
Then /^Se verificara la tarjeta Donación de Órganos con usuario sin expresión Donar 27271042669$/ do
  menu_salud
  menu_credenciales
  menu_discapacidad
  ##menu_configurarMiCuenta
  menu_salud
  menu_credenciales
  menu_discapacidad
  menu_inicio
  menu_turnos
  menu_perfilConductor
  menu_formacion
  ##menu_datosBasicos
  ##menu_datosOpcionales
  ##menu_misVehiculos
  ##menu_misDispositivos
  ##menu_redesSociales
  menu_configurarNotificaciones
  menu_salud
  puts "Verificando textos"
  puts "==================="
  tarjeta_donacion_organos = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[1]/h2').text
  texto_tarjeta_donacion_organos = 'Donación de órganos y tejidos'
  esIgual(texto_tarjeta_donacion_organos, tarjeta_donacion_organos, 'Tarjeta Donación de órganos y tejidos:')
  tarjeta_sabias = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/h3/b').text
  texto_tarjeta_tarjeta_sabias = '¿Sabías que un donante puede salvar hasta 7 vidas?'
  esIgual(texto_tarjeta_tarjeta_sabias, tarjeta_sabias, '¿Sabías que un donante puede salvar hasta 7 vidas? :')
  tarjeta_siQueres = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[2]/p').text
  texto_tarjeta_tarjeta_siQueres = 'Si querés expresar tu voluntad de donar, podés hacerlo ahora. Es fácil y rápido.'
  esIgual(texto_tarjeta_tarjeta_siQueres, tarjeta_siQueres, 'Si querés expresar tu voluntad de donar, podés hacerlo ahora. Es fácil y rápido.')
  tarjeta_ConoceMas = capturar(:css, 'div.panel:nth-child(1) > div:nth-child(3) > a:nth-child(1)')
  tarjeta_ConoceMas1 = tarjeta_ConoceMas.text
  texto_tarjeta_ConoceMas = 'Conocé más sobre la donación de órganos y tejidos'
  esIgual(texto_tarjeta_ConoceMas, tarjeta_ConoceMas1, 'Conocé más sobre la donación de órganos y tejidos')
  boton_Expresa = capturar(:css,'div.panel:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > a:nth-child(3)')
  boton_Expresa1 = boton_Expresa.text
  texto_boton_Expresa1 = 'EXPRESÁ TU VOLUNTAD EN FORMA DIGITAL'
  esIgual(texto_boton_Expresa1, boton_Expresa1, 'Conocé más sobre la donación de órganos y tejidos')
  puts "Verificando link conoce mas"
  puts "==================="
  link_css_selector(tarjeta_ConoceMas,'https://www.argentina.gob.ar/donar-organos')
  puts "Verificando Botón EXPRESÁ TU VOLUNTAD EN FORMA DIGITAL"
  puts "======================================================="
  link_css_selector(boton_Expresa,'https://qa-mi.argentina.gob.ar/salud/donar-organos/formulario')
  menu_salud
  menu_salir
end















