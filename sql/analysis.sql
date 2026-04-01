SELECT
    screen_time_group,
    productivity,
    COUNT(*) AS people_count
FROM screen_time_final
GROUP BY screen_time_group, productivity
ORDER BY screen_time_group;

SELECT
    screen_activity,
    attention_span,
    COUNT(*) AS people_count
FROM screen_time_final
GROUP BY screen_activity, attention_span
ORDER BY screen_activity;

SELECT
    notification_handling,
    productivity,
    COUNT(*) AS people_count
FROM screen_time_final
GROUP BY notification_handling, productivity
ORDER BY notification_handling;