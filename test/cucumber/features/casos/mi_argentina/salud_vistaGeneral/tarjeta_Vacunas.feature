Feature: Tarjeta Vacunas
  En este caso de prueba se verificará la tarjeta vacunas ingresando con un usuario Hombre y un usuario Mujer

  1. Se verificará este presente la Tarjeta Vacunas
  2. Se verificara que el texto de la tarjeta coincida con: Configurá tu perfil para notificaciones Queremos ofrecerte información personalizada. Completá tus datos y podrás recibir notificaciones de las vacunas que te corresponden, actualizaciones en el calendario de vacunación y avisos de campañas.¿Trabajás como personal de saludSí    No    No quiero declarar ¿Tenés hijos de entre 6 meses y 2 años de edad? Sí    No    No quiero declararTu edadTenés 26 años.La calculamos en base a tu fecha de nacimiento.Abrir vínculo en nueva pestañaConocé todas las vacunas que están incluidas en el Calendario Nacional de Vacunación y cuáles te tocan aplicarte según tu edad. Siempre consultalo antes con tu médico.
  3. Se verificara que en el caso de ingrresar con usuario mujer estara el texto: ¿Estás embarazada o tuviste un bebé en los últimos 10 días? Sí    No    No quiero declarar
  4. Se verificara que en el caso de ingresar con usuarario Hombre no debe estar el texto: ¿Estás embarazada o tuviste un bebé en los últimos 10 días? Sí    No    No quiero declarar
  5. Se verificará que este presente el ícono: icono-arg-vacunas
  6. Se verificará que el link Conocé todas las vacunas   lleve a https://www.argentina.gob.ar/salud/vacunas
  7. Se verificará que el link fecha de nacimiento  lleve a https://qa-id.argentina.gob.ar/perfil/

  @tarjeta_Vacunas @salud
  Scenario:
    Given Ingresar a QA con CUIL 20288463213
    Then Verificar la tarjeta Vacunas Hombre CUIL 20288463213

  @tarjeta_Vacunas @salud
  Scenario:
    Given Ingresar a QA con CUIL 20258489749
    Then Verificar la tarjeta Vacunas Mujer CUIL 20258489749
