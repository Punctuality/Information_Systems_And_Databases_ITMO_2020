CREATE INDEX IF NOT EXISTS people_patronymic_hash ON "Н_ЛЮДИ" USING hash("ОТЧЕСТВО");
CREATE INDEX IF NOT EXISTS reports_person_id_hash ON "Н_ВЕДОМОСТИ" USING btree("ЧЛВК_ИД");
CREATE INDEX IF NOT EXISTS session_person_id_hash ON "Н_СЕССИЯ" USING btree("ЧЛВК_ИД");