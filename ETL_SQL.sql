DROP TABLE happy_data,govt_data;

CREATE TABLE happy_data (
Overall_rank INT,
Country TEXT PRIMARY KEY,
Score DECIMAL,
GDP_per_capita DECIMAL,
Social_support DECIMAL,
Healthy_life_expectancy DECIMAL
);

CREATE TABLE govt_data (
Country TEXT PRIMARY KEY,
Units TEXT,
"2019_govt_spend_to_gdp" DECIMAL
);

SELECT * FROM govt_data;
SELECT * FROM happy_data;

SELECT happy_data.overall_rank, happy_data.country, happy_data.score, happy_data.gdp_per_capita, happy_data.social_support, happy_data.healthy_life_expectancy, govt_data."2019_govt_spend_to_gdp"
FROM happy_data
JOIN govt_data
ON happy_data.country = govt_data.country;