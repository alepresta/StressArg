Feature: Pagina principal
  Este caso de prueba consiste en la verificacion de la home de Argentina.gob.ar www.argentina.gob.ar
  Se verificara el funcionamiento del buscador tanto de la pagina principal como en cualquier otra pagina que no sea la principal
  Se verificara que todos los links de la página principal funcionen


    @home1
  Scenario: Ingresar a la página principal
    Given Ingresar a la página principal

    @home
  Scenario: Buscar en la página principal la palabra: anses
    Then buscar la palabra: anses

    @home
  Scenario: Buscar en la página principal la palabra: dominio
    Then buscar la palabra: dominio

    @home
  Scenario: Buscar en la página principal la palabra: tramite de cuil
    Then buscar la palabra: tramite de cuil

    @home
  Scenario: Buscar en la página principal la palabra: SALUD
    Then buscar la palabra: SALUD

    @home
  Scenario: Buscar en la página principal la palabra: trámite de médula ósea
    Then buscar la palabra: trámite de médula ósea

    @home
  Scenario: Buscar la palabra: Monotributo desde una página que no es la home : https://www.argentina.gob.ar/vuce/novedades
    Then buscar desde argentina.gob.ar vuce novedades

    @home
  Scenario: Buscar la palabra: Monotributo desde una página que no es la home : https://www.argentina.gob.ar/politicassociales
    Then buscar desde argentina.gob.ar politicassociales

    @home
  Scenario:  botón Mi Argentina
    Then verificar que el botón Mi Argentina redirija correctamente

    @home
  Scenario: Verificar los 4 panel-body principales y que redirijan al sitio esperado link - Panel 1
    Then link - Panel 1

    @home
  Scenario: Verificar los 4 panel-body principales y que redirijan al sitio esperado link - Panel 2
    Then link - Panel 2

    @home
  Scenario: Verificar los 4 panel-body principales y que redirijan al sitio esperado link - Panel 3
    Then link - Panel 3

    @home
  Scenario: Verificar los 4 panel-body principales y que redirijan al sitio esperado link - Panel 4
    Then link - Panel 4

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_01
    Then link - Tramites_panel_01

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_02
    Then link - Tramites_panel_02

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_03
    Then link - Tramites_panel_03

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_04
    Then link - Tramites_panel_04

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_05
    Then link - Tramites_panel_05

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_06
    Then link - Tramites_panel_06

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_07
    Then link - Tramites_panel_07

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_08
    Then link - Tramites_panel_08

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_09
    Then link - Tramites_panel_09

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_10
    Then link - Tramites_panel_10

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_11
    Then link - Tramites_panel_11

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_12
    Then link - Tramites_panel_12

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_13
    Then link - Tramites_panel_13

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_14
    Then link - Tramites_panel_14

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_15
    Then link - Tramites_panel_15

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_16
    Then link - Tramites_panel_16

    @home 
  Scenario: Verificar link redirija al sitio esperado - Tramites_panel_17
    Then link - Tramites_panel_17

    @home    @foot
  Scenario: Verificar link - Mas_consultados_01
    Then link - Mas_consultados_01

    @home    @foot
  Scenario: Verificar link - Mas_consultados_02
    Then link - Mas_consultados_02

    @home    @foot
  Scenario: Verificar link - Mas_consultados_03
    Then link - Mas_consultados_03

    @home    @foot
  Scenario: Verificar link - Mas_consultados_04
    Then link - Mas_consultados_04

    @home    @foot
  Scenario: Verificar link - Mas_consultados_05
    Then link - Mas_consultados_05

    @home    @foot
  Scenario: Verificar link - Mas_consultados_06
    Then link - Mas_consultados_06

    @home   @foot
  Scenario: Verificar link - Mas_consultados_07
    Then link - Mas_consultados_07

    @home   @foot
  Scenario: Verificar link - Mas_consultados_08
    Then link - Mas_consultados_08


    @home   @foot
  Scenario: Verificar los links del footer: link - Creative Commons
    Then link - Creative Commons Reconocimiento

    @home   @foot
  Scenario: Verificar los links del footer: link - Trámites y servicios
    Then link - Trámites y servicios

    @home   @foot
  Scenario: Verificar los links del footer: link - Turnos
    Then link - Turnos

    @home   @foot
  Scenario: Verificar los links del footer: link - Organismos del Estado
    Then link - Organismos del Estado

    @home   @foot
  Scenario: Verificar los links del footer: link - Mapa del Estado
    Then link - Mapa del Estado

    @home   @foot
  Scenario: Verificar los links del footer: link - Acerca de este sitio
    Then link - Acerca de este sitio
    
    @home   @foot
  Scenario: Verificar los links del footer: link - Términos y condiciones
    Then link - Términos y condiciones
    
    @home   @foot
  Scenario: Verificar los links del footer
    Then link - Ayuda

#    cucumber -t @home -f html  -o  /xxxxx/xxxxx/xxxxx/Argentina/test/report/home/home.html