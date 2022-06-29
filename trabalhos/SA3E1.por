programa
{
	inclua biblioteca Arquivos --> a	
	inclua biblioteca Util --> u
	const cadeia CADASTRO = "./cadastro.txt"

	
	
     inteiro opcao
	cadeia  nome, enter
     inteiro   idade
	
	funcao inicio()
	{	

		
		
		limpa()
		escreva("----------------------------------\n")
		escreva("|         MENU PRINCIPAL         |\n")
		escreva("----------------------------------\n")

		escreva("1 - Cadastro de peça\n")
		escreva("2 - Listar peças cadastradas\n")
		escreva("3 - Sair do sistema\n\n")

		escreva("----------------------------------\n")
		escreva("Escolha uma opção: ")
		leia(opcao)
		
escolha(opcao){
			caso 1:
                      limpa()
		    inteiro cadastrar = a.abrir_arquivo(CADASTRO, a.MODO_ACRESCENTAR)
			
			 	escreva("informe o nome de usuario:\n")
			 	leia(nome)
			 	limpa()

			 	escreva("informe sua idade - ", nome, ":\n")
			 	
			 	leia(idade)
			 	
		    cadeia usuario = nome + "\t" + idade
              cadeia linha = usuario
                    escreva(usuario+"\n")
                    a.escrever_linha(linha, cadastrar)
                    a.fechar_arquivo(cadastrar)

			 	inicio()
			 	pare
		
			caso 2: 
			
                     limpa()
                     
		   inteiro listacadastro = a.abrir_arquivo(CADASTRO, a.MODO_LEITURA)
             cadeia  linha_2
                     escreva("----------------------------------\n")
		           escreva("|       LISTA DE USUARIOS        |\n")
		           escreva("----------------------------------\n")
              
                  
                 enquanto( nao a.fim_arquivo(listacadastro))
                   {
                     linha_2 = a.ler_linha(listacadastro)
                     escreva(linha_2 + "\n")
                   }
                     a.fechar_arquivo(listacadastro)


                     
                     escreva("---------------------------------\n\n")
				 escreva("precione a tecla [ENTER] para retornar.")
				
				leia(enter)
                 
                    inicio()
				pare


			caso 3:
				limpa()
				escreva("Encerrando em 03 segundos . . .")
				u.aguarde(1000)

				limpa()
				escreva("Encerrando em 02 segundos . . .")
				u.aguarde(1000)

				limpa()
				escreva("Encerrando em 01 segundos . . .")
				u.aguarde(1000)

				limpa()
				pare
				
			caso contrario:
				limpa()
				escreva("opção invalida.")
				u.aguarde(3000)
				inicio()
				pare
				
			
			
			
			
				
		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2431; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */