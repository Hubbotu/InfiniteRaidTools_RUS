IRTLocals = {};
local L = IRTLocals;
local addon = ...;

L.OPTIONS_TITLE = "Infinite Raid Tools";
L.OPTIONS_AUTHOR = "Автор: " .. GetAddOnMetadata(addon, "Автор");
L.OPTIONS_VERSION = "Версия: " .. GetAddOnMetadata(addon, "Версия");
L.OPTIONS_DIFFICULTY = "Сложность:"
L.OPTIONS_ENABLED = "Включено";

L.OPTIONS_POPUPSETTINGS_TEXT = "Параметры всплывающего текста";
L.OPTIONS_FONTSIZE_TEXT = "Размер шрифта:";
L.OPTIONS_FONTSLIDER_BUTTON_TEXT = "Переместить всплывающий текст";

L.OPTIONS_VERSIONCHECK_TEXT = "Проверка версии у членов рейда";
L.OPTIONS_VERSIONCHECK_BUTTON_TEXT = "Проверить рейдеров";

L.OPTIONS_INFOBOXSETTINGS_TEXT = "Настройки информационного окна";
L.OPTIONS_INFOBOX_BUTTON_TEXT = "Переместить текст информационного окна";

L.OPTIONS_MINIMAP_CLICK = "Нажмите, чтобы открыть настройки";
L.OPTIONS_MINIMAP_MODE_TEXT = "Показать кнопку на миникарте:";

L.OPTIONS_GENERAL_INFO = "Это всплывающий текст, |cFF00FFFFПрерывание|r, |cFF00FFFFОзарение|r, |cFF00FFFFЛовчий Альтимор|r, |cFF00FFFFАлчущий разрушитель|r, |cFF00FFFFЛеди Инерва Дарквейн|r, |cFF00FFFFСовет Крови|r, |cFF00FFFFГрязешмяк|r и |cFF00FFFFГенералы Каменного легиона|r используют. Переместите всплывающее окно в любое место на экране и измените размер в соответствии с вашими предпочтениями.";
L.OPTIONS_GENERALSETTINGS_TEXT = "Общие настройки:";
L.OPTIONS_GENERAL_TITLE = "Общие настройки";
L.OPTIONS_RESETPOSITIONS_BUTTON = "Перезагрузить";
L.OPTIONS_RESETPOSITIONS_TEXT = "Сброс на позиции IRT по умолчанию";

L.OPTIONS_INTERRUPT_TITLE = "Модуль прерывания";
L.OPTIONS_INTERRUPT_INFO = "|cFF00FFFFМодуль прерывания:|r Позволяет создавать список заклинаний для прерывания, с указанием босса и игроков в очереди. Как только этот игрок прервет заклинание, вы увидите всплывающее окно, информирующее вас о том, что вы следующий. Таблица с именами игроков которые прерывают заклинания, а так же их очередностью отображается не только вам, а всему рейду. Таким образом если у каждого в порядке прерывания есть аддон он становится порядком прерывания в реальном времени привязанным к имени. \n|cFF00FFFFИспользование:|r Укажите имя игрока, который находится перед вами, для прерывания.\n\n|cFF00FFFFНастройки:|r Всплывающее окно можно индивидуально перемещать, изменять размер и сбрасывать в положение по умолчанию в общих параметрах.";
L.OPTIONS_INTERRUPT_ORDER = "Игрок для отслеживания:";
L.OPTIONS_INTERRUPT_PREVIEW = "|cFFFFFFFFПредварительный просмотр всплывающего окна, которое появляется на вашем экране, когда наступает ваша очередь прерывать, и текста, привязанного к табличке с именем монстра, которую вы должны прервать.|r";

L.OPTIONS_INNERVATE_TITLE = "Модуль Озарение";
L.OPTIONS_INNERVATE_INFO = "Сообщает вашему друиду, что вам нужно Озарение, с помощью всплывающего окна на экране вашего друида!\n|cFF00FFFFИспользование:|r Макрос: /Озарение Имя игрока.\n\n|cFF00FFFFНастройки:|r Всплывающее окно можно индивидуально перемещать, изменять размер и сбрасывать в положение по умолчанию в общих параметрах.";
L.OPTIONS_INNERVATE_PREVIEW = "|cFFFFFFFFПредварительный просмотр всплывающего окна, которое появляется на экране друидов|r";

L.OPTIONS_CALENDARNOTIFICATION_TITLE = "Модуль уведомлений календаря";
L.OPTIONS_CALENDARNOTIFICATION_INFO = "При входе в систему раздается голосовое сообщение: «У вас X количество неотвеченных приглашений в календаре» (учитываются только рейдовые события). Если у вас нет неотвеченных приглашений, вы не получите уведомление.";

L.OPTIONS_BONUSROLL_TITLE = "Модуль бонусного броска";
L.OPTIONS_BONUSROLL_INFO = "|cFF00FFFFУведомление:|r Всякий раз, когда вы входите в последний рейд, появляется окно, позволяющее вам поставить галочки в полях боссов, предметы с которых вам нужны, и на какой сложности. После убийства босса, отмеченного вами, появится всплывающее окно с напоминанием о необходимости использовать бонусный бросок.\n|cFF00FFFFМББ:|r Он также добавляет трекер МББ в рамку бонусного броска Blizzard, после 6 неудачных бросков вам гарантирован предмет.\nИзмените размер и положение всплывающего текста в общих настройках!";
L.OPTIONS_BONUSROLL_PREVIEW = "|cFFFFFFFFПредварительный просмотр всплывающего окна и трекера МББ:|r";

L.OPTIONS_READYCHECK_TITLE = "Модуль проверки готовности";
L.OPTIONS_READYCHECK_INFO = "|cFF00FFFFРейдеры:|r Если вы участвуете в рейде, и вы либо AFK, либо отказываетесь от проверки готовности, на вашем экране появится кнопка, которая сообщит рейду, что вы готовы, как только вы ее нажмете.\n|cFF00FFFFЛидер рейда (отправитель):|r Если вы включили это и отправили проверку готовности, появится список игроков, которые AFK/не готовы после завершения проверки готовности Blizzard, который обновляется в реальном времени, когда игроки нажимают кнопку готовности IRT.";
L.OPTIONS_READYCHECK_PREVIEW = "|cFF00FFFFРейдеры:|r\n|cFFFFFFFFПредварительный просмотр кнопки, которая появляется, если вы нажимаете кнопку Не готов или АФК для проверки готовности.|r\n\n|cFF00FFFFЛидер рейда (отправитель):|r\n|cFFFFFFFFПредварительный просмотр списка, который отображается для игроков, которые нажали кнопку Не готов или были AFK\nСписок обновляется в реальном времени.|r";
L.OPTIONS_READYCHECK_FLASHING = "Кнопка проверки готовности IRT \nПредупреждение для тех, кто чувствителен к пульсирующему свету.";

L.OPTIONS_CONSUMABLECHECK_TITLE = "Модуль Расходников";
L.OPTIONS_CONSUMABLECHECK_INFO = "|cFF00FFFFПроверка расходников:|r Показывает, есть ли у игрока фласки, оружейное масло/точильный камень, еда и руна во время проверки готовности. Кроме того, классы, которые могут использовать бафф, могут видеть, не хватает ли игрокам баффа.\nВерхнее изображение взято из |cff3ec6eaмаг|r , другие классы увидят свой бафф или его отсутствие, если у них его нет.\nНижнее изображение взято у |cfff38bb9паладина|r , который не может баффать, и поэтому баффы не показаны.\n\n|cFF00FFFFТочило/масла на оружии:|r Когда начнется проверка готовности, появятся две кнопки, позволяющие нанести масла и точило на ваше оружие одним щелчком мыши.\n|cFF00FFFFПоявляется, когда:|r инициируется проверка готовности или используется /irtc.\n|cFF00FFFFИсчезает, когда:|r после завершения проверки, ввода команды /irtc или нажатия средней кнопки мыши.";
L.OPTIONS_CONSUMABLECHECK_SENDERREADYCHECK_TEXT = "|cFF00FFFFЛидер рейда (отправитель):|r Покажите свою готовность, чтобы увидеть собственный список расходников"
L.OPTIONS_CONSUMABLECHECK_PREVIEW = "|cFFFFFFFFПредварительный просмотр проверки расходников от |cff3ec6eaМаг|r PoV (можно баффать) и |cfff38bb9Паладин|r PoV (не могу баффать). Также предварительный просмотр кнопок точило/масла/камней, при наведении курсора мыши на фактические кнопки появляется всплывающая подсказка с дополнительной информацией.|r";
L.OPTIONS_CONSUMABLECHECK_PREVIEW_BARTEXT_BUFF = "|T2057568:16|t|cFF00FF00132мин|r |T463543:16|t|cFF00FF0057мин|r |T3528447:16|t|cFF00FF002час|r |T136000:16|t|TInterface\\addons\\InfiniteRaidTools\\Res\\check:16|t |T134078:16|t|TInterface\\addons\\InfiniteRaidTools\\Res\\cross:16|t |T135932:16|t|cFF00FF0020/20|r";
L.OPTIONS_CONSUMABLECHECK_PREVIEW_BARTEXT_NOBUFF = "|T2057568:16|t|cFF00FF00132мин|r |T463543:16|t|cFF00FF0057мин|r |T3528447:16|t|cFF00FF002час|r |T136000:16|t|TInterface\\addons\\InfiniteRaidTools\\Res\\check:16|t |T134078:16|t|TInterface\\addons\\InfiniteRaidTools\\Res\\cross:16|t";


L.OPTIONS_CONSUMABLECHECK_AUTOBUTTONS_TEXT = "Показать кнопки точило/масла";

L.OPTIONS_HUNGERINGDESTROYER_TITLE = "Модуль Алчущий разрушитель";
L.OPTIONS_HUNGERINGDESTROYER_INFO = "|cFF00FFFFGluttonous Miasma|r: Evenly distributes players to Star, Circle, Diamond and Triangle world marks, initially based of each players group and keeps players evenly distributed with 5 players per mark with 1 player affected by |cFF00FFFFGluttonous Miasma|r in each group. 2 players per mark will get assigned to soak 12 seconds of |cFF00FFFFGluttonous Miasma|r each from the player targeted with |cFF00FFFFGluttonous Miasma|r in their group and will yell their marker and informs them in which order they will soak. The other 2 players will soak the next person that gets affected by |cFF00FFFFGluttonous Miasma|r and gets assigned to their current group, except in the case that several players in the group gets affected by it, in which case groups will continue to dynamically update to always ensure an even distribution of players and guaranteeing that there is always 5 players per mark and 2 players that are ready to soak |cFF00FFFFGluttonous Miasma|r per mark. Everyone gets a popup instructing them where to go and whether to soak or not and when to soak. The player affected by |cFF00FFFFGluttonous Miasma|r and the players currently soaking will also yell their mark.\n\n|cFF00FFFFConfig:|r The popup can be individually moved, resized and reset to default position in the general options.";
L.OPTIONS_HUNGERINGDESTROYER_PREVIEW = "|cFFFFFFFFPreview of the popup text and yell informing players of which mark to soak and go to for an even spread of Miasma.";
L.OPTIONS_HUNGERINGDESTROYER_PERCENT = "Кричать проценты при дебаффе";

L.OPTIONS_LADYINERVADARKVEIN_TITLE = "Модуль Леди Инерва Дарквейн";
L.OPTIONS_LADYINERVADARKVEIN_INFO = "|cFFFF0000Важно!|r Make sure you are not using any other addons for marking Sins and Suffering.\n\n|cFF00FFFFSins and Suffering:|r Marks players with Sins and Suffering pointing them to star, circle and diamond. Since the orbs spawns before the debuffs goes out the raid leader can use world marks to tell people where to go before the debuffs even goes out. The marks are prioritized based of raid index, group 1 player 1 is always going to get star for example if they get debuffed, group 1 player 2 will always get star unless player 1 got it etc etc. This makes it so that you can put melee in the lower raid indexes and always put star marker to the orb closest to the boss to reduce the distances that has to be walked.";

L.OPTIONS_COUNCILOFBLOOD_TITLE = "Модуль Совет Крови";
L.OPTIONS_COUNCILOFBLOOD_INFO = "|cFF00FFFFDancing Fever:|r You get an infobox of all players affected by |cFF00FFFFDancing Fever|r and their amount of stacks and creates an order for players to jump with the healers put last.\n\n|cFF00FFFFConfig:|r The infobox can be moved and reset to default position in the general options.";
L.OPTIONS_COUNCILOFBLOOD_PREVIEW = "|cFFFFFFFFPreview of the infobox of players affected by|r |cFF00FFFFDancing Fever|r|cFFFFFFFF, showing the order which players should jump, the players affected by it and how many stacks they have.|r";

L.OPTIONS_HUNTSMANALTIMOR_TITLE = "Модуль Ловчий Альтимор";
L.OPTIONS_HUNTSMANALTIMOR_INFO = "|cFF00FFFFSummary:|r Evenly distributes players to soak Sinseeker. In this example amount of soakers is set to 4, 3 soakers + 1 debuffed player per line.\n|cFF00FFFFDetailed:|r The debuffed player should always be the furthest player. Always using the first 4 players in group 2, 3 and 4 to soak and each player has a standard position.\n|cFF00FFFFAbbrevations:|r G=Group P=Player index in group B=Backup\n\n        ------G2P4B--G2P3--G2P2--G2P1--Star Debuff\nBOSS------G3P4B--G3P3--G3P2--G3P1--Circle Debuff\n        ------G4P4B--G4P3--G4P2--G4P1--Diamond Debuff\n\nBecause of the staggered application of debuffs might cause players to get reassigned in the case that one of the active soakers get debuffed. In the case of reassignment players will be prioritized closest to the boss to reduce distance.\n\n|cFF00FFFFConfig:|r The popup can be individually moved, resized and reset to default positions in the general options.";
L.OPTIONS_HUNTSMANALTIMOR_PLAYERSPERLINE = "Amount of players per sinseeker incl. player targeted";
L.OPTIONS_HUNTSMANALTIMOR_PREVIEW = "|cFFFFFFFFPreview of the popup text and yell informing players of which mark to soak and their position or counting down if they have sinseeker themselves.|r";

L.OPTIONS_SLUDGEFIST_TITLE = "Модуль Грязешмяк";
L.OPTIONS_SLUDGEFIST_INFO = "|cFF00FFFFFractured Boulder:|r Boulders spawn around the pillar that is destroyed by Hateful Gaze which allows for predetermined positions back-left, back-right, front-left, and front-right. The addon assigns chain pairs to soak the boulders prioritizing tanks then healers then ranged. 1 chain pair gets assigned per mark and should soak the large boulder together to split the damage and afterwards soak one small boulder each. Players that gets assigned to soak will get a popup and start yelling their mark and what to soak when Sludgefist starts casting Hateful Gaze. The infobox used for |cFF00FFFFChain Link Range|r also shows information about the mark and what to soak as soon as chains goes out, giving players a lot of time to prepare for Hateful Gaze.\n\n|cFF00FFFFChain Link Range:|r All players get an infobox that informs you if you are more than 8 yards apart or not from the player you are chained to just as a warning.\n\n|cFF00FFFFConfig:|r The infobox and the popup can be individually moved, resized and reset to default positions in the general options.";
L.OPTIONS_SLUDGEFIST_PREVIEW = "|cFFFFFFFFPreview of popup and yell which happens during gaze and the infobox which shows information ahead of time to give you time to prepare and shows a range check.|r";

L.OPTIONS_STONELEGIONGENERALS_TITLE = "Модуль Генералы Каменного легиона";
L.OPTIONS_STONELEGIONGENERALS_INFO = "|cFF00FFFFHeart Rend:|r Assigns and orders healers to dispel players with Heart Rend debuffs and ensures they do not get assigned to themselves to prevent them getting an extended duration. Once a healer has been dispelled, a countdown is shown to indicate when the next healer in the order can dispel to prevent overlapping debuffs. The healer also gets a popup when its their turn to dispel.\n\n|cFF00FFFFConfig:|r The infobox and the popup can be individually moved, resized and reset to default positions in the general options.";
L.OPTIONS_STONELEGIONGENERALS_PREVIEW = "|cFFFFFFFFPreview of the infobox that appears during Heart Rend with healers assigned to a debuffed player each and the countdown that begins after someone been dispelled as well as the popup that shows for the healer when its their time to dispel.";

L.BONUSROLL_INFO = "Выбирайте боссов для монет";

L.INTERRUPT_NEXT = "|cFF00FF00Прервать следующий!";
L.INTERRUPT_NEXT2 = "|cFFFFFFFF Следующий!";
L.INTERRUPT_NEXT_POPUP = "СЛЕДУЮЩЕЕ ПРЕРЫВАНИЕ ВАШЕ!";
L.INTERRUPT_ERROR1 = "|cFFFF0000IRT: Ошибка в модуле прерывания|r ";
L.INTERRUPT_ERROR2 = " |cFFFF0000не в сети или не в рейде.|r";
L.INTERRUPT_FILE = "Прервать";

L.POPUP_FILE = "Всплывающий";

L.INNERVATE_FILE = "Innervate";

L.BOSS_FILE = "BossMod";


L.WARNING_OUTOFDATEMESSAGE = "There is a newer version of Infinite Raid Tools available on overwolf/curseforge!";
L.WARNING_RESETPOSITIONS_DIALOG = "Are you sure you want to reset IRT: minimap, popup, infobox, kit/oil button positions?";
L.WARNING_DELETE_OLD_FOLDER = "|cFFFFFFFFHello dear |r|cFF00FFFFEndless Raid Tools|r|cFFFFFFFF user!\n|cFF00FFFFEndless Raid Tools|r |cFFFFFFFFhas changed name to |r|cFF00FFFFInfinite Raid Tools|r, |cFF00FFFF/enrt|r |cFFFFFFFFwill still work for now but will eventually be removed, the new command is: |cFF00FFFF/irt|r.\n|cFFFF0000Please delete the|r |cFF00FFFFEndless Raid Tools|r |cFFFF0000folder to avoid possible bugs and interference.|r \n|cFFFFFFFFThe folder can be found from your WoW installation then _retail_/Interface/AddOns/EndlessRaidTools\n Thank you for using|r |cFF00FFFFInfinite Raid Tools|r|cFFFFFFFF! Coming in Shadowlands: Consumable Check update and 6 new boss modules for Castle Nathria!|r\n |cFFFF0000Auto-disabling old |r|cFF00FFFFEndless Raid Tools|r|cFFFF0000 for now, new|r |cFF00FFFFInfinite Raid Tools|r |cFFFF0000will still be loaded. Please hit reload ui.|r";