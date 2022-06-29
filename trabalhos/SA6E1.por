programa
{
	inclua biblioteca Util --> u

	const inteiro quant = 10
		 inteiro num[quant], posicao = 0, opcao, i, temp
		 cadeia enter


	funcao inicio()
	{
			limpa()
		escreva(" _________________________________\n")
		escreva("|         MENU LISTA              |\n")
		escreva("|_________________________________|\n")
		escreva("| 1 - cadastro manual             |\n")
		escreva("|_________________________________|\n")
		escreva("| 2 - cadastro automatico         |\n")
		escreva("|_________________________________|\n")
		escreva("| 3 - exibir em ordem crescente   |\n")
		escreva("|_________________________________|\n")
		escreva("| 4 - exibir em ordem decrescente |\n")
		escreva("|_________________________________|\n")
		escreva("| 5 - Exibir os valores da lista  |\n")
		escreva("|_________________________________|\n")
		escreva("| 6- sair do sistema              |\n")
		escreva("|_________________________________|\n")
		escreva("|-Escolha uma opção:")
		leia(opcao)

	escolha(opcao) 
		{

			caso 1:
			
			cadastrar()
			
			
			pare

			caso 2:
				
			cadastroAuto()
			     
			pare

			caso 3:

			crescente()
				
				
			pare

			caso 4: 

			decrescente()
				
			pare
			
			caso 5:
				
			exibir()
				
			pare

			caso 6:
			sair()
			
			pare

			caso contrario:
			limpa()
			escreva("opcao invalida!\n\n")
			escreva("reiniciando...")
			u.aguarde(3000)
			inicio()
	}}	
	funcao cadastrar()
		{
			limpa()
			para(posicao = 0; posicao < quant; posicao++)
			{
				limpa()
				escreva("informe o valor da ", posicao+1, " posicao:\nR:")
				leia(num[posicao])

				
			}
			escreva("\n\nPrecione a tecla [ENTER] para continuar\n\n")
				leia(enter)
				inicio()
		}
	funcao cadastroAuto()
	{	
		limpa()
		para(posicao = 0; posicao < quant; posicao++)
		{
			num[posicao] = u.sorteia(1, 99)
		}
				escreva("Lista atualizada\n\n")
				escreva("\n\nPrecione a tecla [ENTER] para continuar\n\n")
				leia(enter)
				inicio()
	}
	funcao crescente()
	{
		limpa()

		se(posicao != 0){
		
		para(posicao = 0; posicao < quant-1;posicao++){
			
			para(i = 0; i < quant-1; i++)
			{
				se(num[i] > num[i+1])
				{
				temp		 = num[i]
				num[i] 	 = num[i+1]
				num[i+1]	 = temp
				
					}
				}	
			}
			escreva("Lista atualizada\n\n")
		}
		senao{
			escreva("Nenhum valor declarado!\n\n")
		}
				
				escreva("\n\nPrecione a tecla [ENTER] para continuar\n\n")
				leia(enter)
				inicio()
				
	}	
	funcao decrescente()
	{
		limpa()

		se(posicao != 0){	
		
		para(posicao = 0; posicao < quant -1; posicao++)
		{
			para(i = 0; i < quant-1; i++)
			{
				se(num[i] < num[i+1])
				{
					temp		= num[i]
					num[i]  = num[i+1]
					num[i+1]  = temp
					}
				}
			}
				escreva("Lista atualizada\n\n")
		}
		senao{
			escreva("Nenhum valor declarado!\n\n")
		}
		
				escreva("\n\nPrecione a tecla [ENTER] para continuar\n\n")
				leia(enter)
				inicio()
	}
	funcao exibir()
	{	
		limpa()

		se(posicao != 0)
		{
		
			para(posicao = 0; posicao < quant; posicao++)
			{
				se(posicao == quant-1)
				{
					escreva(num[posicao], ", ")
				}
				senao
				{
					escreva(num[posicao], ", ")
				}
			}
		
		}
		senao{
			escreva("Nenhum valor declarado!\n\n")
		}
		
				escreva("\n\nPrecione a tecla [ENTER] para continuar\n\n")
				leia(enter)
				inicio()
	}
	funcao sair()
	{
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 156; 
 * @DOBRAMENTO-CODIGO = [30, 77, 92, 104, 134, 162, 190];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */