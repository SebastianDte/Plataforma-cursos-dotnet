USE [PlataformaCursosDB];
GO

SET NOCOUNT ON;

-- Variables para IDs
DECLARE @CursoId1 INT, @CursoId2 INT, @CursoId3 INT, @CursoId4 INT;
DECLARE @ModId1 INT, @ModId2 INT, @ModId3 INT, @ModId4 INT;

-- 1. Curso: Desarrollo Web Fullstack con C# y .NET
INSERT INTO Curso (CategoriaID, Titulo, Descripcion, Precio, UrlImagenPortada, ModalidadPago, DuracionAccesoDias, Publicado, EstaActivo, NivelDificultad, Idioma, ConCertificado)
VALUES (1, N'Desarrollo Web Fullstack con C# y .NET', 
N'Aprende a construir aplicaciones web robustas y escalables utilizando ASP.NET, C#, SQL Server y arquitecturas modernas en capas.',
14999.00, N'https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=800', N'Pago Único', 365, 1, 1, N'Intermedio', N'Español', 1);
SET @CursoId1 = SCOPE_IDENTITY();

INSERT INTO CursoObjetivo (CursoID, Descripcion) VALUES 
(@CursoId1, N'Dominar la sintaxis moderna de C# y el ecosistema .NET'),
(@CursoId1, N'Diseñar bases de datos relacionales en SQL Server'),
(@CursoId1, N'Construir aplicaciones web con arquitectura en capas');

INSERT INTO Modulo (CursoID, NombreModulo, Orden, EstaActivo) VALUES (@CursoId1, N'Fundamentos de .NET y C#', 1, 1);
SET @ModId1 = SCOPE_IDENTITY();

INSERT INTO Leccion (ModuloID, Titulo, Orden, TipoMaterial, URLRecurso, DuracionMinutos, EstaActivo, Descripcion) VALUES
(@ModId1, N'Introducción al ecosistema .NET', 1, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 15, 1, N'Bienvenida al curso y configuración inicial del entorno de desarrollo con Visual Studio.'),
(@ModId1, N'Sintaxis, tipos y POO en C#', 2, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 25, 1, N'Clases, objetos, herencia e interfaces aplicadas a proyectos reales.');

INSERT INTO Modulo (CursoID, NombreModulo, Orden, EstaActivo) VALUES (@CursoId1, N'Bases de Datos con SQL Server', 2, 1);
SET @ModId2 = SCOPE_IDENTITY();

INSERT INTO Leccion (ModuloID, Titulo, Orden, TipoMaterial, URLRecurso, DuracionMinutos, EstaActivo, Descripcion) VALUES
(@ModId2, N'Modelado y consultas SQL', 1, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 20, 1, N'Diseño de tablas, claves primarias/foráneas y consultas SELECT complejas.'),
(@ModId2, N'Acceso a datos con ADO.NET', 2, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 30, 1, N'Conexión de la aplicación con SQL Server mediante SqlConnection y SqlCommand.');


-- 2. Curso: Introducción a Algoritmos y Lógica de Programación (Gratuito)
INSERT INTO Curso (CategoriaID, Titulo, Descripcion, Precio, UrlImagenPortada, ModalidadPago, DuracionAccesoDias, Publicado, EstaActivo, NivelDificultad, Idioma, ConCertificado)
VALUES (1, N'Introducción a Algoritmos y Lógica de Programación',
N'Curso 100% gratuito para dar tus primeros pasos en el mundo del desarrollo de software desde cero.',
0.00, N'https://images.unsplash.com/photo-1515879218367-8466d910aaa4?w=800', N'Gratuito', 0, 1, 1, N'Principiante', N'Español', 1);
SET @CursoId2 = SCOPE_IDENTITY();

INSERT INTO CursoObjetivo (CursoID, Descripcion) VALUES 
(@CursoId2, N'Comprender los conceptos fundamentales de la computación'),
(@CursoId2, N'Desarrollar pensamiento algorítmico y resolución de problemas');

INSERT INTO Modulo (CursoID, NombreModulo, Orden, EstaActivo) VALUES (@CursoId2, N'Primeros Pasos en Programación', 1, 1);
SET @ModId3 = SCOPE_IDENTITY();

INSERT INTO Leccion (ModuloID, Titulo, Orden, TipoMaterial, URLRecurso, DuracionMinutos, EstaActivo, Descripcion) VALUES
(@ModId3, N'¿Qué es un algoritmo?', 1, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 10, 1, N'Definición de algoritmo y diagramas de flujo básicos.'),
(@ModId3, N'Variables, condicionales y bucles', 2, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 20, 1, N'Estructuras de control esenciales en cualquier lenguaje.');


-- 3. Curso: Diseño UI/UX y Prototipado con Figma
INSERT INTO Curso (CategoriaID, Titulo, Descripcion, Precio, UrlImagenPortada, ModalidadPago, DuracionAccesoDias, Publicado, EstaActivo, NivelDificultad, Idioma, ConCertificado)
VALUES (2, N'Diseño UI/UX y Prototipado con Figma',
N'Aprende a diseñar interfaces intuitivas, atractivas y centradas en el usuario utilizando las mejores prácticas de Figma.',
11500.00, N'https://images.unsplash.com/photo-1581291518857-4e27b48ff24e?w=800', N'Pago Único', 180, 1, 1, N'Principiante', N'Español', 1);
SET @CursoId3 = SCOPE_IDENTITY();

INSERT INTO CursoObjetivo (CursoID, Descripcion) VALUES 
(@CursoId3, N'Crear wireframes y prototipos interactivos en Figma'),
(@CursoId3, N'Aplicar principios de diseño visual, tipografía y color');

INSERT INTO Modulo (CursoID, NombreModulo, Orden, EstaActivo) VALUES (@CursoId3, N'Bases del Diseño UI/UX', 1, 1);
SET @ModId4 = SCOPE_IDENTITY();

INSERT INTO Leccion (ModuloID, Titulo, Orden, TipoMaterial, URLRecurso, DuracionMinutos, EstaActivo, Descripcion) VALUES
(@ModId4, N'Principios de diseño y usabilidad', 1, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 15, 1, N'Jerarquía visual, espaciado y teoría del color aplicada a interfaces.'),
(@ModId4, N'Componentes y Auto Layout en Figma', 2, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 25, 1, N'Creación de sistemas de diseño reutilizables y layouts adaptables.');


-- 4. Curso: Gestión Ágil de Proyectos con Scrum y Kanban
INSERT INTO Curso (CategoriaID, Titulo, Descripcion, Precio, UrlImagenPortada, ModalidadPago, DuracionAccesoDias, Publicado, EstaActivo, NivelDificultad, Idioma, ConCertificado)
VALUES (3, N'Gestión Ágil de Proyectos con Scrum y Kanban',
N'Domina las metodologías ágiles más demandadas por la industria tecnológica para liderar equipos y entregas de valor continuo.',
9800.00, N'https://images.unsplash.com/photo-1552664730-d307ca884978?w=800', N'Pago Único', 365, 1, 1, N'Intermedio', N'Español', 1);
SET @CursoId4 = SCOPE_IDENTITY();

INSERT INTO CursoObjetivo (CursoID, Descripcion) VALUES 
(@CursoId4, N'Aplicar el marco de trabajo Scrum en equipos de desarrollo'),
(@CursoId4, N'Gestionar flujos de trabajo eficientes mediante tableros Kanban');

INSERT INTO Modulo (CursoID, NombreModulo, Orden, EstaActivo) VALUES (@CursoId4, N'Marco de Trabajo Scrum', 1, 1);
DECLARE @ModId5 INT = SCOPE_IDENTITY();

INSERT INTO Leccion (ModuloID, Titulo, Orden, TipoMaterial, URLRecurso, DuracionMinutos, EstaActivo, Descripcion) VALUES
(@ModId5, N'Roles, eventos y artefactos Scrum', 1, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 20, 1, N'Entendiendo el rol del Scrum Master, Product Owner y Developers.'),
(@ModId5, N'Planificación y retrospectivas ágiles', 2, N'Video', N'https://www.youtube.com/watch?v=GhQdlIFylQ8', 25, 1, N'Cómo estimar puntos de historia y realizar ceremonias efectivas.');

PRINT 'Cursos de demo insertados exitosamente.';