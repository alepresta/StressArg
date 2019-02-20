Given /^en el primer paso$/ do
  # go("https://qa-usuarios-turnos.argentina.gob.ar")
  # fecha, hora = Time.now.strftime('%Y-%m-%d--%H-%M-%S').split("--")
  # puts fecha
  # puts hora
  # wer= path_root_proyecto
  # puts wer
  # puts path_root_proyecto + "/Argentina/test/report/reporte.html"

end

When /^en el segundo paso$/ do

   # 20.times do
   #   # dfg =  numero_aleatorio(4)
   #   # puts "#{dfg} WWER "
   #   # puts mail_manrique_aleatorio
   #   puts fecha_aleatoria
   # end


end

Then /^en el tercer paso$/ do
  cuit = '20340977565'
  usuario_nombre = "Gustavo Alejandro Figueroa"
  psw = "modernizacion"
  url  = 'https://qa-id.argentina.gob.ar/ingresar/'
  logueo_captcha(cuit,usuario_nombre,psw,url)
end