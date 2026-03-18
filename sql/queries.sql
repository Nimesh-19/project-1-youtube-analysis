-- SQL Queries for YouTube Trending Video Analysis Project

-- 1. Top Categories by Average Views
SELECT category_id,
AVG(views) AS avg_views
FROM youtube_data
GROUP BY category_id
ORDER BY avg_views DESC;


-- 2. Average Views by Country
SELECT country,
AVG(views) AS avg_views
FROM youtube_data
GROUP BY country
ORDER BY avg_views DESC;


-- 3. Sentiment Distribution
SELECT sentiment_type,
COUNT(*) AS total_videos
FROM youtube_data
GROUP BY sentiment_type
ORDER BY total_videos DESC;


-- 4. Monthly Trending Video Count
SELECT publish_month,
COUNT(*) AS total_videos
FROM youtube_data
GROUP BY publish_month
ORDER BY publish_month;