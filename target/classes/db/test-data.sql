INSERT INTO
    application_user (first_name, last_name, email, password)
VALUES
    -- superadmin@example.com / hard
    ('Jan', 'Kowalski', 'superadmin@example.com', '{bcrypt}$2a$10$Ruu5GtmSVkfLeuGfz/wHUuzflCcMbwJHSBo/.Wui0EM0KIM52Gs2S');

INSERT INTO
    user_role (name, description)
VALUES
    ('ADMIN', 'Ma dostęp do wszystkiego');

INSERT INTO
    user_roles (user_id, role_id)
VALUES
    (1, 1);