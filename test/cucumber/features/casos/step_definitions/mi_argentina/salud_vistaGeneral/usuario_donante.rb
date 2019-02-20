
Then /^Se verificara la tarjeta Donación de Órganos$/ do
  menu_salud
  menu_credenciales
  menu_discapacidad
  menu_salud
  puts "Verificando textos"
  puts "==================="
  tarjeta_donacion_organos = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[1]/h2').text
  texto_tarjeta_donacion_organos = 'Donación de órganos y tejidos'
  esIgual(texto_tarjeta_donacion_organos, tarjeta_donacion_organos, 'Tarjeta Donación de órganos y tejidos:')
  tarjeta_organos = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[1]/div[1]').text
  texto_tarjeta_organos = 'Quiero ser donante'
  esIgual(texto_tarjeta_organos, tarjeta_organos, 'Quiero ser donante:')
  texto_tarjeta_organos = 'Manifestación afirmativa a la donación de órganos y tejidos.'
  esIgual(texto_tarjeta_organos, tarjeta_organos, 'Manifestación afirmativa a la donación de órganos y tejidos.:')
  texto_tarjeta_organos = 'Fecha de expresión de voluntad'
  esIgual(texto_tarjeta_organos, tarjeta_organos, 'Fecha de expresión de voluntad:')
  texto_tarjeta_organos = '14/05/2018'
  esIgual(texto_tarjeta_organos, tarjeta_organos, '14/05/2018:')
  texto_tarjeta_organos = 'Ver más información'
  esIgual(texto_tarjeta_organos, tarjeta_organos, 'Ver más información:')
  texto_tarjeta_organos = 'en redes sociales'
  esIgual(texto_tarjeta_organos, tarjeta_organos, 'Compartir mi expresión en redes sociales:')
  puts "Verificando logos , íconos e imágenes"
  puts "======================================"
  instituto_Ablacion_e_Implante =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[3]/div[1]/img')
  puts "Logo del Instituto Nacional Central Único Coordinador de Ablación e Implante: [#{instituto_Ablacion_e_Implante}]"
  logo_Ministerio_Salud =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[3]/div[2]/img')
  puts "Logo de Ministerio de Salud: [#{logo_Ministerio_Salud}]"
  logo_CoberturaUniversal =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[3]/div[3]/img')
  puts "Logo de Cobertura Universal de Salud: [#{logo_CoberturaUniversal}]"
  icono_fa_heart_o =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[2]/div/div[1]/i')
  puts "ícono: fa-heart-o: [#{icono_fa_heart_o}]"
if instituto_Ablacion_e_Implante  == false
   puts fail "no se encuentran todos los logos , íconos e imágenes.......................[ERROR]"
end
  if instituto_Ablacion_e_Implante and logo_Ministerio_Salud and logo_CoberturaUniversal and  icono_fa_heart_o == true
    puts  "Se encuentran todos los logos , íconos e imágenes.......................[PASSED]"
  end
  puts "Verificando Links"
  puts "======================================"
  css = capturar(:css, '.col-sm-5 > a:nth-child(1)')
  link_css_selector(css,'https://qa-mi.argentina.gob.ar/salud/donar-organos')
=begin
  puts "Verificando que se pueda publicar en Redes Sociales Twiter y Facebook"
  puts "======================================"
  facebooke = capturar(:css, 'ul.list-inline:nth-child(1) > li:nth-child(1) > a:nth-child(1) > i:nth-child(1)')
  facebooke.click
  twiter = capturar(:css, 'ul.list-inline:nth-child(1) > li:nth-child(2) > a:nth-child(1) > i:nth-child(1)')
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
  puts  "Redes Sociales Twiter y Facebook.......................[PASSED]"
  windowsGO('2147483649')
=end
  menu_salud
  menu_salir
end

Then /^Se verificara la tarjeta Detalles Donación de Órganos$/ do
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
  puts "Verificando Textos y campos de Tarjeta Detalles"
  puts "================================================="
  ver_mas_información = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[3]/div/div[1]/a')
  ver_mas_información.click
  tarjeta_detalles_donacionOrganos = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div/div/div/div[1]/div/div[2]/h2').text
  texto_tarjeta_organos = 'Donación de órganos y tejidos'
  esIgual(texto_tarjeta_organos, tarjeta_detalles_donacionOrganos, 'Detalles Donación de órganos y tejidos:')
  campo_manifestacion = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[1]/label/p/b').text
  texto_campo_manifestacion = 'Quiero ser donante'
  esIgual(texto_campo_manifestacion, campo_manifestacion, 'Manifestación afirmativa a la donación de órganos y tejidos.:')
  fecha_de_expresión = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[4]/p/b').text
  texto_fecha_de_expresión = '14/05/2018'
  esIgual(texto_fecha_de_expresión, fecha_de_expresión, 'Fecha de expresión de voluntad:')
  campo_Nombres = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[5]/p/b').text
  texto_campo_Nombres = 'OMAR ANDRES'
  esIgual(texto_campo_Nombres, campo_Nombres, 'Nombres:')
  campo_Apellido = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[6]/p/b').text
  texto_campo_Apellido = 'LANDI'
  esIgual(texto_campo_Apellido, campo_Apellido, 'Apellido:')
  campo_Tipo_documento = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[7]/p/b').text
  texto_campo_Tipo_documento = 'DNI'
  esIgual(texto_campo_Tipo_documento, campo_Tipo_documento, 'Tipo de documento:')
  campo_numero_documento = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[8]/p/b').text
  texto_campo_numero_documento = '31.604.573'
  esIgual(texto_campo_numero_documento, campo_numero_documento, 'Número de documento:')
  boton_descargar_credencial = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div/div/div/div[3]/a').text
  texto_boton_descargar_credencial = 'DESCARGAR CREDENCIAL'
  esIgual(texto_boton_descargar_credencial, boton_descargar_credencial, 'DESCARGAR CREDENCIAL:')
  puts "Verificando botón volver"
  puts "================================================="
  volver = capturar(:xpath, '//*[@id="volver"]')
  volver.click
  puts  "Botón volver.......................[PASSED]"
  capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[1]/div[1]/div[3]/div/div[1]/a').click
  puts "Verificando código QR"
  puts "======================"
  qr = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[2]/div/div[2]/div/canvas')
  puts "Código QR: #{qr} "
  puts  "Código QR.......................[PASSED]"
=begin
  puts "Verificando DESCARGAR CREDENCIAL"
  puts "=================================="
  botona_CREDENCIAL= capturar(:xpath, '/html/body/main/section[2]/div/div/div/div/div/div/div[3]/a')
  botona_CREDENCIAL.click
  @browser.switch_to.window(@browser.window_handles.last)
  windowsGO('2147483692')
  credencialpdf = capturar(:xpath,'/html/body/img')
  puts "Se encontro credencial.pdf #{credencialpdf}"
  puts  "DESCARGAR CREDENCIAL.......................[PASSED]"
  miArgentina_cerrar
  windowsGO('2147483649')
=end
  menu_salud
  menu_salir
end