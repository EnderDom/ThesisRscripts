SELECT biosequence.length FROM biosequence INNER JOIN bioentry USING (bioentry_id) INNER JOIN bioentry_run USING (bioentry_id) WHERE run_id=9