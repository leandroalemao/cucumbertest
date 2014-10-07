# encoding: utf-8

	Dado /^que eu estou na página do formulario$/ do
		visit new_usuario_path
	end
	
	Quando /^eu preencher todos os campos$/ do
		fill_in "usuario_nome", :with=> "Rodrigo Reginato"
		fill_in "usuario_endereco", :with=> "Rua alagoas 3872"
		fill_in "usuario_telefone", :with=> '4398765425'
		page.select "SC", :from => 'usuario_estado'
		page.choose("tipo_M")
	end

	E /^clicar em "(.*?)"$/ do |nome_do_botao|
		find_button(nome_do_botao).click
		save_and_open_page
	end

	Então /^deve ver receber a mensagem "(.*?)"$/ do |mensagem|
		page.has_content?(mensagem)
	end