USE laboratorio_insetos;

-- Coletores
INSERT INTO coletor (nome, equipe, contato)
VALUES
('João Lucas', 'Equipe Artrópodes', 'joao@email.com'),
('Ana Silva', 'Equipe Mata', 'ana@email.com'),
('Carlos Souza', 'Equipe Pesquisa', 'carlos@email.com');


-- Localizações
INSERT INTO localizacao 
(nome_area, bioma, cidade, latitude, longitude, altitude)
VALUES
('Floresta Experimental', 'Cerrado', 'Lagoa da Confusão', -10.790000, -49.620000, 250.50),
('Reserva Natural', 'Amazônia', 'Palmas', -10.180000, -48.330000, 300.00),
('Área Rural', 'Cerrado', 'Gurupi', -11.730000, -49.060000, 280.20);


-- Taxonomia
INSERT INTO taxonomia 
(ordem, familia, genero, especie)
VALUES
('Coleoptera', 'Scarabaeidae', 'Dynastes', 'Dynastes hercules'),
('Lepidoptera', 'Nymphalidae', 'Morpho', 'Morpho menelaus'),
('Hymenoptera', 'Apidae', 'Apis', 'Apis mellifera');


-- Coletas
INSERT INTO coleta
(id_coletor, id_local, data_coleta, horario_coleta, metodo, observacoes)
VALUES
(1, 1, '2026-06-20', '08:30:00', 'Rede entomológica', 'Coleta em área aberta'),
(2, 2, '2026-06-21', '10:00:00', 'Armadilha', 'Grande quantidade encontrada'),
(3, 3, '2026-06-22', '15:20:00', 'Observação manual', 'Poucos indivíduos');


-- Insetos
INSERT INTO inseto
(nome_popular, estado_do_inseto, observacoes, id_coleta, id_taxonomia)
VALUES
('Besouro-rinoceronte', 'Vivo', 'Encontrado próximo a árvores', 1, 1),
('Borboleta azul', 'Preservado', 'Amostra coletada para estudo', 2, 2),
('Abelha europeia', 'Vivo', 'Observação de comportamento', 3, 3);


-- Pesquisadores
INSERT INTO pesquisador
(nome, especialidade, contato)
VALUES
('Mariana Costa', 'Entomologia', 'mariana@email.com'),
('Pedro Almeida', 'Ecologia', 'pedro@email.com');


-- Pesquisas
INSERT INTO pesquisa
(titulo, data_analise, objetivo_estudo, resultado, id_pesquisador)
VALUES
(
'Estudo de diversidade de insetos',
'2026-06-25',
'Analisar espécies encontradas no bioma',
'Diversidade elevada de espécies',
1
),
(
'Comportamento de polinizadores',
'2026-06-26',
'Observar hábitos alimentares',
'Importância na polinização',
2
);


-- Relação pesquisa x inseto
INSERT INTO pesquisa_inseto
(id_pesquisa, id_inseto, observacao_analise)
VALUES
(1, 1, 'Espécie com características relevantes'),
(1, 2, 'Participa do equilíbrio ecológico'),
(2, 3, 'Importante agente polinizador');