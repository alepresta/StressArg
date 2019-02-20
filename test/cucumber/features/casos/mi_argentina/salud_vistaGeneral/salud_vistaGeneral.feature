Feature: En este Cp se verificara la sección Salud
===================================================
 En este caso de prueba se verificará que al seleccionar Salud se muestre los textos de bajada y las tarjetas

  BAJADA:Titulo:[DEBE DECIR:Salud]
  BAJADA:Descripción:[DEBE DECIR:  Expresá tu voluntad de donar órganos y médula ósea. Si ya lo hiciste, podés consultar tus credenciales.
  También podés completar tu perfil para recibir notificaciones personalizadas con consejos para cuidar tu salud y prevenir enfermedades.]
  BAJADA:Nota al pie:[DEBE DECIR:Organismos relacionados Ministerio de Salud]
  BAJADA:Link de Nota al pie:[Ministerio de Salud  debe llevar al https://www.argentina.gob.ar/salud]
  Debe estar la tarjeta Vacunas
  Debe estar la tarjeta Te puede interesar
  Debe estar la tarjeta Donación de Órganos y Tejidos
  Debe estar la tarjeta Donación de médula ósea

  @salud_vistaGeneral @salud
  Scenario:
    Given Ingresar a QA con CUIL 20172243259
    Then  Se verifican los textos de bajada y pie de sección Salud
    Then  Se verifica si esta presente en la sección Vacunas la tarjeta Vacunas
    Then  Se verifica si esta presente en la sección Vacunas tarjeta Te puede interesar
    Then  Se verifica si esta presente en la sección Vacunas tarjeta Donación de Órganos y Tejidos
    Then  Se verifica si esta presente en la sección Vacunas tarjeta Donación de médula ósea



