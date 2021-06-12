Feature: CargarFotoPerfil
	Yo como profesor quiero cargar una foto de perfil

Scenario: Cargar una foto de perfil  
Given Existen un usuario X que esta registrado y autenticado en el sistema
And el usuario tiene una foto F
When el usuario carga la foto
Then el sistema carga la foto F (únicamente formato .png)
And vincula la foto F al usuario X
And confirma con un mensaje al usuario que la foto cargo correctamente

Scenario: Cargar una foto de perfil con formato incorrecto
Given Existen un usuario X que esta registrado y autenticado en el sistema
And el usuario tiene una foto F con formato incorrecto (Diferente a png)
When el usuario carga la foto
Then el sistema presenta un mensaje donde indica que la foto no tiene formato correcto


Scenario: Visualizar la foto de perfil
Given Existen un usuario X con foto  que esta registrado y autenticado en el sistema
When El usuario visualiza la foto de perfil 
Then aparece la foto de perfil

Scenario: Visualizar la foto de perfil no cargada
Given Existen un usuario X sin foto de perfil que esta registrado y autenticado en el sistema
When El usuario visualiza la foto de perfil 
Then el sistema presenta una imagen en blanco
And el sistema presenta un mensaje que indica al usuario que no tiene foto de perfil 