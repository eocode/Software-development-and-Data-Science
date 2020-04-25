INSERT INTO `clients`(client_id, name, email, birthdate, gender, active) values(4,'Pedro Sanchez', 'Pedro.78522059J@random.names', '1992-01-31','m', 0)
ON DUPLICATE KEY UPDATE active = VALUES(active);

select * from clients order by client_id DESC;
select * from clients where client_id = 4;