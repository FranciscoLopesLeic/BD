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
                       ),
                       (
                            3,
                            'Biblioteca Nova',
                            'Rua dos Estudantes, 300',
                            'privada',
                            '09:00',
                            '18:00'
                        ),
                        (
                            4,
                            'Biblioteca Estudantil',
                            'Rua da Cultura, 400',
                            'pública',
                            '08:00',
                            '20:00'
                        ),
                        (
                            5,
                            'Biblioteca Municipal',
                            'Rua do Mercado, 500',
                            'privada',
                            '09:00',
                            '18:00'
                        ),
                        (
                            6,
                            'Biblioteca Histórica',
                            'Rua do Parque, 600',
                            'pública',
                            '08:00',
                            '20:00'
                        ),
                        (
                            7,
                            'Biblioteca Cultural',
                            'Rua da Estação, 700',
                            'privada',
                            '09:00',
                            '18:00'
                        ),
                        (
                            8,
                            'Biblioteca Moderna',
                            'Rua das Artes, 800',
                            'pública',
                            '08:00',
                            '20:00'
                        ),
                        (
                            9,
                            'Biblioteca Digital',
                            'Rua Tecnológica, 900',
                            'privada',
                            '09:00',
                            '18:00'
                        ),
                        (
                            10,
                            'Biblioteca Infantil',
                            'Rua das Crianças, 1000',
                            'pública',
                            '08:00',
                            '20:00'
                        );

-- Inserir dados na tabela Autor
INSERT INTO Autor (
                      idAutor,
                      nome,
                      biografia
                  )
                  VALUES (
                      1,
                      'José Saramago',
                      'Escritor português, ganhador do Prêmio Nobel de Literatura em 1998, autor de obras como "Ensaio sobre a Cegueira" e "O Evangelho Segundo Jesus Cristo".'
                  ),
                  (
                      2,
                      'Machado de Assis',
                      'Um dos maiores nomes da literatura brasileira, autor de clássicos como "Dom Casmurro" e "Memórias Póstumas de Brás Cubas".'
                  ),
                    (
                        3,
                        'Gabriel García Márquez',
                        'Autor colombiano conhecido por Cem Anos de Solidão.'
                    ),
                    (
                        4,
                        'Jane Austen',
                        'Escritora inglesa famosa por obras como Orgulho e Preconceito.'
                    ),
                    (
                        5,
                        'Franz Kafka',
                        'Autor tcheco conhecido por obras como A Metamorfose.'
                    ),
                    (
                        6,
                        'Virginia Woolf',
                        'Importante escritora modernista do século XX.'
                    ),
                    (
                        7,
                        'Haruki Murakami',
                        'Autor japonês contemporâneo conhecido por seu estilo surrealista.'
                    ),
                    (
                        8,
                        'Toni Morrison',
                        'Autora americana e ganhadora do Prêmio Nobel.'
                    ),
                    (
                        9,
                        'Leo Tolstoy',
                        'Escritor russo, autor de obras como Guerra e Paz.'
                    ),
                    (
                        10,
                        'Agatha Christie',
                        'Escritora britânica conhecida como a Rainha do Crime.'
                    );
                  
-- Inserir dados na tabela Livro
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
                  ),
                    (
                        3,
                        'Cem Anos de Solidão',
                        '978853591393',
                        'disponível',
                        '3ª Edição',
                        'Realismo Mágico',
                        3
                    ),
                    (
                        4,
                        'Orgulho e Preconceito',
                        '978858285036',
                        'disponível',
                        '4ª Edição',
                        'Romance',
                        4
                    ),
                    (
                        5,
                        'A Metamorfose',
                        '978853590955',
                        'emprestado',
                        '5ª Edição',
                        'Ficção',
                        5
                    ),
                    (
                        6,
                        'Mrs. Dalloway',
                        '978853252784',
                        'disponível',
                        '6ª Edição',
                        'Romance',
                        6
                    ),
                    (
                        7,
                        'Kafka à Beira-Mar',
                        '978853591484',
                        'disponível',
                        '7ª Edição',
                        'Romance',
                        7
                    ),
                    (
                        8,
                        'Amada',
                        '978853591850',
                        'emprestado',
                        '8ª Edição',
                        'Romance',
                        8
                    ),
                    (
                        9,
                        'Guerra e Paz',
                        '978853592807',
                        'disponível',
                        '9ª Edição',
                        'Romance',
                        9
                    ),
                    (
                        10,
                        'Assassinato no Expresso do Oriente',
                        '978853591740',
                        'emprestado',
                        '10ª Edição',
                        'Mistério',
                        10
                    );
                  
-- Inserir dados na tabela Aquisicao
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
                      ),
                        (
                            3,
                            '2023-03-10',
                            250.0,
                            2
                        ),
                        (
                            4,
                            '2023-04-05',
                            300.0,
                            4
                        ),
                        (
                            5,
                            '2023-05-21',
                            350.0,
                            6
                        ),
                        (
                            6,
                            '2023-06-17',
                            400.0,
                            1
                        ),
                        (
                            7,
                            '2023-07-02',
                            450.0,
                            7
                        ),
                        (
                            8,
                            '2023-08-15',
                            500.0,
                            3
                        ),
                        (
                            9,
                            '2023-09-10',
                            550.0,
                            2
                        ),
                        (
                            10,
                            '2023-10-25',
                            600.0,
                            5
                        );
                      
-- Inserir dados na tabela Editora
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
                    ),
                    (
                        3,
                        'Editora Gama',
                        'Praça das Palavras, 123',
                        'suporte@editoragama.com'
                    ),
                    (
                        4,
                        'Editora Delta',
                        'Travessa dos Manuscritos, 456',
                        'contato@editoradelta.com'
                    ),
                    (
                        5,
                        'Editora Epsilon',
                        'Largo dos Autores, 789',
                        'atendimento@editoraepsilon.com'
                    ),
                    (
                        6,
                        'Editora Zeta',
                        'Rua dos Editores, 987',
                        'service@editorazeta.com'
                    ),
                    (
                        7,
                        'Editora Eta',
                        'Avenida das Edições, 654',
                        'help@editoraeta.com'
                    ),
                    (
                        8,
                        'Editora Theta',
                        'Beco das Biografias, 321',
                        'support@editoratheta.com'
                    ),
                    (
                        9,
                        'Editora Iota',
                        'Alameda dos Textos, 213',
                        'contact@editoraiota.com'
                    ),
                    (
                        10,
                        'Editora Kappa',
                        'Vila das Vírgulas, 135',
                        'info@editorakappa.com'
                    );
                    
-- Inserir dados na tabela Usuario
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
                    ),
                    (
                        3,
                        'Ana Pereira',
                        'ana.pereira@email.com',
                        12347,
                        '2023-01-15'
                    ),
                    (
                        4,
                        'Pedro Gomes',
                        'pedro.gomes@email.com',
                        12348,
                        '2023-01-20'
                    ),
                    (
                        5,
                        'Clara Rocha',
                        'clara.rocha@email.com',
                        12349,
                        '2023-01-25'
                    ),
                    (
                        6,
                        'Ricardo Lima',
                        'ricardo.lima@email.com',
                        12350,
                        '2023-01-30'
                    ),
                    (
                        7,
                        'Sofia Costa',
                        'sofia.costa@email.com',
                        12351,
                        '2023-02-01'
                    ),
                    (
                        8,
                        'Carlos Martins',
                        'carlos.martins@email.com',
                        12352,
                        '2023-02-05'
                    ),
                    (
                        9,
                        'Luísa Fernandes',
                        'luisa.fernandes@email.com',
                        12353,
                        '2023-02-10'
                    ),
                    (
                        10,
                        'Marco Sousa',
                        'marco.sousa@email.com',
                        12354,
                        '2023-02-15'
                    );
                    
-- Inserir dados na tabela Funcionario
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
                        ),
                        (
                            3,
                            'Lúcia Mendes',
                            'Assistente',
                            '08:00',
                            '17:00',
                            1
                        ),
                        (
                            4,
                            'Rafael Sousa',
                            'Coordenador',
                            '09:30',
                            '18:30',
                            2
                        ),
                        (
                            5,
                            'Sandra Gomes',
                            'Bibliotecária',
                            '08:30',
                            '17:30',
                            1
                        ),
                        (
                            6,
                            'Daniel Rocha',
                            'Auxiliar',
                            '09:00',
                            '18:00',
                            2
                        ),
                        (
                            7,
                            'Patrícia Lima',
                            'Assistente',
                            '08:00',
                            '17:00',
                            1
                        ),
                        (
                            8,
                            'João Martins',
                            'Coordenador',
                            '09:30',
                            '18:30',
                            2
                        ),
                        (
                            9,
                            'Marta Silva',
                            'Bibliotecária',
                            '08:30',
                            '17:30',
                            1
                        ),
                        (
                            10,
                            'Tiago Pereira',
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
                      ),
                        (
                            3,
                            '2023-01-25'
                        ),
                        (
                            4,
                            '2023-01-30'
                        ),
                        (
                            5,
                            '2023-02-04'
                        ),
                        (
                            6,
                            '2023-02-09'
                        ),
                        (
                            7,
                            '2023-02-14'
                        ),
                        (
                            8,
                            '2023-02-19'
                        ),
                        (
                            9,
                            '2023-02-24'
                        ),
                        (
                            10,
                            '2023-03-01'
                        );
                      
-- Inserir dados na tabela Professor
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
                      ),
                        (
                            3,
                            '2023-02-15'
                        ),
                        (
                            4,
                            '2023-02-20'
                        ),
                        (
                            5,
                            '2023-02-25'
                        ),
                        (
                            6,
                            '2023-03-02'
                        ),
                        (
                            7,
                            '2023-03-07'
                        ),
                        (
                            8,
                            '2023-03-12'
                        ),
                        (
                            9,
                            '2023-03-17'
                        ),
                        (
                            10,
                            '2023-03-22'
                        );
                      
-- Inserir dados na tabela Requisicao
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
                       ),
                        (
                            3,
                            3,
                            '2023-03-09',
                            '2023-03-24',
                            '2023-03-19',
                            0
                        ),
                        (
                            4,
                            4,
                            '2023-03-13',
                            '2023-03-28',
                            '2023-03-23',
                            5.0
                        ),
                        (
                            5,
                            5,
                            '2023-03-17',
                            '2023-04-01',
                            '2023-03-27',
                            0
                        ),
                        (
                            6,
                            6,
                            '2023-03-21',
                            '2023-04-05',
                            '2023-03-31',
                            5.0
                        ),
                        (
                            7,
                            7,
                            '2023-03-25',
                            '2023-04-09',
                            '2023-04-04',
                            0
                        ),
                        (
                            8,
                            8,
                            '2023-03-29',
                            '2023-04-13',
                            '2023-04-08',
                            5.0
                        ),
                        (
                            9,
                            9,
                            '2023-04-02',
                            '2023-04-17',
                            '2023-04-12',
                            0
                        ),
                        (
                            10,
                            10,
                            '2023-04-06',
                            '2023-04-21',
                            '2023-04-16',
                            5.0
                        );
                       
-- Inserir dados na tabela LivrosBiblioteca
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
                             ),
                            (
                                3,
                                1,
                                'Ficção Científica'
                            ),
                            (
                                4,
                                2,
                                'História Mundial'
                            ),
                            (
                                5,
                                1,
                                'Biografias'
                            ),
                            (
                                6,
                                2,
                                'Poesia'
                            ),
                            (
                                7,
                                1,
                                'Literatura Infantil'
                            ),
                            (
                                8,
                                2,
                                'Artes e Música'
                            ),
                            (
                                9,
                                1,
                                'Filosofia'
                            ),
                            (
                                10,
                                2,
                                'Ciências Exatas'
                            );
                             
-- Inserir dados na tabela AquisicoesBiblioteca
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
                                 ),
                                (
                                    3,
                                    3,
                                    1,
                                    1
                                ),
                                (
                                    4,
                                    4,
                                    2,
                                    2
                                ),
                                (
                                    5,
                                    5,
                                    3,
                                    1
                                ),
                                (
                                    6,
                                    6,
                                    4,
                                    2
                                ),
                                (
                                    7,
                                    7,
                                    5,
                                    1
                                ),
                                (
                                    8,
                                    8,
                                    6,
                                    2
                                ),
                                (
                                    9,
                                    9,
                                    7,
                                    1
                                ),
                                (
                                    10,
                                    10,
                                    8,
                                    2
                                );
                                 
                                 
-- Inserir dados na tabela Reserva
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
                    ),
                    (
                        3,
                        3,
                        103
                    ),
                    (
                        4,
                        4,
                        104
                    ),
                    (
                        5,
                        5,
                        105
                    ),
                    (
                        6,
                        6,
                        106
                    ),
                    (
                        7,
                        7,
                        107
                    ),
                    (
                        8,
                        8,
                        108
                    ),
                    (
                        9,
                        9,
                        109
                    ),
                    (
                        10,
                        10,
                        110
                    );