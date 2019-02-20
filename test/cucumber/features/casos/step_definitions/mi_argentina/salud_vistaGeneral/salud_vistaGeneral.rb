Then /^Se verifican los textos de bajada y pie de sección Salud$/ do
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
  titulo_que_deberia_estar = 'Salud'
  titulo_capturado = capturar(:xpath, '/html/body/main/section[2]/div/div/div/h1').text
  bajada_descripcion_que_deberia_estar = 'Expresá tu voluntad de donar órganos y médula ósea. Si ya lo hiciste, podés consultar tus credenciales. También podés completar tu perfil para recibir notificaciones personalizadas con consejos para cuidar tu salud y prevenir enfermedades.'
  bajada_descripcion_capturada = capturar(:xpath, '/html/body/main/section[2]/div/div/div/p[1]').text
  nota_al_pie_que_que_deberia_estar = 'Organismos relacionados'
  nota_al_pie_capturada = capturar(:xpath, '//*[@id="main-content"]/p[2]').text
  nota_al_pie_capturadaLink_que_deberia_estar = 'Ministerio de Salud'
  nota_al_pie_capturadaLink = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[4]/div/p/a').text
  esIgual(titulo_que_deberia_estar, titulo_capturado, 'Titulo: ')
  esIgual(bajada_descripcion_que_deberia_estar, bajada_descripcion_capturada, 'Descripción: ')
  esIgual(nota_al_pie_que_que_deberia_estar, nota_al_pie_capturada, 'Nota al pie: ')
  esIgual(nota_al_pie_capturadaLink_que_deberia_estar, nota_al_pie_capturadaLink, 'Link de Nota al pie: ')
  css = capturar(:css, '.col-sm-4 > p:nth-child(1) > a:nth-child(1)')
  link_css_selector(css,'https://www.argentina.gob.ar/salud')
end

Then /^Se verifica si esta presente en la sección Vacunas la tarjeta Vacunas$/ do
  tarjeta_vacunas = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/h2').text
  texto_tarjeta_vacunas_que_debe_estar = 'Vacunas'
  esIgual(texto_tarjeta_vacunas_que_debe_estar, tarjeta_vacunas, 'Tarjeta vacunas:')
end

Then /^Se verifica si esta presente en la sección Vacunas tarjeta Te puede interesar$/ do
  tarjeta_te_puede_interesar = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[3]/div/h2').text
  texto_tarjeta_te_puede_interesar = 'Te puede interesar'
  esIgual(texto_tarjeta_te_puede_interesar, tarjeta_te_puede_interesar, 'Tarjeta Te puede intresar:')
end


Then /^Se verifica si esta presente en la sección Vacunas tarjeta Donación de Órganos y Tejidos$/ do
  tarjeta_donacion_organos = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[1]/h2').text
  texto_tarjeta_donacion_organos = 'Donación de órganos y tejidos'
  esIgual(texto_tarjeta_donacion_organos, tarjeta_donacion_organos, 'Tarjeta Donación de órganos y tejidos:')
end

Then /^Se verifica si esta presente en la sección Vacunas tarjeta Donación de médula ósea$/ do
  tarjeta_medula_osea = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[1]/div[2]/div[1]/h2').text
  texto_tarjeta_medula_osea = 'Donación de médula ósea'
  esIgual(texto_tarjeta_medula_osea, tarjeta_medula_osea, 'Tarjeta Donación de médula ósea:')
  menu_salud
  menu_salir
end