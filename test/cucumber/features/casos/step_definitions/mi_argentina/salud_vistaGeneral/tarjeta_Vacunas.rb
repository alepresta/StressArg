

Then /^Verificar la tarjeta Vacunas Hombre CUIL 20288463213$/ do
  menu_salud
  menu_credenciales
  menu_discapacidad
  menu_salud
 tarjeta_vacunas = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/h2').text
 text_tarjeta_vacunas = 'Vacunas'
  esIgual(text_tarjeta_vacunas, tarjeta_vacunas, "#{text_tarjeta_vacunas}: ")
 configura_tu_perfil = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/h3').text
 text_configura_tu_perfil = 'Configurá tu perfil para notificaciones'
 esIgual(text_configura_tu_perfil, configura_tu_perfil, "#{text_configura_tu_perfil}: ")
 configura_tu_perfil1 = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/p').text
 text_configura_tu_perfil1 = 'Queremos ofrecerte información personalizada. Completá tus datos y podrás recibir notificaciones de las vacunas que te corresponden, actualizaciones en el calendario de vacunación y avisos de campañas.'
 esIgual(text_configura_tu_perfil1, configura_tu_perfil1, "#{text_configura_tu_perfil1}: ")
 personal_salud = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/form/div[1]/label/strong').text
 text_personal_salud = "\¿Trabajás como personal de salud\?"
 esIgual(text_personal_salud, personal_salud, "#{text_personal_salud}: ")
 personal_salud_radio_si =  capturar(:css, 'div.form-group:nth-child(1) > div:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
 atributo(personal_salud_radio_si,'type','radio')
 personal_salud_radio_no = capturar(:css, 'div.form-group:nth-child(1) > div:nth-child(2) > label:nth-child(3) > input:nth-child(1)')
 atributo(personal_salud_radio_no,'type','radio')
 personal_salud_radio_noquierodeclarar = capturar(:css, 'div.form-group:nth-child(1) > div:nth-child(2) > label:nth-child(5) > input:nth-child(1)')
 atributo(personal_salud_radio_noquierodeclarar,'type','radio')
 tenes_hijos = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/form/div[2]/label/strong').text
 text_tenes_hijos = "\¿Tenés hijos de entre 6 meses y 2 años de edad\?"
 esIgual(text_tenes_hijos, tenes_hijos, "#{text_tenes_hijos}: ")
 tenes_hijos_radio_si =  capturar(:css, 'div.form-group:nth-child(2) > div:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
 atributo(tenes_hijos_radio_si,'type','radio')
 tenes_hijos_radio_no = capturar(:css, 'div.form-group:nth-child(2) > div:nth-child(2) > label:nth-child(3) > input:nth-child(1)')
 atributo(tenes_hijos_radio_no,'type','radio')
 tenes_hijos_radio_noquierodeclarar = capturar(:css, 'div.form-group:nth-child(2) > div:nth-child(2) > label:nth-child(5) > input:nth-child(1)')
 atributo(tenes_hijos_radio_noquierodeclarar,'type','radio')
  tu_edad = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/form/div[3]/label/strong').text
  text_tu_edad = 'Tu edad'
  esIgual(text_tu_edad,tu_edad,"#{text_tu_edad}: ")
 parrafo_tu_edad = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/form/div[3]').text
 text_parrafo_tu_edad = 'La calculamos en base a tu fecha de nacimiento.'
  esIgual(text_parrafo_tu_edad,parrafo_tu_edad,"#{text_parrafo_tu_edad}")
 fechadenacimiento = capturar(:css,'div.form-group:nth-child(3) > p:nth-child(2) > a:nth-child(3)')
 link_css_selector(fechadenacimiento,'https://qa-id.argentina.gob.ar/perfil')
 conoce_parrafo = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/p').text
 text_conoce_parrafo = 'Conocé todas las vacunas que están incluidas en el Calendario Nacional de Vacunación y cuáles te tocan aplicarte según tu edad. Siempre consultalo antes con tu médico.'
esIgual(text_conoce_parrafo, conoce_parrafo, "#{text_conoce_parrafo}")
 conoce_link =  capturar(:css, '.p-b-3 > p:nth-child(5) > a:nth-child(1)')
 link_css_selector(conoce_link,'https://www.argentina.gob.ar/vacunas')
 icono_arg_vacunas =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[1]/i')
 puts "Logo de Cobertura Universal de Salud: [#{icono_arg_vacunas}]"
 if icono_arg_vacunas  == false
   puts fail "icono-arg-vacunas...[ERROR]"
 end
 if icono_arg_vacunas  == true
   puts  "icono-arg-vacunas...[PASSED]"
 end
 menu_salud
 menu_salir
end



Then /^Verificar la tarjeta Vacunas Mujer CUIL 20258489749$/ do
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
  tarjeta_vacunas = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/h2').text
  text_tarjeta_vacunas = 'Vacunas'
  esIgual(text_tarjeta_vacunas, tarjeta_vacunas, "#{text_tarjeta_vacunas}: ")
  configura_tu_perfil = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/h3').text
  text_configura_tu_perfil = 'Configurá tu perfil para notificaciones'
  esIgual(text_configura_tu_perfil, configura_tu_perfil, "#{text_configura_tu_perfil}: ")
  configura_tu_perfil1 = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/p').text
  text_configura_tu_perfil1 = 'Queremos ofrecerte información personalizada. Completá tus datos y podrás recibir notificaciones de las vacunas que te corresponden, actualizaciones en el calendario de vacunación y avisos de campañas.'
  esIgual(text_configura_tu_perfil1, configura_tu_perfil1, "#{text_configura_tu_perfil1}: ")
  personal_salud = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/form/div[1]/label/strong').text
  text_personal_salud = "\¿Trabajás como personal de salud\?"
  esIgual(text_personal_salud, personal_salud, "#{text_personal_salud}: ")
  personal_salud_radio_si =  capturar(:css, 'div.form-group:nth-child(1) > div:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
  atributo(personal_salud_radio_si,'type','radio')
  personal_salud_radio_no = capturar(:css, 'div.form-group:nth-child(1) > div:nth-child(2) > label:nth-child(3) > input:nth-child(1)')
  atributo(personal_salud_radio_no,'type','radio')
  personal_salud_radio_noquierodeclarar = capturar(:css, 'div.form-group:nth-child(1) > div:nth-child(2) > label:nth-child(5) > input:nth-child(1)')
  atributo(personal_salud_radio_noquierodeclarar,'type','radio')
  estas_embarazada = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/form/div[2]/label/strong').text
  text_estas_embarazada = "\¿Estás embarazada o tuviste un bebé en los últimos 10 días\?"
  esIgual(text_estas_embarazada, estas_embarazada, "#{text_estas_embarazada}: ")
  estas_embarazada_radio_si =  capturar(:css, 'div.form-group:nth-child(2) > div:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
  atributo(estas_embarazada_radio_si,'type','radio')
  estas_embarazada_radio_no = capturar(:css, 'div.form-group:nth-child(2) > div:nth-child(2) > label:nth-child(3) > input:nth-child(1)')
  atributo(estas_embarazada_radio_no,'type','radio')
  estas_embarazada_radio_noquierodeclarar = capturar(:css, 'div.form-group:nth-child(2) > div:nth-child(2) > label:nth-child(5) > input:nth-child(1)')
  atributo(estas_embarazada_radio_noquierodeclarar,'type','radio')
  tenes_hijosn = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/form/div[3]/label/strong').text
  text_tenes_hijosn = "\¿Tenés hijos de entre 6 meses y 2 años de edad\?"
  esIgual(text_tenes_hijosn, tenes_hijosn, "#{text_tenes_hijosn}: ")
  tenes_hijosn_radio_si =  capturar(:css, 'div.form-group:nth-child(3) > div:nth-child(2) > label:nth-child(1) > input:nth-child(1)')
  atributo(tenes_hijosn_radio_si,'type','radio')
  tenes_hijos_radio_no = capturar(:css, 'div.form-group:nth-child(3) > div:nth-child(2) > label:nth-child(3) > input:nth-child(1)')
  atributo(tenes_hijos_radio_no,'type','radio')
  tenes_hijos_radio_noquierodeclarar = capturar(:css, 'div.form-group:nth-child(3) > div:nth-child(2) > label:nth-child(5) > input:nth-child(1)')
  atributo(tenes_hijos_radio_noquierodeclarar,'type','radio')
  tu_edadn = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/form/div[4]/label/strong').text
  text_tu_edadn = 'Tu edad'
  esIgual(text_tu_edadn,tu_edadn,"#{text_tu_edadn}: ")
  parrafo_tu_edadn = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[2]/form/div[4]').text
  text_parrafo_tu_edadn = 'La calculamos en base a tu fecha de nacimiento.'
  esIgual(text_parrafo_tu_edadn,parrafo_tu_edadn,"#{text_parrafo_tu_edadn}")
  fechadenacimienton = capturar(:css,'div.form-group:nth-child(4) > p:nth-child(2) > a:nth-child(3)')
  link_css_selector(fechadenacimienton,'https://qa-id.argentina.gob.ar/perfil')
  conoce_parrafon = capturar(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/p').text
  text_conoce_parrafon = 'Conocé todas las vacunas que están incluidas en el Calendario Nacional de Vacunación y cuáles te tocan aplicarte según tu edad. Siempre consultalo antes con tu médico.'
  esIgual(text_conoce_parrafon, conoce_parrafon, "#{text_conoce_parrafon}")
  conoce_linkn =  capturar(:css, '.p-b-3 > p:nth-child(5) > a:nth-child(1)')
  link_css_selector(conoce_linkn,'https://www.argentina.gob.ar/vacunas')
  icono_arg_vacunasn =esta_este_elemento(:xpath, '/html/body/main/section[2]/div/div/div/div[2]/div/div/div[1]/i')
  puts "Logo de Cobertura Universal de Salud: [#{icono_arg_vacunasn}]"
  if icono_arg_vacunasn  == false
    puts fail "icono-arg-vacunas...[ERROR]"
  end
  if icono_arg_vacunasn  == true
    puts  "icono-arg-vacunas...[PASSED]"
  end
  menu_salud
  menu_salir
end