DROP TABLE IF EXISTS screen_time_clean;

CREATE TABLE screen_time_clean AS
SELECT
    TRIM("Age Group") AS age_group,
    TRIM("Education Level") AS education_level,
    TRIM("Occupation") AS occupation,
    TRIM("Average Screen Time") AS average_screen_time,
    TRIM("Device") AS device,
    TRIM("Screen Activity") AS screen_activity,
    TRIM("App Category") AS app_category,
    TRIM("Productivity") AS productivity,
    TRIM("Attention Span") AS attention_span,
    TRIM("Notification Handling") AS notification_handling,
    TRIM("Usage of Productivity Apps") AS usage_of_productivity_apps
FROM screen_time_raw;

DROP TABLE IF EXISTS screen_time_final;

CREATE TABLE screen_time_final AS
SELECT *,
    CASE
        WHEN average_screen_time IN ('Less than 2', '2–4') THEN 'Low'
        WHEN average_screen_time IN ('4–6', '6–8') THEN 'Moderate'
        WHEN average_screen_time IN ('8-10', 'More than 10') THEN 'High'
        ELSE 'Unknown'
    END AS screen_time_group
FROM screen_time_clean;