Then /^se crea un usuario nuevo mia-para eliminar$/ do
  #id_type = 'cuil'
  id_type = 'pasaporte'
  id_numbero = '977565AA'
  nombre   = 'Gustavo Alejandro'
  apellido = 'Figueroa'
  sexo = 'm'
  #sexo = 'f'
  fecha_de_nacimiento = '05/06/1989'
  correo_electronico  = 'eaarached+100770@gmail.com'
  contrasenia = 'modernizacion'
  crear_usuario(id_type,id_numbero,nombre,apellido,sexo,fecha_de_nacimiento,correo_electronico,contrasenia)
end

Then /^Eliminar la cuenta que se creo mia-para eliminar$/ do
  cuit = '977565AA'
  usuario_nombre = "Gustavo Alejandro Figueroa"
  psw = "modernizacion"
  logueo(cuit,usuario_nombre,psw)
  configurar_mi_cuenta = capturar(:xpath, '/html/body/main/section[2]/div/div/aside/nav/ul/div[1]/li[9]/a')
  configurar_mi_cuenta.click
  eliminar_mi_cuenta = capturar(:id, 'continue')
  eliminar_mi_cuenta.click
  motivo = capturar(:xpath,'/html/body/main/section[2]/div/div/div/div[2]/div/form/div[1]/select/option[3]')
  motivo.click
  eliminar_mi_cuenta = capturar(:id, 'deleteAccountButton')
  eliminar_mi_cuenta.click
  esperar(1)
  alerta = capturar(:xpath, '/html/body/main/section/div/div[2]/div/div[1]/div/div[2]').text
  texto_alerta = 'Borraste tu cuenta de Mi Argentina. Recordá que podés volver a registrarte cuando quieras.'
  if alerta.include? texto_alerta
    puts "texto encontrado = (#{alerta})"
    puts "texto que deberia = (#{texto_alerta})"
    puts "El texto encontrado en el alerta despues de eliminar la cuenta coincide....[PASS]".green
  else
    puts "texto encontrado = (#{alerta})"
    puts "texto que deberia = (#{texto_alerta})"
    puts fail "El texto encontrado en el alerta despues de eliminar la cuenta NO coincide....[PASS]".yellow
  end
  url_donde_deberia = 'https://qa-id.argentina.gob.ar/ingresar/'
  url_donde_estoy =  donde_estoy
  if url_donde_estoy.include? url_donde_deberia
    puts "Se verifica que al eliminar la cuenta redirige a :la página de login https://qa-id.argentina.gob.ar/ingresar/....[PASSED]".green
    puts "La pagina a donde se redirigió al eliminar la cuenta es: (#{url_donde_estoy})"
  else
    puts "Se verifica que al eliminar la cuenta redirige a :la página de login https://qa-id.argentina.gob.ar/ingresar/....[ERROR]".yellow
    puts fail "La pagina a donde se redirigió al eliminar la cuenta es: (#{url_donde_estoy})"
  end
end

Then /^la cuenta mia-para eliminar es eliminada$/ do
  cuit = '977565AA'
  psw = "modernizacion"
  browser_MiArgentina_qa
  esperar(1)
  usuario = capturar(:id, 'id_number')
  usuario.send_keys cuit
  continuar =  capturar(:class, "loginCuilSession")
  continuar.click
  esperar(1)
  contrasena = capturar(:id, 'id_number')
  contrasena.send_keys psw
  continuado =  capturar(:class, "loginCuilSession")
  continuado.click
  donde_deberia_estar = 'https://qa-id.argentina.gob.ar/ingresar/'
  donde_estoy_despues_borrar = donde_estoy
  if donde_estoy_despues_borrar.include? donde_deberia_estar
    puts "Se verifica que la cuenta con pasaporte = 977565AA ha sido eliminada...[PASSED]".green
  else
    puts fail "Se verifica que la cuenta con pasaporte = 977565AA No ha sido eliminada...[PASSED]".yellow
  end
end