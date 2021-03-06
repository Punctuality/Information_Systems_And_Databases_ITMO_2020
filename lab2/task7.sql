-- Сформировать запрос для получения числа в группе No 3100 хорошистов.

SELECT "Н_ЛЮДИ"."ИД", "Н_ЛЮДИ"."ФАМИЛИЯ", "Н_УЧЕНИКИ"."ГРУППА" FROM "Н_УЧЕНИКИ"
INNER JOIN "Н_ЛЮДИ" ON "Н_УЧЕНИКИ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД" AND "Н_УЧЕНИКИ"."ГРУППА" = '3100'
INNER JOIN "Н_ВЕДОМОСТИ" ON "Н_ВЕДОМОСТИ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД"
WHERE ("ОЦЕНКА" ~ '^[0-9\.]+$' AND "ОЦЕНКА"::numeric >= 4) OR ("ОЦЕНКА" = 'зачет')
GROUP BY "Н_ЛЮДИ"."ИД", "Н_ЛЮДИ"."ФАМИЛИЯ", "Н_УЧЕНИКИ"."ГРУППА";