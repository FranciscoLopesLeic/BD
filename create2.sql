DROP TABLE IF EXISTS BIBLIOTECA;
-- AI-enhanced table creation statement
CREATE TABLE BIBLIOTECA(
idBiblioteca integer PRIMARY key,
nome VARCHAR(255) NOT NULL,
localizacao VARCHAR(255) not null,
horaAbertura TIME NOT NULL,
horaFecho TIME NOT NULL,
numLivros integer NOT NULL,
tipologia VARCHAR(255) CHECK(tipologia in ('Pública', 'Privada')) not null,
CHECK(horaFecho>horaAbertura)
);


DROP TABLE IF EXISTS AUTOR;
-- AI-enhanced table creation statement
CREATE TABLE AUTOR(
    idAutor integer PRIMARY key,
    nome VARCHAR(255) not null,
    biografia text
);


DROP TABLE IF EXISTS LIVRO;
-- AI-enhanced table creation statement
CREATE TABLE LIVRO(
    idLivro integer PRIMARY KEY,
    titulo VARCHAR(255) not null,
    isbn integer not null,
    edicao integer not null,
    genero VARCHAR(255) not null,
    estado VARCHAR(255) CHECK(estado in('disponível','reservado', 'emprestado')) not null,
    idAutor integer,
    FOREIGN key (idAutor) REFERENCES AUTOR(idAutor)
);


DROP TABLE IF EXISTS FUNCIONARIO;
-- AI-enhanced table creation statement
CREATE TABLE FUNCIONARIO(
idFuncionario integer PRIMARY KEY,
nome VARCHAR(255) not null,
funcao VARCHAR(255) not null,
horaEntrada time not null,
horaSaida time not null,
idBiblioteca integer,
horaAbertura time,
horaFecho time,
FOREIGN key (idBiblioteca) REFERENCES BIBLIOTECA(idBiblioteca),
FOREIGN KEY (horaAbertura) REFERENCES BIBLIOTECA(horaAbertura),
FOREIGN KEY (horaFecho) REFERENCES BIBLIOTECA(horaFecho),
CHECK(horaEntrada>horaAbertura),
CHECK(horaSaida<horaFecho),
CHECK(horaSaida>horaEntrada)
);

DROP TABLE IF EXISTS AQUISICAO;
-- AI-enhanced table creation statement
CREATE TABLE AQUISICAO(
    idAquisicao integer PRIMARY key,
    dataA date not null,
    numLIvros integer not null,
    preco decimal(10,2) CHECK(preco>0) not null
);


DROP TABLE IF EXISTS EDITORA;
-- AI-enhanced table creation statement
CREATE TABLE EDITORA(
    idEditora integer PRIMARY key,
    nome VARCHAR(255) not null,
    morada VARCHAR(255) not null,
    informacaoContacto text not null,
);

DROP TABLE IF EXISTS USUARIO;
-- AI-enhanced table creation statement
CREATE TABLE USUARIO(
    idUsuario integer PRIMARY key,
    nome VARCHAR(255) not null,
    numCartao integer not null,
    dataAdesao date not null
);


DROP TABLE IF EXISTS ESTUDANTE;
-- AI-enhanced table creation statement
CREATE TABLE ESTUDANTE(
    dataAdmissao date not null,
    idUsuario integer,
    dataAdesao date not null,
    PRIMARY key (idUsuario),
    FOREIGN key (dataAdesao) REFERENCES USUARIO(dataAdesao),
    FOREIGN key (idUsuario) REFERENCES USUARIO(idUsuario) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (dataAdmissao>=dataAdesao)
);


DROP TABLE IF EXISTS PROFESSOR;
-- AI-enhanced table creation statement
CREATE TABLE PROFESSOR(
    dataAdmissao date not null,
    idUsuario integer,
    dataAdesao date not null,
    PRIMARY key(idUsuario),
    FOREIGN key (dataAdesao) REFERENCES USUARIO(dataAdesao),
    FOREIGN key (idUsuario) REFERENCES USUARIO(idUsuario) ON DELETE CASCADE ON UPDATE CASCADE,
     CHECK (dataAdmissao>=dataAdesao)
     );

     
DROP TABLE IF EXISTS REQUISICAO;
-- AI-enhanced table creation statement
CREATE TABLE REQUISICAO(
    idRequisicao integer PRIMARY key,
    idLivro integer,
    idUsuario integer,
    dataEmissao date not null,
    dataDevolucao date not null,
    dataLimiteDevolucao date not null,
    valorMulta decimal(10,2),
    CHECK(dataDevolucao>dataEmissao),
    CHECK((dataDevolucao<=dataLimiteDevolucao and valorMulta is null) or (dataDevolucao>dataLimiteDevolucao and valorMulta is not null)),
    FOREIGN key (idLivro) REFERENCES LIVRO(idLivro),
    FOREIGN KEY (idUsuario) REFERENCES USUARIO(idUsuario)
);


DROP TABLE IF EXISTS LIVROSBIBLIOTECA;
-- AI-enhanced table creation statement
CREATE TABLE LIVROSBIBLIOTECA(
    idLivro integer,
    idBiblioteca integer,
    areaBiblioteca VARCHAR(255) not null,
    PRIMARY KEY(idLivro),
    FOREIGN key(idLivro) references Livro(idLivro),
    FOREIGN key(idBiblioteca) references BIBLIOTECA(idBiblioteca)
);


DROP TABLE IF EXISTS AQUISICOESBIBLIOTECA;
-- AI-enhanced table creation statement
CREATE TABLE AQUISICOESBIBLIOTECA(
    idAquisicao integer,
    idLivro integer,
    idEditora integer,
    idBiblioteca integer,
    PRIMARY KEY (idAquisicao, idLivro, idEditora),
    FOREIGN key(idAquisicao) references AQUISICAO(idAquisicao),
    FOREIGN key (idlivro) references LIVRO(idLivro),
    FOREIGN KEY(idEditora) REFERENCES EDITORA(idEditora),
    FOREIGN KEY (idBiblioteca) references BIBLIOTECA(idBiblioteca)
);


DROP TABLE IF EXISTS RESERVA;
-- AI-enhanced table creation statement
CREATE TABLE RESERVA (
    idLivro INTEGER,
    idUsuario INTEGER,
    nrreserva INTEGER,
    PRIMARY KEY (idLivro, idUsuario),
    FOREIGN KEY(idLivro) REFERENCES LIVRO(idLivro),
    FOREIGN KEY (idUsuario) REFERENCES USUARIO(idUsuario)
);