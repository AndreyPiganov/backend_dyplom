-- This is an empty migration.

INSERT INTO "User" (id, email, username, password, role, "createdAt")
VALUES (
  gen_random_uuid(),
  'Admin@yandex.ru',
  'Admin2',
  '$2b$10$4aMdZq5rK7QkZLylO8pIEu6HspRPfsHpVKAc8PVtuoIXDK.X8O62a',
  'ADMIN',
  NOW()
)
ON CONFLICT (email) DO NOTHING;
