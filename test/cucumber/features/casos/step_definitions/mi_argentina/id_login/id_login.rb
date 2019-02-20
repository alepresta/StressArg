
Then /^verificar formulario de registro MiArgentina$/ do
  id_type = 'cuil'
  # id_type = 'pasaporte'
  id_numbero = '20340977565'



  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  if id_type == 'cuil'
    id_type_cuil = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[2]')
    id_type_cuil.click
  else
    id_type_pasaporte = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[3]')
    id_type_pasaporte.click
  end

  id_number = capturar(:id, 'id_number')
  id_number.send_keys id_numbero


  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click



  texto_validar = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[2]/div/span').text
  puts texto_validar


  texto_real = 'El número de CUIL ya se encuentra registrado.'
  puts texto_real
esperar(19)




















  id_numbero = '20340977565'
  nombre   = 'Gustavo Alejandro'
  apellido = 'Figueroa'
  sexo = 'm'
  #sexo = 'f'
  fecha_de_nacimiento = '05/06/1989'
  correo_electronico  = 'eaarached+10070@gmail.com'
  contrasenia = 'modernizacion'
  #crear_usuario(id_type,id_numbero,nombre,apellido,sexo,fecha_de_nacimiento,correo_electronico,contrasenia)







  id_number = capturar(:id, 'id_number')
  id_number.send_keys id_numbero
  nomb = capturar(:id,'first_name')
  nomb.send_keys nombre
  apell = capturar(:id, 'last_name')
  apell.send_keys apellido
  if sexo == 'm'
    sexo_masculino = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[4]/div/label[2]')
    sexo_masculino.click
  else
    sexo_femenino  = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[4]/div/label[1]')
    sexo_femenino.click
  end
  fecha_nacimiento = capturar(:id, 'birthdate')
  fecha_nacimiento.send_keys fecha_de_nacimiento
  pais = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[6]/select/option[12]')
  pais.click
  provincia = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[7]/select/option[25]')
  provincia.click
  municipio = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[8]/select/option[2]')
  municipio.click
  localidad = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[9]/select/option[2]')
  localidad.click
  correo = capturar(:id, 'email')
  correo.send_keys correo_electronico
  contras = capturar(:id, 'password')
  contras.send_keys contrasenia
  he_leido_y_acepto_los_terminos_y_condiciones = capturar(:id, 'toc')
  he_leido_y_acepto_los_terminos_y_condiciones.click
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click



end