CREATE DATABASE rainfall_analysis;
USE rainfall_analysis;

CREATE TABLE district_rainfall (
  State    VARCHAR(100),
  District VARCHAR(100),
  Jan      DECIMAL(5,2),
  Feb      DECIMAL(5,2),
  Mar      DECIMAL(5,2),
  Apr      DECIMAL(5,2),
  May      DECIMAL(5,2),
  Jun      DECIMAL(5,2),
  Jul      DECIMAL(5,2),
  Aug      DECIMAL(5,2),
  Sep      DECIMAL(5,2),
  Oct      DECIMAL(5,2),
  Nov      DECIMAL(5,2),
  `Dec`    DECIMAL(5,2),    -- backticks around Dec
  Annual   DECIMAL(6,2)
);


INSERT INTO district_rainfall (State, District, Jan, Feb, Mar, Apr, May, Jun, Jul, Aug, Sep, Oct, Nov, `Dec`, Annual)
VALUES 
('Maharashtra', 'Pune', 12.50, 15.20, 20.10, 25.50, 30.00, 40.10, 45.20, 50.30, 55.00, 60.30, 65.10, 70.20, 60.20),
('Maharashtra', 'Mumbai', 20.10, 25.50, 30.00, 35.10, 40.20, 50.00, 55.50, 60.00, 65.20, 70.00, 75.10, 80.10, 70.00),
('Karnataka', 'Bangalore', 10.30, 15.00, 20.50, 25.10, 28.00, 30.10, 35.20, 40.30, 42.50, 50.00, 55.10, 60.00, 60.00);

SET SQL_SAFE_UPDATES = 0;

UPDATE district_rainfall
SET Annual = Jan + Feb + Mar + Apr + May + Jun + Jul + Aug + Sep + Oct + Nov + `Dec`;

SELECT * FROM district_rainfall;

SELECT District, State, Annual
FROM district_rainfall
ORDER BY Annual DESC
LIMIT 1;

SELECT AVG(Jan) AS Avg_Jan_Rainfall
FROM district_rainfall;

SELECT State, District, Annual
FROM district_rainfall
WHERE Annual > 600;

CREATE INDEX idx_state ON district_rainfall(State);
CREATE INDEX idx_district ON district_rainfall(District);




