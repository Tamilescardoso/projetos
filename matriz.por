programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Matematica --> mat
	
	inteiro valor
	
	funcao inicio()
	{
		const inteiro altura = 5
		const inteiro largura = 5

		inteiro matriz[altura][largura]

		preenche(matriz)
		exibe(matriz)
	}

	funcao preenche(inteiro &matriz[][])
	{
		para (inteiro linha = 0; linha < u.numero_linhas(matriz); linha++)
		{
			para (inteiro coluna = 0; coluna < u.numero_colunas(matriz); coluna++)
			{
			    
			    escreva("\nInforme numero para a posicao [",linha,"][",coluna,"]: ")
			    leia(valor)
			    
				se (linha == coluna)
				{
					matriz[linha][coluna] = mat.potencia(valor, 2.0) 
				}
				senao
				{
					matriz[linha][coluna] = valor
				}
			}
		}		
	}

	funcao exibe(inteiro matriz[][])
	{
	    escreva("\nMatriz:\n")
		para (inteiro linha = 0; linha < u.numero_linhas(matriz); linha++)
		{
			para (inteiro coluna = 0; coluna < u.numero_colunas(matriz); coluna++)
			{
				escreva("[", matriz[linha][coluna], "]")
			}
			
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1012; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */