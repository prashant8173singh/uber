CREATE TABLE trips (
    request_id INT PRIMARY KEY,
    pickup_point VARCHAR(50),
    driver_id INT,
    status VARCHAR(50),
    request_timestamp TIMESTAMP,
    request_date DATE,
    request_hour VARCHAR(10),
    drop_timestamp TIMESTAMP
);

select * from trips;

--1) Distribution of Trip Statuses
SELECT status, COUNT(*) AS total_requests
FROM trips
GROUP BY status;

--2)Number of Requests Per Pickup Point and Status
SELECT pickup_point, status, COUNT(*) AS total_requests
FROM trips
GROUP BY pickup_point, status
ORDER BY pickup_point, total_requests DESC;

--3)peak hours when most requests happen
SELECT request_hour , COUNT(*) AS total_requests
FROM trips
GROUP BY request_hour
ORDER BY total_requests DESC;

--4) Hours with highest cancellation rates
SELECT request_hour,COUNT(*) as Ride_requested, COUNT(*) FILTER (WHERE status = 'Cancelled') * 100.0 / COUNT(*) AS cancellation_rate
FROM trips
GROUP BY request_hour
ORDER BY cancellation_rate DESC;

--5) Where the car unavailability issue is most frequent.
SELECT pickup_point, COUNT(*) AS total_unavailable
FROM trips
WHERE status = 'No Cars Available'
GROUP BY pickup_point
ORDER BY total_unavailable DESC;

--6) Which pickup point has higher trip completion success
SELECT pickup_point, COUNT(*) FILTER (WHERE status = 'Trip Completed') * 100.0 / COUNT(*) AS completion_rate
FROM trips
GROUP BY pickup_point;

--7) Breaks down completed, cancelled, and car not available per weekday
SELECT 
    TO_CHAR(request_timestamp, 'Day') AS day_of_week,
    status,
    COUNT(*) AS count
FROM trips
GROUP BY day_of_week, status
ORDER BY day_of_week , status DESC;


