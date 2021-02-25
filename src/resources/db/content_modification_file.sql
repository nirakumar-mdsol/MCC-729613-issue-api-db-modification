UPDATE master_setting SET protect = 0
WHERE uuid IN ('e77a646f-95df-49f3-aa00-99665d4468b6', '7f74dcb4-2dc1-458e-a60e-0ba81081c349', '61556e54-e24e-417b-ae3d-631e174768a0')
AND protect = 1;


UPDATE client_division_scheme_setting SET protect = 0
WHERE parent_setting_uuid IN ('e77a646f-95df-49f3-aa00-99665d4468b6', '7f74dcb4-2dc1-458e-a60e-0ba81081c349', '61556e54-e24e-417b-ae3d-631e174768a0')
AND protect = 1;


UPDATE study_environment_setting SET protect = 0
WHERE parent_setting_uuid IN (select uuid from client_division_scheme_setting WHERE parent_setting_uuid IN ('e77a646f-95df-49f3-aa00-99665d4468b6', '7f74dcb4-2dc1-458e-a60e-0ba81081c349', '61556e54-e24e-417b-ae3d-631e174768a0'))
AND protect = 1;