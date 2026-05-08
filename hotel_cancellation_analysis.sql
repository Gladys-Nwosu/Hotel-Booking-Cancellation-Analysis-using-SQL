SQL

-- Overall cancellation analysis

    SELECT 
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS total_cancellations
FROM hotel_bookings;

-- Cancellation by country

SELECT 
    country,
    COUNT(*) AS total_bookings,
    SUM(is_canceled) AS cancellations
FROM hotel_bookings
GROUP BY country
ORDER BY cancellations DESC;

-- Monthly Cancellation Trends

SELECT 
    arrival_date_month,
    COUNT(*) AS bookings,
    SUM(is_canceled) AS cancellations
FROM hotel_bookings
GROUP BY arrival_date_month
ORDER BY cancellations DESC;

-- How Early Bookings Affect Cancellations

SELECT 
    lead_time,
    is_canceled
FROM hotel_bookings;


-- Customer type analysis


SELECT 
    customer_type,
    COUNT(*) AS bookings,
    SUM(is_canceled) AS cancellations
FROM hotel_bookings
GROUP BY customer_type;

-- Cancellation Patterns by Hotel Type

SELECT 
    hotel,
    COUNT(*) AS bookings,
    SUM(is_canceled) AS cancellations
FROM hotel_bookings
GROUP BY hotel;