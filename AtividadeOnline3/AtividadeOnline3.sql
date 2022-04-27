--DML
--adicionando dados

INSERT INTO Usuario VALUES ('email@email.com', 123456)
INSERT INTO Classe VALUES ('Bárbaro' , 'Descrição do Bárbaro')
INSERT INTO Habilidade VALUES ('Lança Mortal'), ('Escudo Supremo')
INSERT INTO Personagem (Nome, UsuarioId, ClasseId) VALUES ('DeuBug', 1, 1)
INSERT INTO ClasseHabilidade(ClasseId, HabilidadeId) VALUES (1, 1), (1, 2)


INSERT INTO Usuario VALUES ('outroemail@email.com', 123456)
INSERT INTO Classe VALUES ('Monge' , 'Descrição do Monge')
INSERT INTO Habilidade VALUES ('Recuperar Vida')
INSERT INTO Personagem (Nome, UsuarioId, ClasseId) VALUES ('BitBug', 2, 2)
INSERT INTO ClasseHabilidade(ClasseId, HabilidadeId) VALUES (2, 2), (2, 3)


--DQL	
SELECT * FROM Usuario
SELECT * FROM Personagem
SELECT * FROM Classe
SELECT * FROM Habilidade
SELECT * FROM ClasseHabilidade

--desafio (modo 1 com JOIN)
--selecionar e-mail do usuário , nome do personagem , classe e sua descrição por meio da instrução inner join envolvendo as 3 tabelas.
SELECT u.Email 'Email do usuário', p.Nome 'Nome personagem', c.Nome 'Classe', c.Descricao 'Descrição' 
FROM Usuario u 
INNER JOIN Personagem p
ON u.UsuarioId = p.PersonagemId
INNER JOIN Classe c
ON p.PersonagemId = c.ClasseId

--desafio (modo 2 COM WHERE)
SELECT u.Email 'Email do usuário', p.Nome 'Nome personagem', c.Nome 'Classe', c.Descricao 'Descrição' 
FROM Usuario u, Personagem p, Classe c
WHERE u.UsuarioId = p.PersonagemId AND
      p.PersonagemId = c.ClasseId