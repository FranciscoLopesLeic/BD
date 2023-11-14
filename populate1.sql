PRAGMA foreign_keys = ON;
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
                        VALUES (2018654, 
                                'José Saramago', 
                                'Nascido em Santarém e criado em Lisboa, Saramago era filho de camponeses e se formou no ensino técnico como serralheiro mecânico. Para se sustentar, também trabalhou como funcionário público na área da saúde e da Previdência Social.

Seu primeiro romance foi publicado em 1947 e se chamava Terra do Pecado. Conforme foi se inteirando do meio, conseguiu trabalhos mais especializados como jornalista, tradutor e até diretor literário de uma editora. Em paralelo, seguia colaborando em diversas revistas e jornais.

Além de romances e crônicas, Saramago também escreveu poesia e se dedicou ao teatro.'
                                );


