
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/30/2017 22:03:34
-- Generated from EDMX file: C:\Users\Aluno\Documentos\Fernanda\Aula---ASPNET\TrabalhoWebForms\TrabalhoWebForms\Models\SalaoDB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SalaoDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Funcionarios'
CREATE TABLE [dbo].[Funcionarios] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'TiposDeFuncionarios'
CREATE TABLE [dbo].[TiposDeFuncionarios] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [FuncionarioId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Funcionarios'
ALTER TABLE [dbo].[Funcionarios]
ADD CONSTRAINT [PK_Funcionarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'TiposDeFuncionarios'
ALTER TABLE [dbo].[TiposDeFuncionarios]
ADD CONSTRAINT [PK_TiposDeFuncionarios]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [FuncionarioId] in table 'TiposDeFuncionarios'
ALTER TABLE [dbo].[TiposDeFuncionarios]
ADD CONSTRAINT [FK_FuncionarioTipoDeFuncionario]
    FOREIGN KEY ([FuncionarioId])
    REFERENCES [dbo].[Funcionarios]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FuncionarioTipoDeFuncionario'
CREATE INDEX [IX_FK_FuncionarioTipoDeFuncionario]
ON [dbo].[TiposDeFuncionarios]
    ([FuncionarioId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------