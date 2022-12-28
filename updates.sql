alter table esport_organizations add column sponsors VARCHAR(50)

UPDATE esport_organizations SET sponsors='Puma' where id in(2,3);

UPDATE esport_organizations SET sponsors='BMW' where id in(1,4);

UPDATE esport_organizations SET sponsors='Monster_energy' where id in(2,5);

SELECT * FROM esport_organizations