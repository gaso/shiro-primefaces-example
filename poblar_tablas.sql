--Datos de Ejemplo

INSERT INTO person(name,email,login,password) VALUES
('user','user@gidsoft.com.co','user',MD5('usuario')),
('admin','admin@gidsoft.com.co','admin',MD5('administrador'));


INSERT INTO role(name) VALUES
('admin'),
('user');

INSERT INTO person_role (id_person , id_role) VALUES
(1,2),
(2,1),
(2,2);