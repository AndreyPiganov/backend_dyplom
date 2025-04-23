/*
  Warnings:

  - The primary key for the `TestAnswer` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `TestAnswer` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "TestAnswer" DROP CONSTRAINT "TestAnswer_pkey",
DROP COLUMN "id";
