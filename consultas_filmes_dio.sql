USE Filmes;
GO

-- 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano
FROM Filmes;
GO

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano
FROM Filmes
ORDER BY Ano ASC;
GO

-- 3 - Buscar pelo filme "De Volta para o Futuro", trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro';
GO

-- 4 - Buscar os filmes lançados em 1997
SELECT Nome, Ano
FROM Filmes
WHERE Ano = 1997;
GO

-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT Nome, Ano
FROM Filmes
WHERE Ano > 2000;
GO

-- 6 - Buscar os filmes com duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente
SELECT Nome, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;
GO

-- 7 - Buscar a quantidade de filmes lançados no ano, agrupando por ano, ordenando pela quantidade em ordem decrescente
SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;
GO

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Masculino';
GO

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome
FROM Atores
WHERE Genero = 'Feminino'
ORDER BY PrimeiroNome ASC;
GO

-- 10 - Buscar o nome do filme e o gênero
SELECT F.Nome AS Filme, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id;
GO

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT F.Nome AS Filme, G.Genero
FROM Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';
GO

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome AS Filme,
       A.PrimeiroNome,
       A.UltimoNome,
       EF.Papel
FROM Filmes F
INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
INNER JOIN Atores A ON EF.IdAtor = A.Id;
GO
