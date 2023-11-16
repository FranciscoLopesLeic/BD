-- Drop existing tables
DROP TABLE IF EXISTS Biblioteca;
DROP TABLE IF EXISTS Livro;
DROP TABLE IF EXISTS Aquisicao;
DROP TABLE IF EXISTS Editora;
DROP TABLE IF EXISTS AquisicoesBiblioteca;
DROP TABLE IF EXISTS Requisicao;
DROP TABLE IF EXISTS LivrosBiblioteca;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Autor;
DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS Estudante;
DROP TABLE IF EXISTS Professor;
DROP TABLE IF EXISTS Reserva;

-- Create table Biblioteca
CREATE TABLE Biblioteca (
    idBiblioteca INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    localizacao TEXT NOT NULL,
    tipologia TEXT CHECK(tipologia == 'pública' OR tipologia == 'privada'),
    horaAbertura TIME NOT NULL,
    horaFecho TIME NOT NULL CHECK(horaFecho > horaAbertura)
);

-- Create table Autor
CREATE TABLE Autor (
    idAutor INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    biografia TEXT
);

-- Create table Livro
CREATE TABLE Livro (
    idLivro INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    isbn TEXT NOT NULL UNIQUE,
    estado TEXT CHECK(estado IN ('disponível', 'reservado', 'emprestado')),
    edicao TEXT NOT NULL,
    genero TEXT NOT NULL,
    idAutor INTEGER,
    FOREIGN KEY (idAutor) REFERENCES Autor(idAutor)
);

-- Create table Aquisicao
CREATE TABLE Aquisicao (
    idAquisicao INTEGER PRIMARY KEY,
    dataA DATE NOT NULL,
    preco REAL CHECK(preco > 0),
    numLivros INTEGER NOT NULL
);

-- Create table Editora
CREATE TABLE Editora (
    idEditora INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    morada TEXT,
    informacaoContacto TEXT
);

-- Create table Usuario
CREATE TABLE Usuario (
    idUsuario INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    informacaoContacto TEXT,
    numCartao INTEGER NOT NULL UNIQUE,
    dataAdesao DATE NOT NULL
);

-- Create table Funcionario
CREATE TABLE Funcionario (
    idFuncionario INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    funcao TEXT NOT NULL,
    horaEntrada TIME NOT NULL,
    horaSaida TIME NOT NULL CHECK(horaSaida > horaEntrada),
    idBiblioteca INTEGER,
    FOREIGN KEY (idBiblioteca) REFERENCES Biblioteca(idBiblioteca)
    -- Note: Additional checks with horaAbertura and horaFecho of Biblioteca require triggers or application-level logic
);

-- Create table Estudante
CREATE TABLE Estudante (
    idUsuario INTEGER PRIMARY KEY,
    dataAdmissao DATE NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
    -- Note: The check for dataAdmissao and dataAdesao requires a subquery or trigger
);

-- Create table Professor
CREATE TABLE Professor (
    idUsuario INTEGER PRIMARY KEY,
    dataAdmissao DATE NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

-- Create table Requisicao
CREATE TABLE Requisicao (
    idLivro INTEGER,
    idUsuario INTEGER,
    dataEmissao DATE NOT NULL,
    dataDevolucao DATE NOT NULL,
    dataLimiteDevolucao DATE NOT NULL CHECK(dataLimiteDevolucao > dataEmissao),
    valorMulta REAL CHECK((dataDevolucao <= dataLimiteDevolucao AND valorMulta IS NULL) OR (dataDevolucao > dataLimiteDevolucao AND valorMulta IS NOT NULL)),
    PRIMARY KEY (idLivro, idUsuario),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);

-- Create table LivrosBiblioteca
CREATE TABLE LivrosBiblioteca (
    idLivro INTEGER,
    idBiblioteca INTEGER,
    areaBiblioteca TEXT,
    PRIMARY KEY (idLivro, idBiblioteca),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro),
    FOREIGN KEY (idBiblioteca) REFERENCES Biblioteca(idBiblioteca)
);

-- Create table AquisicoesBiblioteca
CREATE TABLE AquisicoesBiblioteca (
    idAquisicao INTEGER,
    idLivro INTEGER,
    idEditora INTEGER,
    idBiblioteca INTEGER,
    PRIMARY KEY (idAquisicao, idLivro, idEditora),
    FOREIGN KEY (idAquisicao) REFERENCES Aquisicao(idAquisicao),
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro),
    FOREIGN KEY (idEditora) REFERENCES Editora(idEditora),
    FOREIGN KEY (idBiblioteca) REFERENCES Biblioteca(idBiblioteca)
);

-- Create table Reserva
CREATE TABLE Reserva (
    idLivro INTEGER,
    idUsuario INTEGER,
    nrreserva INTEGER,
    PRIMARY KEY (idLivro, idUsuario)
    FOREIGN KEY (idLivro) REFERENCES Livro(idLivro),
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario)
);
