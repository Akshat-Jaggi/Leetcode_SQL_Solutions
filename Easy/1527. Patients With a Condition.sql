# Write an SQL query to report the patient_id, patient_name all conditions of patients who have Type I Diabetes. Type I Diabetes always starts with DIAB1 prefix
# Return the result table in any order.

select * from Patients 
where conditions like '% DIAB1%' 
or conditions like 'DIAB1%';