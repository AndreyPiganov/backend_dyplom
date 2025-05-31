-- This is an empty migration.

-- Вопрос 1
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (1, 'Что из перечисленного относится к функции государства?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(1, 'Уборка территории', FALSE),
(1, 'Контроль за соблюдением закона', TRUE),
(1, 'Предоставление кредита', FALSE),
(1, 'Производство мебели', FALSE);

-- Вопрос 2
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (2, 'Какой из перечисленных терминов относится к политической сфере общества?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(2, 'Благотворительный концерт', FALSE),
(2, 'Бизнес-план', FALSE),
(2, 'Референдум', TRUE),
(2, 'Фондовая биржа', FALSE);

-- Вопрос 3
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (3, 'Что из перечисленного является примером правонарушения?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(3, 'Просмотр фильма', FALSE),
(3, 'Прогул уроков', TRUE),
(3, 'Посещение библиотеки', FALSE),
(3, 'Спорт в выходной день', FALSE);

-- Вопрос 4
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (4, 'Какой термин обозначает форму правления, при которой власть принадлежит народу?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(4, 'Теократия', FALSE),
(4, 'Демократия', TRUE),
(4, 'Монархия', FALSE),
(4, 'Диктатура', FALSE);

-- Вопрос 5
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (5, 'Что из перечисленного является общественным благом?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(5, 'Частная собственность', FALSE),
(5, 'Домашний кинотеатр', FALSE),
(5, 'Освещение улиц', TRUE),
(5, 'Личный автомобиль', FALSE);

-- Вопрос 6
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (6, 'Какая из перечисленных функций является функцией семьи?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(6, 'Политическая', FALSE),
(6, 'Финансовая', FALSE),
(6, 'Воспитательная', TRUE),
(6, 'Производственная', FALSE);

-- Вопрос 7
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (7, 'Что из перечисленного является источником права?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(7, 'Финансовый отчёт', FALSE),
(7, 'Нормативный правовой акт', TRUE),
(7, 'Личный дневник', FALSE),
(7, 'График работы', FALSE);

-- Вопрос 8
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (8, 'Что характеризует рыночную экономику?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(8, 'Централизованное планирование', FALSE),
(8, 'Свободное ценообразование', TRUE),
(8, 'Фиксированная заработная плата', FALSE),
(8, 'Монополия государства', FALSE);

-- Вопрос 9
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (9, 'Какой из перечисленных признаков относится к правовому государству?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(9, 'Запрет митингов', FALSE),
(9, 'Верховенство закона', TRUE),
(9, 'Цензура СМИ', FALSE),
(9, 'Однопартийная система', FALSE);

-- Вопрос 10
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (10, 'Что из перечисленного является обязанностью гражданина РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(10, 'Соблюдение Конституции', TRUE),
(10, 'Путешествия за границу', FALSE),
(10, 'Получение образования', FALSE),
(10, 'Участие в выборах', FALSE);

-- Вопрос 11
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (11, 'Что из перечисленного характеризует гражданское общество?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(11, 'Полная власть одного человека', FALSE),
(11, 'Наличие независимых СМИ', TRUE),
(11, 'Отсутствие выборов', FALSE),
(11, 'Военная диктатура', FALSE);

-- Вопрос 12
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (12, 'Что из перечисленного является признаком правонарушения?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(12, 'Поступок, одобренный обществом', FALSE),
(12, 'Деяние противозаконное и наказуемое', TRUE),
(12, 'Добровольная помощь', FALSE),
(12, 'Правомерное поведение', FALSE);


-- Вопрос 13
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (13, 'Какой из приведённых примеров иллюстрирует нравственную норму?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(13, 'Соблюдать правила ПДД', FALSE),
(13, 'Помогать пожилым людям', TRUE),
(13, 'Платить налоги', FALSE),
(13, 'Выполнять трудовой договор', FALSE);

-- Вопрос 14
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (14, 'Что характеризует демократическое общество?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(14, 'Запрет на собрания', FALSE),
(14, 'Выборность органов власти', TRUE),
(14, 'Ограничение прав человека', FALSE),
(14, 'Отсутствие свобод СМИ', FALSE);

-- Вопрос 15
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (15, 'Какая форма правления характерна для Российской Федерации?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(15, 'Республика', TRUE),
(15, 'Олигархия', FALSE),
(15, 'Монархия', FALSE),
(15, 'Теократия', FALSE);

-- Вопрос 16
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (16, 'Что такое закон?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(16, 'План развития фирмы', FALSE),
(16, 'Нормативный правовой акт, принятый высшим органом власти', TRUE),
(16, 'Пожелание коллектива', FALSE),
(16, 'Личное мнение гражданина', FALSE);

-- Вопрос 17
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (17, 'Что является экономической функцией государства?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(17, 'Стабилизация экономики', TRUE),
(17, 'Проведение референдума', FALSE),
(17, 'Организация концертов', FALSE),
(17, 'Публикация статей', FALSE);

-- Вопрос 18
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (18, 'Какая отрасль права регулирует семейные отношения?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(18, 'Семейное право', TRUE),
(18, 'Уголовное право', FALSE),
(18, 'Трудовое право', FALSE),
(18, 'Административное право', FALSE);

-- Вопрос 19
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (19, 'Кто является носителем суверенитета в РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(19, 'Президент', FALSE),
(19, 'Народ', TRUE),
(19, 'Государственная Дума', FALSE),
(19, 'Правительство', FALSE);

-- Вопрос 20
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (20, 'Что такое мораль?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(20, 'Система норм, регулирующих поведение с позиции добра и зла', TRUE),
(20, 'Научная теория', FALSE),
(20, 'Политическая программа', FALSE),
(20, 'Юридический документ', FALSE);

-- Вопрос 21
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (21, 'Какая из перечисленных норм регулируется исключительно правом?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(21, 'Моральная обязанность заботиться о старших', FALSE),
(21, 'Традиции празднования', FALSE),
(21, 'Правила этикета за столом', FALSE),
(21, 'Уголовная ответственность за кражу', TRUE);

-- Вопрос 22
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (22, 'Что из перечисленного является примером налога?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(22, 'Добровольное пожертвование', FALSE),
(22, 'НДФЛ (налог на доходы физических лиц)', TRUE),
(22, 'Подарок другу', FALSE),
(22, 'Благотворительный взнос', FALSE);

-- Вопрос 23
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (23, 'Что из перечисленного относится к обязанностям работодателя?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(23, 'Гарантировать политические свободы', FALSE),
(23, 'Обеспечить безопасные условия труда', TRUE),
(23, 'Предоставлять отпуск по первому требованию', FALSE),
(23, 'Своевременно платить налоги работника', FALSE);

-- Вопрос 24
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (24, 'Что характеризует тоталитарный режим?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(24, 'Свобода слова', FALSE),
(24, 'Отсутствие политической оппозиции', TRUE),
(24, 'Выборность парламента', FALSE),
(24, 'Разделение властей', FALSE);

-- Вопрос 25
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (25, 'Что означает термин "референдум"?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(25, 'Решение суда', FALSE),
(25, 'Голосование граждан по важному государственному вопросу', TRUE),
(25, 'Обсуждение в парламенте', FALSE),
(25, 'Совет экспертов', FALSE);

-- Вопрос 26
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (26, 'Какой из перечисленных факторов относится к духовной сфере жизни общества?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(26, 'Производство автомобилей', FALSE),
(26, 'Религиозные взгляды', TRUE),
(26, 'Военная подготовка', FALSE),
(26, 'Сбор налогов', FALSE);

-- Вопрос 27
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (27, 'Что из перечисленного относится к элементам политической системы?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(27, 'Политические партии', TRUE),
(27, 'Кулинарные школы', FALSE),
(27, 'Музыкальные фестивали', FALSE),
(27, 'Спортивные клубы', FALSE);

-- Вопрос 28
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (28, 'Что входит в содержание правосознания граждан?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(28, 'Экономические предпочтения', FALSE),
(28, 'Знание законов и правовая культура', TRUE),
(28, 'Навыки торговли', FALSE),
(28, 'Умение писать сочинения', FALSE);

-- Вопрос 29
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (29, 'Что из перечисленного относится к трудовому праву?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(29, 'Право на свободу совести', FALSE),
(29, 'Право на отпуск', TRUE),
(29, 'Право на участие в выборах', FALSE),
(29, 'Право на свободу творчества', FALSE);

-- Вопрос 30
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (30, 'Что такое плебисцит?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(30, 'Форма протеста', FALSE),
(30, 'Заседание парламента', FALSE),
(30, 'Голосование по конкретному вопросу, организованное властями', TRUE),
(30, 'Судебное разбирательство', FALSE);

-- Вопрос 31
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (31, 'Что регулирует гражданское право?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(31, 'Вопросы военной службы', FALSE),
(31, 'Семейные отношения', FALSE),
(31, 'Имущественные и связанные с ними личные неимущественные отношения', TRUE),
(31, 'Уголовные наказания', FALSE);

-- Вопрос 32
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (32, 'Что означает термин "социальная мобильность"?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(32, 'Миграция населения между регионами', FALSE),
(32, 'Перемещение индивида между социальными слоями', TRUE),
(32, 'Движение в городском транспорте', FALSE),
(32, 'Участие в выборах', FALSE);

-- Вопрос 33
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (33, 'Какой орган власти в РФ осуществляет надзор за соблюдением Конституции?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(33, 'Государственная Дума', FALSE),
(33, 'Конституционный суд', TRUE),
(33, 'Совет Федерации', FALSE),
(33, 'Президент', FALSE);

-- Вопрос 34
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (34, 'Что из перечисленного относится к обязанностям гражданина РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(34, 'Создание политических партий', FALSE),
(34, 'Публикация научных работ', FALSE),
(34, 'Соблюдение Конституции и законов РФ', TRUE),
(34, 'Участие в митингах', FALSE);

-- Вопрос 35
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (35, 'Что такое инфляция?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(35, 'Понижение уровня безработицы', FALSE),
(35, 'Рост общего уровня цен в экономике', TRUE),
(35, 'Увеличение производства', FALSE),
(35, 'Снижение налогов', FALSE);

-- Вопрос 36
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (36, 'Что означает принцип разделения властей?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(36, 'Создание коалиционного правительства', FALSE),
(36, 'Разделение на законодательную, исполнительную и судебную ветви', TRUE),
(36, 'Подчинение всех суду', FALSE),
(36, 'Передача всей власти парламенту', FALSE);

-- Вопрос 37
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (37, 'Что регулирует трудовое право?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(37, 'Защиту прав потребителей', FALSE),
(37, 'Отношения между работником и работодателем', TRUE),
(37, 'Налогообложение бизнеса', FALSE),
(37, 'Вопросы семейной жизни', FALSE);

-- Вопрос 38
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (38, 'Какой из перечисленных признаков характеризует правовое государство?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(38, 'Отмена выборов', FALSE),
(38, 'Верховенство закона', TRUE),
(38, 'Личная власть правителя', FALSE),
(38, 'Запрет оппозиции', FALSE);

-- Вопрос 39
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (39, 'Что входит в структуру экономической системы общества?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(39, 'Армия, полиция, спецслужбы', FALSE),
(39, 'Производство, распределение, обмен, потребление', TRUE),
(39, 'Законодательство и правосудие', FALSE),
(39, 'Искусство, религия, мораль', FALSE);

-- Вопрос 40
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (40, 'Что является субъектом гражданских правоотношений?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(40, 'Только Президент', FALSE),
(40, 'Физическое или юридическое лицо', TRUE),
(40, 'Только суд', FALSE),
(40, 'Только государство', FALSE);

-- Вопрос 41
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (41, 'Что из перечисленного является формой государства?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(41, 'Класс', FALSE),
(41, 'Республика', TRUE),
(41, 'Предприятие', FALSE),
(41, 'Семья', FALSE);

-- Вопрос 42
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (42, 'Что такое акционерное общество?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(42, 'Общественное объединение', FALSE),
(42, 'Форма организации бизнеса с разделением капитала на акции', TRUE),
(42, 'Государственный орган', FALSE),
(42, 'Политическая партия', FALSE);

-- Вопрос 43
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (43, 'Что такое правонарушение?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(43, 'Противоправное деяние, за которое предусмотрена юридическая ответственность', TRUE),
(43, 'Моральное осуждение', FALSE),
(43, 'Любой поступок человека', FALSE),
(43, 'Трудовой подвиг', FALSE);

-- Вопрос 44
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (44, 'Какой из признаков характеризует демократическое государство?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(44, 'Ограничение свободы слова', FALSE),
(44, 'Наличие выборов и прав человека', TRUE),
(44, 'Отсутствие оппозиции', FALSE),
(44, 'Монархическая форма правления', FALSE);

-- Вопрос 45
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (45, 'Что такое социальная роль?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(45, 'Профессия человека', FALSE),
(45, 'Ожидаемое поведение человека в соответствии с его статусом', TRUE),
(45, 'Место проживания', FALSE),
(45, 'Уровень дохода', FALSE);

-- Вопрос 46
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (46, 'Что является источником государственной власти в РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(46, 'Президент', FALSE),
(46, 'Народ', TRUE),
(46, 'Конституционный суд', FALSE),
(46, 'Государственная Дума', FALSE);

-- Вопрос 47
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (47, 'Что относится к признакам правового государства?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(47, 'Цензура и контроль информации', FALSE),
(47, 'Разделение властей и верховенство закона', TRUE),
(47, 'Однопартийность', FALSE),
(47, 'Политическая диктатура', FALSE);

-- Вопрос 48
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (48, 'Что регулирует семейное право?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(48, 'Налогообложение', FALSE),
(48, 'Отношения между супругами и родителями и детьми', TRUE),
(48, 'Трудовые договоры', FALSE),
(48, 'Уголовную ответственность', FALSE);

-- Вопрос 49
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (49, 'Что означает термин "конституция"?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(49, 'Уголовный кодекс', FALSE),
(49, 'Основной закон государства', TRUE),
(49, 'Закон о гражданстве', FALSE),
(49, 'Военное положение', FALSE);

-- Вопрос 50
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (50, 'Что такое юридическая ответственность?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(50, 'Обязанность лица понести наказание за правонарушение', TRUE),
(50, 'Выражение благодарности', FALSE),
(50, 'Похвала за достижение', FALSE),
(50, 'Моральное одобрение', FALSE);

-- Вопрос 51
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (51, 'Какой орган государственной власти в РФ является нижней палатой Федерального собрания?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(51, 'Правительство', FALSE),
(51, 'Государственная Дума', TRUE),
(51, 'Совет Федерации', FALSE),
(51, 'Конституционный суд', FALSE);

-- Вопрос 52
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (52, 'Что означает понятие "мораль"?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(52, 'Правила дорожного движения', FALSE),
(52, 'Система норм и принципов поведения, основанная на представлениях о добре и зле', TRUE),
(52, 'Физическое здоровье', FALSE),
(52, 'Свод законов', FALSE);

-- Вопрос 53
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (53, 'Что относится к личным (гражданским) правам человека?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(53, 'Право на бесплатный проезд', FALSE),
(53, 'Право на жизнь', TRUE),
(53, 'Право на трудоустройство', FALSE),
(53, 'Право на пенсию', FALSE);

-- Вопрос 54
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (54, 'Что является функцией семьи?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(54, 'Ведение внешней политики', FALSE),
(54, 'Проведение выборов', FALSE),
(54, 'Воспитание детей', TRUE),
(54, 'Издание законов', FALSE);

-- Вопрос 55
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (55, 'Какой признак отличает рынок труда?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(55, 'Обмен иностранной валюты', FALSE),
(55, 'Торговля недвижимостью', FALSE),
(55, 'Предметом купли-продажи выступает рабочая сила', TRUE),
(55, 'Продажа товаров повседневного спроса', FALSE);

-- Вопрос 56
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (56, 'Что такое "общественное сознание"?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(56, 'Совокупность взглядов и идей, отражающих отношение людей к действительности', TRUE),
(56, 'Понимание законов физики', FALSE),
(56, 'Знание иностранного языка', FALSE),
(56, 'Личное мнение отдельного человека', FALSE);

-- Вопрос 57
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (57, 'Что характеризует демократические выборы?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(57, 'Свободное волеизъявление граждан', TRUE),
(57, 'Закрытый характер процедуры', FALSE),
(57, 'Ограничение участия по возрасту до 30 лет', FALSE),
(57, 'Назначение кандидатов государством', FALSE);


-- Вопрос 58
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (58, 'Что является отличием уголовного права от других отраслей?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(58, 'Оно регулирует трудовые отношения', FALSE),
(58, 'Оно регулирует гражданские иски', FALSE),
(58, 'Оно регулирует общественные отношения, связанные с преступлениями и наказанием', TRUE),
(58, 'Оно касается семейных споров', FALSE);

-- Вопрос 59
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (59, 'Какой фактор производства включает в себя знания и умения?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(59, 'Капитал', FALSE),
(59, 'Труд', TRUE),
(59, 'Предпринимательство', FALSE),
(59, 'Земля', FALSE);

-- Вопрос 60
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (60, 'Какой вид юридической ответственности наступает за нарушение дисциплины труда?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(60, 'Гражданско-правовая', FALSE),
(60, 'Дисциплинарная', TRUE),
(60, 'Уголовная', FALSE),
(60, 'Административная', FALSE);

-- Вопрос 61
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (61, 'Что из перечисленного является субъектом гражданского права?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(61, 'Экономика страны', FALSE),
(61, 'Физическое лицо', TRUE),
(61, 'Законы', FALSE),
(61, 'Территория государства', FALSE);

-- Вопрос 62
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (62, 'Какая черта характерна для рыночной экономики?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(62, 'Директивное управление', FALSE),
(62, 'Государственная монополия', FALSE),
(62, 'Свободное ценообразование', TRUE),
(62, 'Госплан', FALSE);

-- Вопрос 63
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (63, 'Какое право относится к политическим правам гражданина РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(63, 'Право на медицинскую помощь', FALSE),
(63, 'Право избирать и быть избранным', TRUE),
(63, 'Право на отдых', FALSE),
(63, 'Право на жилище', FALSE);

-- Вопрос 64
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (64, 'Что входит в функции государства?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(64, 'Финансирование рекламы', FALSE),
(64, 'Обеспечение правопорядка', TRUE),
(64, 'Маркетинг', FALSE),
(64, 'Изготовление товаров', FALSE);

-- Вопрос 65
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (65, 'Что является целью налогообложения?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(65, 'Контроль за частной собственностью', FALSE),
(65, 'Формирование доходной части бюджета', TRUE),
(65, 'Фиксация цен', FALSE),
(65, 'Уменьшение заработной платы', FALSE);

-- Вопрос 66
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (66, 'Какой орган осуществляет судебную власть в РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(66, 'Полиция', FALSE),
(66, 'Суды', TRUE),
(66, 'Президент', FALSE),
(66, 'Правительство', FALSE);

-- Вопрос 67
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (67, 'Что является элементом духовной культуры?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(67, 'Продукты питания', FALSE),
(67, 'Автомобиль', FALSE),
(67, 'Наука', TRUE),
(67, 'Одежда', FALSE);

-- Вопрос 68
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (68, 'Что из перечисленного характеризует экономику как систему?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(68, 'Производство, распределение, обмен и потребление', TRUE),
(68, 'Политическое устройство', FALSE),
(68, 'Уровень грамотности населения', FALSE),
(68, 'Соблюдение норм морали', FALSE);

-- Вопрос 69
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (69, 'Какой признак характерен для предпринимательской деятельности?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(69, 'Получение пенсии', FALSE),
(69, 'Риск и стремление к прибыли', TRUE),
(69, 'Обязательная служба в армии', FALSE),
(69, 'Ведение домашнего хозяйства', FALSE);

-- Вопрос 70
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (70, 'Что является примером административного правонарушения?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(70, 'Кража имущества', FALSE),
(70, 'Переход дороги в неположенном месте', TRUE),
(70, 'Убийство', FALSE),
(70, 'Невыплата зарплаты', FALSE);

-- Вопрос 71
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (71, 'Что характеризует правовое государство?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(71, 'Монархическая форма правления', FALSE),
(71, 'Верховенство закона', TRUE),
(71, 'Власть одного человека', FALSE),
(71, 'Отсутствие судов', FALSE);

-- Вопрос 72
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (72, 'К какому виду норм относится Конституция РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(72, 'Обычаи', FALSE),
(72, 'Правовые нормы', TRUE),
(72, 'Моральные нормы', FALSE),
(72, 'Религиозные нормы', FALSE);

-- Вопрос 73
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (73, 'Что относится к признакам правонарушения?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(73, 'Справедливость', FALSE),
(73, 'Противоправность', TRUE),
(73, 'Героизм', FALSE),
(73, 'Патриотизм', FALSE);

-- Вопрос 74
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (74, 'Какой орган осуществляет законодательную власть в РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(74, 'Генеральная прокуратура', FALSE),
(74, 'Федеральное Собрание', TRUE),
(74, 'Президент', FALSE),
(74, 'Конституционный Суд', FALSE);

-- Вопрос 75
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (75, 'Что из перечисленного является доходом государственного бюджета?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(75, 'Дивиденды', FALSE),
(75, 'Налоги', TRUE),
(75, 'Пенсии', FALSE),
(75, 'Заработная плата', FALSE);

-- Вопрос 76
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (76, 'Что относится к личным правам человека?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(76, 'Право на участие в управлении делами государства', FALSE),
(76, 'Право на жизнь', TRUE),
(76, 'Право на отдых', FALSE),
(76, 'Право на выбор профессии', FALSE);

-- Вопрос 77
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (77, 'Какой уровень образования является обязательным в РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(77, 'Высшее образование', FALSE),
(77, 'Среднее профессиональное', FALSE),
(77, 'Основное общее', TRUE),
(77, 'Дополнительное образование', FALSE);

-- Вопрос 78
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (78, 'Какой элемент входит в структуру социального контроля?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(78, 'Политическая партия', FALSE),
(78, 'Валовой продукт', FALSE),
(78, 'Социальные санкции', TRUE),
(78, 'Экономический рост', FALSE);

-- Вопрос 79
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (79, 'Что является формой проявления культуры?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(79, 'Экономика', FALSE),
(79, 'Наука', TRUE),
(79, 'Рынок', FALSE),
(79, 'Земельный участок', FALSE);

-- Вопрос 80
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (80, 'Кто из субъектов РФ может издавать законы в пределах своей компетенции?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(80, 'Федеральное собрание РФ', FALSE),
(80, 'Законодательные собрания субъектов РФ', TRUE),
(80, 'Президент РФ', FALSE),
(80, 'Совет Федерации', FALSE);

-- Вопрос 81
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (81, 'Что является основой морали?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(81, 'Политическая пропаганда', FALSE),
(81, 'Представления о добре и зле', TRUE),
(81, 'Финансовые интересы', FALSE),
(81, 'Рекламные кампании', FALSE);

-- Вопрос 82
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (82, 'Что из перечисленного относится к источникам права?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(82, 'Личное мнение', FALSE),
(82, 'Нормативный правовой акт', TRUE),
(82, 'Письменное заявление', FALSE),
(82, 'Письмо другу', FALSE);

-- Вопрос 83
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (83, 'Какая отрасль права регулирует имущественные отношения?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(83, 'Административное право', FALSE),
(83, 'Гражданское право', TRUE),
(83, 'Уголовное право', FALSE),
(83, 'Трудовое право', FALSE);

-- Вопрос 84
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (84, 'Какой элемент включает политическая система общества?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(84, 'Семья', FALSE),
(84, 'Государство', TRUE),
(84, 'Трудовой коллектив', FALSE),
(84, 'Рынок', FALSE);

-- Вопрос 85
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (85, 'Что характеризует гражданское общество?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(85, 'Влияние на курс валют', FALSE),
(85, 'Самостоятельность от государства', TRUE),
(85, 'Военная структура', FALSE),
(85, 'Зависимость от чиновников', FALSE);

-- Вопрос 86
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (86, 'Что регулирует трудовое право?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(86, 'Правонарушения', FALSE),
(86, 'Отношения между работником и работодателем', TRUE),
(86, 'Семейные отношения', FALSE),
(86, 'Образование', FALSE);

-- Вопрос 87
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (87, 'Какой орган РФ имеет право издавать указы?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(87, 'Государственная Дума', FALSE),
(87, 'Президент РФ', TRUE),
(87, 'Совет Федерации', FALSE),
(87, 'Конституционный Суд', FALSE);

-- Вопрос 88
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (88, 'Что входит в состав доходов гражданина?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(88, 'Государственные расходы', FALSE),
(88, 'Заработная плата', TRUE),
(88, 'Бюджет страны', FALSE),
(88, 'Социальные нормы', FALSE);

-- Вопрос 89
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (89, 'Что может являться объектом собственности?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(89, 'Знание', FALSE),
(89, 'Недвижимость', TRUE),
(89, 'Погода', FALSE),
(89, 'Свобода слова', FALSE);

-- Вопрос 90
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (90, 'Что относится к обязанностям гражданина РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(90, 'Выбирать профессию', FALSE),
(90, 'Соблюдать Конституцию РФ', TRUE),
(90, 'Создавать бизнес', FALSE),
(90, 'Посещать культурные мероприятия', FALSE);

-- Вопрос 91
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (91, 'Что из перечисленного является субъектом гражданского права?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(91, 'Географическое положение', FALSE),
(91, 'Физическое лицо', TRUE),
(91, 'Климатическая зона', FALSE),
(91, 'Биологический вид', FALSE);

-- Вопрос 92
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (92, 'Что регулирует семейное право?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(92, 'Налогообложение', FALSE),
(92, 'Отношения между супругами и детьми', TRUE),
(92, 'Избирательный процесс', FALSE),
(92, 'Валютные операции', FALSE);

-- Вопрос 93
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (93, 'Что входит в систему права РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(93, 'Частные корпорации', FALSE),
(93, 'Отрасли права', TRUE),
(93, 'Финансовые резервы', FALSE),
(93, 'Природные ресурсы', FALSE);

-- Вопрос 94
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (94, 'Кто принимает федеральные законы в РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(94, 'Совет Федерации', FALSE),
(94, 'Государственная Дума', TRUE),
(94, 'Президент РФ', FALSE),
(94, 'Прокуратура', FALSE);

-- Вопрос 95
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (95, 'Что является примером моральной нормы?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(95, 'Заплатить налог', FALSE),
(95, 'Помогать пожилым людям', TRUE),
(95, 'Получить водительские права', FALSE),
(95, 'Обратиться в суд', FALSE);

-- Вопрос 96
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (96, 'Что характеризует демократическое государство?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(96, 'Военное управление', FALSE),
(96, 'Разделение властей', TRUE),
(96, 'Ограничение прав', FALSE),
(96, 'Запрет оппозиции', FALSE);

-- Вопрос 97
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (97, 'Что относится к функциям семьи?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(97, 'Проведение выборов', FALSE),
(97, 'Воспитание детей', TRUE),
(97, 'Формирование бюджета страны', FALSE),
(97, 'Регулирование цен', FALSE);

-- Вопрос 98
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (98, 'Кто обладает правом избирать в РФ с 18 лет?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(98, 'Иностранный студент', FALSE),
(98, 'Гражданин РФ', TRUE),
(98, 'Любой человек', FALSE),
(98, 'Турист', FALSE);

-- Вопрос 99
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (99, 'Что обеспечивает Конституция РФ?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(99, 'Финансирование предприятий', FALSE),
(99, 'Права и свободы граждан', TRUE),
(99, 'Рынок недвижимости', FALSE),
(99, 'Изменение климата', FALSE);

-- Вопрос 100
INSERT INTO "Question" (id, "questionText", "questionType", "createdAt", "updatedAt")
VALUES (100, 'Какой орган власти РФ обеспечивает исполнение законов?', 'MULTIPLE_CHOICE', NOW(), NOW());
INSERT INTO "Answer" ("questionId", text, "isCorrect") VALUES
(100, 'Конституционный суд', FALSE),
(100, 'Правительство РФ', TRUE),
(100, 'Счетная палата', FALSE),
(100, 'Федеральное собрание', FALSE);
