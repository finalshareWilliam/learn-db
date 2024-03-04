
-- Exercícios para cada um dos grupos:

-- Criação de tabelas (CREATE TABLE), 
-- Inserção de dados (INSERT) 
-- Consulta de dados (SELECT). 

-- Cada lista terá um cenário específico.

-- Lista 1: Biblioteca (a a b)
-- Exercício 1: Crie uma tabela Livros com colunas para ID, Titulo, Autor, e AnoPublicacao.
CREATE TABLE Biblioteca (
    ID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Autor VARCHAR(50),
    AnoPublicacao int
);

-- Exercício 2: Insira 5 registros diferentes na tabela Livros.
INSERT INTO Biblioteca (ID, Titulo, Autor, AnoPublicacao)
VALUES
    (1, 'Como aprender banco de dados', 'Tanaka, W.', 2018),
    (2, 'Como Aprender a jogar Dota', 'Porto, V.', 2012),
    (3, 'Livro PHP', 'Bras, C.', 2000),
    (4, 'Livro C++', 'Python, F.', 2018),
    (5, 'Livro 50 tons do funk', 'Kevin, MC.', 2017);

-- Exercício 3: Selecione todos os livros publicados após o ano 2000.
SELECT * FROM Biblioteca WHERE AnoPublicacao > 2000;

-- Exercício 4: Selecione todos os livros de um autor específico.
SELECT * FROM Biblioteca WHERE Autor = 'Tanaka, W.';

-- Exercício 5: Conte quantos livros existem na tabela.
SELECT COUNT(id) AS QuantosLivros FROM Biblioteca;

-- Lista 2: Escola (e p r)
-- Exercício 1: Crie uma tabela Alunos com colunas para ID, Nome, Idade, e Turma.
-- Exercício 2: Insira 8 alunos com diferentes idades e turmas.
-- Exercício 3: Selecione todos os alunos da turma 'A'.
-- Exercício 4: Encontre a idade média dos alunos da turma 'B'.
-- Exercício 5: Selecione os nomes dos alunos com menos de 10 anos.

-- Lista 3: Empresa (j f l)
-- Exercício 1: Crie uma tabela Funcionarios com ID, Nome, Departamento, e Salario.
-- Exercício 2: Insira 6 funcionários em diferentes departamentos.
-- Exercício 3: Selecione todos os funcionários do departamento de 'Vendas'.
-- Exercício 4: Calcule o salário médio dos funcionários do departamento de 'TI'.
-- Exercício 5: Selecione os funcionários que ganham mais de 5000.

-- Lista 4: Restaurante (g r j)
-- Exercício 1: Crie uma tabela Pratos com ID, NomePrato, Tipo (entrada, principal, sobremesa), e Preco.
-- Exercício 2: Insira 7 pratos variando os tipos e preços.
-- Exercício 3: Selecione todos os pratos que são sobremesas.
-- Exercício 4: Encontre o preço médio dos pratos principais.
-- Exercício 5: Selecione os pratos com preço acima de 30.

-- Exercício 1: Criar a tabela Produtos
CREATE TABLE Produtos (
    ID INT PRIMARY KEY,
    NomeProduto VARCHAR(100),
    Categoria VARCHAR(50),
    Preco DECIMAL(10, 2)
);

-- Exercício 2: Inserir 10 produtos em diferentes categorias
INSERT INTO Produtos (ID, NomeProduto, Categoria, Preco)
VALUES
    (1, 'Iphone 15 Pro Max', 'Eletronicos', 8999.99),
    (2, 'AirPods Pro Gen3', 'Eletronicos', 1490.99),
    (3, 'Livro PHP', 'Livros', 29.99),
    (4, 'Livro C++', 'Livros', 19.99),
    (5, 'TV Samsung 4K LED', 'Eletronicos', 4799.99),
    (6, 'Mouse Razer', 'Eletronicos', 999.99),
    (7, 'Teclado Razer', 'Eletronicos', 1249.99),
    (8, 'Cadeira Aerocool Gamer', 'Móveis', 1990.99),
    (9, 'Sofá 2 Lugares', 'Móveis', 499.99),
    (10, 'Placa de Captura Elgato', 'Eletronicos', 2299.99);

-- Exercício 3: Selecionar todos os produtos da categoria 'Eletrônicos'
SELECT * FROM Produtos WHERE Categoria = 'Eletronicos';

-- Exercício 4: Calcular o valor total de todos os produtos da categoria 'Eletronicos'
SELECT SUM(Preco) AS ValorTotalEletronicos FROM Produtos WHERE Categoria = 'Eletronicos';

-- Exercício 5: Contar quantos produtos têm preço superior a 100
SELECT COUNT(*) AS ProdutosPrecoSuperior100 FROM Produtos WHERE Preco > 100;
