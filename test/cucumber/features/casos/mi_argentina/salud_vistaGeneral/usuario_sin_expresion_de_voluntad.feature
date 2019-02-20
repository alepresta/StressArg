

Feature: En este Cp se verificara la tarjeta Donacion de órganos y tejidos con usuario sin declarar expresión de voluntad de Donar Organos
  ===================================================
  Se verificará que en la tarjeta Donación de órganos y tejidos :

  Se verificara que este presente la tarjeta Donación de órganos y tejidos
  Contenga el texto: (¿Sabías que un donante puede salvar hasta 7 vidas?)
  Contenga el texto: (Si querés expresar tu voluntad de donar, podés hacerlo ahora. Es fácil y rápido.)
  Este el botón EXPRESÁ TU VOLUNTAD EN FORMA DIGITAL y al seleccionarlo se muestre el formulario (Expresá tu voluntad de donar en forma digital)
  Esté presente el link Conocé más sobre la donación de órganos y tejidos  (https://www.argentina.gob.ar/donar-organos)


  @usuario_sin_expresion_de_voluntad @salud
  Scenario:
    Given Ingresar a QA con CUIL 27271042669
    Then Se verificara la tarjeta Donación de Órganos con usuario sin expresión Donar 27271042669