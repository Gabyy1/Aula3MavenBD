Create DataBase Aula3
go
Use Aula3
Go

--Fazer um algoritmo que leia 1 número e mostre se são múltiplos de 2,3,5 ou nenhum deles
Declare @num int,
		@res int
Set @num = 15
Set @res = @num % 2
If (@res = 0)
Begin
	Print('Multiplo de 2')
End
Set @res = @num % 3
If(@res = 0)
Begin
	Print('Mutiplo de 3')
End
Set @res = @num % 5
If (@res = 0)
Begin
	Print('Multiplo de 5')
End
Else 
	Print('Não é multiplo de 2,3 ou 5')


--Fazer um algoritmo que leia 3 números e mostre o maior e o menor
Declare @a int,
		@b int,
		@c int
Set @a = 10
Set @b = 15
Set @c = 1
If (@a = @b or @a = @c or @b = @c)
Begin
	Print('Digite 3 números diferentes')
End
If (@a > @b and @a > @c)
Begin
	Print('O maior número é: ' + Cast(@a As Varchar(4)))
End
If (@b > @a and @b > @c)
Begin
	Print('O maior número é: ' + Cast(@b As Varchar(4)))
End 
If (@c > @a and @c > @b)
Begin
	Print('O maior número é: ' + Cast(@c As Varchar(4)))
End
If (@a < @b and @a < @c)
Begin
	Print('O menor número é: ' + Cast(@a As Varchar(4)))
End
If (@b < @a and @b < @c)
Begin
	Print('O menor número é: ' + Cast(@b As Varchar(4)))
End
If (@c < @b and @c < @a)
Begin
	Print('O menor número é: ' + Cast(@c As Varchar(4)))
End

--Fazer um algoritmo que calcule os 15 primeiros termos da série
--1,1,2,3,5,8,13,21,...
--E calcule a soma dos 15 termos
Declare @num1 int,
		@num2 int
Set @num1 = 0
Set @num2 = 1
While(@num1 <= 15)
Begin 
	Print (@num1 +'+'+ @num2)
Set @num1 = @num2 
Set @num2 = @num1 + @num2
End

-- Fazer um algoritmo que separa uma frase, colocando todas as letras em maiúsculo 
--e em minúsculo (Usar funções UPPER e LOWER)
Declare @frase varchar(100)
Set @frase = 'Laboratorio de Banco de Dados'
	Print(upper(@frase)) 
	Print(lower(@frase))

--Fazer um algoritmo que inverta uma palavra (Usar a função SUBSTRING)
Declare @palavra varchar(100),
		@i varchar(100)
Set @palavra = 'paz'
Set @i = Len(@palavra)
While (@i < len(@palavra))
Begin 
	Print (@palavra)
Set @i -= @i
End
