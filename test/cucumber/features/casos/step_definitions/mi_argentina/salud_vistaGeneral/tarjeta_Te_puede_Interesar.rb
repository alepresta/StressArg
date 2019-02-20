
Then /^Verificar la tarjeta Te puede interesar para el CUIL 20288463213$/ do
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
  tarjeta_te_puede_interesar = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[3]/div/h2').text
  texto_tarjeta_te_puede_interesar = 'Te puede interesar'
  esIgual(texto_tarjeta_te_puede_interesar,tarjeta_te_puede_interesar, "#{texto_tarjeta_te_puede_interesar}:" )
  cuidar_salud = capturar(:css, '.p-b-2 > div:nth-child(3) > div:nth-child(1) > a:nth-child(1)')
  link_css_selector(cuidar_salud,'https://www.argentina.gob.ar/tema/cuidarlasalud')
  recomendaciones = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[3]/div/div[1]/div/p').text
  texto_recomendaciones = 'Recomendaciones para cuidar tu salud en cada momento de tu vida.'
  esIgual(texto_recomendaciones,recomendaciones, "#{texto_recomendaciones}:" )
  prevencion_cuidados = capturar(:css, 'div.media:nth-child(4) > div:nth-child(1) > a:nth-child(1)')
  link_css_selector(prevencion_cuidados,'https://www.argentina.gob.ar/salud/prevencionycuidados')
  informacion_recomendaciones = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[3]/div/div[2]/div/p').text
  texto_informacion_recomendaciones = 'Información y recomendaciones para que vos y tu familia adopten hábitos saludables.'
  esIgual(texto_informacion_recomendaciones,informacion_recomendaciones, "#{texto_informacion_recomendaciones}:" )
  crecer_salud = capturar(:css, 'div.media:nth-child(5) > div:nth-child(1) > a:nth-child(1)')
  link_css_selector(crecer_salud,'https://www.argentina.gob.ar/salud/crecerconsalud')
  recomendaciones_embarazo = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[3]/div/div[3]/div/p').text
  texto_recomendaciones_embarazo = 'Recomendaciones para el embarazo, parto, puerperio, lactancia y crianza.'
  esIgual(texto_recomendaciones_embarazo,recomendaciones_embarazo, "#{texto_recomendaciones_embarazo}:" )
  menu_salud
  menu_salir
end