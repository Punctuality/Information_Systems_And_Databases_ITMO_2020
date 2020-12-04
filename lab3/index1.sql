-- CREATE INDEX IF NOT EXISTS scores_desc_hash ON "Н_ОЦЕНКИ" USING hash("ПРИМЕЧАНИЕ"); NOT EFFECTIVE
CREATE INDEX IF NOT EXISTS reports_person_id_hash ON "Н_ВЕДОМОСТИ" USING hash("ЧЛВК_ИД");