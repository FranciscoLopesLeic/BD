PRAGMA FOREIGN_KEYS = on;
BEGIN TRANSACTION;

INSERT INTO Biblioteca (
                            idBiblioteca,
                            nome,
                            localizacao,
                            horaAbertura,
                            horaFecho,
                            numLivros,
                            tipologia
                        )
                        VALUES (1, 
                                'Biblioteca Central', 
                                'Rua Principal',  
                                '09:00:00', 
                                '18:00:00',
                                722,
                                'Pública'
                                );
                    
INSERT INTO Biblioteca (
                            idBiblioteca,
                            nome,
                            localizacao,
                            horaAbertura,
                            horaFecho,
                            numLivros,
                            tipologia
                        )
                        VALUES (2, 
                                'Biblioteca Municipal', 
                                'Avenida 222',  
                                '8:00:00', 
                                '22:00:00',
                                1024,
                                'Pública'
                                );

INSERT INTO Biblioteca (
                            idBiblioteca,
                            nome,
                            localizacao,
                            horaAbertura,
                            horaFecho,
                            numLivros,
                            tipologia
                        )
                        VALUES (3, 
                                'Biblioteca São João', 
                                'Rua Dom João',  
                                '08:00:00', 
                                '18:00:00',
                                544,
                                'Privada'
                                );

INSERT INTO Biblioteca (
                            idBiblioteca,
                            nome,
                            localizacao,
                            horaAbertura,
                            horaFecho,
                            numLivros,
                            tipologia
                        )
                        VALUES (4, 
                                'Biblioteca FEUP', 
                                'Rua D.Rodrigo Frias',  
                                '08:00:00', 
                                '19:00:00',
                                2340,
                                'Pública'
                                );

INSERT INTO Biblioteca (
                            idBiblioteca,
                            nome,
                            localizacao,
                            horaAbertura,
                            horaFecho,
                            numLivros,
                            tipologia
                        )
                        VALUES (5, 
                                'Biblioteca FMUP', 
                                'Rua DR.Plácido da Costa',  
                                '08:00:00', 
                                '18:00:00',
                                722,
                                'Pública'
                                );

INSERT INTO Biblioteca (
                            idBiblioteca,
                            nome,
                            localizacao,
                            horaAbertura,
                            horaFecho,
                            numLivros,
                            tipologia
                        )
                        VALUES (6, 
                                'Biblioteca FEP', 
                                'Rua Dr.Júlio de Matos',  
                                '10:00:00', 
                                '18:00:00',
                                122,
                                'Pública'
                                );

INSERT INTO Biblioteca (
                            idBiblioteca,
                            nome,
                            localizacao,
                            horaAbertura,
                            horaFecho,
                            numLivros,
                            tipologia
                        )
                        VALUES (7, 
                                'Biblioteca Gomes Costa', 
                                'Rua Dr.Alberto Silva',  
                                '07:00:00', 
                                '19:00:00',
                                3025,
                                'Privada'
                                );

INSERT INTO Biblioteca (
                            idBiblioteca,
                            nome,
                            localizacao,
                            horaAbertura,
                            horaFecho,
                            numLivros,
                            tipologia
                        )
                        VALUES (8, 
                                'Biblioteca Almeida Garrett', 
                                'Jardins Palácio Cristal',  
                                '09:00:00', 
                                '18:00:00',
                                459,
                                'Pública'
                                );

INSERT INTO Biblioteca (
                            idBiblioteca,
                            nome,
                            localizacao,
                            horaAbertura,
                            horaFecho,
                            numLivros,
                            tipologia
                        )
                        VALUES (9, 
                                'Biblioteca Florbela Matosinhos', 
                                'Rua de Alfredo Cunha',  
                                '07:00:00', 
                                '19:00:00',
                                2333,
                                'Pública'
                                );

INSERT INTO AUTOR (
                            idAutor,
                            nome,
                            biografia
                 )
                        VALUES (1, 
                                'José Saramago', 
                                'Nascido em Santarém e criado em Lisboa, Saramago era filho de camponeses e se formou no ensino técnico como serralheiro mecânico. Para se sustentar, também trabalhou como funcionário público na área da saúde e da Previdência Social.

Seu primeiro romance foi publicado em 1947 e se chamava Terra do Pecado. Conforme foi se inteirando do meio, conseguiu trabalhos mais especializados como jornalista, tradutor e até diretor literário de uma editora. Em paralelo, seguia colaborando em diversas revistas e jornais.

Além de romances e crônicas, Saramago também escreveu poesia e se dedicou ao teatro.'
                                );

INSERT INTO AUTOR (
                            idAutor,
                            nome,
                            biografia
                 )
                        VALUES (2, 
                                'William Shakespeare', 
                                'O escritor inglês começou a trabalhar quando tinha 13 anos depois de uma súbita falência da família. Quando se mudou para Londres, trabalhou como guardador de cavalos na porta do primeiro teatro da cidade. Foi lá que começou a a dar seus primeiros passos nos bastidores e representando papéis menores.'
                                );

INSERT INTO  LIVRO(
                        idLivro,
                        titulo,
                        isbn,
                        edicao,
                        genero,
                        estado,
                        idAutor
                        )
                        VALUES (1, 
                                'Princepezinho', 
                                134543657,  
                                2, 
                                'Ficção',
                                'disponível',
                                1
                                );

INSERT INTO  LIVRO(
                        idLivro,
                        titulo,
                        isbn,
                        edicao,
                        genero,
                        estado,
                        idAutor
                        )
                        VALUES (2, 
                                'Memorial Convento', 
                                134543643,  
                                7, 
                                'Romance',
                                'reservado',
                                1
                                );

INSERT INTO  FUNCIONARIO(
                                idFuncionario,
                                nome,
                                funcao,
                                horaEntrada,
                                horaSaida,
                                idBiblioteca
                        )
                        VALUES (112, 
                                'Maria Oliveira', 
                                'Bibliotecária',  
                                '08:00:00', 
                                '17:00:00',
                                2
                                );

INSERT INTO  FUNCIONARIO(
                                idFuncionario,
                                nome,
                                funcao,
                                horaEntrada,
                                horaSaida,
                                idBiblioteca
                        )
                        VALUES (114, 
                                'Carlos Costa', 
                                'Assistente',  
                                '09:00:00', 
                                '15:30:00',
                                6
                                );

INSERT INTO  AQUISICAO(
                                idAquisicao,
                                dataA,
                                numLIvros,
                                preco
                        )
                        VALUES (1, 
                                '2023-01-01', 
                                758,  
                                3032.34
                                );

INSERT INTO  AQUISICAO(
                                idAquisicao,
                                dataA,
                                numLIvros,
                                preco
                        )
                        VALUES (2, 
                                '2023-06-23', 
                                432,  
                                1343
                                );

INSERT INTO  EDITORA(
                                idEditora,
                                nome,
                                morada,
                                informacaoContacto
                        )
                        VALUES (1, 
                                'Editora ASA', 
                                'Rua Alberto Gomes',  
                                'contactasa@gmail.com'
                                );

INSERT INTO  EDITORA(
                                idEditora,
                                nome,
                                morada,
                                informacaoContacto
                        )
                        VALUES (2, 
                                'Editora DEM',
                                'Rua Pedro Pereira',
                                'editoradem@gmail.com'
                                );

INSERT INTO  USUARIO(
                                idUsuario,
                                nome,
                                numCartao,
                                dataAdesao
                        )
                        VALUES (1, 
                                'Mário Silva', 
                                20198702,  
                                '2019-01-15'
                                );

INSERT INTO  USUARIO(
                                idUsuario,
                                nome,
                                numCartao,
                                dataAdesao
                        )
                        VALUES (2, 
                                'Leonor Guido', 
                                20220825,  
                                '2022-07-02'
                                );

INSERT INTO  USUARIO(
                                idUsuario,
                                nome,
                                numCartao,
                                dataAdesao
                        )
                        VALUES (3, 
                                'António Ferreira', 
                                20170865,  
                                '2017-04-02'
                                );

INSERT INTO  ESTUDANTE(
                                dataAdmissao,
                                idUsuario
                        )
                        VALUES (  
                                '2019-01-15',
                                1
                                );       

INSERT INTO  PROFESSOR(
                                dataAdmissao,
                                idUsuario
                        )
                        VALUES (  
                                '2017-04-02',
                                3
                                );                      

INSERT INTO  REQUISICAO(
                                idRequisicao,
                                idLivro,
                                idUsuario,
                                dataEmissao,
                                dataDevolucao,
                                dataLimiteDevolucao,
                                valorMulta
                        )
                        VALUES (1, 
                                2, 
                                1, 
                                '2023-02-01', 
                                '2023-02-15', 
                                '2023-03-01',
                                null
                                );

INSERT INTO  REQUISICAO(
                                idRequisicao,
                                idLivro,
                                idUsuario,
                                dataEmissao,
                                dataDevolucao,
                                dataLimiteDevolucao,
                                valorMulta
                        )
                        VALUES (2, 
                                1, 
                                3, 
                                '2023-07-01', 
                                '2023-08-15', 
                                '2023-07-28',
                                5.00
                                );

INSERT INTO  LIVROSBIBLIOTECA(
                                idLivro,
                                idBiblioteca,
                                areaBiblioteca
                        )
                        VALUES (1, 
                                1, 
                                'Secção Ficção'
                                );

INSERT INTO  LIVROSBIBLIOTECA(
                                idLivro,
                                idBiblioteca,
                                areaBiblioteca
                        )
                        VALUES (2, 
                                1, 
                                'Secção Romance'
                                );

INSERT INTO AQUISICOESBIBLIOTECA (
                                        idAquisicao, 
                                        idLivro, 
                                        idEditora, 
                                        idBiblioteca
                                )
                        VALUES(         1,
                                        1,
                                        1,
                                        6
                                );

INSERT INTO RESERVA (
                                idLivro, 
                                idUsuario, 
                                nrreserva
                                )
                        VALUES(         1,
                                        1,
                                        1
                                );
COMMIT TRANSACTION;
PRAGMA foreign_keys = on;