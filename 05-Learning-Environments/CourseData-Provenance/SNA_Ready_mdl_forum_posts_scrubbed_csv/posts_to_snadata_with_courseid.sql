SELECT * INTO mdl_forum_posts_snadata_with_courseid FROM (SELECT p2.id, p2.userid AS userid_from, p2.created, p1.userid AS userid_to, d.course AS class_course_id FROM mdl_forum_posts p1 JOIN mdl_forum_posts p2 ON p2.parent = p1.id JOIN mdl_forum_discussions d ON p2.discussion = d.id) data;
-- SELECT 431734
