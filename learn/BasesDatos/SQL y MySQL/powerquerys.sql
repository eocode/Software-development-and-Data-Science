alter table authors add column birthyear integer default 1930 after name;

alter table authors modify column birthyear year default 1920;

alter table authors drop column birthyear;

show tables like '%i%';
