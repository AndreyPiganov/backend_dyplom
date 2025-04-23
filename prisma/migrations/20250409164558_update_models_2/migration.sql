-- DropForeignKey
ALTER TABLE "Answer" DROP CONSTRAINT "Answer_questionId_fkey";

-- DropForeignKey
ALTER TABLE "BilletResult" DROP CONSTRAINT "BilletResult_billetId_fkey";

-- DropForeignKey
ALTER TABLE "BilletResult" DROP CONSTRAINT "BilletResult_userId_fkey";

-- DropForeignKey
ALTER TABLE "TestAnswer" DROP CONSTRAINT "TestAnswer_questionId_fkey";

-- DropForeignKey
ALTER TABLE "TestAnswer" DROP CONSTRAINT "TestAnswer_testSessionId_fkey";

-- DropForeignKey
ALTER TABLE "TestSession" DROP CONSTRAINT "TestSession_userId_fkey";

-- AddForeignKey
ALTER TABLE "Answer" ADD CONSTRAINT "Answer_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "Question"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TestSession" ADD CONSTRAINT "TestSession_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TestAnswer" ADD CONSTRAINT "TestAnswer_testSessionId_fkey" FOREIGN KEY ("testSessionId") REFERENCES "TestSession"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "TestAnswer" ADD CONSTRAINT "TestAnswer_questionId_fkey" FOREIGN KEY ("questionId") REFERENCES "Question"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BilletResult" ADD CONSTRAINT "BilletResult_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BilletResult" ADD CONSTRAINT "BilletResult_billetId_fkey" FOREIGN KEY ("billetId") REFERENCES "Billet"("id") ON DELETE CASCADE ON UPDATE CASCADE;
