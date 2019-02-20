Feature: En este caso de prueba se debe generar un usuario y eliminar la cuenta

  Verificar que la cuenta haya sido eliminada
  Verificar que al desloguear redirija a la página de login https://qa-id.argentina.gob.ar/ingresar/

  @id_eliminar_cuenta
  Scenario: crear u usuario nuevo para despues eliminar su cuenta
    Then se crea un usuario nuevo mia-para eliminar

  @id_eliminar_cuenta
  Scenario: Eliminar la cuenta que se creo en el paso anterior y Verificar que al desloguear redirija a la página de login https://qa-id.argentina.gob.ar/ingresar/
    Then Eliminar la cuenta que se creo mia-para eliminar

  @id_eliminar_cuenta
  Scenario: Verificar que la cuenta mia-para eliminar haya sido eliminada
    Then la cuenta mia-para eliminar es eliminada