Feature: Prueba tecnica choucair
  Como usuario debe completar el formulario para la creaciond de un usuario

  Scenario: Completar formulario para creacion de usuario.
    Given El usuario entra en la pagina principal.
    When Hace cick en el boton Join Today.
    Then Se redirige al formulario de registro
    When Completa los campos del paso 1.
    Then Se redirige al formulario del paso 2.
    When Completa los campos del paso 2.
    Then Se redirige al formulario del paso 3.
    When Completa los campos del paso 3.
    Then Se redirige al formulario del paso 4.