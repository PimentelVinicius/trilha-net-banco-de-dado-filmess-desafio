-- 1 - Buscar o nome e ano dos filmes

SELECT nome, ano FROM Filmes 

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT nome, ano, duracao FROM filmes ORDER BY ano;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT nome, ano, duracao FROM filmes WHERE nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997
SELECT nome, ano, duracao FROM filmes WHERE ano = 1997;

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT nome, ano, duracao FROM filmes WHERE ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT nome, ano, duracao FROM filmes WHERE duracao > 100 and duracao < 150 ORDER BY duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT  ano, COUNT(DURACAO) AS Quantidade   FROM filmes GROUP BY ano ORDER BY Quantidade DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT * from Atores WHERE Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT * from Atores WHERE Genero = 'F' ORDER BY PrimeiroNome


-- 10 - Buscar o nome do filme e o gênero

SELECT F.Nome, G.Genero FROM Filmes AS F 
INNER JOIN FILMESGenero AS FG ON F.ID = FG.IdFilme
INNER JOIN Generos AS G ON FG.IdGenero = G.ID;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

SELECT F.Nome, G.Genero FROM Filmes AS F 
INNER JOIN FILMESGenero AS FG ON F.ID = FG.IdFilme
INNER JOIN Generos AS G ON FG.IdGenero = G.ID
WHERE G.Genero = 'Mistério';


-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes AS F 
INNER JOIN ElencoFilme AS EF ON F.ID = EF.IdFilme
INNER JOIN Atores A  ON EF.IdFilme = A.ID


