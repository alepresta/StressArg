Given /^Ingresar a la página principal$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  # cierrate_sesamo
end

Then /^buscar la palabra: anses$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto_buscado = "anses"
  buscador = captura_elemento(:id,'edit-keys')
  esperar(1)
  buscador.send_keys texto_buscado
  lupa = captura_elemento(:id,'edit-submit')
  esperar(1)
  lupa.click
  esperar(9)
  titulo_esperado = "Busqueda | Argentina.gob.ar"
  esIgual(titulo_esperado, titulo, "Buscar: #{texto_buscado}")
  url_esperada =  "https://www.argentina.gob.ar/buscar/anses"
  esIgual(url_esperada, donde_estoy, "URL: #{donde_estoy}")
  # cierrate_sesamo
end

Then /^buscar la palabra: dominio$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto_buscado = "dominio"
  buscador = captura_elemento(:id,'edit-keys')
  esperar(1)
  buscador.send_keys texto_buscado
  lupa = captura_elemento(:id,'edit-submit')
  esperar(1)
  lupa.click
  esperar(9)
  titulo_esperado = "Busqueda | Argentina.gob.ar"
  esIgual(titulo_esperado, titulo, "Buscar: #{texto_buscado}")
  url_esperada =  "https://www.argentina.gob.ar/buscar/dominio"
  esIgual(url_esperada, donde_estoy, "URL: #{donde_estoy}")
  # cierrate_sesamo
end

Then /^buscar la palabra: tramite de cuil$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto_buscado = "cuil"
  buscador = captura_elemento(:id,'edit-keys')
  esperar(1)
  buscador.send_keys texto_buscado
  lupa = captura_elemento(:id,'edit-submit')
  esperar(1)
  lupa.click
  esperar(9)
  titulo_esperado = "Busqueda | Argentina.gob.ar"
  esIgual(titulo_esperado, titulo, "Buscar: #{texto_buscado}")
  url_esperada =  "https://www.argentina.gob.ar/buscar/cuil"
  esIgual(url_esperada, donde_estoy, "URL: #{donde_estoy}")
  # cierrate_sesamo
end

Then /^buscar la palabra: SALUD$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto_buscado = "SALUD"
  buscador = captura_elemento(:id,'edit-keys')
  esperar(1)
  buscador.send_keys texto_buscado
  lupa = captura_elemento(:id,'edit-submit')
  esperar(1)
  lupa.click
  esperar(9)
  titulo_esperado = "Busqueda | Argentina.gob.ar"
  esIgual(titulo_esperado, titulo, "Buscar: #{texto_buscado}")
  url_esperada =  "https://www.argentina.gob.ar/buscar/SALUD"
  esIgual(url_esperada, donde_estoy, "URL: #{donde_estoy}")
  # cierrate_sesamo
end

Then /^buscar la palabra: trámite de médula ósea$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto_buscado = "trámite de médula ósea"
  buscador = captura_elemento(:id,'edit-keys')
  esperar(1)
  buscador.send_keys texto_buscado
  lupa = captura_elemento(:id,'edit-submit')
  esperar(1)
  lupa.click
  esperar(9)
  titulo_esperado = "Busqueda | Argentina.gob.ar"
  esIgual(titulo_esperado, titulo, "Buscar: #{texto_buscado}")
  #url_esperada =  "https://www.argentina.gob.ar/buscar/trámite%20de%20médula%20ósea"
  url_esperada =  "https://www.argentina.gob.ar/buscar/tr%C3%A1mite%20de%20m%C3%A9dula%20%C3%B3sea"
  esIgual(url_esperada, donde_estoy, "URL: #{donde_estoy}")
  # cierrate_sesamo
end

Then /^buscar desde argentina.gob.ar vuce novedades$/ do
  url = 'https://www.argentina.gob.ar/vuce/novedades'
  go(url)
  esperar(9)
  texto_buscado = "monotributo"
  buscador = captura_elemento(:id,'edit-keys')
  esperar(1)
  buscador.send_keys texto_buscado
  lupa = captura_elemento(:id,'edit-submit')
  esperar(1)
  lupa.click
  esperar(9)
  titulo_esperado = "Busqueda | Argentina.gob.ar"
  esIgual(titulo_esperado, titulo, "Buscar: #{texto_buscado}")
  # cierrate_sesamo
end

Then /^buscar desde argentina.gob.ar politicassociales$/ do
  url = 'https://www.argentina.gob.ar/politicassociales'
  go(url)
  esperar(9)
  texto_buscado = "monotributo"
  buscador = captura_elemento(:id,'edit-keys')
  esperar(1)
  buscador.send_keys texto_buscado
  lupa = captura_elemento(:id,'edit-submit')
  esperar(1)
  lupa.click
  esperar(9)
  titulo_esperado = "Busqueda | Argentina.gob.ar"
  esIgual(titulo_esperado, titulo, "Buscar: #{texto_buscado}")
  url_esperada =  "https://www.argentina.gob.ar/buscar/monotributo"
  esIgual(url_esperada, donde_estoy, "URL: #{donde_estoy}")
  # cierrate_sesamo
end

Then /^verificar que el botón Mi Argentina redirija correctamente$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  boton_MiArgentina = captura_elemento(:id,'cd-login')
  boton_MiArgentina.click
  esperar(9)
  puts "antes " + donde_estoy
  esperar(10)
  puts "despues " + donde_estoy
  url_esperada =  'mi.argentina.gob.ar'
  url_encontrada = donde_estoy
  esIgual(url_esperada, url_encontrada , "URL: #{donde_estoy}")
  # cierrate_sesamo
end

Then /^link - Panel 1$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[3]/div/div/div[1]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Panel 1: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Panel 1: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Panel 2$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_02 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[3]/div/div/div[2]/a')
  panel_02.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Panel 2: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Panel 2: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Panel 3$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_03 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[3]/div/div/div[3]/a')
  panel_03.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Panel 3: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Panel 3: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Panel 4$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_04 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[3]/div/div/div[4]/a')
  panel_04.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Panel 4: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Panel 4: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_01$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[1]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_01: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_01: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_02$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_02 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[2]/a')
  panel_02.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_02: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_02: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_03$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[3]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_03: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_03: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_04$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[4]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_04: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_04: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_05$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[5]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_05: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_05: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_06$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[6]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_06: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_06: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_07$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[7]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_07: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_07: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_08$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[8]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_08: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_08: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_09$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[9]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_09: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_09: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_10$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[10]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_10: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_10: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_11$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[11]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_11: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_11: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_12$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[12]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_12: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_12: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_13$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[13]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_13: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_13: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_14$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[14]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_14: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_14: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_15$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[15]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_15: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_15: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_16$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[16]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_16: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_16: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Tramites_panel_17$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  panel_01 = capturar(:xpath, '//*[@id="block-system-main"]/section/div/div/div[5]/div/div/section/div/div/div[17]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Tramites_panel_17: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Tramites_panel_17: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Mas_consultados_01$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto = capturar(:xpath,'//*[@id="block-system-main"]/section/div/div/div[7]/div/div/div/h2')
  texto.click
  panel_01 = capturar(:css, 'div.col-lg-3:nth-child(1)')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Mas_consultados_01: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Mas_consultados_01: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Mas_consultados_02$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto = capturar(:xpath,'//*[@id="block-system-main"]/section/div/div/div[7]/div/div/div/h2')
  texto.click
  panel_01 = capturar(:css, 'div.col-lg-3:nth-child(2)')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Mas_consultados_02: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Mas_consultados_02: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Mas_consultados_03$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto = capturar(:xpath,'//*[@id="block-system-main"]/section/div/div/div[7]/div/div/div/h2')
  texto.click
  panel_01 = capturar(:css, 'div.col-lg-3:nth-child(3)')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Mas_consultados_03: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Mas_consultados_03: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Mas_consultados_04$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto = capturar(:xpath,'//*[@id="block-system-main"]/section/div/div/div[7]/div/div/div/h2')
  texto.click
  panel_01 = capturar(:css, 'div.col-lg-3:nth-child(4)')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Mas_consultados_04: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Mas_consultados_04: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Mas_consultados_05$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto = capturar(:xpath,'//*[@id="block-system-main"]/section/div/div/div[7]/div/div/div/h2')
  texto.click
  panel_01 = capturar(:css, 'div.col-lg-3:nth-child(5)')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Mas_consultados_05: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Mas_consultados_05: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Mas_consultados_06$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto = capturar(:xpath,'//*[@id="block-system-main"]/section/div/div/div[7]/div/div/div/h2')
  texto.click
  panel_01 = capturar(:css, 'div.col-lg-3:nth-child(6)')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Mas_consultados_06: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Mas_consultados_06: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Mas_consultados_07$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto = capturar(:xpath,'//*[@id="block-system-main"]/section/div/div/div[7]/div/div/div/h2')
  texto.click
  panel_01 = capturar(:css, 'div.col-lg-3:nth-child(7)')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Mas_consultados_07: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Mas_consultados_07: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Mas_consultados_08$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  texto = capturar(:xpath,'//*[@id="block-system-main"]/section/div/div/div[7]/div/div/div/h2')
  texto.click
  panel_01 = capturar(:css, 'div.col-lg-3:nth-child(7)')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Mas_consultados_08: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Mas_consultados_08: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Creative Commons Reconocimiento$/ do  #bien
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  imag = capturar(:class, 'image-responsive')
  imag.click
  panel_01 = capturar(:xpath, '/html/body/footer/div/div/div[1]/section/p/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Creative Commons: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Creative Commons: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end


Then /^link - Trámites y servicios$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  imag = capturar(:xpath, '/html/body/footer/div/div/div[2]/div')
  imag.click
  panel_01 = capturar(:xpath, '/html/body/footer/div/div/div[2]/div/section/ul/li[1]/a')
  panel_01.click
  esperar(30)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Trámites y servicios: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Trámites y servicios: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Turnos$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  imag = capturar(:xpath, '/html/body/footer/div/div/div[2]/div')
  imag.click
  panel_01 = capturar(:xpath, '/html/body/footer/div/div/div[2]/div/section/ul/li[2]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Turnos: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Turnos: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Organismos del Estado$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  imag = capturar(:xpath, '/html/body/footer/div/div/div[2]/div')
  imag.click
  panel_01 = capturar(:xpath, '/html/body/footer/div/div/div[2]/div/section/ul/li[3]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Organismos del Estado: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Organismos del Estado: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Mapa del Estado$/ do
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  imag = capturar(:xpath, '/html/body/footer/div/div/div[2]/div')
  imag.click
  panel_01 = capturar(:xpath, '/html/body/footer/div/div/div[2]/div/section/ul/li[4]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Mapa del Estado: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Mapa del Estado: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Acerca de este sitio$/ do #bien
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  imag = capturar(:class, 'image-responsive')
  imag.click
  panel_01 = capturar(:xpath, '/html/body/footer/div/div/div[3]/div/section/ul/li[1]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Acerca de este sitio: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Acerca de este sitio: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Términos y condiciones$/ do  #bien
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  imag = capturar(:class, 'image-responsive')
  imag.click
  panel_01 = capturar(:xpath, '/html/body/footer/div/div/div[3]/div/section/ul/li[2]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Términos y condiciones: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Términos y condiciones: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end

Then /^link - Ayuda$/ do  #bien
  url = 'https://www.argentina.gob.ar/'
  go(url)
  esperar(9)
  imag = capturar(:class, 'image-responsive')
  imag.click
  panel_01 = capturar(:xpath, '/html/body/footer/div/div/div[3]/div/section/ul/li[3]/a')
  panel_01.click
  esperar(3)
  titulo_de_la_pagina = titulo
  if titulo_de_la_pagina.include? "404"
    puts fail "link - Ayuda: #{titulo_de_la_pagina}......[ERROR]".red
  else
    puts "link - Ayuda: #{titulo_de_la_pagina}......[PASSED]".green
  end
  # cierrate_sesamo
end