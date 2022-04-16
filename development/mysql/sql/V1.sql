ALTER TABLE session ADD INDEX value_index(value);
ALTER TABLE group_member ADD INDEX user_id_index(user_id);

ALTER TABLE record_last_access ADD INDEX user_id_index(user_id);

-- この２つは順番大切
ALTER TABLE record ADD INDEX created_by_index(created_by);
ALTER TABLE record ADD INDEX status_index(status);

-- この２つは順番大切
ALTER TABLE record_comment ADD INDEX linked_record_id_index(linked_record_id);
ALTER TABLE record_comment ADD INDEX created_at_index(created_at);
