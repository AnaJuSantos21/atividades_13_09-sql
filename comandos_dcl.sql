create user 'gige'@'localhost' identified by '123';
rename user 'gige'@'localhost' TO 'gi'@'localhost';
select user, host from MYSQL.user;

drop user 'gi'@'localhost';

create user 'ana'@'localhost' identified by '321';
rename user 'ana'@'localhost' to 'Ana'@'localhost';

alter user 'Ana'@'localhost' identified by '130707';

#conceder acesso
grant all privileges on empresa2_1e to 'Ana'@'localhost';

show grants for 'Ana'@'localhost';

revoke all privileges on empresa2_1e from 'Ana'@'localhost';

#comando indica acesso 
grant insert on empresa2_1e.* to 'Ana'@'localhost';

grant select on empresa2_1e.* to 'Ana'@'localhost';

grant delete on empresa2_1e.* to 'Ana'@'localhost';

grant update on empresa2_1e.* to 'Ana'@'localhost';