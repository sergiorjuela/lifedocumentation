Feature: ConsultarUsuariosEstado
	Yo como administrador quiero consultar los usuarios por estado activo e inactivo

Scenario: Cuando se buscan usuarios por estado inactivo
Given existe el estado "inactivo"
And existen los usuarios X y Y en estado inactivo
When el administrador busca usuarios en estado inactivo
Then aparecen en el listado los usuarios X y Y

Scenario: Cuando se buscan usuarios por estado activo
Given existe el estado "activo"
And existen los usuarios A y B en estado activo
When el administrador busca usuarios en estado activo
Then aparecen en el listado los usuarios A y B

Scenario: Cuando se buscan usuarios por estado que no existe
Given  no existe el estado "desactivado"
When el administrador busca usuarios en estado desactivado
Then no aparece nada en el listado


Scenario: Cuando no existen usuarios en estado inactivo
Given existe el estado "inactivo"
And no existen usuarios en estado inactivo
When el administrador busca usuarios en estado inactivo
Then no aparece nada en el listado

Scenario: Cuando no existen usuarios en estado activo
Given existe el estado "activo"
And no existen usuarios en estado activo
When el administrador busca usuarios en estado activo
Then no aparece nada en el listado

