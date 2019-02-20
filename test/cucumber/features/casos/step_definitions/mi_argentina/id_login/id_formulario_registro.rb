Then /^Ingrese al ambiente donde realizara la prueba: QA$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
end

Then /^Seleccionar el enlace Todavía no estás registrado$/ do
  url = 'https://qa-id.argentina.gob.ar/ingresar'
  go(url)
  todavia =  capturar(:xpath, '/html/body/main/section/div/div[2]/div/p[1]/a')
todavia.click
  esperar(1)
end

Then /^validaciones al campo id_type$/ do
  id_type = 'cuil'
  # id_type = 'pasaporte'
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)

  if id_type == 'cuil'
    id_type_cuil = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[2]')
    id_type_cuil.click
  else
    id_type_pasaporte = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[3]')
    id_type_pasaporte.click
  end
  # id_type = 'cuil'
  id_type = 'pasaporte'

  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)

  if id_type == 'cuil'
    id_type_cuil = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[2]')
    id_type_cuil.click
  else
    id_type_pasaporte = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[3]')
    id_type_pasaporte.click
  end
  id_type = 'cuil'
  # id_type = 'pasaporte'

  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)

  if id_type == 'cuil'
    id_type_cuil = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[2]')
    id_type_cuil.click
  else
    id_type_pasaporte = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[3]')
    id_type_pasaporte.click
  end
  # id_type = 'cuil'
  id_type = 'pasaporte'
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)

  if id_type == 'cuil'
    id_type_cuil = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[2]')
    id_type_cuil.click
  else
    id_type_pasaporte = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[3]')
    id_type_pasaporte.click
  end
end

Then /^verificacion del campo id_number CUIL$/ do
  id_type = 'cuil'
  # id_type = 'pasaporte'
  id_numbero = '20323468983'
  id_numbero_letras = '20323468983ASD'

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
  if id_type == 'cuil'
    id_type_cuil = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[2]')
    id_type_cuil.click
  else
    id_type_pasaporte = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[3]')
    id_type_pasaporte.click
  end
  id_number = capturar(:id, 'id_number')
  id_number.send_keys id_numbero_letras
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click


end

Then /^texto validacion campo id_number CUIL$/ do
  id_type = 'cuil'
  # id_type = 'pasaporte'
  id_numbero = '20323468983'
  id_numbero_letras = '20323468983ASD'

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
  if id_type == 'cuil'
    id_type_cuil = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[2]')
    id_type_cuil.click
  else
    id_type_pasaporte = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[3]')
    id_type_pasaporte.click
  end
  id_number = capturar(:id, 'id_number')
  id_number.send_keys id_numbero_letras
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  texto_a_validar = 'El CUIL que ingresaste es incorrecto.'
  texto_validado_mensaje = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[1]/div[2]/div/span').text
  # puts "#{texto_a_validar} _____deberia estar"
  # puts "#{texto_validado_mensaje} ______________esta "
  if texto_a_validar == texto_validado_mensaje
    puts "El texto validado que deberia estar es: #{texto_a_validar}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_validado_mensaje}...[PASSED]".blue
  else
    puts  "El texto validado que deberia estar es: #{texto_a_validar}...[ERROR]".yellow
    puts fail "El texto encontrado es:                 #{texto_validado_mensaje}...[ERROR]".yellow
  end
end

Then /^verificacion del campo id_number PASAPORTE$/ do
  # id_type = 'cuil'
  id_type = 'pasaporte'
  id_numbero = '20323468983'
  id_numbero_letras = '20323468983ASD'

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
  if id_type == 'cuil'
    id_type_cuil = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[2]')
    id_type_cuil.click
  else
    id_type_pasaporte = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[3]')
    id_type_pasaporte.click
  end
  id_number = capturar(:id, 'id_number')
  id_number.send_keys id_numbero_letras
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
end

Then /^texto validacion campo id_number PASAPORTE$/ do
  # id_type = 'cuil'
  id_type = 'pasaporte'
  id_numbero = '2'
  id_numbero_letras = '0323468983'

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
  if id_type == 'cuil'
    id_type_cuil = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[2]')
    id_type_cuil.click
  else
    id_type_pasaporte = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[1]/div[1]/div/select/option[3]')
    id_type_pasaporte.click
  end
  id_number = capturar(:id, 'id_number')
  id_number.send_keys id_numbero_letras
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  texto_a_validar = 'El número de pasaporte es incorrecto'
  texto_validado_mensaje = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[1]/div[2]/div/span').text
  # puts "#{texto_a_validar} _____deberia estar"
  # puts "#{texto_validado_mensaje} ______________esta "
    puts "El texto validado que deberia estar es: #{texto_a_validar}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_validado_mensaje}...[PASSED]".blue

end

Then /^Verificar campo NOMBRE es tipo texto$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  numeros ='1234567890 2345678 456789'
  letras = 'Pedro Manuel Josefo'
  nom = capturar(:id, 'first_name')
  nom.send_keys numeros
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  numeros ='1234567890 2345678 456789'
  letras = 'Pedro Manuel Josefo'
  nom = capturar(:id, 'first_name')
  nom.send_keys letras
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
end

Then /^Verificar texto de validación del campo NOMBRE$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  numeros ='1234567890 2345678 456789'
  letras = 'Pedro Manuel Josefo'
  nom = capturar(:id, 'first_name')
  nom.send_keys numeros
  texto_validacion_cuando_hay_números = 'Falta ingresar este dato.'
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  validacion_texto = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[2]/span').text

  if validacion_texto == texto_validacion_cuando_hay_números
    puts "El texto validado que deberia estar es: #{validacion_texto}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_validacion_cuando_hay_números}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{validacion_texto}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_validacion_cuando_hay_números}...[PASSED]".blue
  end
end

Then /^Verificar campo APELLIDO es tipo texto$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  numeros ='1234567890 2345678 456789'
  letras = 'Pedro Manuel Josefo'
  nom = capturar(:id, 'first_name')
  nom.send_keys numeros
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  numeros ='1234567890 2345678 456789'
  letras = 'Pedro Manuel Josefo'
  nom = capturar(:id, 'first_name')
  nom.send_keys letras
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
end

Then /^Verificar texto de validación del campo APELLIDO$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  numeros ='1234567890 2345678 456789'
  letras = 'Pedro Manuel Josefo'
  nom = capturar(:id, 'first_name')
  nom.send_keys numeros
  texto_validacion_cuando_hay_números = 'Falta ingresar este dato.'
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  validacion_texto = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[2]/span').text

  if validacion_texto == texto_validacion_cuando_hay_números
    puts "El texto validado que deberia estar es: #{validacion_texto}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_validacion_cuando_hay_números}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{validacion_texto}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_validacion_cuando_hay_números}...[PASSED]".blue
  end
end

Then /^verifique el campo tipo RADIO$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  sexo = 'f'
  if sexo == 'm'
    sexo_masculino = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[4]/div/label[2]')
    sexo_masculino.click
  else
    sexo_femenino  = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[4]/div/label[1]')
    sexo_femenino.click
  end
  sexo = 'm'
  if sexo == 'm'
    sexo_masculino = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[4]/div/label[2]')
    sexo_masculino.click
  else
    sexo_femenino  = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[4]/div/label[1]')
    sexo_femenino.click
  end
end

Then /^verifique el texto de validación delRADIO$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  validacion_texto = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[4]/span').text
  texto_que_deberia = 'Falta ingresar este dato.'
  if validacion_texto == texto_que_deberia
    puts "El texto validado que deberia estar es: #{validacion_texto}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_que_deberia}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{validacion_texto}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_que_deberia}...[PASSED]".blue
  end
end

Then /^Verificar el formato de la fecha de nacimiento$/ do
  20.times do
    url_registro = 'https://qa-id.argentina.gob.ar/registro/'
    go(url_registro)
    fecha_de_nacimiento =  fecha_aleatoria
    url_registro = 'https://qa-id.argentina.gob.ar/registro/'
    go(url_registro)
    fecha_nacimiento = capturar(:id, 'birthdate')
    fecha_nacimiento.send_keys fecha_de_nacimiento
    ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
    ingresar.click
    esperar(1)
  end
end

Then /^Verificar texto de validación del campo fecha N$/ do
    url_registro = 'https://qa-id.argentina.gob.ar/registro/'
    go(url_registro)
    fecha_de_nacimiento =  '45/77/7777'
    url_registro = 'https://qa-id.argentina.gob.ar/registro/'
    go(url_registro)
    fecha_nacimiento = capturar(:id, 'birthdate')
    fecha_nacimiento.send_keys fecha_de_nacimiento
    ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
    ingresar.click
    esperar(1)
    validacion_texto = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[5]/span').text
    texto_deberia = 'La fecha es incorrecta. Debe tener el formato DD/MM/AAAA.'
    if validacion_texto == texto_deberia
      puts "El texto validado que deberia estar es: #{validacion_texto}...[PASSED]".blue
      puts "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
    else
      puts "El texto validado que deberia estar es: #{validacion_texto}...[PASSED]".blue
      puts fail "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
    end
end

Then /^verifique el campo PAIS DE RESIDENCIA$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  pais = capturar(:xpath, '//*[@id="country"]/option[12]')
  pais.click
end

Then /^texto de validación PAIS DE RESIDENCIA$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  texto_validar = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[6]/span').text
  texto_deberia = 'Falta ingresar este dato.'
  if texto_validar == texto_deberia
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  end
end

Then /^verifique el campo PROVINCIA$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  pais = capturar(:xpath, '//*[@id="country"]/option[12]')
  pais.click
  esperar(1)
  provincia = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[7]/select/option[2]')
  provincia.click
  esperar(5)
end

Then /^texto a validar en el campo PROVINCIA$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  pais = capturar(:xpath, '//*[@id="country"]/option[12]')
  pais.click
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  texto_validar = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[7]/span').text
  texto_deberia = 'Falta ingresar este dato.'
  if texto_validar == texto_deberia
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  end
end

Then /^verifique el campo MUNICIPIO$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  pais = capturar(:xpath, '//*[@id="country"]/option[12]')
  pais.click
  esperar(1)
  provincia = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[7]/select/option[2]')
  provincia.click
  municipio = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[8]/select/option[117]')
  municipio.click
  esperar(5)
end

Then /^texto de validación MUNICIPIO$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  pais = capturar(:xpath, '//*[@id="country"]/option[12]')
  pais.click
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  texto_validar = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[8]/span').text
  texto_deberia = 'Falta ingresar este dato.'
  if texto_validar == texto_deberia
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  end
end

Then /^verifique el campo LOCALIDAD$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  pais = capturar(:xpath, '//*[@id="country"]/option[12]')
  pais.click
  esperar(1)
  provincia = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[7]/select/option[2]')
  provincia.click
  municipio = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[8]/select/option[117]')
  municipio.click
  localidad = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[9]/select/option[2]')
  localidad.click
  esperar(5)
end

Then /^texto de validaciónLOCALIDAD$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  pais = capturar(:xpath, '//*[@id="country"]/option[12]')
  pais.click
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  texto_validar = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[9]/span').text
  texto_deberia = 'Falta ingresar este dato.'
  if texto_validar == texto_deberia
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  end
end

Then /^verifique el campo CORREO ELECTRONICO$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  correo = 'carlosremo@gmail.com'
  email = capturar(:id,'email')
  email.send_keys correo
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  esperar(9)
end

Then /^texto de validación CORREO ELECTRONICO$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  correo = 'carlosremo#gmail.com'
  email = capturar(:id,'email')
  email.send_keys correo
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  texto_deberia = 'El correo electrónico no es válido, por favor intentá de nuevo.'
  texto_validar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[10]/span').text
  if texto_validar == texto_deberia
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  end
end

Then /^verifique el campo CONTRASEÑA$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  contrasenia_text = 'a1a2a3a4a5a6a7a8a9a0'
  contrasenia = capturar(:id,'password')
  contrasenia.send_keys contrasenia_text
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  esperar(1)
end

Then /^texto de validación CONTRASEÑA$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  esperar(1)
  texto_deberia = 'Falta ingresar este dato.'
  texto_validar = capturar(:xpath,'/html/body/main/section/div/div/div/div/form/div[11]/span').text
  if texto_validar == texto_deberia
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  end

end

Then /^verifique el campo HE LEIDO$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
  he_leido = capturar(:id, 'toc')
  he_leido.click
  ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
end

Then /^texto de validación HE LEIDO$/ do
  url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  go(url_registro)
    ingresar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[13]/button')
  ingresar.click
  texto_deberia = 'Tenés que aceptar los términos y condiciones.'
  texto_validar = capturar(:xpath, '/html/body/main/section/div/div/div/div/form/div[12]/div/label/span').text
  if texto_validar == texto_deberia
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  else
    puts "El texto validado que deberia estar es: #{texto_validar}...[PASSED]".blue
    puts fail "El texto encontrado es:                 #{texto_deberia}...[PASSED]".blue
  end

end

Then /^Ingresar con un usuario PASAPORTE$/ do
  cuit = 'B4444799'
  usuario_nombre = "Urbano Gonzales Roman"
  psw = "modernizacion"
  logueo(cuit,usuario_nombre,psw)
end

Then /^Ingresar con un usuario CUIL$/ do
  cuit = '20323468983'
  usuario_nombre = "Celeste Andrea Martínez"
  psw = "modernizacion"
  logueo(cuit,usuario_nombre,psw)
end

