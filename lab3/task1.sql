-- 1. Сделать запрос для получения атрибутов из указанных таблиц, применив фильтры по указанным условиям:
-- Таблицы: `Н_ОЦЕНКИ`, `Н_ВЕДОМОСТИ`.
-- Вывести атрибуты: `Н_ОЦЕНКИ.ПРИМЕЧАНИЕ`, `Н_ВЕДОМОСТИ.ИД`.
-- Фильтры **AND**:
-- a) `Н_ОЦЕНКИ.ПРИМЕЧАНИЕ` = **неудовлетворительно**.
-- b) `Н_ВЕДОМОСТИ.ЧЛВК_ИД` = **117219**.
-- Вид соединения: **INNER JOIN**.

SELECT "Н_ОЦЕНКИ"."ПРИМЕЧАНИЕ", "Н_ВЕДОМОСТИ"."ИД" FROM "Н_ОЦЕНКИ"
INNER JOIN "Н_ВЕДОМОСТИ" ON "ОЦЕНКА" = "КОД"
WHERE
      "Н_ОЦЕНКИ"."ПРИМЕЧАНИЕ" = 'неудовлетворительно' AND
      "Н_ВЕДОМОСТИ"."ЧЛВК_ИД" = 117219;