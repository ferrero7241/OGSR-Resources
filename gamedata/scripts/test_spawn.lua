--чит0вый спавн test_spawn.lua из главного меню нажатием 'S'
local what_to_create = {

--- = 1,  silencer scope launcher \n

--hud_adjust_value


--["villager_bone_1"] = 1,			--4 кости Музыканта (Наган)
--["villager_bone_2"] = 1,
--["villager_bone_3"] = 1,
--["villager_bone_4"] = 1,



--
["wpn_binoc"] = 1,			--
--["wpn_binoc_m1"] = 1,		-- +ПНВ

--
["device_torch"] = 1,		-- -
	
--
["device_pnv_1"] = 1,			-- +effector_nightvision - зелёный pvs
---3D-линзы ночники пересвечивают
--["device_pnv_2"] = 1,			-- _effector_nightvision_grey - рыжий
--["device_termovizor"] = 1,		--тепловизор
---3D-линзы ночники пересвечивают
--?3D-линзы с нашлемным тепловизором не увеличивают


--["af_maska_1"] = 1,		--респиратор -ОГРОМНАЯ мироваЯ
--["af_maska_2"] = 1,		--противогаз -ОГРОМНАЯ мироваЯ


--["detector_simple"] = 1,		--ОГРОМНАЯ мироваЯ
--["interactive_detector_simple"] = 1,		--
--["interactive_detector_advanced"] = 1,	--
--["interactive_detector_elite"] = 1,		--

--["detector_mine_finder"] = 1,
--["bioradar"] = 1,
--["autodoctor"] = 1,


--ЭкзоСкелеты (не встают в слот, а одевается на костюмы)
	--	["exo1"] = 1,		--экза (лёгкая)
	--	
	["exo2"] = 1,		--экза мастера (Витязь)
--криваЯ ["exo3"] = 1,		--?не используется?
--	кривой без иконки ["exo_outfit"] = 1,

--;рукава КЗМК "Берёзка" (жёлтый лист) act_arm_sleve
--;Новички и Сталкеры
--["novice_outfit"] = 1,	--		;									act_arm_perchatka_cs (з. брезент)
--
["outfit_novice_m1"] = 1,	--ЂЌЋЊЂ‹њЌЂџ Љ“ђ’ЉЂ							act_arm_perchatka_cs (з. брезент, перекрасить)
--["stalker_outfit"] = 1,	--		;									act_arm_perchatka_cs (з. брезент, перекрасить)
--["scientific_outfit"] = 1, --ЌЂ“—Ќ›‰ ЉЋ‘’ћЊ Ќ…‰’ђ ‘’Ђ‹Љ…ђЂ (Серафим)	act_arm_perchatka_cs_sci (з. брезент, перекрасить)
--+отключил effector_nightvision_good
--
["outfit_stalker_m1"] = 1, --ЉЋ‘’ћЊ Џђ€‡ђЂЉЂ							act_arm_perchatka_cs (з. брезент, перекрасить)
--
["outfit_stalker_m2"] = 1, --ЉЋ‘’ћЊ ’“ђ€‘’Ђ							act_arm_perchatka_cs (з. брезент, перекрасить)
--;Бандиты
--
["bandit_plash"] = 1,		--Џ‹Ђ™ ЃЂЌ„€’Ђ ‚…’…ђЂЌЂ (Ѓђ€ѓЂ„€ђЂ)			act_arm_perchatka_cs_bandit (ч. кожа, перекрасить)
--["bandit_plash_m1"] = 1,	--Џ‹Ђ™ ЃЂЌ„€’Ђ ЊЂ‘’…ђЂ						act_arm_perchatka_cs_bandit (ч. кожа)
--["outfit_bandit_m1"] = 1,	--“Џ‹Ћ’Ќ…ЌЌ›‰ ЉЋ‘’ћЊ (КольчужнаЯ куртка)	act_arm_perchatka_cs_bandit (ч. кожа)
--;Долг
--["dolg_outfit"] = 1,		--		;									act_arm_perchatka_cs_dolg (ч. кожа)
--["outfit_dolg_m1"] = 1,	--ЉЋЊЃ€Ќ…‡ЋЌ Ћ•Ћ’Ќ€ЉЂ „Ћ‹ѓЂ					act_arm_perchatka_cs_dolg_sci (ч. кожа, перекрасить _svoboda_sci)
--;Свобода
--["svoboda_heavy_outfit"] = 1,	--’џ†…‹›‰ ЉЋ‘’ћЊ ‘‚ЋЃЋ„›	+иконка		act_arm_perchatka_cs_svoboda (флеткам, перекрасить _sci)
--;Наемники
--["killer_outfit"] = 1,	--		;									act_arm_perchatka_cs_killer (гор. кам 1, перекрасить)
--["outfit_killer_m1"] = 1,	--ЉЋ‘’ћЊ ‘ЉЂ“’Ђ								act_arm_perchatka_cs_killer_sci (гор. кам 1, перекрасить)
--;Монолит
--["monolit_outfit"] = 1,	--		;									act_arm_perchatka_cs_monolit (зима, перекрасить)
--["monolit_exoskeleton"] = 1,	-- ;ќЉ‡Ћ‘Љ…‹…’ ЊЋЌЋ‹€’Ћ‚–Ђ				act_arm_perchatka_cs_monolit_sci (зима, перекрасить)
--["monolit_outfit_m1"] = 1, --	;“Ќ€ЉЂ‹њЌ›‰ ЉЋ‘’ћЊ ЊЋЌЋ‹€’Ћ‚–Ђ			act_arm_perchatka_cs_monolit_sci (зима, перекрасить)
--;Учёные
--["ecolog_outfit"] = 1,	--ЋЃ›—Ќ›‰ ЉЋ‘’ћЊ “—…ЌЌЋѓЋ +"Эколог"			act_arm_perchatka_cs_ecolog (зел.)
--+effector_nightvision_elite "ЃелаЯ ночь"
--["protection_outfit"] = 1, --“Љђ…Џ‹…ЌЌ›‰ ЉЋ‘’ћЊ “—…ЌЌЋѓЋ "Циста"		act_arm_perchatka_cs_ecolog_o (ор.)
--+effector_nightvision_good -синюшный ультрафиолет
--;Военные
--["soldier_outfit"] = 1,	--ЉЋ‘’ћЊ ‚Ћ…ЌЌЋѓЋ ђџ„Ћ‚ЋѓЋ					act_arm_perchatka_cs_soldier (, перекрасить)
--["specops_outfit"] = 1,	--ЉЋ‘’ћЊ ‚Ћ…ЌЌЋѓЋ ‘Џ…–ЌЂ‡Ђ (Берилл)			act_arm_perchatka_cs_soldier_sci (, перекрасить)
--
["military_outfit	"] = 1,	--ЉЋ‘’ћЊ ‚Ћ…ЌЌЋѓЋ ‘’Ђ‹Љ…ђЂ (‘ЉЂ’-9Ђ)		act_arm_perchatka_cs_soldier_sci (, перекрасить)
--["outfit_specnaz_m1"] = 1, --ЊЋ„€”.ЉЋ‘’.‚Ћ…Ќ.‘Џ…–ЌЂ‡Ђ (Лечебный Берилл)act_arm_perchatka_cs_soldier_sci (, перекрасить)


--["treasure_item"] = 2,	--dsh


--["repair_kit"] = 1,	--



--+++++ холоднЯк
--["wpn_knife"] = 1,				--штык-нож АКМ (прямой хват)
--["wpn_knife_arena"] = 1,			--штык-нож АКМ (обратный хват)
--+["wpn_knife_m1"] = 1,			--"нож Сереги Маньяка" - в ОГСЕ не был роздан
--+++["wpn_knife_6x2"] = 1,			--штык АК - ОГСЕ-классик
--+["wpn_knife_m9"] = 1,			--
--["wpn_montirovka"] = 1,		--монтировка Фримена
--["wpn_montirovka_weak"] = 1,	--труба (квест)

--+++++ куцый ствол
--+["wpn_tt"] = 1,					--?менять? (вроде - всё есть.. но что-то - не так!)
--["wpn_m712_buttstock"] = 1,	--сделать квестовым
--["wpn_desert_eagle"] = 1,		--Аномальный Наган под 7,62х25 Музыканта

--+["wpn_pm"] = 1,
--+["wpn_pb"] = 1,
--+["wpn_fort_m1"] = 1,			--квестовый Форт-17 (13) Кузнецова
--["wpn_apb_silencer_grip_buttstock"] = 1,
--["wpn_oz33"] = 1,				--Пернач (27)

--["wpn_fort"] = 1,					--ПЯ
--["wpn_gsh18"] = 1,
--["wpn_hpsa"] = 1,				--Трофейный Браунинг Оружейника (с резьбой под глушак)
--+труп Оружейника БЕЗ ствола!
--_["wpn_luger"] = 1,
--+["wpn_beretta"] = 1,
--["wpn_glock"] = 1,			--["wpn_glock_mag33_aimpoint"] = 1,
--["wpn_usp9"] = 1,

--+["wpn_usp"] = 1,					--+глушак wpn_addon_sil_1143_p
--++["wpn_colt1911"] = 1,	--на модели нет резьбы под wpn_addon_sil_1143_p	проверить вспышку
--++["wpn_colt_m1"] = 1,		--"Хитмэн"

--+["wpn_eagle_m1"] = 1,		-- уник-Дигл Фраера (дерево, под 9х39)




---- гранаты
	--	["grenade_f1"] = 3,
	--	["grenade_rgd5"] = 4,
	--	["grenade_light"] = 2,
	--	["grenade_gd-05"] = 2,
	--	["grenade_gas"] = 2,

---- боеприпасы
	--
	["ammo_7.62x39_fmj"] = 4,
	--["ammo_7.62x39_ap"] = 2,
	--["ammo_5.45x39_fmj"] = 4,
	--["ammo_5.45x39_ap"] = 2,
	--
	["ammo_vog-25"] = 4,		--ВОГ-25
	--
	["ammo_vog-25p"] = 2,		--ВОГ-25ПМ
	--
	["ammo_m209"] = 12,			-- m433
	--
	["ammo_5.56x45_ss190"] = 3,
	--["ammo_5.56x45_ap"] = 1,
	--["ammo_7.62x54_7h14"] = 2,		--сн.бр 7H14
	--["ammo_7.62x54_ap"] = 6,			--бр 7H26
	--
	["ammo_7.62x54_7h1"] = 4,			--сн 7H1
	--	["ammo_9x18_fmj"] = 2,
	--["ammo_9x18_pmm"] = 4,
	--["ammo_9x19_fmj"] = 2,
	--["ammo_9x19_pbp"] = 3,
	--["ammo_11.43x23_fmj"] = 3,
	--["ammo_11.43x23_hydro"] = 1,
	--	["ammo_7.62x25_p"] = 2,
	--	["ammo_7.62x25_ps"] = 1,
	--
	["ammo_12x70_kart"] = 4,
	--["ammo_12x76_zhekan"] = 2,
	--["ammo_9x39_pab9"] = 4,
	--["ammo_9x39_ap"] = 2,

---- глушители
	--	["wpn_addon_sil_762_pbs1"] = 1,
	--	["wpn_addon_sil_545_pbs4"] = 1,
	--	["wpn_addon_sil_545_tgp-a"] = 1,
	--	["wpn_addon_sil_545_atg"] = 1,
	--	["wpn_addon_sil_762_tgp-v"] = 1,	
	--	["wpn_addon_sil_762_svu"] = 1,			--насадок СВУ
	--["wpn_addon_apb_silencer"] = 1,			-- фейк - насадок АПБ
	--	["wpn_addon_sil_m1895"] = 1,			-- БраМит Нагана
	--  ["wpn_addon_sil_pb"] = 1,				-- насадок ПБ
	--	["wpn_addon_sil_1143_p"] = 2,			-- .45
---["wpn_addon_silencer"] = 4,					-- "кустарный" (универсальный)
	--
	["wpn_addon_sil_556_ar"] = 3,				-- GEMTECH G5 5,56mm NATO +адаптер MultiMount
	--
	["wpn_9mm_nato_silencer"] = 4,			-- GEMTECH MultiMount 9mm +компенсатор-адаптер 
	--["wpn_addon_sil_939"] = 1,			-- 9А-91/‚ВСК-94 (+затычка для СР-3М)
	
---- прицелы
	--
	["wpn_addon_scope"] = 1,				--ПСО-1, +сетка с подсветкой
	--
	["wpn_addon_scope_pso1m21"] = 1,		--ПСО-1М2-1 +сетка с подсветкой
	--
	["wpn_addon_scope_1p59"] = 1,			--переменной кратности (2D, с блендой)
	--
	["wpn_addon_acog"] = 3,				-- +3D
	--
	["wpn_addon_scope_susat"] = 1,			-- (2D, с блендой)
	--
	["wpn_zf4"] = 1,						--ПО 4х34 "Грозы" (2D, с блендой)
	--
	["wpn_addon_scope_1p29"] = 3,
	--
	["wpn_addon_scope_kobra"] = 1,
	--
	["wpn_addon_scope_1pn51"] = 1,
	--
	["wpn_addon_scope_eotech"] = 1,
--
["wpn_addon_scope_long"] = 1,	-- тест ДЛИННОБАЗНОГО прицела U.S.Optics SR-6 х1.5-6 - 2D (без бленды, сделать 3D-ЗУМ)
--
["wpn_addon_scope_aimpoint"] = 1,		-- тест на хер не нужного ПИСТОЛЕТНОГО коллиматора Aimpoint Micro H-1 (Глок)
--
["wpn_addon_scope_pu"] = 1,			--ПУ (без бленды, 3D) НЕСЪЁМНЫЙ (снайперка Мосина, уник СКС)
--
["wpn_addon_scope_pgo7"] = 1,			-- хорошо бы добавить на Калаши (тестить овер 64 кости)
--+_MK 
["wpn_addon_scope_irnv"] = 1,		-- тест ИК (MK)
--+_MK 
["wpn_addon_magnifier"] = 1,		-- тест увеличителя (фейк-ручка MK)
--+_MK 
["wpn_addon_nightvision"] = 1,		-- тест ПНВ (фейк-ручка MK)
-----------------------------------["wpn_addon_irnv"] = 1,			-- -тест (фейк-ручка)
["wpn_addon_scope_colt3"] = 2,			-- сделать 3D-зум -иконка
["wpn_addon_scope_fn2000"] = 2,			-- 


---- планки длЯ установки прицелов
	--["wpn_addon_side_rail"] = 1,			-- ластохвост, игроком не ставитсЯ
	--
	["wpn_addon_mtk83"] = 3,
	--["wpn_addon_prail"] = 1,				-- пистолетная рельса (Глок)
---["wpn_addon_g36rail"] = 1,			-- тест -мировая ДЫРЯВАЯ
----["wpn_addon_l85carryhandle"] = 1,			-- +тест

---- подствольники
--
["wpn_addon_grenade_launcher"] = 1,
--
["wpn_addon_grenade_launcher_m203"] = 1,
--
["wpn_addon_grenade_launcher_ag36"] = 2,		-- -мировая от m203
--
["wpn_addon_grenade_launcher_fn2000"] = 1,		-- 

---- магазины
	--["wpn_addon_mag_akm30"] = 1,
	--["wpn_addon_mag_rpk40"] = 1,
	--["wpn_addon_mag_rpk75"] = 1,
	--["wpn_addon_mag_ak7430"] = 1,
	--["wpn_addon_mag_rpk7445"] = 1,
	--["wpn_addon_mag_ak10560"] = 1,
	--["wpn_addon_mag_ak10230"] = 2,
	--["wpn_addon_mag_cmag100"] = 1,
	--["wpn_addon_mag_svd10"] = 1,
	--["wpn_addon_mag_svd20"] = 1,
	--["wpn_addon_mag_usp8"] = 1,
	--["wpn_addon_mag_usp15"] = 1,
	--["wpn_addon_mag_vepr4"] = 1,
	--["wpn_addon_mag_vepr8"] = 1,
	--["wpn_addon_mag_glock19"] = 1,
	--["wpn_addon_mag_glock33"] = 1,
	--["wpn_addon_mag_mk6"] = 1,			-- УПМ2 +ствол МастеКей
	--["wpn_addon_mag_murka"] = 1,			-- УПМ4
	--["wpn_addon_mag_vss10"] = 1,
	--["wpn_addon_mag_as20"] = 1,
	--["wpn_addon_mag_vsk20"] = 1,
	--["wpn_addon_mag_groza20"] = 1,			-- !незаюзан!
	--["wpn_addon_mag_sr30"] = 1,				-- -кривая перезарядка
	
----тактические рукоЯтки
	--["wpn_addon_grip"] = 1,				-- ставится на АПБ с насадком
	--["wpn_addon_afg"] = 1,				-- ставится на рельсу Вепрь-12, АК102-2 Custom

---- другие аддоны
	--["wpn_addon_ak100_custom"] = 1,		-- фейк - кит АК(приклад +цевьё АК102, ‚Вепрь-12)
	--
	["wpn_addon_gp_galoscha"] = 1,		-- фейк - калоша ГП-25
	--
	["wpn_addon_svd_scheek"] = 1,			-- фейк - щека СВД
	--["wpn_addon_apb_buttstock"] = 1,		-- фейк - приклад АПБ
	--["wpn_addon_mauser_buttstock"] = 1,	-- фейк - кобура-приклад Маузера
	--["wpn_addon_zenitka"] = 1,			-- фейк - ЛЦУ (-тест на ПП-2000)




	
	
	
--******************************************************************************************
--+Калач --
["wpn_akm_akm30_side_rail_1pn51"] = 1,				--образец положения
--+Весло --["wpn_ak74n_ak60_side_rail_kobra"] = 1,		--
--+Плётка ++++ +["wpn_swd_svd10_pso1"] = 1,		----- нет ["wpn_svd"] = 1,	----- нет ["wpn_svd_m1"] = 1,
--+++Огрызок +
["wpn_aks74ub_aks74ub30_ironsight"] = 1,			--образец на тест апгрейда
--+["wpn_aks74ub_ak74n30_side_rail_kobra"] = 1,
--+Укорот --["wpn_ak102_nomag_custom_1p29"] = 1,	-- с кастомным прикладом и рельсой (позволЯет ставить ручку)
--+++++ +["wpn_ak102_nomag_stok_1p29"] = 1,			-- сток со штатным прикладом (позволЯет ставить подствольник)
-----пока не одет магазин кости прикладов скрыты
--******************************************************************************************

--+АК Стрелка +["wpn_aek_rpk40_kobra"] = 1,

--["wpn_rpk74p_rpk45_side_rail_1p29"] = 1,			--


--["wpn_masterkey"] = 1,		-- МастерКей 		--
["wpn_wincheaster1300"] = 1,		-- МастерКей +УПМ +ствол
--["wpn_winchester_m1"] = 1,		-- обрез 1887 Терминатора

--["wpn_vepr12stok_vepr8_ironsight"] = 1,	--Сток курц
--["wpn_vepr12custom_vepr4_ironsight"] = 1,	--Молотилка Custom лонг


--["wpn_vss_m10_side_rail_pso"] = 1,	--ВСС
--+["wpn_vintorez"] = 1,			-- :wpn_vss_m10_side_rail_pso
---после ЛЮБОЙ смены аддонов ПЕРЕСТАЁТ БЫТЬ wpn_vintorez
-- точность завышена, компенсируем баллистикой
---+["wpn_vintorez_m1"] = 1,		--вырезаная "Ласка" БарМэна (с обмоткой приклада, =wpn_vss_m20_side_rail_pso)

--+["wpn_a91_m20_side_rail_kobra"] = 1,		--"Штурм"
---["wpn_val"] = 1,			-- СР-3М "Вихрь" (:wpn_sr3m_m30_side_rail_pso)
--+["wpn_val_arena"] = 1,		--ВСК-94
-- у ВСК-94/9А-91 криво отображаютсЯ кости приклад - ВМЕСТЕ не юзать!!




--
["wpn_mosin_sni"] = 1,			-- несъёмный ПУ (без бленды - 3D)
--
["wpn_mosin_normal"] = 1,
--
["wpn_mosin_short"] = 1,			--

--+["wpn_awm"] = 1,					-- прицел - несъёмный (сделать анимку прицеливания для 3D-ЗУМ)
-- без бленды Schmidt & Bender 5-25x56 Police Marksman II (2FP) переменный

--+["wpn_mac10"] = 1,			--+Ingram MAC-10 30 .45 "Леон"


--_["wpn_ppsh41"] = 1, --+_Раста/+Васян_худ 1:-_бег, --убирание, (2: _+доставание и ++увод переделаны)
--_["wpn_mp40"] = 1,	--+-Раста ---бег (складывает приклад - НЕ ускорять)




--["wpn_mp5"] = 1,		-- ОГСЕ -руки, но разница глаз не сильно режет. Анимки и модель нормальные.
--у Расты - плохой хап левой

---["wpn_mp5_m1"] = 1,		-- +КЕДР "модифицированный под советский патрон 9x18".
---["wpn_mp5_m2"] = 1,		-- +SD "со встроенным глушителем" 
-- -недоделан -аддоны на рельсу -прицеливание

---["wpn_pp2000"] = 1,					-- -бег
-- -недоделан -аддоны на рельсу

---
["wpn_sks"] = 1,					-- -уводит при выстреле
---
["wpn_svu_m1"] = 1,			-- СКС под 9х39 +ПУ ("Громобой" Повара Свободы)
-- тени=близко +фича из бага ;)
--+["wpn_svu"] = 1,


--_["wpn_groza"] = 1,			--9
--_["wpn_groza_m1"] = 1,		--7


---["wpn_bm16"] = 1,			--? -анимации
---["wpn_bm16_full"] = 1,	--? -анимации 

--+["wpn_toz34"] = 1,		-- 
--+["wpn_toz34_short"] = 1,	-- 
--+["hunters_toz"] = 1,		-- -описание

--["wpn_spas12"] = 1,			--Baikal MP-133 "Мурка" -иконка
--+["wpn_spas12_m1"] = 1,		--"Ашот"


--
["wpn_l85_carryhandle"] = 1,			--
---не спавнить ["wpn_l85_susat"] = 1,				-- -спавнится без прицела
-- -недоделана -аддоны на рельсу, пересобрать подствол и добавить глушак

---
["wpn_g36"] = 1,					--коллиматор+3D 
-- -недоделана -аддоны на рельсу, пересобрать подствол и глушак

--
["wpn_m16a1_sk1"] = 1,		-- xm16e1 (-без рельсы и аддонов)

---ПОДОБРАТЬ---точность делать выше G36
-- ---["wpn_sig550"] = 1,					--552
-- ---["wpn_sig_m1"] = 1,					--Штурмовой
-- ---["wpn_sig_m2"] = 1,					--Cнайперский
-- ---["wpn_sg550sr_sk1"] = 1,			--SG 550 Sniper (своя модель)

--
["wpn_fn2000"] = 1,					--Мари -спавнится без прицела
-- -недоделана -аддоны на рельсу

---["wpn_pkm"] = 1,		-- старое ОГСЕ (Раста - ?турели?) --["turret_pkm"] = 1,
-- 
["wpn_pkm_digger"] = 1,		-- ПКП "Печенег" -Тюльпан ВЫЛЕТает

--+["wpn_rpg7"] = 1,
---? повреждения _тестить
--+["ammo_og-7b"] = 7,			-- -иконка


---["wpn_m_134"] = 1,			--старое ОГСЕ Миниган Терминатора


--["wpn_crossbow"] = 1,  		--"Хельсинг" (Ларингит)
--["ammo_arbolt"] = 6,
--["wpn_crossbow_cpec"] = 1,  	--арбалет Дотора (квестовый - парализовать Кровососа, спецбоеприпас)
--["ammo_arbolt_spec"] = 6,



--+["wpn_flame"] = 1,			--?Ларингит (в ОГСЕ "цельный" - ничего собирать не надо)
---["ammo_flame"] = 1,			-- -мироваЯ модель



---["wpn_gravigun"] = 1,			-- ГравиЦапа
------["ammo_gravi"] = 30,			-- ??? не нужны?


--["wpn_dshkm"] = 1,
--["ammo_12.7x108"] = 1,
--["ammo_12.7x108_ap"] = 1,
--["mag_5_12.7x108_ap"] = 1,
--["belt_50_12.7x108"] = 1,

--+["wpn_gauss"] = 1,
--+["ammo_gauss"] = 4,


------------------------------------------------------------------------
}
if level.present() then
	--log1("spawn_for_test")
    for sec, num in pairs(what_to_create) do
		--log1(tostring(sec).."        :"..tostring(num))
		if system_ini():section_exist(sec) and type(num) == "number" then
			for i=1,num do
				ogse.spawn_item_in_inv(sec)
			end
		end
    end
	
	local pos = db.actor:position()
	pos.y = pos.y + 1
	pos.x = pos.x + 1

	
-- аддоны-дробовики требуют специальной процедуры спавна (+уже нет)
	--гладкоствольное подствольное боевое ружье
	--+++	ogse_addons.set_default_shg_params(ogse.spawn_item_in_inv("wpn_addon_remington_870mcs"))

	
--[[ для магазинного питания
for i=1, 4 do
	ammo_manager.give_loaded("mag_30_5.45x39_fmj")
end
]]


-- под ноги alife():create("wpn_of_qest_on_elevator",pos,db.actor:level_vertex_id(),db.actor:game_vertex_id())




	--if db.actor:object("wpn_spas12") == nil then
	--	alife():create("wpn_spas12", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--end
	--alife():create("device_torch", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("wpn_binoc_m1", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("wpn_addon_scope_1p59", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("interactive_detector_elite", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("sigaret", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("af_medusa", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("af_gravi", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("af_vyvert", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("ammo_12x70_kart", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("ammo_12x70_kart", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("ammo_12x70_kart", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("ammo_7.62x54_7h14", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--alife():create("grenade_f1", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--if db.actor:object("klondaik_key") == nil then
	--	alife():create("klondaik_key", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--end
	--if db.actor:object("klondaik_flash_1") == nil then
	--	alife():create("klondaik_flash_1", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--end
	--if db.actor:object("bad_psy_helmet") == nil then
	--	alife():create("bad_psy_helmet", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	--end
	--jekan_work.kill_mutants_around()
	
	--local sim = alife()
	--local sobj = sim:create("kulgband_scout", vector():set (-143.33,-20.68,129.60), 176959, 1739)
	--sim:assign_story_id(sobj.id, story_ids.kulgband_scout)
	
	--db.actor:give_info_portion ("kulgband_scout_deal")
	
	--alife():create("vodka", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	
	alife():create("first_neutral_planshet", db.actor:position(), db.actor:level_vertex_id(), db.actor:game_vertex_id(), db.actor:id())
	
	--db.actor:give_info_portion ("kulg_band_meet_speech_loose")
	
	--db.actor:give_info_portion ("kulgband_goto_deadcity1")	-- за Кульгавого
	--db.actor:give_info_portion ("kulgband_goto_deadcity2")	-- за Ворона-Решалу
	--db.actor:give_info_portion ("ds_glavar_blamed")
	
	--db.actor:give_info_portion ("klondike_acess")
	--db.actor:give_info_portion ("cit_kulgband_car_go")

	
	--db.actor:give_info_portion ("kulgband_informer_task")
	--jekan_work.jekan_work.spawn_kulgband_informer()
	
	
	--jekan_work.spawn_rad_kulgband_assistant()
	--db.actor:give_info_portion ("mil_monolith_end")
	
	
	db.actor:give_info_portion ("first_quest_info")
	--db.actor:give_info_portion ("kulgband_trader_task_end")
	--db.actor:give_info_portion ("kulgband_actor_name1")











	ogse.send_tip("Cчастье для всех, даром, и пусть никто не уйдёт обиженный!")
end
