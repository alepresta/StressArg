Feature: En esta suite de pruebas se verificaran todos los scenarios referentes al login de usuarios de mi Argentina
  https://testlink.argentina.gob.ar/lib/testcases/tcPrint.php?show_mode=&testcase_id=554&tcversion_id=555

  @id_login
  Scenario:   Se espera que el usuario pueda ingresar a su cuenta con su número de documento registrado y su contraseña.
    Then Ingresar a MiArgentina QA con 20323468983

  @id_login
  Scenario:   En este scenario se validara el funcionamiento de  todos los campos  del formulario de registro de mi argentina
    Then verificar formulario de registro MiArgentina
