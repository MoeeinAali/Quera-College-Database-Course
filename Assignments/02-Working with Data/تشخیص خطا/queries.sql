-- Section1
select *
from hospitals
where concat_ws(provider_number,
                name,
                address,
                city,
                state,
                zip_code,
                owner
      ) like '%x%';
-- Section2
delete
from hospitals
where provider_number like '%x%'
   or zip_code like '%x%';
-- Section3
UPDATE hospitals
set name = 'PROBABLY AN ERROR'
where name like '%x%'