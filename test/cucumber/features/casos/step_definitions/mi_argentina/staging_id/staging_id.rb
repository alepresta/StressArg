Then /^generando registros en staging-id$/ do
  id_type = 'cuil'
  #  id_type = 'pasaporte'
  fecha_de_nacimiento = 12121987
  #  url_registro = 'https://staging-id.argentina.gob.ar/registro/'
    url_registro = 'https://qa-id.argentina.gob.ar/registro/'
  #  url_registro = 'https://id.argentina.gob.ar/registro/'
  sexo = 'm'
  #sexo = 'f'
  veces = 1
  total = crear_usuario_aleat(id_type,sexo,url_registro,veces)
  n = 0
  veces.times do
    puts ""
    if (n + 1) == veces
      puts "Registros creados:    (#{total[n][:creados]})".green
      puts "=========================".green
    end
    n = n + 1
  end
  n = 0
  veces.times do
    if  !total[n][:nombre].to_s.empty?
      puts "CUIT:(#{total[n][:id_numbero]})     MAIL:(#{total[n][:correo_electronico]})     NOMBRE:(#{total[n][:nombre]} #{total[n][:apellido]}) FECHA:(#{total[n][:fecha]})".green
    end
    n = n + 1
  end
  puts ""
  puts ""
  puts ""
  n = 0
  veces.times do
    if (n + 1) == veces
      puts "Registros no creados: (#{total[n][:creados_no]})...[Error al crear registros]".red
      puts "=========================".red
    end
    n = n + 1
  end
  n = 0
  veces.times do
    if  !total[n][:nombre_no].to_s.empty?
      puts "CUIT:(#{total[n][:id_numbero_no]})     MAIL:(#{total[n][:correo_electronico_no]})     NOMBRE:(#{total[n][:nombre_no]} #{total[n][:apellido_no]})  FECHA:(#{total[n][:fecha_no]})".red
    end
    n = n + 1
  end
end