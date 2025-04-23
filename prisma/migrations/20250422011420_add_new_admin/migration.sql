-- This is an empty migration.

INSERT INTO "User" (id, email, username, password, role, "createdAt")
VALUES (
  gen_random_uuid(),
  'admin@yandex.ru',
  'Admin3',
  '$2b$10$.985KKqItFT6.wrU4cAhFOtp0mSC0km2bYCOmK3vNclDSpiiTZLZ6',
  'ADMIN',
  NOW()
)
ON CONFLICT (email) DO NOTHING;
