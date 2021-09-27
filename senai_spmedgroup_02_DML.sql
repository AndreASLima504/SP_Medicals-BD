use SP_Med_GP
GO

insert INTO Especialidades (nomeEspecialidade)
VALUES ('Acupuntura'), ('Anestesiologia'), ('Cirurgia Cardiovascular'), ('Cirurgia da m�o'), ('Cirurgia do Aparelho Digestivo'), ('Cirurgia Geral'), ('Cirurgia Pedi�trica'), ('Cirurgia Pl�stica'), ('Cirurgia Tor�cica'), ('Cirurgia Vascular'), ('Dermatologia'), ('Radioterapia'), ('Urologia'), ('Pediatria'), ('Psiquiatria')
GO

insert into TipoUsuario(nomeTipo)
VALUES ('Administrador'), ('M�dico'), ('Paciente')
GO

insert into Usuarios(tipoUsuarioID, nome, email, senha)

VALUES 
(1, 'Fernando Ponte', 'fernandoponte22@admail.com', 'senh@3scr1t0r10'),
(3, 'Ligia', 'ligia@gmail.com', 'senhaSPmedGP'),
(2, 'Roberto Santos', 'robertosants@spmedicalgroup.com.br', '40028922_53nh4'),
(2, 'Roberto Possarle', 'robertopossarle@spmedicalgroup.com.br', '$enhaPossarle'),
(2, 'Helena Strada', 'helena.souza@spmedicalgroup.com.br', '$enh4Helena'),
(1, 'Paulo S�rgio', 'paulomvp@admail.com', '123456789'),
(3, 'Alexandre', 'alexandre@gmail.com', '1a1a1a1a1a'),
(3, 'Fernando', 'fernando@gmail.com', '2b2b2b2b2b'),
(3, 'Henrique', 'henrique@gmail.com', '3c3c3c3c3c'),
(3, 'Jo�o', 'joao@hotmail.com', '4d4d4d4d4d'),
(3, 'Bruno', 'bruno@gmail.com', '5e5e5e5e5e'),
(3, 'Mariana', 'mariana@outlook.com', '6f6f6f6f6f6f')
GO

insert into Medico(usuarioID, clinicaID, especialidadeID, crm)
VALUES(4, 1, 2, '54356-SP'),
(5, 1, 15, '53452-SP'),
(6, 1, 14, '65463-SP')
GO

insert into Clinicas(nomeFantasia, CNPJ, enderecoClinica, razaoSocial, horarioFechamento, horarioAbertura)
VALUES('SP Med Group Suzano', '64.463.446/0001-35', 'Av. Senador Roberto Simonsen, 550 - Jardim Imperador - Suzano/SP', 'SP Med Group', '09:00', '23:00')
GO

insert into Paciente(usuarioID, dataNascimento, telefonePaciente, RGPaciente, CPFPaciente, enderecoPaciente)
VALUES(3, '13/10/1983', '11 3456-76546', '43522543-5', '94839859000', 'Rua Estado de Israel 240,�S�o Paulo, Estado de S�o Paulo, 04022-000'),
(8, '23/7/2001', '11 98765-6543', '32654345-7', '73556944057', 'Av. Paulista, 1578 - Bela Vista, S�o Paulo - SP, 01310-200'),
(9, '10/10/1978', '11 97208-4453', '54636525-3', '16839338002', 'Av. Ibirapuera - Indian�polis, 2927,  S�o Paulo - SP, 04029-200'),
(10, '13/10/1985', '11 3456-65437', '54366362-5', '14332654765', 'R. Vit�ria, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
(11, '27/8/1975', '11 7656-63772', '53254444-1', '91305348010', 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeir�o Pires - SP, 09405-380'),
(12, '21/3/1972', '11 95436-8769', '54566266-7', '79799299004', 'Alameda dos Arapan�s, 945 - Indian�polis, S�o Paulo - SP, 04524-001'),
(13, '03/05/2018', '11 97275-1781', '54566266-8', '13771913039', 'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140')
go

UPDATE Paciente
SET usuarioID = 3
WHERE usuarioID = 2
GO

insert into Consultas(medicoID, pacienteID, dataConsulta, descConsulta)
VALUES (5, 2, '20/1/2020 15:00:00', 'Realizada'),
(4, 2, '06/1/2020 10:00:00', 'Cancelada'),
(4, 3, '07/02/2020 11:00:00', 'Realizada'),
(4, 2, '06/02/2018 10:00:00', 'Realizada'),
(3, 9, '02/07/2019 11:00:00', 'Cancelada'),
(5, 7, '08/03/2020 15:00:00', 'Agendada'),
(3, 9, '09/03/2020 11:00:00', 'Agendada')
GO

update Consultas
SET medicoID = 5
WHERE medicoID = 3
GO

update Consultas
SET medicoID = 3
WHERE medicoID = 1
GO

update Consultas
SET medicoID = 4
WHERE medicoID = 2
GO

insert into Usuarios(tipoUsuarioID)
VALUES (1), (3), (2), (2), (2), (1), (3), (3), (3), (3), (3), (3)
go

UPDATE Usuarios
SET usuarioID = 1
WHERE usuarioID = 11
go

UPDATE Usuarios
SET tipoUsuarioID = 1
WHERE usuarioID = 11
GO