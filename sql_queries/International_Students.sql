SELECT * FROM international_student.international_students_2015_2024_v2;

-- What are the total number of student sent throughout by every country

select country_of_origin, sum(count) as total_student from international_students_2015_2024_v2
group by country_of_origin
order by total_student desc;

-- Total number of count of student going for studies every year

SELECT 
    year, SUM(count) total_student
FROM
    international_students_2015_2024_v2
GROUP BY year
ORDER BY year;

-- percentage wise distribution of student by gender

select gender, sum(count) total_count, round(sum(count)*100/sum(sum(count)) over(), 2) as percentage 
from international_students_2015_2024_v2 
group by gender;

-- percentage wise distribution within destination of student by gender
select destination_country, gender, sum(count) total_count, round(sum(count)*100/sum(sum(count)) over(partition by destination_country), 2) as percentage 
from international_students_2015_2024_v2 
group by destination_country, gender
order by destination_country, gender;

-- student going to which countries the most

select destination_country, sum(count) as total_student from international_students_2015_2024_v2
group by destination_country
order by total_student desc;

-- which age group student go the most

select age_group, sum(count) as total_student from international_students_2015_2024_v2
group by age_group
order by total_student desc;

-- rank the top 3 destination countries by total student count for each country of origin:

select
country_of_origin,
destination_country,
total_count,
country_rank
from(
SELECT
        country_of_origin,
        destination_country,
        SUM(count) AS total_count,
        DENSE_RANK() OVER (
            PARTITION BY country_of_origin
            ORDER BY SUM(count) DESC
        ) AS country_rank
        from international_students_2015_2024_v2
        group by  country_of_origin, destination_country
	) ranked
where country_rank < 4
order by country_of_origin,country_rank ;








