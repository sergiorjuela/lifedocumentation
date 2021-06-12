Feature: RegistrarUsuario
	Yo como profesor quiero registrarme para poder realizar presentaciones

Scenario: Registrar un usuario profesor 
Given Existen un usuario X que no esta registrado en el sistema
And el usuario X diligencia un correo electrónico E
When el usuario da clic en registrar
Then se debe registrar el usuario en el sistema vinculando X y E
And se debe enviar un correo electrónico a E confirmado el registro junto con un password P temporal
And se debe asignar el rol profesor PR al usuario X registrado

Scenario: Registrar un usuario profesor que ya existe
Given Existen un usuario X que esta registrado en el sistema
And el usuario X diligencia un correo electrónico E
When el usuario da clic en registrar
Then se debe presentar un mensaje que indique que el usuario ya esta registrado en el sistema
And no se registra ni modifica el usuario X

Scenario: Registrar un usuario profesor con un correo electrónico invalido
Given Existen un usuario X que no esta registrado en el sistema
And el usuario X diligencia un correo electrónico E en formato invalido
When el usuario da clic en registrar
Then se presenta un mensaje que indique que el correo electrónico no tiene un formato valido
And no se registra el usuario X

Scenario: Registrar un usuario profesor con un correo electrónico vinculado a un usuario existente 
Given Existen un usuario X que no esta registrado en el sistema y un usuario Y que esta registrado en el sistema
And el usuario X diligencia un correo electrónico E que es el mismo que tiene vinculado el usuario Y
When el usuario X da clic en registrar
Then se presenta un mensaje que indica que el correo electrónico ya esta vinculado a un usuario existente

Scenario:  El usuario ingresa al sistema con el rol profesor
Given Existen un usuario X registrado en el sistema con una cuenta de correo electrónico E 
When el usuario X diligencia la cuenta de correo E y el password asignado P
And el usuario X da clic en ingresar
Then El sistema valida que el usuario X tenga vinculado el rol profesor PR 
And el sistema presenta la interfaz al usuario
