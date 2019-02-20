Feature: En este Cp se verificara la tarjeta Donacion de órganos y tejidos con usuario donante
  ===================================================
  En este caso de prueba se ingresara al sistema con un usuario Donante CUIL 20-17224325-9

  Se verificara la tarjeta Donación de Órganos

  Se verificará este presente la tarjeta: Donación de órganos y tejidos
  Se verificara que coincidan los textos: Donación de órganos y tejidos  Manifestación a la donación de órganos y tejidos.Fecha de expresión de voluntad Ver más información
  Se verificará que este presente el logo: Logo del Instituto Nacional Central Único Coordinador de Ablación e Implante
  Se verificará que este presente el logo: Logo de Ministerio de Salud
  Se verificará que este presente el logo: Logo de Cobertura Universal de Salud
  Se verificará que este presente el ícono: fa-heart-o
  Se verificará que el link Ver más información  lleve a link a https://qa-mi.argentina.gob.ar/salud/donar-organos donde se muestran los DETALLES de la tarjeta
  Se verificará que esta presente la sección Compartir mi expresión en redes sociales con los íconos fa-facebook y fa-twitter

  Se verificara la tarjeta Detalles

  Permita volver a la pantalla anterior
  Este el campo Manifestación en oposición a la donación de órganos y tejidos. y coincida con el texto: Quiero ser donante
  Este el campo Fecha de expresión de voluntad. y coincida con el texto: 14/05/2018
  Este el campo Apellido. y coincida con el texto: LANDI
  Este el campo Nombres. y coincida con el texto: OMAR ANDRES
  Este el campo Tipo de documento. y coincida con el texto: DNI
  Este el campo Número de documento. y coincida con el texto: 31604573
  Esté presente el código QR (qrcode)
  Se pueda descargar la credencial

  @usuario_donante @salud
  Scenario:
    Given Ingresar a QA con CUIL 20172243259
    Then Se verificara la tarjeta Donación de Órganos
    Given Ingresar a QA con CUIL 20172243259
    Then Se verificara la tarjeta Detalles Donación de Órganos


