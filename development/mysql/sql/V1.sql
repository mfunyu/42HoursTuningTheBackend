ALTER TABLE session ADD INDEX value_index(value);
ALTER TABLE group_member ADD INDEX user_id_index(user_id);
