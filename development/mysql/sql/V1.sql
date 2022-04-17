ALTER TABLE session ADD INDEX value_index(value);
ALTER TABLE group_member ADD INDEX user_id_index(user_id);

ALTER TABLE record_last_access ADD INDEX user_id_index(user_id);

-- 
ALTER TABLE record ADD INDEX created_by_index(created_by, status);
alter table record add index test_index(updated_at, record_id desc, status);
alter table record add index category_pair_index(category_id, application_group);

-- この２つは順番大切
ALTER TABLE record_comment ADD INDEX linked_record_id_index(linked_record_id);
ALTER TABLE record_comment ADD INDEX created_at_index(created_at);

CREATE INDEX add_index ON record_item_file (linked_record_id); 
