# encoding: utf-8
# language: pt

Funcionalidade: Preencher o formulário

	@javascript
	Cenário: Deve preencher todos os campos do forumlário e salvar com sucesso
		Dado que eu estou na página do formulario
		Quando eu preencher todos os campos
		E clicar em "Salvar"
		Então deve ver receber a mensagem "Usuarios cadastrado com sucesso"