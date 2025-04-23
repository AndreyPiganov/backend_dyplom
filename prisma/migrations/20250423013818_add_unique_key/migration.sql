/*
  Warnings:

  - A unique constraint covering the columns `[testSessionId,questionId]` on the table `TestAnswer` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "TestAnswer_testSessionId_questionId_key" ON "TestAnswer"("testSessionId", "questionId");
