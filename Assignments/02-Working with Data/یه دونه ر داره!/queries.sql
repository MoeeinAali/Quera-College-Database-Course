-- Section1
delete
from users
where family not like '%m%'
  and family not like '%d%';
-- Section2
delete
from users
where family = 'mohammadi'
   or salary in (3801, 7414, 2885, 9701, 7356);
-- Section3
delete
from users
where family = 'booazar'
   or year(birth_date) between 1995 and 2000