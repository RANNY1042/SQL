SELECT dept_name, AVG(tot_cred)
FROM student
-- where dept_name="Comp. Sci.";
GROUP BY dept_name
ORDER BY AVG(tot_cred) DESC;