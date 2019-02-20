Feature: TARJETA DONACIÓN DE MÉDULA ÓSEA

  En este caso de prueba se ingresara con un usuario con Donación de Médula y con un usuario sin Donación de Médula, se harán las siguientes verificaciones:

  1   Se validará que este presente la tarjeta de Donación de médula ósea
  2   Se validará que estan los textos: Donación de órganos y tejidos  Manifestación en oposición a la donación de órganos y tejidos.Fecha de expresión de voluntad Ver más información
  3   Se validará que este presente el ícono: text-muted
  4   Se validará que este presente el botón: BUSCÁ LOS CENTROS MÁS CERCANOS y que lleve a https://www.argentina.gob.ar/donar-medula/donde
  5   Se validará que este presente el link Conocé más sobre la donación de médula ósea   lleva a https://www.argentina.gob.ar/donar-medula
  6   Se validará que este presente la tarjeta DETALLES
  7   Se validará que se permite volver a la pantalla anterior
  8   Se validará que este presente el campo Estoy inscripto en el Registro Nacional de Donantes Voluntarios de CPH.. y coincide con el texto: Soy donante
  9   Se validará que este presente el el campo Fecha de expresión de voluntad. y coincide con el texto: 27/08/2016
  10  Se validará que este presente el campo Apellido. y coincide con el texto: CHILABERT
  11  Se validará que este presente elcampo Nombres. y coincide con el texto: HERNAN
  12  Se validará que este presente el campo Tipo de documento. y coincide con el texto: DNI
  13  Se validará que este presente el campo Número de documento. y coincide con el texto: 31703611
  14  Se validará que este presente el campo Provincia. y coincide con el texto: BUENOS AIRES
  15  Se validará que este presente el campo Situación de la médula. y coincide con el texto: TIPIFICADO
  16  Se validará que este presente el código QR (qrcode)

  @tarjeta_M_Osea @salud
  Scenario: Tarjeta donación de Médula ósea con usuario Donante
    Given Ingresar a QA con CUIL 20288463213
    Then Tarjeta donación de Médula ósea con usuario Donante 20288463213

  @tarjeta_M_Osea @salud
  Scenario: Tarjeta donación de Médula ósea con usuario no Donante
    Given Ingresar a QA con CUIL 27271042669
    Then Tarjeta donación de Médula ósea con usuario no Donante 27271042669
