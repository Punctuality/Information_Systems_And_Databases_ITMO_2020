-- Выведите таблицу со средними оценками студентов группы 4100 (Номер, ФИО, Ср_оценка),
-- у которых средняя оценка не больше максимальной оценк(е|и) в группе 1101.

SELECT "Н_ЛЮДИ"."ИД","ФАМИЛИЯ", "ИМЯ", "ОТЧЕСТВО", AVG("ОЦЕНКА"::NUMERIC) FROM "Н_ЛЮДИ"
INNER JOIN "Н_УЧЕНИКИ" ON "Н_УЧЕНИКИ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД" AND "Н_УЧЕНИКИ"."ГРУППА" = '4100'
INNER JOIN "Н_ВЕДОМОСТИ" ON "Н_ВЕДОМОСТИ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД" AND "ОЦЕНКА" ~ '^[0-9\.]+$'
GROUP BY "Н_ЛЮДИ"."ИД", "ФАМИЛИЯ", "ИМЯ", "ОТЧЕСТВО"
HAVING (
    SELECT AVG("GROUP".MARK)
    FROM (
            SELECT AVG("ОЦЕНКА"::numeric) as MARK
            FROM "Н_УЧЕНИКИ"
            INNER JOIN "Н_ВЕДОМОСТИ" ON
                "ОЦЕНКА" ~ '^[0-9\.]+$' AND
                "Н_УЧЕНИКИ"."ГРУППА" = '1101' AND
                "Н_УЧЕНИКИ"."ЧЛВК_ИД" = "Н_ВЕДОМОСТИ"."ЧЛВК_ИД"
         ) "GROUP"
) <= MAX("ОЦЕНКА"::NUMERIC);