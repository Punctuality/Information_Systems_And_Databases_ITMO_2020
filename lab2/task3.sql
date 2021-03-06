-- Составить запрос, который ответит на вопрос:
-- есть ли среди студентов ФКТИУ те, кто старше 25 лет.

SELECT "Н_ОТДЕЛЫ"."КОРОТКОЕ_ИМЯ",
       "Н_ЛЮДИ"."ФАМИЛИЯ",
       "Н_ЛЮДИ"."ДАТА_РОЖДЕНИЯ" FROM "Н_УЧЕНИКИ"
INNER JOIN "Н_ПЛАНЫ" on "Н_УЧЕНИКИ"."ПЛАН_ИД" = "Н_ПЛАНЫ"."ИД"
INNER JOIN "Н_ОТДЕЛЫ" on "Н_ПЛАНЫ"."ОТД_ИД" = "Н_ОТДЕЛЫ"."ИД"
INNER JOIN "Н_ЛЮДИ" on "Н_УЧЕНИКИ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД"
WHERE
    "Н_ОТДЕЛЫ"."КОРОТКОЕ_ИМЯ" = 'КТиУ' AND
    (CURRENT_TIMESTAMP - "Н_ЛЮДИ"."ДАТА_РОЖДЕНИЯ") > (interval '365 days' * 25);

SELECT "Н_ОТДЕЛЫ"."КОРОТКОЕ_ИМЯ",
       "Н_ЛЮДИ"."ФАМИЛИЯ",
       "Н_ЛЮДИ"."ДАТА_РОЖДЕНИЯ" FROM "Н_УЧЕНИКИ"
                                         INNER JOIN "Н_ПЛАНЫ" on "Н_УЧЕНИКИ"."ПЛАН_ИД" = "Н_ПЛАНЫ"."ИД"
                                         INNER JOIN "Н_ОТДЕЛЫ" on "Н_ПЛАНЫ"."ОТД_ИД" = "Н_ОТДЕЛЫ"."ИД"
                                         INNER JOIN "Н_ЛЮДИ" on "Н_УЧЕНИКИ"."ЧЛВК_ИД" = "Н_ЛЮДИ"."ИД"
WHERE
        "Н_ОТДЕЛЫ"."КОРОТКОЕ_ИМЯ" = 'КТиУ' AND
        age("Н_ЛЮДИ"."ДАТА_РОЖДЕНИЯ") > interval '25 years';