PRAGMA foreign_keys = 'ON';-- Inserir dados na tabela Biblioteca

INSERT INTO Biblioteca (
                           idBiblioteca,
                           nome,
                           localizacao,
                           tipologia,
                           horaAbertura,
                           horaFecho
                       )
                       VALUES (
                           1,
                           'Biblioteca Central',
                           'Rua Principal, 123',
                           'pública',
                           '08:00',
                           '20:00'
                       ),
                       (
                           2,
                           'Biblioteca Comunitária',
                           'Avenida das Flores, 456',
                           'privada',
                           '09:00',
                           '18:00'
                       );-- Inserir dados na tabela Autor

INSERT INTO Autor (
                      idAutor,
                      nome,
                      biografia
                  )
                  VALUES (
                      1,
                      'José Saramago',
                      'Biografia do José Saramago'
                  ),
                  (
                      2,
                      'Machado de Assis',
                      'Biografia do Machado de Assis'
                  );-- Inserir dados na tabela Livro

INSERT INTO Livro (
                      idLivro,
                      titulo,
                      isbn,
                      estado,
                      edicao,
                      genero,
                      idAutor
                  )
                  VALUES (
                      1,
                      'Ensaio sobre a Cegueira',
                      '978972212775',
                      'disponível',
                      '1ª Edição',
                      'Romance',
                      1
                  ),
                  (
                      2,
                      'Dom Casmurro',
                      '978853592806',
                      'emprestado',
                      '2ª Edição',
                      'Romance',
                      2
                  );-- Inserir dados na tabela Aquisicao

INSERT INTO Aquisicao (
                          idAquisicao,
                          dataA,
                          preco,
                          numLivros
                      )
                      VALUES (
                          1,
                          '2023-01-15',
                          150.0,
                          3
                      ),
                      (
                          2,
                          '2023-02-20',
                          200.0,
                          5
                      );-- Inserir dados na tabela Editora

INSERT INTO Editora (
                        idEditora,
                        nome,
                        morada,
                        informacaoContacto
                    )
                    VALUES (
                        1,
                        'Editora Alfa',
                        'Rua das Letras, 789',
                        'contacto@editoraalfa.com'
                    ),
                    (
                        2,
                        'Editora Beta',
                        'Avenida dos Livros, 321',
                        'info@editorabeta.com'
                    );-- Inserir dados na tabela Usuario

INSERT INTO Usuario (
                        idUsuario,
                        nome,
                        informacaoContacto,
                        numCartao,
                        dataAdesao
                    )
                    VALUES (
                        1,
                        'Maria Silva',
                        'maria.silva@email.com',
                        12345,
                        '2023-01-01'
                    ),
                    (
                        2,
                        'João Santos',
                        'joao.santos@email.com',
                        12346,
                        '2023-01-10'
                    );-- Inserir dados na tabela Funcionario

INSERT INTO Funcionario (
                            idFuncionario,
                            nome,
                            funcao,
                            horaEntrada,
                            horaSaida,
                            idBiblioteca
                        )
                        VALUES (
                            1,
                            'Ana Costa',
                            'Bibliotecária',
                            '08:30',
                            '17:30',
                            1
                        ),
                        (
                            2,
                            'Carlos Dias',
                            'Auxiliar',
                            '09:00',
                            '18:00',
                            2
                        );
-- Inserir dados na tabela Estudante
INSERT INTO Estudante (
                          idUsuario,
                          dataAdmissao
                      )
                      VALUES (
                          1,
                          '2023-01-15'
                      ),
                      (
                          2,
                          '2023-01-20'
                      );-- Inserir dados na tabela Professor

INSERT INTO Professor (
                          idUsuario,
                          dataAdmissao
                      )
                      VALUES (
                          1,
                          '2023-02-01'
                      ),
                      (
                          2,
                          '2023-02-10'
                      );-- Inserir dados na tabela Requisicao

INSERT INTO Requisicao (
                           idLivro,
                           idUsuario,
                           dataEmissao,
                           dataDevolucao,
                           dataLimiteDevolucao,
                           valorMulta
                       )
                       VALUES (
                           1,
                           1,
                           '2023-03-01',
                           '2023-03-15',
                           '2023-03-10',
                           0
                       ),
                       (
                           2,
                           2,
                           '2023-03-05',
                           '2023-03-20',
                           '2023-03-15',
                           5.0
                       );-- Inserir dados na tabela LivrosBiblioteca

INSERT INTO LivrosBiblioteca (
                                 idLivro,
                                 idBiblioteca,
                                 areaBiblioteca
                             )
                             VALUES (
                                 1,
                                 1,
                                 'Literatura Contemporânea'
                             ),
                             (
                                 2,
                                 2,
                                 'Clássicos da Literatura'
                             );-- Inserir dados na tabela AquisicoesBiblioteca

INSERT INTO AquisicoesBiblioteca (
                                     idAquisicao,
                                     idLivro,
                                     idEditora,
                                     idBiblioteca
                                 )
                                 VALUES (
                                     1,
                                     1,
                                     1,
                                     1
                                 ),
                                 (
                                     2,
                                     2,
                                     2,
                                     2
                                 );-- Inserir dados na tabela Reserva

INSERT INTO Reserva (
                        idLivro,
                        idUsuario,
                        nrreserva
                    )
                    VALUES (
                        1,
                        1,
                        101
                    ),
                    (
                        2,
                        2,
                        102
                    );
