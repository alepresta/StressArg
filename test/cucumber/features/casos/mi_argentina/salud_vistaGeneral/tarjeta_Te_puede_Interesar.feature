Feature: tarjeta Te puede interesar
  1. En este cp se verificará que este presente la tarjeta Te puede interesar
  2. Se verificara que este el texto: Te puede interesar Cuidar la salud Recomendaciones para cuidar tu salud en cada momento de tu vida. Prevención y cuidados Información y recomendaciones para que vos y tu familia adopten hábitos saludables. Crecer con salud Recomendaciones para el embarazo, parto, puerperio, lactancia y crianza.
  3. Se verificará que el link Cuidar la salud   lleve a link a https://www.argentina.gob.ar/tema/cuidarlasalud
  4. Se verificará que el link Prevención y cuidados   lleve a link a https://www.argentina.gob.ar/salud/prevencionycuidados
  5. Se verificará que el link Crecer con salud   lleve a link a https://www.argentina.gob.ar/salud/crecerconsalud

  @tarjeta_Te_puede_Interesar @salud
  Scenario:
    Given Ingresar a QA con CUIL 20288463213
    Then Verificar la tarjeta Te puede interesar para el CUIL 20288463213