DROP TABLE IF EXISTS BIBLIOTECA;
DROP TABLE IF EXISTS FUNCIONARIO;
DROP TABLE IF EXISTS LIVRO;
DROP TABLE IF EXISTS AUTOR;
DROP TABLE IF EXISTS AQUISICAO;
DROP TABLE IF EXISTS EDITORA;
DROP TABLE IF EXISTS USUARIO;
DROP TABLE IF EXISTS ESTUDANTE;
DROP TABLE IF EXISTS PROFESSOR;
DROP TABLE IF EXISTS REQUISICAO;
DROP TABLE IF EXISTS LIVROSBIBLIOTECA;
DROP TABLE IF EXISTS AQUISICOESBIBLIOTECA;


-- AI-enhanced table creation statement
CREATE TABLE BIBLIOTECA(
idBiblioteca integer PRIMARY key,
nome VARCHAR(255) NOT NULL,
localizacao VARCHAR(255) not null,
horaAbertura TIME NOT NULL,
horaFecho TIME NOT NULL,
numLivros integer NOT NULL,
tipologia VARCHAR(255) CHECK(tipologia in ('pública', 'privada')) not null,
CHECK(horaFecho>horaAbertura)
);
-- AI-enhanced table creation statement
CREATE TABLE AUTOR(
    idAutor integer PRIMARY key,
    nome VARCHAR(255) not null,
    biografia text
);
-- AI-enhanced table creation statement
CREATE TABLE LIVRO(
    idLivro integer PRIMARY KEY,
    titulo VARCHAR(255) not null,
    isbn integer not null unique,
    edicao integer not null,
    genero VARCHAR(255) not null,
    estado VARCHAR(255) CHECK(estado in('disponível','reservado', 'emprestado')) not null,
    idAutor integer,
    FOREIGN key (idAutor) REFERENCES AUTOR(idAutor)
);
-- AI-enhanced table creation statement
CREATE TABLE FUNCIONARIO(
idFuncionario integer PRIMARY KEY,
nome VARCHAR(255) not null,
funcao VARCHAR(255) not null,
horaEntrada time not null,
horaSaida time not null,
idBiblioteca integer,
FOREIGN key (idBiblioteca) REFERENCES BIBLIOTECA(idBiblioteca),
CHECK(horaEntrada>(select horaAbertura from BIBLIOTECA where idBiblioteca=FUNCIONARIO.idBiblioteca)),
CHECK(horaSaida<(select horaFecho from BIBLIOTECA where idBiblioteca=FUNCIONARIO.idBiblioteca)),
CHECK(horaSaida>horaEntrada)
);
-- AI-enhanced table creation statement
CREATE TABLE AQUISICAO(
    idAquisicao integer PRIMARY key,
    dataA date not null,
    numLIvros integer not null,
    preco decimal(10,2) CHECK(preco>0) not null
);
-- AI-enhanced table creation statement
CREATE TABLE EDITORA(
    idEditora integer PRIMARY key,
    nome VARCHAR(255) not null,
    morada VARCHAR(255),
    informacaoContacto text
);
-- AI-enhanced table creation statement
CREATE TABLE USUARIO(
    idUsuario integer PRIMARY key,
    nome VARCHAR(255) not null,
    numCartao integer not null unique,
    dataAdesao date not null,

);
-- AI-enhanced table creation statement
CREATE TABLE ESTUDANTE(
    dataAdmissao date not null,
    idUsuario integer,
    PRIMARY key (idUsuario),
    FOREIGN key (idUsuario) REFERENCES USUARIO(idUsuario) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK ((dataAdmissao>(select dataAdesao from USUARIO where idUsuario=USUARIO.idUsuario)) or(dataAdmissao=(select dataAdesao from USUARIO where idUsuario=USUARIO.idUsuario)))
);
-- AI-enhanced table creation statement
CREATE TABLE PROFESSOR(
    dataAdmissao date not null,
    idUsuario integer,
    PRIMARY key(idUsuario),
    FOREIGN key (idUsuario) REFERENCES USUARIO(idUsuario) ON DELETE CASCADE ON UPDATE CASCADE,
     CHECK ((dataAdmissao>(select dataAdesao from USUARIO where idUsuario=USUARIO.idUsuario)) or(dataAdmissao=(select dataAdesao from USUARIO where idUsuario=USUARIO.idUsuario)))
);
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
-- AI-enhanced table creation statement
CREATE TABLE LIVROSBIBLIOTECA(
    idLivro integer,
    idBiblioteca integer,
    areaBiblioteca integer not null,
    PRIMARY KEY(idLivro),
    FOREIGN key(idLivro) references Livro(idLivro),
    FOREIGN key(idBiblioteca) references BIBLIOTECA(idBiblioteca)
);
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
-- AI-enhanced table creation statement
CREATE TABLE RESERVA (
    idLivro INTEGER,
    idUsuario INTEGER,
    nrreserva INTEGER,
    PRIMARY KEY (idLivro, idUsuario),
    FOREIGN KEY(idLivro) REFERENCES LIVRO(idLivro),
    FOREIGN KEY (idUsuario) REFERENCES USUARIO(idUsuario)
);