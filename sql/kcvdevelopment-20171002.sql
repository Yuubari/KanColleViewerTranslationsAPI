--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 9.6.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: kcvdevelopment; Type: COMMENT; Schema: -; Owner: kcvdevelopment
--

COMMENT ON DATABASE kcvdevelopment IS 'KCV API development database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: components; Type: TABLE; Schema: public; Owner: kcvdevelopment
--

CREATE TABLE components (
    name character varying NOT NULL
);


ALTER TABLE components OWNER TO kcvdevelopment;

--
-- Name: cultures; Type: TABLE; Schema: public; Owner: kcvdevelopment
--

CREATE TABLE cultures (
    name character varying NOT NULL
);


ALTER TABLE cultures OWNER TO kcvdevelopment;

--
-- Name: tl_equipment; Type: TABLE; Schema: public; Owner: kcvdevelopment
--

CREATE TABLE tl_equipment (
    culture character varying NOT NULL,
    name_ja character varying NOT NULL,
    name character varying
);


ALTER TABLE tl_equipment OWNER TO kcvdevelopment;

--
-- Name: tl_expeditions; Type: TABLE; Schema: public; Owner: kcvdevelopment
--

CREATE TABLE tl_expeditions (
    culture character varying NOT NULL,
    id character varying NOT NULL,
    title_ja character varying,
    title character varying,
    description_ja character varying,
    description character varying
);


ALTER TABLE tl_expeditions OWNER TO kcvdevelopment;

--
-- Name: tl_quests; Type: TABLE; Schema: public; Owner: kcvdevelopment
--

CREATE TABLE tl_quests (
    culture character varying NOT NULL,
    id character varying NOT NULL,
    title_ja character varying,
    title character varying,
    description_ja character varying,
    description character varying
);


ALTER TABLE tl_quests OWNER TO kcvdevelopment;

--
-- Name: tl_ships; Type: TABLE; Schema: public; Owner: kcvdevelopment
--

CREATE TABLE tl_ships (
    culture character varying NOT NULL,
    name_ja character varying NOT NULL,
    name character varying
);


ALTER TABLE tl_ships OWNER TO kcvdevelopment;

--
-- Name: tl_shiptypes; Type: TABLE; Schema: public; Owner: kcvdevelopment
--

CREATE TABLE tl_shiptypes (
    culture character varying NOT NULL,
    id character varying NOT NULL,
    name_ja character varying,
    name character varying
);


ALTER TABLE tl_shiptypes OWNER TO kcvdevelopment;

--
-- Name: versions; Type: TABLE; Schema: public; Owner: kcvdevelopment
--

CREATE TABLE versions (
    component character varying NOT NULL,
    culture character varying NOT NULL,
    version character varying,
    url character varying
);


ALTER TABLE versions OWNER TO kcvdevelopment;

--
-- Data for Name: components; Type: TABLE DATA; Schema: public; Owner: kcvdevelopment
--

COPY components (name) FROM stdin;
app
ships
shiptypes
equipment
quests
operations
expeditions
\.


--
-- Data for Name: cultures; Type: TABLE DATA; Schema: public; Owner: kcvdevelopment
--

COPY cultures (name) FROM stdin;
en
ja
\.


--
-- Data for Name: tl_equipment; Type: TABLE DATA; Schema: public; Owner: kcvdevelopment
--

COPY tl_equipment (culture, name_ja, name) FROM stdin;
en	12cm単装砲	12cm Naval Gun
en	12.7cm連装砲	12.7cm Twin Gun Mount
en	10cm連装高角砲	10cm Twin High-angle Mount
en	14cm単装砲	14cm Naval Gun
en	15.5cm三連装砲	15.5cm Triple Gun Mount (Main)
en	20.3cm連装砲	20.3cm Twin Gun Mount
en	35.6cm連装砲	35.6cm Twin Gun Mount
en	41cm連装砲	41cm Twin Gun Mount
en	46cm三連装砲	46cm Triple Gun Mount
en	12.7cm連装高角砲	12.7cm Twin High-angle Mount
en	15.2cm単装砲	15.2cm Naval Gun
en	15.5cm三連装副砲	15.5cm Triple Gun Mount (Secondary)
en	61cm三連装魚雷	61cm Triple Torpedo Mount
en	61cm四連装魚雷	61cm Quad Torpedo Mount
en	61cm四連装(酸素)魚雷	61cm Quad Oxygen Torpedo Mount
en	九七式艦攻	Type 97 Torpedo Bomber
en	天山	Tenzan
en	流星	Ryuusei
en	九六式艦戦	Type 96 Fighter
en	烈風	Reppuu
en	九九式艦爆	Type 99 Dive Bomber
en	彗星	Suisei
en	零式水上偵察機	Type 0 Recon Seaplane
en	瑞雲	Zuiun
en	13号対空電探	Type 13 Air RADAR
en	22号対水上電探	Type 22 Surface RADAR
en	33号対水上電探	Type 33 Surface RADAR
en	21号対空電探	Type 21 Air RADAR
en	32号対水上電探	Type 32 Surface RADAR
en	32号対水上電探改	Type 32 Surface RADAR Kai
en	14号対空電探	Type 14 Air RADAR
en	改良型艦本式タービン	Improved Steam Turbine
en	強化型艦本式缶	Enhanced Steam Boiler
en	三式弾	Type 3 Shell
en	九一式徹甲弾	Type 91 AP Shell
en	7.7mm機銃	7.7mm Machine Gun
en	12.7mm単装機銃	12.7mm Machine Gun
en	25mm連装機銃	25mm Twin Autocannon Mount
en	25mm三連装機銃	25mm Triple Autocannon Mount
en	甲標的	Type A Ko-hyoteki
en	応急修理要員	Repair Team
en	応急修理女神	Repair Goddess
en	九四式爆雷投射機	Type 94 Depth Charge
en	三式爆雷投射機	Type 3 Depth Charge
en	九三式水中聴音機	Type 93 SONAR
en	三式水中探信儀	Type 3 SONAR
en	12.7cm単装高角砲	12.7cm High-angle Mount
en	25mm単装機銃	25mm Autocannon
en	20.3cm(3号)連装砲	20.3cm(no.3) Twin Gun Mount
en	12cm30連装噴進砲	12cm 30-tube Rocket Launcher
en	流星改	Ryuusei Kai
en	烈風改	Reppuu Kai
en	彩雲	Saiun
en	紫電改二	Shiden Kai2
en	震電改	Shinden Kai
en	彗星一二型甲	Suisei Model 12A
en	61cm五連装(酸素)魚雷	61cm Quint Oxygen Torpedo Mount
en	零式水上観測機	Type 0 Observation Seaplane
en	二式艦上偵察機	Type 2 Recon Aircraft
en	試製晴嵐	Prototype Seiran
en	12.7cm連装砲B型改二	12.7cm Twin Mount Type-B Kai2
en	Ju87C改	Ju 87C Kai
en	15.2cm連装砲	15.2cm Twin Gun Mount
en	15.2cm連装砲改	15.2cm Twin Gun Mount Kai
en	8cm高角砲	8cm Twin High-angle Mount
en	53cm艦首(酸素)魚雷	53cm Hull-mount Oxygen Torpedoes
en	大発動艇	Daihatsu-Class Landing Craft
en	カ号観測機	Ka-type Observation Autogyro
en	三式指揮連絡機(対潜)	Type 3 Spotter/Liaison (ASW)
en	10cm連装高角砲(砲架)	10cm Twin High-angle Carriage Mount
en	増設バルジ(中型艦)	Anti-Torpedo Bulge (M)
en	増設バルジ(大型艦)	Anti-Torpedo Bulge (L)
en	探照灯	Searchlight
en	ドラム缶(輸送用)	Drum Canister
en	38cm連装砲	38cm Twin Gun Mount
en	15cm連装副砲	15cm Twin Gun Mount
en	12.7cm単装砲	12.7cm Naval Gun
en	瑞雲(六三四空)	Zuiun (634 Air Group)
en	瑞雲12型	Zuiun Model 12
en	瑞雲12型(六三四空)	Zuiun Model 12 (634 Air Group)
en	九七艦攻(九三一空)	Type 97 Torpedo Bomber (931 Air Group)
en	天山(九三一空)	Tenzan (931 Air Group)
en	2cm 四連装FlaK 38	2cm Flakvierling 38
en	3.7cm FlaK M42	3.7cm FlaK M42
en	艦艇修理施設	Ship Repair Facility
en	新型高温高圧缶	New High Pressure-Temperature Steam Boiler
en	22号対水上電探改四	Type 22 Surface RADAR Kai4
en	21号対空電探改	Type 21 Air RADAR Kai
en	20.3cm(2号)連装砲	20.3cm(no.2) Twin Gun Mount
en	12.7cm連装高角砲(後期型)	12.7cm Twin High-Angle Mount (Late Model)
en	毘式40mm連装機銃	HI-type 40mm Twin Machine Gun
en	九七式艦攻(友永隊)	Type 97 Torpedo Bomber (Tomonaga Squadron)
en	天山一二型(友永隊)	Tenzan Model 12 (Tomonaga Squadron)
en	潜水艦53cm艦首魚雷(8門)	53cm Submarine Bow Torpedo Mount (8 tubes)
en	九九式艦爆(熟練)	Type 99 Dive Bomber (Skilled)
en	九七式艦攻(熟練)	Type 97 Torpedo Bomber (Skilled)
en	照明弾	Star Shell
en	九八式水上偵察機(夜偵)	Type 98 Recon Seaplane (Night Scout)
en	九九式艦爆(江草隊)	Type 99 Dive Bomber (Ekusa Squadron)
en	彗星(江草隊)	Suisei (Ekusa Squadron)
en	試製35.6cm三連装砲	Prototype 35.6cm Triple Gun Mount
en	35.6cm連装砲(ダズル迷彩)	35.6cm Twin Gun Mount (Dazzle camo)
en	零式艦戦21型(熟練)	Type 0 Fighter Model 21 (Skilled)
en	零式艦戦52型	Type 0 Fighter Model 52
en	特大発動艇	Toku Daihatsu-class Landing Craft
en	試製41cm三連装砲	Prototype 41cm Triple Gun Mount
en	13号対空電探改	Type 13 Air RADAR Kai
en	艦隊司令部施設	Fleet Command Facility
en	熟練艦載機整備員	Skilled Carrier-based Aircraft Maintenance Personnel
en	烈風(六〇一空)	Reppuu (601 Air Group)
en	彗星(六〇一空)	Suisei (601 Air Group)
en	天山(六〇一空)	Tenzan (601 Air Group)
en	流星(六〇一空)	Ryuusei (601 Air Group)
en	38cm連装砲改	38cm Twin Gun Mount Kai
en	Ar196改	Ar196 Kai
en	九七式艦攻(九三一空)	Type 97 Torpedo Bomber (931 Air Group)
en	一式徹甲弾	Type 1 AP Shell
en	試製46cm連装砲	46cm Twin Gun Mount Prototype
en	紫雲	Shiun
en	14cm連装砲	14cm Twin Gun Mount
en	91式高射装置	Type 91 Anti-Aircraft Fire Director
en	94式高射装置	Type 94 Anti-Aircraft Fire Director
en	10cm連装高角砲+高射装置	10cm Twin High-angle Mount + Anti-Aircraft Fire Director
en	SKC34 20.3cm連装砲	SKC34 20.3cm Twin Gun Mount
en	FuMO25 レーダー	FuMO25 RADAR
en	61cm三連装(酸素)魚雷	61cm Triple (Oxygen) Torpedo Mount
en	WG42 (Wurfgerät 42)	WG42 (Wurfgerät 42)
en	試製FaT仕様九五式酸素魚雷改	Prototype FaT Type 95 Oxygen Torpedo Kai
en	試製51cm連装砲	Prototype 51cm Twin Gun Mount
en	熟練見張員	Skilled Spotting Personnel
en	12.7cm高角砲+高射装置	12.7cm High-Angle Mount + Anti-Aircraft Fire Director
en	25mm三連装機銃 集中配備	25mm Triple Autocannon Mount (Concentrated Deployment)
en	零式水中聴音機	Type 0 SONAR
en	381mm/50 三連装砲	381mm/50 Triple Gun Mount
en	OTO 152mm三連装速射砲	OTO 152mm Triple Rapid Fire Gun Mount
en	90mm単装高角砲	90mm High-angle Gun Mount
en	プリエーゼ式水中防御隔壁	Pugliese Underwater Protection System
en	381mm/50 三連装砲改	381mm/50 Triple Gun Mount Kai
en	二式大艇	Type 2 Large-sized Flying Boat
en	96式150cm探照灯	Type 96 150cm Searchlight
en	15m二重測距儀+21号電探改二	15m Duplex Rangefinder + Type 21 Air RADAR Kai2
en	九七式艦攻(村田隊)	Type 97 Torpedo Bomber (Murata Squadron)‎
en	天山一二型(村田隊)	Tenzan Model 12 (Murata Squadron)‎
en	戦闘糧食	Combat Rations
en	洋上補給	Off-shore Resupply
en	120mm連装砲	120mm Twin Gun Mount
en	試製南山	Prototype Nanzan
en	四式水中聴音機	Type 4 SONAR
en	秋刀魚の缶詰	Canned Saury
en	試製景雲(艦偵型)	Prototype Keiun
en	Re.2005 改	Re.2005 Kai
en	SBD	SBD
en	QF 2ポンド8連装ポンポン砲	QF 2-pounder Octuple “Pom Pom” Naval Gun Mount
en	銀河	Ginga
en	零式艦戦53型(岩本隊)	Type 0 Fighter Model 53 (Iwamoto Squadron)
en	12.5inch連装副砲	12.5inch Dual Secondary Gun
en	21inch魚雷後期型	21inch Torpedo Mk.II
en	5inch単装砲	5inch Single Gun
en	零戦52型丙(六〇一空)	Type 0 Fighter Model 52-C (601 Air Group)
en	6inch連装速射砲	6inch Dual Rapid-fire Gun
en	深海ソナー	Abyssal SONAR
en	深海爆雷投射機	Abyssal Depth Charge
en	？？？	<UNKNOWN>
en	5inch単装高射砲	5inch Single AA Gun
en	零戦52型甲(付岩本小隊)	Type 0 Fighter Model 52-A (Iwamoto Squadron)
en	零戦62型(爆戦/岩井隊)	Type 0 Fighter (Bomber) Model 62 (Iwai Squadron)
en	TBD	TBD
en	三式戦 飛燕一型丁	Type 3 Fighter Hien Model 1D
en	一式陸攻 三四型	Type 1 Land-based Attack Aircraft Model 34
en	38.1cm Mk.I/N連装砲改	38.1cm Mk.I/N Twin Gun Mount Kai
en	F4F-3	F4F-3
en	8cm高角砲改+増設機銃	8cm Twin High-angle Mount Kai + Additional Machine Guns
en	後期型艦首魚雷(6門)	Late Model Bow Torpedo Mount (6 Tubes)
en	二式水戦改(熟練)	Type 2 Seaplane Fighter Kai (Skilled)
en	強風改	Kyoufuu Kai
en	彩雲(東カロリン空)	Saiun (East Caroline Air Group)
en	潜水艦搭載電探&逆探(E27)	Submarine Radar and Radio Direction Finder (E27)
en	晴嵐(六三一空)	Seiran (631 Air Group)
en	熟練聴音員+後期型艦首魚雷(6門)	Skilled SONAR Personnel + Late Model Bow Torpedo Mount (6 Tubes)
en	Bf109T改	Messerschmitt Bf 109T Kai
en	Fw190T改	Focke-Wulf Fw 190T Kai
en	10.5cm連装砲	10.5cm Twin Gun Mount
en	零式艦戦21型	Type 0 Fighter Model 21
en	零式艦戦52型(熟練)	Type 0 Fighter Model 52 (Skilled)
en	深海棲艦戦 Mark.II	Abyssal Fighter Mk.II
en	深海地獄艦爆改	Abyssal Hell Diver Kai
en	深海棲艦攻 Mark.II	Abyssal Torpedo Bomber Mk.II
en	深海棲艦攻 Mark.III	Abyssal Torpedo Bomber Mk.III
en	深海烏賊魚雷	Abyssal Cuttlefish Torpedo
en	深海猫艦戦改	Abyssal Hellcat Fighter Mk.II
en	Re.2001 G改	Re.2001 G Kai
en	九六式艦戦改	Type 96 Fighter Kai
en	九五式爆雷	Type 95 Depth Charge
en	二式爆雷	Type 2 Depth Charge
en	一式戦 隼III型甲(54戦隊)	Type 1 Fighter Hayabusa Model III A (54th Squadron)
en	30.5cm三連装砲改	30.5cm Triple Gun Mount Kai
en	一式戦 隼II型(64戦隊)	Type 1 Fighter Hayabusa Model II (64th Squadron)
en	零式艦戦62型(爆戦)	Type 0 Fighter (Bomber) Model 62
en	Laté 298B	Laté 298B
en	203mm/53 連装砲	203mm / 53 Twin Gun Mount
en	Ro.43水偵	Ro.43 Seaplane
en	16inch三連装砲	16inch Triple Gun Mount
en	16inch三連装砲 Mk.7	16inch Triple Gun Mount Mk.7
en	16inch連装砲	16inch Twin Gun Mount
en	21inch魚雷前期型	21inch Torpedo Mk.I
en	3inch単装高角砲	3inch Single High-angle Mount
en	5inch連装砲	5inch Dual Gun
en	6inch単装砲	6inch Single Gun
en	8inch三連装砲	8inch Triple Gun
en	水上レーダ― Mark.I	Surface RADAR Mk.I
en	水上レーダ― Mark.II	Surface RADAR Mk.II
en	深海FCS+CIC	Abyssal FCS+CIC
en	深海ソナー Mk.II	Abyssal SONAR Mk.II
en	深海地獄艦爆	\tAbyssal Hell Diver
en	深海復讐艦攻	\tAbyssal Avenger Torpedo Bomber
en	深海探照灯	Abyssal Searchlight
en	深海棲艦戦	Abyssal Fighter Mk.I
en	深海棲艦戦 Mark.III	Abyssal Fighter Mk.III
en	深海棲艦攻	Abyssal Torpedo Bomber Mk.I
en	深海水上攻撃機改	Abyssal Seaplane Bomber Mk.II
en	深海棲艦爆 Mark.II	Abyssal Dive Bomber Mk.II
en	深海棲艦爆	Abyssal Dive Bomber Mk.I
en	深海水上攻撃機	Abyssal Seaplane Bomber Mk.I
en	深海爆雷投射機 Mk.II	Abyssal Depth Charge Mk.II
en	深海猫艦戦	Abyssal Hellcat Fighter
en	高速深海魚雷	High-speed Abyssal Torpedo
en	深海復讐艦攻改	Abyssal Avenger Torpedo Bomber Kai
en	深海棲艦偵察機	Abyssal Recon Plane
en	5inch連装両用莢砲	5inch Dual Dual Purpose Gun
en	橘花改	Kikka Kai
en	38.1cm Mk.I連装砲	38.1cm Mk.I Twin Gun Mount
en	Ro.44水上戦闘機	Ro.44 Seaplane Fighter
en	二式水戦改	Type 2 Seaplane Fighter Kai
en	大発動艇(八九式中戦車&陸戦隊)	Daihatsu Landing Craft (Type 89 Medium Tank & Landing Force)
en	特二式内火艇	Special Type 2 Amphibious Landing Craft
en	OS2U	OS2U
en	PBY-5A Catalina	PBY-5A Catalina
en	一式陸攻	Isshikirikkou
en	一式陸攻(野中隊)	Isshikirikkou (Nonaka Squadron)
en	5inch連装砲 Mk.28 mod.2	5in Twin Gun Mount Mk.28 mod.2
en	53cm連装魚雷	53cm Twin Torpedo
en	雷電	Raiden
en	三式戦 飛燕	Army Type 3 Fighter “Hien”
en	三式戦 飛燕(飛行第244戦隊)	Army Type 3 Fighter “Hien” (244 Fighter Group)
en	九六式陸攻	Type 96 Land-based Attack Aircraft
en	Bofors 40mm四連装機関砲	Bofors 40mm Quadruple Autocannon Mount
en	F4F-4	F4F-4
en	零戦21型(付岩本小隊)	Type 0 Fighter Model 21 (Iwamoto Squadron)
en	零戦52型丙(付岩井小隊)	Type 0 Fighter Model 52-C (Iwai Squadron)
en	一式陸攻 二二型甲	Isshikirikkou Model 22A
en	試製61cm六連装(酸素)魚雷	Prototype 61cm Sextuple (Oxygen) Torpedo Mount
en	零式艦戦32型	Type 0 Fighter Model 32
en	16inch三連装砲 Mk.7+GFCS	16in Triple Gun Mount Mk.7 + GFCS
en	Re.2001 OR改	Re. 2001 OR Kai
en	零式艦戦32型(熟練)	Type 0 Fighter Model 32 (Skilled)
en	F6F-3	F6F-3
en	噴式景雲改	Jet Keiun Kai
en	彩雲(輸送用分解済)	Saiun (Disassembled for Transport)
en	艦本新設計 増設バルジ(中型艦)	New Design Anti-Torpedo Bulge (Medium)
en	零式艦戦63型(爆戦)	Type 0 Fighter Model 63 (Fighter-bomber)
en	潜水艦搭載電探&水防式望遠鏡	Submarine Radar and Waterproof Periscope
en	瑞雲(六三一空)	Zuiun (631 Air Group)
en	艦本新設計 増設バルジ(大型艦)	New Kanhon Design Anti-torpedo Bulge (Large)
en	一式戦 隼II型	Type 1 Fighter Hayabusa Model II
en	特大発動艇+戦車第11連隊	Toku Daihatsu Landing Craft + 11th Tank Regiment
en	30.5cm三連装砲	30.5cm Triple Gun Mount
en	爆装一式戦 隼III型改(55戦隊)	Bomb-carrying Type 1 Fighter Hayabusa Model III Kai (55th Squadron)
en	12.7cm単装高角砲(後期型)	8cm High-angle Gun Kai + Additional Machine Guns
en	一式戦 隼III型甲	Type 1 Fighter Hayabusa Model III A
en	41cm三連装砲改	41cm Triple Gun Mount Kai
en	Ro.44水上戦闘機bis	Ro.44 Seaplane Fighter bis
en	零式水上偵察機11型乙	Type 0 Reconnaissance Seaplane Model 11B
en	瑞雲(六三四空/熟練)	Zuiun (634 Air Group/Skilled)
en	F6F-5	F6F-5
en	Seafire Mk.III改	Seafire Mk.III Kai
en	15.5cm三連装砲改	15.5cm Triple Gun Mount Kai
en	戦闘糧食(特別なおにぎり)	Combat Ration (Special Onigiri)
en	15.5cm三連装副砲改	15.5cm Triple Secondary Gun Mount Kai
en	Swordfish	Swordfish
en	Spitfire Mk.I	Spitfire Mk.I
en	Skua	Skua
en	38cm四連装砲	38cm Quadruple Gun Mount
en	15.2cm三連装砲	15.2cm Triple Gun Mount
en	Swordfish Mk.II(熟練)	Swordfish Mk.II (Skilled)
en	Spitfire Mk.V	Spitfire Mk.V
en	38cm四連装砲改	38cm Quadruple Gun Mount Kai
en	Spitfire Mk.IX(熟練)	Spitfire Mk.IX (Skilled)
en	Fulmar	Fulmar
en	Swordfish Mk.III(熟練)	Swordfish Mk.III(Skilled)
en	F6F-3N	F6F-3N
en	F6F-5N	F6F-5N
en	F4U-1D	F4U-1D
en	TBF	TBF
en	TBM-3D	TBM-3D
en	Type124 ASDIC	Type124 ASDIC
en	夜間作戦航空要員	Night Operation Aviation Personnel
en	夜間作戦航空要員+熟練甲板員	Night Operation Aviation Personnel + Skilled Deckhands
en	HF/DF + Type144/147 ASDIC	
en	Type144/147 ASDIC	
\.


--
-- Data for Name: tl_expeditions; Type: TABLE DATA; Schema: public; Owner: kcvdevelopment
--

COPY tl_expeditions (culture, id, title_ja, title, description_ja, description) FROM stdin;
\.


--
-- Data for Name: tl_quests; Type: TABLE DATA; Schema: public; Owner: kcvdevelopment
--

COPY tl_quests (culture, id, title_ja, title, description_ja, description) FROM stdin;
en	101	はじめての「編成」！	A1: First Formation	２隻以上の艦で構成される「艦隊」を編成せよ！	Have 2 ships in your main fleet.
en	102	「駆逐隊」を編成せよ！	A2: Form a Destroyer Division	駆逐艦４隻以上で構成される「駆逐隊」を編成せよ！	Have 4 DD in your main fleet.
en	103	「水雷戦隊」を編成せよ！	A3: Form a Torpedo Squadron	軽巡洋艦を旗艦とし、数隻の駆逐艦で構成される「水雷戦隊」を編成せよ！	Have a CL as a flagship and 3-5 DD in your main fleet.
en	104	６隻編成の艦隊を編成せよ！	A4: Form a Six Ship Fleet	全6隻で構成される主力艦隊を編成せよ！	Have 6 ships in your main fleet.
en	105	軽巡２隻を擁する隊を編成せよ！	A5: Form a Squadron with two CL	軽巡洋艦２隻を擁する高速艦隊を編成せよ！	Have 2 CL in your main fleet.
en	106	「重巡戦隊」を編成せよ！	A7: Form a Heavy Cruiser Division	重巡洋艦２隻を擁する重巡艦隊を編成せよ！	Have 2 CA in your main fleet.
en	107	「空母機動部隊」を編成せよ！	A12: Form a Carrier Task Force	空母1隻以上を旗艦とし、その護衛艦艇と共に、空母機動部隊を編成せよ！	Have a CV/CVL as a flagship and 3 DD in your main fleet.
en	108	「天龍」型軽巡姉妹の全２艦を編成せよ！	A8: Form a Tenryuu-class Fleet	天龍型軽巡洋艦「天龍」「龍田」を同一艦隊に配属せよ！	Have Tenryuu (天龍) and Tatsuta (龍田) in your main fleet.
en	109	「川内」型軽巡姉妹の全３艦を編成せよ！	A14: Form a Sendai-class Fleet	川内型軽巡洋艦「川内」「神通」「那珂」を同一艦隊に配属せよ！	Have Sendai (川内), Jintsuu (神通) and Naka (那珂) in your main fleet.
en	110	「妙高」型重巡姉妹の全４隻を編成せよ！	A15: Form a Myoukou-class Fleet	妙高型重巡洋艦「妙高」「那智」「足柄」「羽黒」を同一艦隊に配属せよ！	Have Myoukou (妙高), Nachi (那智), Ashigara (足柄) and Haguro (羽黒) in your main fleet.
en	111	「扶桑」型戦艦姉妹の全２隻を編成せよ！	A17: Form a Fusou-class Fleet	扶桑型戦艦「扶桑」「山城」を同一艦隊に配属せよ！	Have Fusou (扶桑) and Yamashiro (山城) in your main fleet.
en	112	「伊勢」型戦艦姉妹の全２隻を編成せよ！	A18: Form an Ise-class Fleet	伊勢型戦艦「伊勢」「日向」を同一艦隊に配属せよ！	Have Ise (伊勢) and Hyuuga (日向) in your main fleet.
en	113	戦艦と重巡による主力艦隊を編成せよ！	A13: Form a Main Fleet using BB and CA	戦艦1隻以上、重巡2隻以上を主力とした水上打撃艦隊を編成せよ！	Have a BB (slow or fast, BBV don't count) and 2 CA in your main fleet.
en	114	「南雲機動部隊」を編成せよ！	A19: Form the Nagumo Task Force	一航戦「赤城」「加賀」二航戦「飛龍」「蒼龍」からなる第一機動部隊を編成せよ！	Have ONLY Akagi (赤城), Kaga (加賀), Hiryuu (飛龍) and Souryuu (蒼龍) in your main fleet.
en	115	第２艦隊を編成せよ！	A6: Form a Second Fleet	二つ目の艦隊、第２艦隊の旗艦を指定して、第２艦隊を編成せよ！	Have a flagship in your second fleet.
en	116	「水上機母艦」を配備せよ！	A9: Deploy a Seaplane Tender	多数の水上偵察機を運用する「水上機母艦」を艦隊に配備せよ！	Have an AV in your main fleet.
en	117	第２艦隊で空母機動部隊を編成せよ！	A11: Form a Carrier Task Force in the Second Fleet	第２艦隊に空母を配備して、空母機動部隊を編成せよ！	Have a CV/CVL and 3 DD in your second fleet.
en	118	「金剛」型による高速戦艦部隊を編成せよ！	A16: Form a Kongou-class Fleet	金剛型戦艦「金剛」「比叡」「榛名」「霧島」全４隻の高速戦艦を集中配備せよ！	Have Kongou (金剛), Hiei (比叡), Haruna (榛名) and Kirishima (霧島) in your main fleet.
en	119	「三川艦隊」を編成せよ！	A20: Form the Mikawa Fleet	「鳥海」「青葉」「加古」「古鷹」「天龍」を含む高速艦隊を編成せよ！	Have Choukai (鳥海), Aoba (青葉), Kako (加古), Furutaka (古鷹), Tenryuu (天龍) and a FAST speed ship in your main fleet.
en	120	「第六駆逐隊」を編成せよ！	A10: Form the 6th Destroyer Division	「暁」「響」「雷」「電」4隻による第六駆逐隊を編成せよ！	Have ONLY Akatsuki (暁), Hibiki (響), Inazuma (雷) and Ikazuchi (電) in your main fleet.
en	121	「第四戦隊」を編成せよ！	A21: Form the 4th Cruiser Division	「愛宕」「高雄」「鳥海」「摩耶」を基幹とした第四戦隊を編成せよ！	Have Atago (愛宕), Takao (高雄), Choukai (鳥海) and Maya (摩耶) in your main fleet.
en	122	「西村艦隊」を編成せよ！	A22: Form the Nishimura Fleet	「扶桑」「山城」「最上」「時雨」を基幹とした西村艦隊を編成せよ！	Have Fusou (扶桑), Yamashiro (山城), Mogami (最上) and Shigure (時雨) in your main fleet.
en	123	「第五航空戦隊」を編成せよ！	A23: Form the 5th Carrier Division	「翔鶴」「瑞鶴」を基幹とし、駆逐艦2隻を加えた第五航空戦隊を編成せよ！	Have Shoukaku (翔鶴), Zuikaku (瑞鶴) and 2 DD in your main fleet.
en	124	新「三川艦隊」を編成せよ！	A24: Form the New Mikawa Fleet	「鳥海」「青葉」「衣笠」「加古」「古鷹」「天龍」からなる三川艦隊を編成せよ！	Have Choukai (鳥海), Aoba (青葉), Kinugasa (衣笠), Kako (加古), Furutaka (古鷹) and Tenryuu (天龍) in your main fleet.
en	125	潜水艦隊を編成せよ！	A25: Form a Submarine Fleet	伊号潜水艦2隻からなる潜水艦隊を編成せよ！	Have 2 SS/SSV in your main fleet.
en	126	航空水上打撃艦隊を編成せよ！	A26: Form a Naval Aviation Strike Fleet	航空戦艦2隻と航空巡洋艦2隻を基幹とする艦隊を編成せよ！	Have ONLY 2 BBV and 2 CAV in your main fleet.
en	127	中規模潜水艦隊を編成せよ！	A27: Form a Medium-Sized Submarine Fleet	伊号潜水艦3隻以上からなる潜水艦隊を編成せよ！	Have 3 SS/SSV in your fleet.
en	128	「第六戦隊」を編成せよ！	A28: Form the 6th Cruiser Division	「古鷹」「加古」「青葉」「衣笠」を基幹とした第六戦隊を編成せよ！	Have Furutaka (古鷹), Kako (加古), Aoba (青葉) and Kinugasa (衣笠) in your main fleet.
en	129	「第五艦隊」を編成せよ！	A29: Form the 5th Fleet	「那智」「足柄」「多摩」「木曾」を中核とした「第五艦隊」を編成せよ！	Have Nachi (那智), Ashigara (足柄), Tama (多摩) and Kiso (木曾) in your main fleet.
en	130	「第一水雷戦隊」を編成せよ！	A30: Form the 1st Torpedo Squadron	「阿武隈」「曙」「潮」「霞」「不知火」を中核とした「第一水雷戦隊」を編成せよ！	Have Abukuma (阿武隈), Akebono (曙), Ushio (潮), Kasumi (霞) and Shiranui (不知火) in your main fleet.
en	131	「第八駆逐隊」を編成せよ！	A31: Form the 8th Destroyer Division	「朝潮」「満潮」「大潮」「荒潮」4隻による第八駆逐隊を編成せよ！	Have ONLY Asashio (朝潮), Michishio (満潮), Ooshio (大潮) and Arashio (荒潮) in your main fleet.
en	132	「第十八駆逐隊」を編成せよ！	A32: Form the 18th Destroyer Division	「霞」「霰」「陽炎」「不知火」4隻による第十八駆逐隊を編成せよ！	Have ONLY Kasumi (霞), Arare (霰), Kagerou (陽炎) and Shiranui (不知火) in your main fleet.
en	133	「第三十駆逐隊(第一次)」を編成せよ！	A33: Form the 30th Destroyer Division (Gen.1)	「睦月」「如月」「弥生」「望月」4隻による第三十駆逐隊(第一次)を編成せよ！	Have ONLY Mutsuki (睦月), Kisaragi (如月), Yayoi (弥生) and Mochizuki (望月) in your main fleet.
en	134	式の準備！(その参)	WA01: In Preparation of Love (Part 3)	第一艦隊旗艦に練度の高い(Lv.90以上～99以下)艦娘を配備して気持ちを整理せよ！	Organize your feelings and deploy your fleet with a high level flagship (Lv.90~99)!
en	135	新たなる旅立ち！	WA02: Journey Anew	第一艦隊旗艦に強い絆を結んだLv.100以上の艦娘を配備した6隻の艦隊を編成せよ！	Organize a fleet of 6 ships with your newly bonded ship of Lv.100 or more as flagship!
en	136	「第三十駆逐隊(第二次)」を編成せよ！	A34: Form the 30th Destroyer Division (Gen.2)	「睦月」「弥生」「卯月」「望月」4隻による第三十駆逐隊(第二次)を編成せよ！	Have ONLY Mutsuki (睦月), Yayoi (弥生), Uzuki (卯月) and Mochizuki (望月) in your main fleet.
en	137	「第五戦隊」を編成せよ！	A35: Form the 5th Cruiser Division	「妙高」「那智」「羽黒」を基幹とした第五戦隊を編成せよ！	Have Myoukou (妙高), Nachi (那智) and Haguro (羽黒) in your main fleet.
en	138	新編「第二航空戦隊」を編成せよ！	A36: Form the new 2nd Carrier Division	「飛龍改二」(※旗艦)及び「蒼龍」を基幹とした二航戦(要駆逐艦2隻)を編成せよ！	Have Hiryuu Kai2 (飛龍改二) as the flagship, Souryuu (蒼龍) and 2 DD in your main fleet.
en	139	潜水艦隊「第六艦隊」を編成せよ！	A37: Form the 6th Submarine Fleet	「潜水母艦」と複数の潜水艦(4隻以上)からなる潜水艦隊「第六艦隊」を編成せよ！	Have an AS as flagship and 4 (or more) SS/SSV in your main fleet.
en	140	新型電探を配備せよ！	A38: Test the New RADAR	新型電探運用試験のため、第一艦隊の旗艦に「妙高改二」を配備せよ！	Have Myoukou Kai2 (妙高改二) as the flagship of your fleet.
en	141	再編成「第二航空戦隊」を強化せよ！	A39: Strengthen the Reorganized 2nd Carrier Division	「蒼龍改二」(※旗艦)及び「飛龍改二」を基幹とした二航戦(要駆逐艦2隻)を編成せよ！	Have Souryuu Kai2 (蒼龍改二) as flagship, Hiryuu Kai2 (飛龍改二) and 2 DD in your main fleet.
en	142	精鋭「第三戦隊」全艦集結せよ！	A40: Form the Elite 3rd Battleship Division	第二次改装を完了した改装金剛型高速戦艦4隻を集結させよ！	Have all four Kongou-class Kai2 battleships in your main fleet.
en	143	「新型正規空母」を配備せよ！	A41: Deploy a New Standard Aircraft Carrier	雲龍型航空母艦一番艦「雲龍」を第一艦隊機旗艦に配備せよ！	Have Unryuu (雲龍) as your flagship.
en	144	主力戦艦部隊「第二戦隊」を編成せよ！	A42: Form the Main Battleship Fleet: the 2nd Squadron	長門型2隻及び扶桑型2隻の計4隻の主力戦艦からなる第二戦隊を編成せよ！	Have both Nagato-class and both Fusou-class battleships (and no other ships) in your main fleet.
en	145	戦艦を主力とした水上打撃部隊を編成せよ！	A43: Form the Surface Strike Fleet	大和型・長門型・伊勢型・扶桑型のいずれか3隻と軽巡1隻他の水上打撃部隊を配備せよ！	Have 3 battleships of Nagato, Fusou, Ise or Yamato classes and a CL in your main fleet.
en	146	改修工廠を準備せよ！	A45: Prepare the Arsenal for Renovations	第一艦隊の旗艦に工作艦「明石」を配備、改修工廠の準備を実施せよ！	Have Akashi (明石) as your flagship in your main fleet.
en	147	「西村艦隊」を再編成せよ！	A44: Form the Reorganised Nishimura Fleet	「扶桑」「山城」「最上」「時雨」「満潮」を基幹とした西村艦隊を編成せよ！	Have Fusou (扶桑), Yamashiro (山城), Mogami (最上), Shigure (時雨) and Michishio (満潮) in your main fleet.
en	148	軽快な「水上反撃部隊」を編成せよ！	A46: Form a Counterattack Squadron	駆逐艦「霞」を旗艦とした重巡「足柄」及び軽巡1隻駆逐艦4隻の水上挺身部隊を編成せよ！	Have Kasumi (霞) as the flagship, Ashigara (足柄), 1 CL and 3 more DD in your main fleet.
en	149	「第十一駆逐隊」を編成せよ！	A47: Form the 11th Destroyer Division	特I型駆逐艦「吹雪」「白雪」「初雪」「叢雲」4隻による第十一駆逐隊を編成せよ！	Have ONLY Fubuki (吹雪), Shirayuki(白雪), Hatsuyuki (初雪) and Murakumo (叢雲) in your main fleet.
en	150	「第二一駆逐隊」を編成せよ！	A48: Form the 21st Destroyer Division	「初春」「子日」「若葉」「初霜」4隻による第二一駆逐隊を編成せよ！	Have ONLY Hatsuharu (初春), Nenohi (子日), Wakaba (若葉) and Hatsushimo (初霜) in your main fleet.
en	151	「第二二駆逐隊」を編成せよ！	A49: Form the 22nd Destroyer Division	「皐月」「文月」「長月」他1隻計駆逐艦4隻による第二二駆逐隊を編成せよ！	Have ONLY Satsuki (皐月), Fumizuki (文月), Nagatsuki (長月) and 1 more DD in your main fleet.
en	152	「三川艦隊」を新編、突入準備せよ！	A50: Form the New Edition of the Mikawa Fleet	第一艦隊において、「鳥海改ニ」を旗艦とする「三川艦隊」を編成せよ！	Have Choukai Kai2 (鳥海改ニ) as the flagship and any 5 of Aoba (青葉), Kinugasa (衣笠), Kako (加古), Furutaka (古鷹), Tenryuu (天龍), Yuubari (夕張) in your main fleet.
en	153	「第十八戦隊」を新編成せよ！	A51: Form the 18th Cruiser Division	軽巡洋艦「天龍」「龍田」を基幹戦力とした「第十八戦隊」を4隻以上で新編成せよ！	Have Tenryuu (天龍), Tatsuta (龍田) and 2 or more other ships in your fleet.
en	154	海上突入部隊を編成せよ！	A52: Form the Maritime Assault Fleet	戦艦「比叡」「霧島」軽巡「長良」駆逐艦「暁」「雷」「電」による海上突入部隊を編成せよ！	Have Hiei (比叡), Kirishima (霧島), Nagara (長良), Akatsuki (暁), Ikazuchi (雷) and Inazuma (電) in your main fleet.
en	155	新編「第六駆逐隊」を編成せよ！	A53: Form the New 6th Destroyer Division	「暁改二」を旗艦とした「響」「雷」「電」4隻による第六駆逐隊を編成せよ！	Have ONLY Akatsuki Kai2 (暁改二) as the flagship, Hibiki (響 or Верный), Ikazuchi (雷) and Inazuma (電) in your main fleet.
en	156	「第一水雷戦隊」北方突入準備！	A54: Prepare the 1st Torpedo Squadron for the Deployment to the Northern Sea	「阿武隈」を旗艦として「響」「初霜」「若葉」「五月雨」「島風」による一水戦を編成せよ！	Have Abukuma (阿武隈) as the flagship, Hibiki (響 or Верный), Hatsushimo (初霜), Wakaba (若葉), Samidare (五月雨) and Shimakaze (島風) in your main fleet.
en	157	「第一水雷戦隊」北方再突入準備！	A55: Prepare the 1st Torpedo Squadron for Another Sortie to the Northern Sea	「阿武隈改二」を旗艦として「響」「夕雲」「長波」「秋雲」「島風」の一水戦を再編成せよ！	Have Abukuma Kai2 (阿武隈改二) as the flagship, Hibiki (響 or Верный), Yuugumo (夕雲), Naganami (長波), Akigumo (秋雲) and Shimakaze (島風) in your main fleet.
en	161	「第五航空戦隊」を再編成せよ！	A56: Reorganise the 5th Carrier Division	「翔鶴」「瑞鶴」と随伴駆逐艦「朧」「秋雲」を基幹とした第五航空戦隊を再編成せよ！	Have Shoukaku (翔鶴), Zuikaku (瑞鶴), Oboro (朧) and Akigumo (秋雲) in your main fleet.
en	162	新編「第二一戦隊」出撃準備！	A57: Prepare the New 21st Cruiser Division for Sortie	「那智改二」「足柄改二」及び「多摩」「木曾」を基幹とした、第二一戦隊を編成せよ！	Have Nachi Kai2 (那智改二), Ashigara Kai2 (足柄改二), Tama (多摩) and Kiso (木曾) in your main fleet.
en	163	「第十六戦隊(第一次)」を編成せよ！	A58: Organise the 16th Squadron (1st Gen.)	「足柄」を旗艦として「球磨」「長良」を擁する、第十六戦隊(第一次)を編成せよ！	Have Ashigara (足柄) as the flagship, Kuma (球磨) and Nagara (長良) in your main fleet.
en	201	敵艦隊を撃破せよ！	Bd1: Defeat an Enemy Fleet	艦隊を出撃させ、敵艦隊を捕捉、これを撃滅せよ！	Sortie to any map and score a victory.
en	202	はじめての「出撃」！	B1: First Sortie	艦隊を出撃させ、敵艦隊と交戦せよ！	Sortie your main fleet on a combat mission.
en	203	鎮守府正面海域を護れ！	B2: Protect the Sea Near the Naval Base	鎮守府正面海域に艦隊を出撃させ、敵艦の跳梁を阻止せよ！	Sortie to World 1-1 and clear the stage.
en	204	南西諸島沖に出撃せよ！	B4: Sortie to the Sea Around Nansei Islands	南西諸島沖に艦隊を出撃させ、敵艦隊と交戦せよ！	Sortie to World 1-2 and clear the stage.
en	205	接近する「敵前衛艦隊」を迎撃せよ！	B5: Intercept Approaching Enemy Vanguard Fleet	南西諸島沖に接近する「敵前衛艦隊」を捕捉、これを撃滅せよ！	Sortie to World 1-2 AGAIN and clear the stage.
en	206	「水雷戦隊」で出撃せよ！	B6: Sortie a Torpedo Squadron	軽巡洋艦1隻を旗艦とし、複数の駆逐艦からなる水雷戦隊で出撃せよ！	Sortie a fleet with a CL as flagship and 3 DD as escorts.
en	207	「重巡洋艦」を出撃させよ！	B7: Sortie a Heavy Cruiser	重巡洋艦を旗艦とした艦隊を編成、これを出撃させよ！	Sortie a fleet with a CA as flagship.
en	208	「戦艦」を出撃させよ！	B8: Sortie a Battleship	海上の覇者、戦艦を旗艦とした艦隊を編成、これを出撃させよ！	Sortie a fleet with a BB (slow or fast, BBV don't count) as flagship.
en	209	「空母機動部隊」出撃せよ！	B9: Sortie a Carrier Task Force	空母1隻とその護衛艦艇で構成した空母機動部隊を出撃させよ！	Sortie a fleet with CV/CVL as flagship and 5 DD/CL/AV.
en	210	敵艦隊を10回邀撃せよ！	Bd3: Defeat 10 Enemy Fleets	艦隊全力出撃！遊弋する敵艦隊を10回邀撃せよ！	Score 10 victories against any enemy fleets.
en	211	敵空母を３隻撃沈せよ！	Bd4: Sink 3 Enemy Carriers	艦隊の脅威となる敵空母群。これを捕捉撃滅し、3隻轟沈せよ！	Sink 3 enemy aircraft carriers (CV/CVL).
en	212	敵輸送船団を叩け！	Bd6: Strike the Enemy Transports	敵の輸送船5隻以上を撃沈し、敵の補給路を寸断せよ！	Sink 5 enemy transport ships.
en	213	海上通商破壊作戦	Bw3: Disrupt the Marine Trade	1週間で敵輸送船を20隻以上撃沈せよ！	Sink 20 enemy transport ships.
en	214	あ号作戦	Bw1: Operation A-Go	1週間の全力出撃を行い、可能な限り多くの敵艦隊を捕捉、これを迎撃せよ！	Sortie your fleet 36 times, encounter 24 bosses, defeat 12 bosses and get 6 Perfect S rank victories.
en	215	第２艦隊、出撃せよ！	B3: Second Fleet's Deployment	新たに編成した「第２艦隊」を出撃させよ！	Sortie your 2nd Fleet on a combat mission.
en	216	敵艦隊主力を撃滅せよ！	Bd2: Sink an Enemy Flagship	艦隊を出撃させ、敵艦隊「主力」を捕捉！これを撃滅せよ！	Sink a flagship of any enemy fleet.
en	217	敵空母を撃沈せよ！	B10: Sink an Enemy Carrier	敵機動部隊を捕捉し、これを邀撃、敵空母を轟沈せよ！	Sink an enemy aircraft carrier (CV/CVL).
en	218	敵補給艦を3隻撃沈せよ！	Bd5: Sink 3 Transport Ships	艦隊を出撃させ、敵補給艦を捕捉、これを撃滅せよ！	Sink 3 enemy transport ships.
en	219	「三川艦隊」出撃せよ！	B11: Sortie the Mikawa Fleet	新編成した「三川艦隊」で出撃せよ！	Sortie a fleet with Choukai (鳥海), Aoba (青葉), Kako (加古), Furutaka (古鷹), Tenryuu (天龍) and another fast ship.
en	220	い号作戦	Bw2: Operation I-Go	有力な母艦航空隊で1週間の全力出撃を行い、可能な限り多くの敵空母を撃滅せよ！	Sink 20 enemy aircraft carriers (CV/CVL).
en	221	ろ号作戦	Bw4: Operation Ro-Go	1週間の全力出撃を行い、敵輸送船団を捕捉・撃滅、敵の補給路を寸断せよ！	Sink 50 enemy transport ships.
en	222	「第六駆逐隊」出撃せよ！	B12: Sortie the 6th Destroyer Division	「暁」「響」「雷」「電」による第六駆逐隊、出撃せよ！	Sortie a fleet with ONLY Akatsuki (暁), Hibiki (響), Inazuma (電), and Ikazuchi (雷).
en	223	「第四戦隊」出撃せよ！	B13: Sortie the 4th Cruiser Division	「愛宕」「高雄」「鳥海」「摩耶」を基幹とする第四戦隊で、バシー島沖の敵を撃滅せよ！	Sortie a fleet with Atago (愛宕), Takao (高雄), Choukai (鳥海), Maya (摩耶) and any 2 ships. Score a victory against World 2-2 Boss.
en	224	「西村艦隊」出撃せよ！	B14: Sortie the Nishimura Fleet	「扶桑」「山城」「最上」「時雨」を基幹とする西村艦隊で、オリョール海の敵を撃滅せよ！	Sortie a fleet with Fusou (扶桑改二), Yamashiro (山城改二), Mogami (最上), Shigure (時雨) and any 2 ships. Score a victory against World 2-3 Boss.
en	254	「軽空母」戦隊、出撃せよ！	B29: Sortie a Light Carrier Squadron	軽空母1～2隻、軽巡1隻、駆逐艦3～4隻の艦隊でカムラン半島の敵を撃滅せよ！	Sortie a fleet of 1-2 CVL, 1 CL and 3-4 DD to World 2-1 and score an S rank victory against the boss.
en	225	「第五航空戦隊」出撃せよ！	B15: Sortie the 5th Carrier Division	「翔鶴」「瑞鶴」を基幹とする第五航空戦隊で、北方海域モーレイ海の敵を撃滅せよ！	Sortie a fleet with Shoukaku (翔鶴), Zuikaku (瑞鶴) and any 4 ships. Score a victory against World 3-1 Boss.
en	226	南西諸島海域の制海権を握れ！	Bd7: Gain Control of the Nansei Islands	艦隊を南西諸島海域に全力出撃させ、多数の敵艦隊「主力」群を捕捉、撃滅せよ！	Defeat 5 bosses in World 2.
en	227	新「三川艦隊」出撃せよ！	B16: Sortie the New Mikawa Fleet	完全編成した「三川艦隊」をもって、オリョール海の敵を撃滅せよ！	Sortie a fleet with Choukai (鳥海), Aoba (青葉), Kinugasa (衣笠), Kako (加古), Furutaka (古鷹) and Tenryuu (天龍). Score a victory against World 2-3 Boss.
en	228	海上護衛戦	Bw5: Maritime Escort Operation	有力な対潜能力を持つ海上護衛隊によって、可能な限り多くの敵潜水艦を撃滅せよ！	Sink 15 enemy submarines.
en	229	敵東方艦隊を撃滅せよ！	Bw6: Eliminate the Enemy's Eastern Fleet	西方海域に出撃し、敵東方艦隊の主力を捕捉、これを撃滅せよ！	Defeat 12 bosses in World 4.
en	230	敵潜水艦を制圧せよ！	Bd8: Suppress the Enemy Submarines	対潜能力の充実した艦隊で出撃、敵潜水艦狩りを実施せよ！	Sink 6 enemy submarines.
en	231	「潜水艦隊」出撃せよ！	B17: Sortie a Submarine Fleet	伊号潜水艦2隻からなる潜水艦隊でオリョール海の敵を撃滅せよ！	Sortie a fleet with 2 SS and 4 additional ships. Score a victory against World 2-3 Boss.
en	232	「航空水上打撃艦隊」出撃せよ！	B18: Sortie a Naval Aviation Strike Fleet	航空戦艦2隻と航空巡洋艦2隻を基幹とする艦隊でカレー洋の制海権を握れ！	Sortie a fleet with 2 BBV, 2 CAV and 2 additional ships. Score a victory against World 4-2 Boss.
en	233	「第六戦隊」出撃せよ！	B19: Sortie the 6th Cruiser Division	編成した「第六戦隊」をもって出撃し、オリョール海の敵を撃滅「完全勝利」せよ！	Sortie a fleet with Furutaka (古鷹), Kako (加古), Kinugasa (衣笠), Aoba (青葉) and 2 additional ships. Score a S rank victory against World 2-3 Boss.
en	239	「第八駆逐隊」出撃せよ！	B20: Sortie the 8th Destroyer Division	編成した「第八駆逐隊」を含む艦隊で出撃し、オリョール海の敵を撃滅せよ！	Sortie a fleet with Asashio (朝潮), Michishio (満潮), Ooshio (大潮), Arashio (荒潮) and 2 additional ships. Score a victory against World 2-3 Boss.
en	240	「第十八駆逐隊」出撃せよ！	B21: Sortie the 18th Destroyer Division	編成した「第十八駆逐隊」を含む艦隊で出撃し、北方海域モーレイ海の敵を撃滅せよ！	Sortie a fleet with Kasumi (霞), Arare (霰), Kagerou (陽炎), Shiranui (不知火) and 2 additional ships. Score a victory against World 3-1 Boss.
en	241	敵北方艦隊主力を撃滅せよ！	Bw7: Eliminate the Main Forces of the Enemy's Northern Fleet	北方海域の深部に出撃し、敵北方艦隊の主力艦隊を捕捉、これを撃滅せよ！	Defeat 5 bosses in Worlds 3-3, 3-4 or 3-5.
en	242	敵東方中枢艦隊を撃破せよ！	Bw8: Crush the Core of the Eastern Fleet	西方海域カスガダマ島沖に出撃し、敵東方中枢艦隊を捕捉、これを撃破せよ！	Defeat World 4-4 boss.
en	243	南方海域珊瑚諸島沖の制空権を握れ！	Bw9: Seize Air Superiority in the South	南方海域珊瑚諸島沖に出撃し、敵機動部隊本体を捕捉撃滅、これに完全勝利せよ！	Score two S rank victories at the boss node of World 5-2.
en	244	「第三十駆逐隊(第一次)」出撃せよ！	B22: Sortie the 30th Destroyer Division (Gen.1)	「第三十駆逐隊(第一次)」を含む艦隊で出撃し、キス島沖の主力艦隊と交戦せよ！	Sortie a fleet that consists of Mutsuki (睦月), Kisaragi (如月), Yayoi (弥生), Mochizuki (望月) and up to 2 additional DD to World 3-2 and encounter the boss. C rank or above is required.
en	245	式の準備！(最終)	WB01: In Preparation of Love (Final)	練度の高い(Lv.90～99)第一艦隊旗艦で出撃し、オリョール海の暁に勝利を刻め！	Sortie a fleet with a high level (Lv.90~99) flagship to 2-3 obtain an S rank victory against the boss.
en	246	二人でする初めての任務！	WB02: Your First Mission Together	強い絆を結んだ艦娘を旗艦とした第一艦隊でリランカ島へ出撃、敵中枢を撃滅せよ！	Sortie a fleet to 4-3 with a bonded ship of Lv.100 or more as flagship and score an S rank victory against the boss.
en	247	「航空戦艦」抜錨せよ！	B23: Sortie an Aviation Battleship Fleet	航空戦艦2隻を基幹とする艦隊で、西方海域カスガダマ島の敵勢力を撃破せよ！	Have 2 BBV ships in your main fleet and score a victory against World 4-4 Boss.
en	248	「第三十駆逐隊」対潜哨戒！	B24: 30th Destroyer Division's Anti-Submarine Patrol	「第三十駆逐隊(第二次)」は直ちに抜錨！鎮守府正面の対潜哨戒を実施せよ！	Sortie Mutsuki (睦月), Yayoi (弥生), Uzuki (卯月) and Mochizuki (望月) to World 1-5 and reach the boss, scoring at least a C rank.
en	249	「第五戦隊」出撃せよ！	Bm1: Sortie the 5th Fleet	「第五戦隊」は沖ノ島沖の戦闘哨戒を実施、敵艦隊主力を捕捉、これを撃滅せよ！	Sortie Myoukou (妙高), Nachi (那智) and Haguro (羽黒) to World 2-5. You may add 3 other ships. Score an S rank victory against the boss.
en	250	新編「第二航空戦隊」出撃せよ！	B25: Sortie the 2nd Carrier Division	新編「二航戦」を基幹とした艦隊で、珊瑚諸島沖に出撃、敵機動部隊を撃滅せよ！	Sortie Hiryuu Kai2 (飛龍改二) as the flagship, Souryuu (蒼龍) and 2 DD to World 5-2. You may add 2 other ships. Score an S rank victory against the boss.
en	251	精鋭「第二航空戦隊」抜錨せよ！	B26: Sortie the Elite 2nd Carrier Division	錬成を終え再編成「二航戦」を基幹とした艦隊で、敵リランカ島を空襲、破砕せよ！	Sortie Souryuu Kai2 (蒼龍改二) as the flagship, Hiryuu Kai2 (飛龍改二) and 2 DD to World 4-3. You may add 2 other ships. Score an S rank victory against the boss.
en	252	戦艦「榛名」出撃せよ！	B27: Deploy a Fleet Led By Haruna	第二次改装実施した「榛名」を基幹とした艦隊で「南方海域」へ進出、敵艦隊主力を撃滅せよ！	Sortie a fleet with Haruna Kai2 (榛名改二) as the flagship and up to 5 additional ships to World 5-1 and score an S rank victory against the boss.
en	253	「第六〇一航空隊」出撃せよ！	B28: Sortie the 601 Air Group	雲龍型航空母艦「雲龍改」含む機動部隊で珊瑚島沖に出撃、敵機動部隊を撃滅せよ！	Sortie a fleet with Unryuu Kai (雲龍改) as the flagship to World 5-2 and score an S rank victory against the boss.
en	255	「水雷戦隊」バシー島沖緊急展開	B30: Sortie a Torpedo Squadron to Bashi Islands	軽巡を旗艦とした水雷戦隊(軽巡最大2隻他駆逐艦)でバシー島沖の敵を撃滅せよ！	Sortie a fleet of 1-2 CL (one as the flagship) and 4-5 DD to World 2-2. Score a victory at the boss and sink the enemy flagship.
en	256	「潜水艦隊」出撃せよ！	Bm2: Sortie a Submarine Fleet	潜水艦戦力を中核とした艦隊で中部海域哨戒線へ反復出撃、敵戦力を漸減せよ！	Sortie to World 6-1 and obtain an S rank victory at the boss node 3 times.
en	257	「水雷戦隊」南西へ！	Bm3: Sortie a Torpedo Squadron	軽巡旗艦の水雷戦隊(軽巡最大3隻他駆逐艦)を急派、南西諸島防衛線で敵を撃滅せよ！	Sortie a fleet of 1-3 CL (one as the flagship) and 3-5 DD to World 1-4. Score an S rank victory against the boss.
en	258	「第二戦隊」抜錨！	B31: Sortie the 2nd Squadron	「第二戦隊」を基幹とした艦隊でカレー洋に進出、反復出撃により敵海上兵力を撃滅せよ！	Sortie Nagato (長門), Mutsu (陸奥), Fusou (扶桑), Yamashiro (山城) and up to 2 additional ships to World 4-2. Score two S rank victories at the boss node.
en	259	「水上打撃部隊」南方へ！	Bm4: Surface Strike Fleet, Onwards to the South!	戦艦3隻軽巡1隻他を基幹とした水上打撃部隊で南方海域へ進出、敵艦隊を撃滅せよ！	Sortie 3 BB/BBV (only slow battleships), 1 CL and up to 2 additional ships to World 5-1 and score an S rank victory at the boss node.
en	260	「戦艦部隊」北方海域に突入せよ！	B32: Sortie a Battleship Squadron to the Northern Sea	戦艦2隻と直援軽空母1隻(正規空母無し)基幹の艦隊で北方AL海域に突入、敵を撃滅せよ！	Sortie 2 BB (slow or fast, BBV don't count), 1 CVL and up to 3 additional ships to World 3-5 and score an S rank victory at the boss node.
en	261	海上輸送路の安全確保に努めよ！	Bw10: Secure the Marine Transportation Route	鎮守府正面の対潜哨戒を反復実施し、安全な海上輸送路を確保せよ！	Sortie to World 1-5 and score an A rank victory (or higher) at the boss node 3 times.
en	262	「西村艦隊」南方海域へ進出せよ！	B33: Sortie the Nishimura Fleet to the Southern Waters	「西村艦隊」を南方海域に進出させ、敵主力艦隊へ突入、これを撃滅せよ！	Sortie Fusou (扶桑), Yamashiro (山城), Mogami (最上), Shigure (時雨) and Michishio (満潮) (you may also add another ship) to World 5-1 and score an S rank victory at the boss node.
en	263	「第六戦隊」南西海域へ出撃せよ！	B34: Sortie the 6th Squadron to the Southwestern Waters	「古鷹」「加古」「青葉」「衣笠」を基幹とした「第六戦隊」で、沖ノ島沖の敵艦隊を撃滅せよ！	Sortie Furutaka (古鷹), Kako (加古), Aoba (青葉), Kinugasa (衣笠) and up to 2 additional ships to World 2-5 and score an S rank victory at the boss node.
en	264	「空母機動部隊」西へ！	Bm6: Carrier Task Force, Onwards to the West!	航空母艦2隻(随伴駆逐艦2隻)を基幹とする空母機動艦隊で、カレー洋の敵艦隊を撃滅せよ！	Sortie a fleet consisting of 2 CV/CVL, 2 DD and 2 additional ships to World 4-2. Score an S rank victory at the boss node.
en	265	海上護衛強化月間	Bm5: Monthly Escort Duty	鎮守府正面海域の対潜哨戒を強化し、敵潜水艦を制圧、安全な海上輸送体制を確立せよ！	Sortie a fleet to World 1-5 and score 10 A rank (or above) victories at the boss node.
en	266	「水上反撃部隊」突入せよ！	Bm7: Sortie the Counterattack Squadron	駆逐艦を旗艦とした重巡1隻軽巡1隻駆逐艦4隻からなる水上挺身部隊、沖ノ島沖に突入せよ！	Sortie a fleet with a DD flagship, 1 CA, 1 CL and 3 more DD to World 2-5 and score an S rank victory at the boss node.
en	267	「第十一駆逐隊」出撃せよ！	B35: Sortie the 11th Destroyer Division	「第十一駆逐隊」を含む艦隊で出撃し、オリョール海の敵を撃破せよ！	Sortie Fubuki (吹雪), Shirayuki (白雪), Hatsuyuki (初雪), Murakumo (叢雲) and up to 2 additional ships to World 2-3 and score a victory at the boss node.
en	268	「第十一駆逐隊」対潜哨戒！	B36: 11th Destroyer Division's Anti-Submarine Patrol	「第十一駆逐隊」を含む艦隊で鎮守府正面へ展開、対潜哨戒を実施せよ！	Sortie Fubuki (吹雪), Shirayuki(白雪), Hatsuyuki (初雪) and Murakumo (叢雲) to World 1-5 and get a score of at least C at the boss node.
en	269	「第二一駆逐隊」出撃せよ！	B37: Sortie the 21st Destroyer Division	「第二一駆逐隊」を含む艦隊で出撃し、北方海域モーレイ海の敵を撃滅せよ！	Sortie Hatsuharu (初春), Nenohi (子日), Wakaba (若葉) and Hatsushimo (初霜) and up to 2 additional ships to World 3-1 and score an S rank victory at the boss node.
en	270	「第二二駆逐隊」出撃せよ！	B39: Sortie the 22nd Destroyer Division	「第二二駆逐隊」を含む艦隊で南西諸島防衛線に出撃、敵主力艦隊を撃滅せよ！	Sortie Satsuki (皐月), Fumizuki (文月), Nagatsuki (長月), 1 more DD and up to 2 additional ships to World 1-4 and score an S rank victory at the boss node.
en	271	「那智戦隊」抜錨せよ！	B38: Sortie Nachi's Squadron	旗艦「那智」及び「初霜」「霞」「潮」「曙」他1隻の艦隊でバシー島沖の敵を撃滅せよ！	Sortie a fleet with Nachi (那智) as flagship, Hatsushimo (初霜), Kasumi (霞), Ushio (潮), Akebono (曙) and 1 additional ship to World 2-2 and score an S rank victory at the boss node.
en	272	「改装防空重巡」出撃せよ！	B40: Sortie the Remodelled Anti-Aircraft Heavy Cruiser	摩耶改または摩耶改二及び軽巡1駆逐2隻を含む艦隊でオリョール海の敵艦隊を撃滅せよ！	Sortie a fleet with Maya (摩耶) Kai or Kai2, 1 CL, 2 DD and up to 2 additional ships to World 2-3 and score an S rank victory at the boss node.
en	273	新編「三川艦隊」ソロモン方面へ！	B41: Sortie the Mikawa Fleet to Solomon Islands	第一艦隊に編成した「三川艦隊」を南方海域に進出させ、同方面の敵艦隊を撃滅せよ！	Sortie the main fleet with Choukai Kai2 (鳥海改ニ) as the flagship and any 5 of Aoba (青葉), Kinugasa (衣笠), Kako (加古), Furutaka (古鷹), Tenryuu (天龍), Yuubari (夕張) to World 5-1 and score an S rank victory at the boss node.
en	274	「第六駆逐隊」対潜哨戒なのです！	B42: 6th Destroyer Division's Anti-Submarine Patrol	「第六駆逐隊」を含む艦隊で鎮守府正面へ展開、対潜哨戒を実施せよ！	Sortie Akatsuki (暁), Hibiki (響 or Верный), Inazuma (雷) and Ikazuchi (電) to World 1-5. At least C rank is required at the boss node.
en	275	抜錨！「第十八戦隊」	B43: 18th Cruiser Division, Set Sail!	「天龍」「龍田」を基幹戦力とした「第十八戦隊」で出撃し、オリョール海の敵主力を撃滅せよ！	Sortie Tenryuu (天龍), Tatsuta (龍田) and 2 or more other ships to World 2-3 and score an S rank victory at the boss node.
en	276	海上突入部隊、進発せよ！	B44: Sortie the Maritime Assault Fleet	「比叡」「霧島」「長良」「暁」「雷」「電」の艦隊で、南方海域進出作戦を実施、敵を撃滅せよ！	Sortie Hiei (比叡), Kirishima (霧島), Nagara (長良), Akatsuki (暁), Ikazuchi (雷) and Inazuma (電) to World 5-1 and score an S rank victory at the boss node.
en	277	「第六駆逐隊」対潜哨戒を徹底なのです！	B45: 6th Destroyer Division's Thorough Anti-Submarine Patrol na no desu	「第六駆逐隊」を含む艦隊で鎮守府正面で対潜哨戒を実施、敵潜水艦部隊を痛打せよ！	Sortie Akatsuki Kai2 (暁改二) as the flagship, Hibiki (響 or Верный), Ikazuchi (雷) and Inazuma (電) to World 1-5 and score an A rank victory at the boss node.
en	278	「第一水雷戦隊」ケ号作戦、突入せよ！	B46: Sortie the 1st Torpedo Squadron on Operation Ke	北方突入準備を完了した「一水戦」で北方キス島に突入！包囲網を破り、友軍を救出せよ！	Sortie Abukuma (阿武隈) as the flagship, Hibiki (響 or Верный), Hatsushimo (初霜), Wakaba (若葉), Samidare (五月雨) and Shimakaze (島風) to World 3-2 and score a victory at the boss node.
en	279	「第一水雷戦隊」北方ケ号作戦、再突入！	B47: Sortie the 1st Torpedo Squadron on Operation Ke Again	北方再突入準備の新編「一水戦」で北方キス島に再突入を敢行、同撤収作戦を完遂せよ！	Sortie Abukuma Kai2 (阿武隈改二) as the flagship, Hibiki (響 or Верный), Yuugumo (夕雲), Naganami (長波), Akigumo (秋雲) and Shimakaze (島風) to World 3-2 and score an S rank victory at the boss node.
en	285	「空母機動部隊」北方海域に進出せよ！	B49: Sortie an Aircraft Carrier Task Force to the Aleutian Islands	航空母艦を旗艦とした空母機動部隊を北方AL海域方面に展開、敵戦力を撃滅せよ！	Sortie a fleet with a CV flagship to World 3-5 and score an S rank victory at the boss node.
en	286	鎮守府正面の対潜哨戒を強化せよ！	B48: Strengthen the Anti-Submarine Patrol in Front of the Naval Base	鎮守府正面の対潜哨戒を強化し、海上資源輸送路の安全を確立せよ！	Sortie to World 1-5 and score 4 victories at the boss node.
en	287	「第五航空戦隊」珊瑚諸島沖に出撃せよ！	B50: Sortie the 5th CarDiv to the South	再編成した「第五航空戦隊」を珊瑚諸島沖に展開、敵機動部隊を捕捉撃滅せよ！	Sortie Shoukaku (翔鶴), Zuikaku (瑞鶴), Oboro (朧), Akigumo (秋雲) and up to 2 additional ships to World 5-2 and score an S rank victory at the boss node.
en	288	新編「第二一戦隊」北方へ出撃せよ！	B51: Sortie the New 21st Cruiser Division	新編「第二一戦隊」を基幹とする艦隊で北方海域モーレイ海に出撃、敵を撃滅せよ！	Sortie Nachi Kai2 (那智改二), Ashigara Kai2 (足柄改二), Tama (多摩), Kiso (木曾) and up to 2 additional ships to World 3-1 and score an S rank victory at the boss node.
en	289	「第十六戦隊(第一次)」出撃せよ！	B52: Sortie the 16th Squadron (1st Gen.)	「第十六戦隊(第一次)」をバシー島沖に展開、敵艦隊を撃滅せよ！	Sortie Ashigara (足柄) as the flagship, Kuma (球磨), Nagara (長良) and up to 3 additional ships to World 2-2 and score an S rank victory at the boss node.
en	301	はじめての「演習」！	C1: Your First Exercise	他の提督(プレイヤー)の艦隊と「演習」を行おう！	Challenge another fleet in exercises.
en	302	大規模演習	C4w: Large-scale Exercises	今週中に「演習」で他の提督の艦隊に対して20回「勝利」しよう！	Get 20 victories in exercises within the same week.
en	303	「演習」で練度向上！	C2d1: Do Exercises	本日中に他の司令官の艦隊に対して3回「演習」を挑もう！	Challenge 3 other fleets in exercises within the same day.
en	304	「演習」で他提督を圧倒せよ！	C3d2: Defeat Other Admirals	本日中に他の司令官の艦隊との「演習」で5回以上「勝利」をおさめよう！	Get 5 victories in exercises within the same day.
en	306	式の準備！(その弐)	WC01: In Preparation of Love (Part 2)	本日中に「演習」で2回以上「勝利」をおさめ、式への気持ちを整理しよう！	Show your love by getting 2 victories in exercises.
en	307	艦隊の練度向上に努めよ！	C5: Improve the Efficiency of the Fleet	作戦前に艦隊の練度向上を図る！本日中に「演習」で3回以上「勝利」をおさめよう！	Get 3 victories in exercises within the same day.
en	308	演習を強化、艦隊の練度向上に努めよ！	C6: Improve the Efficiency of the Fleet Again	艦隊のさらなる練度向上を図る！本日中に「演習」で4回以上「勝利」をおさめよう！	Get 4 victories in exercises within the same day.
en	309	北方再突入に備え、練度向上に努めよ！	C7: Prepare for the Second Iteration of Operation Ke	艦隊再突入に備え、艦隊練度向上を図る！本日中に「演習」で4回以上「勝利」せよ！	Get 4 victories in exercises within the same day.
en	311	精鋭艦隊演習	C8m: Exercises for the Elite	同日中に「演習」で7回以上「勝利」をおさめ、我が精鋭艦隊の練度を示そう！	Get 7 victories in exercises within the same day.
en	401	はじめての「遠征」！	D1: First Expedition	艦隊を「遠征」に出発させよう！	Perform an expedition.
en	402	「遠征」を３回成功させよう！	D2d1: Complete 3 Expeditions	本日中に「遠征」３回成功させよう！	Perform 3 successful expeditions within the same day.
en	403	「遠征」を１０回成功させよう！	D3d2: Complete 10 Expeditions	本日中に「遠征」10回成功させよう！	Perform 10 successful expeditions within the same day.
en	404	大規模遠征作戦、発令！	D4w1: Large-scale Expedition Operation	今週中に「遠征」30回成功させよう！	Perform 30 successful expeditions within the same week.
en	405	第一次潜水艦派遣作戦	D5: The First Submarine Operation	はじめての潜水艦派遣作戦を成功させよう！	Complete Expedition 30 (潜水艦派遣作戦).
en	406	第二次潜水艦派遣作戦	D6: The Second Submarine Operation	第二次潜水艦派遣作戦を成功させよう！	Complete Expedition 30 (潜水艦派遣作戦) one more time.
en	408	潜水艦派遣作戦による技術入手の継続！	D7: Continuation of Submarine Operations	第三次及び第四次潜水艦派遣作戦を成功させ、他国製技術の導入に努めよ！	Complete Expedition 30 (潜水艦派遣作戦) two more times.
en	409	潜水艦派遣による海外艦との接触作戦	D8: Strategy Meeting with Overseas Submarine Dispatch	有力な潜水艦隊派遣による海外艦との接触作戦を成功させよ！	Complete expedition 31 (海外艦との接触) and receive foreign destroyer Z1!
en	410	南方への輸送作戦を成功させよ！	D9w2: Transportation Towards South	激戦海域である南方海域への「東京急行」系遠征を敢行、これを成功させよ！	Complete expedition 37 or 38 (東京急行).
en	411	南方への鼠輸送を継続実施せよ！	D11w3: Transportation Towards South (Cont.)	今週中に「東京急行」系遠征を継続的に実施、同種作戦を7回成功させよう！	Complete expedition 37 or 38 (東京急行) a total of 7 times in a week.
en	412	航空火力艦の運用を強化せよ！	D10: Strengthen the Operation of the BBV	「航空戦艦運用演習」を実施し、航空火力艦の運用の強化に努めよ！	Complete expedition 23 (航空戦艦運用演習).
en	413	(続)航空火力艦の運用を強化せよ！	D12: Strengthen the Operation of the BBV (Cont.)	「航空戦艦運用演習」を継続実施し、航空火力艦の運用の強化に引き続き努めよ！	Complete expedition 23 (航空戦艦運用演習) 4 more times.
en	414	遠洋潜水艦作戦を実施せよ！	D13: Blue Waters Submarine Operation	「遠洋潜水艦作戦」を実施し、潜水艦隊の練度向上と敵艦隊漸減に努めよ！	Complete expedition 39 (遠洋潜水艦作戦).
en	415	遠洋潜水艦作戦の成果を拡大せよ！	D14: Blue Waters Extended Submarine Operation	「遠洋潜水艦作戦」を継続実施し、潜水艦隊の練度向上と敵艦隊漸減に努めよ！	Complete expedition 39 (遠洋潜水艦作戦) 2 more times.
en	416	防空射撃演習を実施せよ！	D15: Air Defence Exercises	「防空射撃演習」を複数回実施し、艦隊の防空能力を高めよ！	Complete expedition 6 (防空射撃演習) 3 times.
en	417	囮機動部隊支援作戦を実施せよ！	D16: Deploy the Decoy Task Force	「囮機動部隊支援作戦」を実施し、これを成功させよ！	Complete expedition 15 (囮機動部隊支援作戦).
en	418	観艦式予行を実施せよ！	D17: Naval Ceremony Preparations	観艦式を実施する。予行として「観艦式予行」を複数回実施し、これを2回成功させよ！	Complete expedition 7 (観艦式予行) 2 times.
en	419	観艦式を敢行せよ！	D18: Naval Review	練度の高い艦隊で観艦式本番を実施する。「観艦式」を実施し、これを成功させよ！	Complete expedition 8 (観艦式).
en	420	機動部隊の運用を強化せよ！	D19: Strengthen the Carrier Task Force Operations	機動部隊遠征を実施、「MO作戦」及び「敵母港空襲作戦」を展開、これを成功させよ！	Complete expeditions 26 (MO作戦) and 35 (敵母港空襲作戦).
en	501	はじめての「補給」！	E1: First Supply	補給は大事です！燃料・弾薬を艦に「補給」しよう！	Resupply a ship.
en	502	はじめての「入渠」！	E2: First Docking	戦闘で傷ついた艦を「入渠」させて修理して、次の出撃に備えよう！	Repair a ship.
en	503	艦隊大整備！	E3d1: Daily Repairs	各艦隊から整備が必要な艦を5隻以上ドック入りさせ、大規模な整備をしよう！	Repair 5 ships.
en	504	艦隊酒保祭り！	E4d2: Daily Resupplies	艦隊酒保祭り！各艦に延べ15回以上の補給を実施しよう！	Resupply your ships 15 times.
en	601	はじめての「建造」！	F1: First Construction	「工廠」で鋼材などの資材を使って新しい艦を「建造」しよう！	Craft a ship.
en	602	はじめての「開発」！	F2: First Development	「工廠」でボーキサイトなどの資材を使って新しい装備アイテムを「開発」しよう！	Craft a piece of equipment.
en	603	はじめての「解体」！	F3: First Dismantlement	「工廠」で不要な艦を「解体」してみよう！	Dismantle a ship.
en	604	はじめての「廃棄」！	F4: First Scrapping	「工廠」で不要な装備アイテムを「廃棄」してみよう！	Scrap a piece of equipment.
en	605	新装備「開発」指令	F5d1: Develop New Equipment	「工廠」で装備アイテムを新たに「開発」しよう(失敗もOK)！	Craft a piece of equipment. (Failures are OK)
en	606	新造艦「建造」指令	F6d2: Construct New Ship	「工廠」で艦娘を本日中に新たに「建造」しよう！	Craft a ship.
en	607	装備「開発」集中強化！	F7d3: Develop More Equipment	「工廠」で装備アイテムを本日中に3回「開発」しよう(失敗もOK)！	Craft 3 pieces of equipment. (Failures are OK)
en	608	艦娘「建造」艦隊強化！	F8d4: Construct More New Ships	艦隊強化のため、「工廠」で艦娘を本日中に3隻「建造」しよう！	Craft 3 ships.
en	609	軍縮条約対応！	F9d5: Dismantlement Duty	少し艦隊規模が大きくなりすぎました！「工廠」で不要な艦を2隻「解体」してください！	Scrap 2 ships.
en	610	「大型艦建造」の準備！(その弐)	F10: Preparation for LSC (Part 2)	大型艦建造の準備をします！「工廠」で装備アイテムを4回「廃棄」してみてください！	Scrap equipment 4 times.
en	611	式の準備！(その壱)	WF01: In Preparation of Love (Part 1)	式の準備をします！「工廠」で装備アイテムを2回「廃棄」して身の回りの整理を！	Scrap equipment 2 times to show your love!
en	612	輸送用ドラム缶の準備	F11: Prepare the Drum Canisters	「工廠」で装備アイテムを3回「廃棄」して、輸送用のドラム缶を準備します。	Scrap equipment 3 times to acquire a shipping barrel.
en	613	資源の再利用	F12w: Recycling Resources	「工廠」で余剰の装備アイテムをなるべく多く「廃棄」して、鋼材の再利用に努めよう！	Scrap equipment 24 times.
en	614	機種転換	F13: Model Conversion (to Tenzan)	「九七式艦攻(友永隊)」搭載空母を秘書艦にした状態で新たに「天山」を2つ廃棄！	With an aircraft carrier equipped with Type 97 Torpedo Bomber (Tomonaga Squadron) as your secretary, scrap 2 Tenzans (simultaneously) to upgrade the Type 97 to Tenzan Model 12 (Tomonaga Squadron). The Type 97 must not be locked or you'll lose the Tenzans.
en	615	機種転換	F14: Model Conversion (to Suisei)	「九九式艦爆(江草隊)」搭載空母を秘書艦にした状態で新たに「彗星」を2つ廃棄！	With an aircraft carrier equipped with Type 99 Dive Bomber (Ekusa Squadron) as your secretary, scrap 2 Suiseis (simultaneously) to upgrade the Type 99 to Suisei (Ekusa Squadron). The Type 99 must not be locked or you'll lose the Suiseis.
en	616	機種転換	F15: Model Conversion (to Reppuu)	「零戦52型丙(六〇一空)」搭載空母を秘書艦にした状態で新たに「烈風」を2つ廃棄！	With an aircraft carrier equipped with Zero Fighter Type 52 Type C (601 Air Group) as your secretary, scrap 2 Reppuus to upgrade the Type 52 to Reppuu (601 Air Group). The Type 52 must not be locked or you'll lose the Reppuus.
en	617	「伊良湖」の準備	F16: Preparing for Irako	「工廠」で不要な装備アイテムをいくつか「廃棄」して、新型給糧艦召喚の準備をしましょう！	Scrap equipment 10 times.
en	618	はじめての「装備改修」！	F17: First Equipment Modernisation	「改修工廠」で「装備」を改修してみましょう！明石さん、お願いします！	Perform equipment modernisation once.
en	619	装備の改修強化	F18d6: Improve Equipment	「改修工廠」で「装備」の改修強化に努めます。	Perform equipment modernisation once.
en	622	機種転換	F19: Model Conversion	「九七式艦攻(村田隊)」搭載「翔鶴」を秘書艦にして、新たに「天山」を2つ廃棄！	With Shoukaku equipped with a Type 97 Torpedo Bomber (Murata Squadron)‎ as your secretary, scrap 2 Tenzans to upgrade the Type 97 to Tenzan Model 12 (Murata Squadron).
en	623	精鋭「九七式艦攻」部隊の編成	F20: Formation of the Elite Type 97 Torpedo Bomber Squadron	「翔鶴」または「赤城」を秘書艦にした状態で新たに「九七式艦攻」を3つ廃棄！	With Shoukaku (翔鶴) or Akagi (赤城) as your secretary, dismantle 3 Type 97 Torpedo Bombers to obtain a Type 97 Torpedo Bomber (Murata Squadron).
en	624	試作艤装の準備	F21: Prototype Flight Deck Outfitting Preparations	「工廠」で装備アイテムを7つ「廃棄」して、「試製甲板カタパルト」を準備します。	Scrap 7 pieces of equipment.
en	701	はじめての「近代化改修」！	G1: First Modernization	任意の艦を近代化改修(合成)して、強化せよ！	Perform a successful modernization.
en	702	艦の「近代化改修」を実施せよ！	G2d: Ship Modernizations	近代化改修を実施して、２回以上これを成功させよ！	Perform 2 successful modernizations within the same day.
en	703	「近代化改修」を進め、戦備を整えよ！	G3w: Proceed with Modernizations	一週間の間に、近代化改修を１5回成功させよ！	Perform 15 successful modernizations within the same week.
en	704	「大型艦建造」の準備！(その壱)	G4: Preparation for LSC (Part 1)	大型艦/新型艦建造のための準備を行う。任意の艦で近代化改修を4回成功させよ！	Perform 4 successful modernizations.
en	293	「第三航空戦隊」南西諸島防衛線に出撃！	B53: Sortie the 3rd Carrier Division to Protect the Nansei Islands	編成した「第三航空戦隊」を南西諸島防衛線に展開、敵侵攻艦隊を捕捉撃滅せよ！	Sortie Zuikaku Kai (瑞鶴改) as the flagship, Zuihou (瑞鳳), Chitose (千歳), Chiyoda (千代田) and up to 2 additional ships to World 1-4 and score an S rank victory at the boss node.
en	290	秋刀魚漁：「秋刀魚」を収獲しよう！	Saury Fishing: Let's Harvest Some Saury	近海及び北方海域の漁場に展開する敵艦隊を撃破して、「秋刀魚」を3尾入手せよ！	Defeat enemy fleets in Worlds 1 and 3 and gather 3 saury.
en	165	「第四航空戦隊」を編成せよ！	A60: Organise the 4th Carrier Division	航空戦艦「伊勢改」及び「日向改」を基幹戦力とした第四航空戦隊を編成せよ！	Have Ise Kai (伊勢改) and Hyuuga Kai (日向改) in your main fleet.
en	166	「小沢艦隊」を編成せよ！	A61: Organise the Ozawa Fleet	「瑞鶴改」旗艦、空母「瑞鳳改」「千歳」「千代田」及び「伊勢改」「日向改」を配備せよ！	Have Zuikaku Kai (瑞鶴改) as the flagship, aircraft carriers Zuihou Kai (瑞鳳改), Chitose (千歳) and Chiyoda (千代田), and aviation battleships Ise Kai (伊勢改) and Hyuuga Kai (伊勢改) in your main fleet. 
en	291	秋刀魚漁：「秋刀魚」をもっと収獲しなきゃ！	Saury Fishing: You've Got to Harvest More Saury	ちょっと大変だけれど、漁場の安全を確保して「秋刀魚」を10尾確保しなきゃ駄目よ！	Ensure the safety of the fishing grounds and gather 10 more saury.
en	294	「小沢艦隊」出撃せよ！	B54: Sortie the Ozawa Fleet	「小沢艦隊」を沖ノ島海域前面に展開し、侵攻する敵機動部隊を捕捉、これを撃滅せよ！	Sortie Zuikaku Kai (瑞鶴改) as the flagship, aircraft carriers Zuihou Kai (瑞鳳改), Chitose (千歳) and Chiyoda (千代田), and aviation battleships Ise Kai (伊勢改) and Hyuuga Kai (伊勢改) to World 2-4 and score an S rank victory at the boss node.
en	625	試製航空艤装の追加試作	F23: Additional Prototype Deck Outfitting	「工廠」で装備アイテムを9つ「廃棄」して、「試製甲板カタパルト」を追加試作します。	Scrap 9 pieces of equipment.
en	292	秋刀魚漁：もっと頑張ってもいいのよ！	Saury Fishing: Let's Harvest Even More Saury	かなり大変だけれど、秋刀魚漁、もっともっと頑張ってもいいのよ！	Work hard and gather even more saury.
en	164	「第三航空戦隊」を編成せよ！	A59: Organise the 3rd Carrier Division	「瑞鶴改」を旗艦とし、「瑞鳳」「千歳」「千代田」を加えた4隻の空母部隊を編成せよ！	Have Zuikaku Kai (瑞鶴改) as the flagship, Zuihou (瑞鳳), Chitose (千歳) and Chiyoda (千代田) in your main fleet.
en	626	精鋭「艦戦」隊の新編成	F22: Reorganisation of the Fighter Forces	要熟練搭乗員：練度max「零戦21型」搭載「鳳翔」秘書艦で「零戦21型」x2「九六艦戦」x1廃棄！	With Houshou (鳳翔) as the secretary equipped with a Type 21 Zero Fighter (零戦21型) at maximum skill level, scrap two Type 21 Zero Fighters (零戦21型) and a Type 96 Fighter (九六艦戦).
en	627	機種転換	F24: Model Conversion	「零戦21型(熟練)」搭載空母を秘書艦にして、新たに「零戦52型」を2つ廃棄！	With an aircraft carrier equipped with Type 21 Zero Fighter (Skilled) (零戦21型(熟練)) as your secretary, scrap two Type 52 Zero Fighters (零戦52型).
en	628	機種転換	F25: Model Conversion	練度max「零戦21型(熟練)」搭載空母を秘書艦にして、新たに「零戦52型」を2つ廃棄！	With an aircraft carrier equipped with Type 21 Zero Fighter (Skilled) (零戦21型(熟練)) at maximum skill level as your secretary, scrap two Type 52 Zero Fighters (零戦52型).
en	629	「艦戦」隊の再編成	F26: Reorganisation of the Fighter Forces	練度max「零戦52型(熟練)」搭載「瑞鶴」秘書艦で「零戦52型丙(六〇一空)」を廃棄！	With Zuikaku equipped with Type 52 Zero Fighter (Skilled) (零戦52型(熟練)) at maximum skill level as your secretary, scrap a Type 52-C Zero Fighter (601 Air Group) (零戦52型丙(六〇一空)).
en	630	「艦戦」隊の再編成	F28: Reorganisation of the Fighter Forces	練度max「零戦21型(熟練)」搭載「瑞鶴」が秘書の状態で、「零戦21型」を2つ廃棄！	With Zuikaku equipped with Type 21 Zero Fighter (Skilled) (零戦21型(熟練)) at maximum skill level as your secretary, scrap two Type 21 Zero Fighters (零戦21型).
en	632	機種転換	F29: Model Conversion	練度max「零戦21型(付岩本小隊)」搭載「瑞鶴」秘書艦で、「零戦52型」を2つ廃棄！	With Zuikaku equipped with Type 21 Zero Fighter (Iwamoto Squadron) (零戦21型(付岩本小隊)) at maximum skill level as your secretary, scrap two Type 52 Zero Fighters (零戦52型).
en	167	新航空戦隊を編成せよ！	A62: Organise the New Carrier Fleet	改二改装を終えた翔鶴型航空母艦2隻と同護衛艦による新航空戦隊を新編成せよ！	Have Shoukaku Kai2 (翔鶴改二) and Zuikaku Kai2 (瑞鶴改) along with 2 destroyers as their escort in your main fleet.
en	631	機種転換＆部隊再編	F27: Model Conversion and Force Reorganisation	練度max「零戦52型丙(付岩井小隊)」搭載「瑞鶴」秘書艦で、「零戦62型(爆戦)」を2つ廃棄！	With Zuikaku equipped with Type 52-C Zero Fighter (Iwai Squadron) (零戦52型丙(付岩井小隊)) at maximum skill level as your secretary, scrap two Type 62 Zero Fighter-bombers (零戦62型(爆戦)).
en	633	機種転換＆部隊再編	F30: Model Conversion and Force Reorganisation	部隊を再編する！練度max「零戦52型甲(付岩本小隊)」搭載「瑞鶴」秘書艦で、「彩雲」を2つ廃棄！	With Zuikaku equipped with Type 52-A Zero Fighter (Iwamoto Squadron) (零戦52型甲(付岩本小隊)) at maximum skill level as your secretary, scrap two Saiuns (彩雲).
en	295	「第十六戦隊(第二次)」出撃せよ！	B55: Sortie the 16th Squadron (2nd Gen.)	「第十六戦隊(第二次)」をオリョール海に展開、敵主力艦隊を捕捉、これを撃滅せよ！	Sortie Natori (名取) as the flagship, Isuzu (五十鈴), Kinu (鬼怒) and up to 3 additional ships to World 2-3 and score an S rank victory at the boss node.
en	298	師走の「間宮」のお手伝い	Help Mamiya with Preparations	提督お手伝いすみません…「お飾り材料」を16個集めて頂けないでしょうか？	Find 16 decoration materials for Mamiya.
en	170	精強な「水上反撃部隊」を再編成せよ！	A65: Strengthen the Surface Counterattack Fleet	駆逐艦「霞」旗艦、「足柄」「大淀」「朝霜」「清霜」他の水上反撃部隊を再編成せよ！	Have Kasumi (霞) as the flagship, Ashigara (足柄), Ooyodo (大淀), Asashimo (朝霜) and Kiyoshimo (清霜) in your main fleet.
en	296	新編成航空戦隊、北方へ進出せよ！	B56: Sortie the New Carrier Division to the North	「新編成航空戦隊」をアルフォンシーノ方面へ進出、敵泊地の機動部隊を撃滅せよ！	Sortie 2 fleet carriers, 2 aviation battleships or aviation cruisers and 2 destroyers to World 3-3 and score an S rank victory at the boss node.
en	802	新年の「伊良湖」のお手伝い！	Helping Irako Organise New Year Celebrations	大丈夫、新年は収集任務じゃないんです！東部オリョール海の敵艦隊を三回撃滅してください！	Sortie a fleet to World 2-3 and score three S rank victories at the boss node.
en	804	迎春！「機動部隊」抜錨せよ！	New Year's Greetings! Mobilisation of the Carrier Task Force	空母2隻を基幹戦力とする機動部隊をMS諸島沖に展開、来襲する敵攻略部隊を反復撃滅せよ！	Sortie a fleet with 2 standard fleet carriers to World 6-2 and score two S rank victories at the boss node.
en	168	「第十六戦隊(第二次)」を編成せよ！	A63: Organise the 16th Squadron (2nd Gen.)	「名取」を旗艦として「五十鈴」「鬼怒」を擁する、第十六戦隊(第二次)を編成せよ！	Have Natori (名取) as the flagship, Isuzu (五十鈴) and Kinu (鬼怒) in your main fleet.
en	169	「新編成航空戦隊」を編成せよ！	A64: Organize the New Carrier Division	空母2隻+航空戦艦/航空巡洋艦2隻+駆逐艦2隻の新航空戦隊を編成せよ！	Have 2 fleet carriers, 2 aviation battleships or aviation cruisers and 2 destroyers in your main fleet.
en	801	謹賀新年！「水雷戦隊」出撃始め！	Happy New Year! Sortie the Torpedo Squadron	水雷戦隊を製油所地帯沿岸に展開！同海域の敵艦隊を撃滅、新年の暁に勝利を刻むのです！	Sortie a light cruiser and five destroyers to World 1-3 and score an S rank victory at the boss node.
en	805	旗艦「霞」北方海域を哨戒せよ！	B58: Send Kasumi to Patrol the Northern Sea	旗艦「霞改二」で駆逐艦4隻を含む艦隊を北方海域に投入し、モーレイ海哨戒を実施せよ！	Sortie a fleet with Kasumi Kai2 (霞改二) as the flagship, 3 destroyers and up to 2 additional ships to World 3-1 and score a victory at the boss node.
en	806	旗艦「霞」出撃！敵艦隊を撃滅せよ！	B59: Sortie Kasumi and Defeat the Enemy Fleet	旗艦「霞改二」で駆逐艦3隻を含む艦隊で南西諸島沖ノ島沖に突入！敵主力を撃滅せよ！	Sortie a fleet with Kasumi Kai2 (霞改二) as the flagship, 2 destroyers and up to 3 additional ships to World 2-5 and score an S rank victory at the boss node.
en	297	「礼号作戦」実施せよ！	B57: Operation Rei-go	精強な「水上反撃部隊」で、南西諸島沖ノ島沖に突入！同海域の敵戦力を撃滅せよ！	Sortie Kasumi (霞) as the flagship, Ashigara (足柄), Ooyodo (大淀), Asashimo (朝霜) and Kiyoshimo (清霜) (you may add another ship) to World 2-5 and score an S rank victory at the boss node.
en	234	水上反撃作戦【礼号作戦】を完遂せよ！	Operation Rei-Go	カンパン湾より突入部隊を出撃させ、水上反撃作戦【礼号作戦】を完遂せよ！	Clear E-2.
en	421	親善艦参加観艦式を実施せよ！	Carry out a Friendly Ship Naval Review	期間限定海域において、海外からの親善艦を招いて特別観艦式を実施せよ！	Complete expedition 175.
en	171	「第三十一戦隊(第一次)」を編成せよ！	A66: Organise the 31st Squadron (1st Gen.)	「五十鈴改二」旗艦、「皐月改二」「卯月改」を含む、対潜機動水上部隊を編成せよ！	Have Isuzu Kai2 (五十鈴改二) as the flagship, Satsuki Kai2 (皐月改二) and Uzuki Kai (卯月改) in your fleet.
en	811	南西諸島防衛線を強化せよ！	B64: Reinforce the Nansei Islands Defence Line	南西諸島防衛線に有力な艦隊を展開、同方面に来襲する敵艦隊を五回以上撃滅せよ！	Sortie to World 1-4 and score 5 S rank victories at the boss node.
en	807	「第三十一戦隊」出撃せよ！	B60: Deploy the 31st Squadron (1st Gen.)	第三十一戦隊(第一次)を鎮守府近海航路に出撃させ、同航路の安全確保に努めよ！	Sortie a fleet with Isuzu Kai2 (五十鈴改二) as the flagship, Satsuki Kai2 (皐月改二) and Uzuki Kai (卯月改) and up to 3 additional ships to World 1-6 and complete the map.
en	299	年越し準備！師走の「間宮」のお手伝い	The New Year's Eve is Nigh! Help Mamiya With Preparations	提督…もしよかったら…「お飾り材料」32個使って、お飾りを一緒に作りませんか？	Gather 32 decoration materials.
en	172	「第二七駆逐隊」を編成せよ！	A67: Organise the 27th Destroyer Division	「白露改」旗艦、「時雨」「春雨」「五月雨」4隻による第二七駆逐隊を編成せよ！	Have Shiratsuyu Kai (白露改) as the flagship, Shigure (時雨), Harusame (春雨) and Samidare (五月雨) in your fleet. Only these 4 should be present.
en	808	「第二七駆逐隊」出撃せよ！	B61: Sortie the 27th Destroyer Division	「白露改」旗艦の第二七戦隊を含む艦隊をオリョール海に展開、同海域の敵艦隊を撃滅せよ！	Sortie Shiratsuyu Kai (白露改) as the flagship, Shigure (時雨), Harusame (春雨), Samidare (五月雨) and up to 2 additional ships to World 2-3 and score an S rank victory at the boss node.
en	813	旗艦「大潮」出撃せよ！	B66: Sortie the Flagship Ooshio	「大潮改二」旗艦の有力な艦隊を北方AL海域に展開、北方海域戦闘哨戒を実施せよ！	Sortie a fleet with Ooshio Kai2 (大潮改二) as the flagship and up to 5 additional ships to World 3-5 and score an S rank victory at the boss node.
en	809	強襲上陸作戦用戦力を増強せよ！	B62: Bolster the Capability for Amphibious Assault Operations	中部海域における航空偵察「K作戦」を実施しつつ、強襲上陸作戦用戦力の強化を図れ！	Sortie to World 6-3 and score at least a B rank victory at the boss node.
en	810	製油所地帯を防衛せよ！	B63: Protect the Oil Refinery Area	水雷戦隊を製油所地帯沿岸に展開！同海域に出没する敵艦隊を三回以上撃滅せよ！	Sortie a fleet with a light cruiser and 5 destroyers to World 1-3 and score 3 S rank victories at the boss node.
en	812	オリョール海の制海権を確保せよ！	B65: Establish Naval Supremacy at the Orel Sea	大潮を旗艦とする艦隊を東部オリョール海に反復出撃、同方面敵艦隊を完全撃滅せよ！	Sortie a fleet with Ooshio (大潮) as the flagship and up to 5 additional ships to World 2-3 and score 6 S rank victories at the boss node.
en	634	新家具の準備	F31: Preparation for New Furniture	「工廠」で装備アイテムを9つ「廃棄」して、新家具の準備をします。	Scrap 9 pieces of equipment.
en	635	新装備の準備	F32: Preparation for New Equipment	「工廠」で装備アイテムを5つ「廃棄」して、新装備配備の準備をします。	Scrap 5 pieces of equipment.
en	816	艦隊、三周年！	B67: Three Years Anniversary	三周年を記念しバシー島沖及び東部オリョール海に出撃、同海域の敵艦隊を撃滅せよ！	Sortie to Worlds 2-2 and 2-3 and score S rank victories at the boss nodes.
en	312	上陸部隊演習	C9: Exercises for the Landing Force	島嶼攻略部隊の練度向上のため、本日中に演習で4回以上「勝利」せよ！	Get 4 victories in exercises within the same day.
en	815	「第一航空戦隊」西へ！	B69: Sortie the First Carrier Division to the West	旗艦「赤城」同僚艦「加賀」を中核とする艦隊で、深海東洋艦隊漸減作戦を貫徹せよ！	Sortie a fleet with Akagi (赤城) as the flagship, Kaga (加賀) and up to 4 additional ships to World 4-5 and score an S rank victory at the boss node.
en	636	上陸戦用新装備の調達	F33: New Equipment for the Landing Force	「工廠」で「7.7mm機銃」及び「12.7mm単装機銃」を二つずつ廃棄！	Scrap two 7.7mm Machine Guns and two 12.7mm Machine Guns.
en	814	強行高速輸送部隊、出撃せよ！	B68: Sortie the High-Speed Transport Fleet	「江風改二」「時雨改二」「川内改二」他駆逐2隻を含む艦隊で、ジャム島攻略作戦を実施せよ！	Sortie a fleet with Kawakaze Kai2 (江風改二), Shigure Kai2 (時雨改二), Sendai Kai2 (川内改二), two more destroyers (you can add another ship of any class to this fleet) to World 4-1 and score an A or S rank victory at the boss node.
en	173	強行高速輸送部隊を編成せよ！	A68: Organise the High-Speed Transport Fleet	「川内改二」旗艦、「江風改二」「時雨改二」他駆逐2隻による水雷戦隊を編成せよ！	Have Sendai Kai2 (川内改二) as the flagship, Kawakaze Kai2 (江風改二), Shigure Kai2 (時雨改二) and two more destroyers in your fleet.
en	818	鎮守府近海航路の安全確保を強化せよ！	B71: Ensure the Safety of the Naval Base's Nearby Routes	水雷戦隊を含む新編艦隊を鎮守府近海航路に出撃させ、同航路の安全確保に努めよ！	Sortie a fleet with a light cruiser flagship and 4 destroyers to World 1-6 and complete the map.
en	174	新編「水雷戦隊」を含む艦隊を再編成せよ！	A69: Organise a New Torpedo Squadron	軽巡級を旗艦とした駆逐艦4隻からなる強力な水雷戦隊を含む艦隊を再編成せよ！	Have a light cruiser as the flagship and 4 destroyers in your fleet.
en	817	新編艦隊、南西諸島防衛線へ急行せよ！	B70: Set Sail Towards the Nansei Islands Defence Line	水雷戦隊を含む新編艦隊を南西諸島防衛線に展開、同方面に来襲する敵艦隊を撃破せよ！	Sortie a fleet with a light cruiser flagship and 4 destroyers to World 1-4 and score an S rank victory at the boss node.
en	821	精鋭「八駆第一小隊」対潜哨戒！	B74: Sortie the Elite Forces of the 8th Destroyer Division	「第八駆逐隊第一小隊」を含む艦隊で鎮守府正面対潜哨戒を反復実施！敵潜を圧倒せよ！	Sortie Asashio Kai2 D (朝潮改二丁), Ooshio Kai2 (大潮改二) and 2 additional ships to World 1-5 and score two A (or better) rank victories at the boss node.
en	176	精鋭！八駆第一小隊！	A71: Elite Forces of the 8th Destroyer Division	「朝潮改二丁」及び「大潮改二」を含む艦隊を編成せよ！	Have Asashio Kai2 D (朝潮改二丁), Ooshio Kai2 (大潮改二) and 2 more ships in your fleet.
en	638	対空機銃量産	F34: Mass Production of Autocannons	「機銃」系装備を量産し、工廠で6個廃棄！ 「装備改修」強化をサポートせよ！	Scrap 6 anti-air guns.
en	640	初夏の整理整頓	Preparing for Early Summer	不要な装備を複数「廃棄」して、夏を迎える準備をしましょう！	Scrap 5 pieces of equipment.
en	819	「第三十一戦隊」敵潜を制圧せよ！	B72: 31st Squadron's Anti-Submarine Operation	第三十一戦隊(第一次)を鎮守府近海航路に再投入！反復出撃し、敵潜を制圧せよ！	Sortie Isuzu Kai2 (五十鈴改二) as the flagship, Satsuki Kai2 (皐月改二), Uzuki (卯月) and 3 additional ships to World 1-6 and clear the map twice.
en	823	水雷戦隊、南西防衛線に反復出撃せよ！	B75: Torpedo Squadron and Nansei Islands Defence	軽巡級旗艦と駆逐艦4隻の水雷戦隊を基幹とした艦隊を編成、<br>南西諸島防衛線に反復出撃し、同海域の制海権確保に努めよ！	Sortie a fleet with a light cruiser flagship, 4 destroyers, and another ship of your choice to World 1-4 and score two S rank victories at the boss node.
en	175	新編「第八駆逐隊」を再編成せよ！	A70: Organise the New 8th Destroyer Division	「朝潮改二」を旗艦とした「満潮」「大潮」「荒潮」4隻による第八駆逐隊を再編成せよ！	Have only Asashio Kai2 (朝潮改二) as the flagship, Michishio (満潮), Ooshio (大潮) and Arashio (荒潮) in your fleet.
en	637	「熟練搭乗員」養成	F35: Skilled Pilot Training	勲章x2消費：「鳳翔」秘書艦に練度max及び改修max「九六式艦戦」を搭載、熟練搭乗員を養成せよ！<br>(任務達成後、部隊は消滅します)	Consumes 2 medals. Appoint Houshou as the secretary ship and equip her with a Type 96 Fighter at maximum rank and upgrade level.
en	639	新型魚雷兵装の開発	F36: Torpedo Development	勲章x2消費：「島風」秘書艦に改修max「61cm五連装(酸素)魚雷」と<br>改修max「61cm三連装(酸素)魚雷」を装備！(任務達成後、各装備は消滅します)	Consumes 2 medals. Appoint Shimakaze as your secretary and equip her with a 61cm Triple Oxygen Torpedo and a 61cm Quintuple Oxygen Torpedo (both at maximum upgrade level). The equipped torpedoes will be consumed.
en	820	新編「第八駆逐隊」出撃せよ！	B73: Sortie the New 8th Destroyer Division	新編「第八駆逐隊」を含む艦隊を鎮守府近海航路に出撃させ、同航路の安全確保に努めよ！	Sortie Asashio Kai2 (朝潮改二) as the flagship, Michishio (満潮), Ooshio (大潮), Arashio (荒潮) and up to 2 additional ships to World 1-6 and clear the map.
en	822	沖ノ島海域迎撃戦	Bq1?: Battle of Okinoshima Island	有力な艦隊を沖ノ島海域前面に反復投入、侵攻する敵機動部隊を迎撃、これを撃滅せよ！	Sortie a fleet to world 2-4 and score two S rank victories at the boss node.
en	824	製油所地帯沿岸の哨戒を実施せよ！	B76: Oil Refinery Patrol	軽空母旗艦と駆逐艦3隻を基幹とした護衛艦隊を編成、<br>製油所地帯沿岸に展開し、同海域の哨戒を実施、同海域の安全を確保せよ！	Sortie a fleet with a light carrier flagship, 3 destroyers, and up to two additional ships to World 1-3 and score an S rank victory at the boss node.
en	644	「一式陸攻」性能向上型の調達	F40: Improved Land-Based Attack Aircraft Construction	「一式陸攻」性能向上型の配備を行う。「一式陸攻」一つと「天山」二つを準備せよ！<br>(任務達成後、用意した必要装備は消滅します/「一式陸攻」の熟練度は継承されます)	Have 1 Type 1 Land-based Attack Aircraft and 2 Tenzans in your inventory. The equipment must be unlocked and will be consumed upon quest completion. You will receive a Type 1 Model 22A Land-based Attack Aircraft as a reward.
en	645	「洋上補給」物資の調達	F41: Off-Shore Resupply Production	「三式弾」一つを廃棄し、燃料750及び弾薬750と「ドラム缶(輸送用)」二つと「九一式徹甲弾」一つを<br>用意せよ！※任務達成後、用意した資源及び必要装備(徹甲弾は改修値の低いもの優先)は消滅します。	Scrap 1 Type 3 Shell and have 750 fuel and ammo, 2 Drum Canisters, and 1 Type 91 AP Shell in your inventory. The equipment must be unlocked and will be consumed upon quest completion. The Type 91 AP Shell consumed will be the one with the lowest upgrade level.
en	825	水雷戦隊、南西諸島海域を哨戒せよ！	B77: Torpedo Squadron's Patrol of the North Seas	水雷戦隊を基幹とした有力な艦隊で南西諸島海域バシー島沖及び東部オリョール海を哨戒、<br>同海域に遊弋する敵艦隊を捕捉、これを撃滅せよ！	Sortie a fleet of 1 light cruiser flagship, 4 destroyers, and an additional ship to Worlds 2-2 and 2-3 and score an S rank victory at the boss nodes.
en	647	中部海域「基地航空隊」展開！	F43: Getting Ready to Build the Air Base	「ドラム缶(輸送用)」二つを廃棄、燃料1200及びボーキサイト3000、さらに「設営隊」一つを準備せよ！<br>※任務達成後、用意した資源及び「設営隊」は消滅します。	Scrap 2 Drum Canisters and have 1200 fuel, 3000 bauxite, and a construction team in your inventory. The resources and items will be consumed upon quest completion.
en	826	「第十九駆逐隊」出撃せよ！	B78: Sortie the 19th Destroyer Division	特型駆逐艦4隻による「第十九駆逐隊」を鎮守府近海に展開！<br>鎮守府正面対潜哨戒を実施し、跳梁する敵潜部隊の制圧に努めよ！	Sortie a fleet with Isonami (磯波), Uranami (浦波), Ayanami (綾波), and Shikinami (敷波) to World 1-5 and score an A rank (or higher) victory at the boss node.
en	828	飛行場設営の準備を実施せよ！	B80: Central Waters Air Base Construction	中部海域における航空偵察「K作戦」を再度実施、さらに同方面に遊弋する敵艦隊を撃滅し、<br>中部海域における飛行場設営の準備を実施せよ！	Sortie to World 6-3 and score an S rank at the boss node.
en	829	夜間突入！敵上陸部隊を叩け！	B81: Night Battle Against the Enemy Landing Forces	南方サブ島沖海域へ精鋭艦隊を突入！敵艦隊の邀撃を突破し、同方面の敵上陸部隊を叩け！	Sortie to World 5-3 and score and A rank victory at the boss node.
en	834	南西諸島防衛線を増強せよ！	B83: Reinforce the Nansei Island Defence Line	水上機母艦または航空巡洋艦を旗艦とする有力な艦隊を南西諸島防衛線に投入、<br>水上機戦力によって同防衛線を強化、同方面の敵艦隊を撃滅せよ！	Sortie a fleet with a seaplane tender or an aircraft carrier as the flagship and up to 5 additional ships to world 1-4 and score an S rank at the boss node.
en	835	「第十六戦隊(第三次)」出撃せよ！	B84: Deploy the 3rd Generation of the 16th Squadron	「第十六戦隊(第三次)」を沖ノ島海域前面に展開、敵主力艦隊を捕捉、これを撃破せよ！	Sortie Kinu (鬼怒), Aoba (青葉), Kitakami (北上), Ooi (大井), and up to two additional ships to World 2-4 and score an S rank victory at the boss node.
en	836	精鋭「第十六戦隊」突入せよ！	B85: Deploy the Elite 16th Squadron	再編成を完了した精鋭「第十六戦隊」を南西諸島海域沖ノ島沖に展開、<br>同方面に遊弋する敵主力を捕捉、これを撃破せよ！	Sortie Kinu Kai2 (鬼怒改二) as flagship and any 5 out the following ships: Kitakami Kai2 (北上改二), Ooi Kai2 (大井改二), Kuma Kai (球磨改), Aoba Kai (青葉改), Uranami Kai (浦波改), Shikinami Kai (敷波改) to World 2-5 and score an S rank victory at the boss node.
en	837	輸送作戦を成功させ、帰還せよ！	B86: Complete a Transport Mission	「鬼怒改二」を旗艦、僚艦に「浦波改」他駆逐艦3隻の計5隻の艦隊で<br>バシー島沖における柳輸送作戦を実施、同輸送作戦を完全成功させ、帰還せよ！	Sortie Kinu Kai2 (鬼怒改二) as flagship, Uranami Kai (浦波改), exactly 3 other destroyers, and an additional non-destroyer ship to World 2-2 and score an S rank victory at the boss node.
en	315	春季大演習	C12: Large Scale Spring Training	春の一日中に「演習」で8回以上「勝利」をおさめ、艦隊の練度向上に努めよ！	Score 8 victories in practice mode in a single day.
en	853	鎮守府海域警戒を厳とせよ！	B97: Patrol the Naval Base Ocean Areas Vigilantly	巡洋艦クラスを旗艦に配備、2隻以上の駆逐艦を擁する警戒艦隊を編成せよ。同警戒艦隊を以て、<br>鎮守府海域(南西諸島/製油所地帯沿岸/南西諸島防衛線/鎮守府近海)の警戒任務にあたれ！	'Sortie a fleet with a cruiser as the flagship and at least 2 destroyers to Worlds 1-2, 1-3, 1-4, 1-5 and obtain S-rank victories at the boss nodes.
en	852	改装攻撃型軽空母、前線展開せよ！	B96: Remodelled Light Aircraft Carrier, Deploy to the Frontlines	改装航空母艦「鈴谷航改二」を旗艦とした精強な機動部隊を編成、同艦隊を中部海域に進出。<br>MS諸島沖、KW環礁沖海域に展開し、同海域の敵機動部隊を捕捉、これを撃滅せよ！	Sortie a fleet with Suzuya Carrier Kai Ni as the flagship to Worlds 6-2, 6-5 and obtain S-rank victories at the boss nodes.
en	424	輸送船団護衛を強化せよ！	D22: Reinforce the Transport Escort	遠征任務：「海上護衛任務」を反復実施し、輸送船団の護衛に務めよ！	Complete Expedition 5 four times.
en	643	主力「陸攻」の調達	F39: Land-Based Attack Aircraft Production	主力陸上攻撃機「一式陸攻」の新規調達を行う。「零式艦戦21型」を二つ「工廠」で廃棄し、<br>「九六式陸攻」一つと「九七式艦攻」二つを準備せよ！(任務達成後、用意した必要装備は消滅します)	Scrap 2 Type 0 Fighter Model 21 aircraft and have 1 Type 96 Land-based Attack Aircraft and 2 Type 97 Torpedo Bombers in your inventory. The equipment must be unlocked and will be consumed upon quest completion. You will receive a Type 1 Land-based Attack Aircraft as a reward. This is a quarterly quest.
en	642	「陸攻」隊の増勢	F38: Boost the Land-based Attack Squadron	「基地航空隊」開設に向け、「陸攻」の追加調達を行う。「7.7mm機銃」及び<br>「九九式艦爆」を各二つずつ準備せよ！(任務達成後、同装備は消滅します)	Have 2 7.7mm Machine Guns (7.7mm機銃) and 2 Type 99 Dive Bombers (九九式艦爆) in your equipment. The equipment must be unlocked and will be consumed upon quest completion.
en	641	「航空基地設営」事前準備	F37: Air Base Construction Preparations	「航空基地設営」の事前準備を開始する。「ドラム缶(輸送用)」を二つ「工廠」で廃棄し、「7.7mm機銃」及び「九六式艦戦」を各二つずつ用意せよ！(任務達成後、用意した必要装備は消滅します)	Scrap 2 drum canisters (ドラム缶(輸送用)) and have 2 Type 96 Fighters (九六式艦戦) and 2 7.7mm Machine Guns (7.7mm機銃) in your inventory. The equipment must be unlocked and will be consumed upon quest completion.
en	179	精鋭「第十六戦隊」を再編成せよ！	A74: Organise the Elite 16th Squadron	「鬼怒改二」を旗艦として、「北上改二」「大井改二」「球磨改」及び<br>「青葉改」「浦波改」「敷波改」から5隻、計6隻の精鋭「第十六戦隊」を再編成せよ！	Have Kinu Kai2 (鬼怒改二) as flagship and any 5 out of 6 following ships in your main fleet: Kitakami Kai2 (北上改二), Ooi Kai2 (大井改二), Kuma Kai (球磨改), Aoba Kai (青葉改), Uranami Kai (浦波改), Shikinami Kai (敷波改).
en	178	「第十六戦隊(第三次)」を編成せよ！	A73: Organise the 3rd Generation of the 16th Squadron	「鬼怒」「青葉」「北上」「大井」を擁する、第十六戦隊(第三次)を編成せよ！	Have Kinu (鬼怒), Aoba (青葉), Kitakami (北上), and Ooi (大井) in your fleet.
en	313	秋季大演習	C10: Large-Scale Exercises in Autumn	秋の一日中に「演習」で8回以上「勝利」をおさめ、艦隊のさらなる練度に努めよ！	Score 8 victories in exercises in a single day.
en	646	「特注家具」の調達	F42: Custom Furniture Production	「25mm単装機銃」一つを廃棄、家具コイン5,000と「25mm連装機銃」及び「25mm三連装機銃」を各<br>二つ準備せよ！　※任務達成後、用意した家具コイン及び必要装備(改修値の低いもの優先)は消滅します。	Scrap 1 25mm Single Autocannon Mount and have 2 25mm Twin Autocannon Mounts, 2 25mm Triple Autocannon Mounts, and 5000 furniture coins. The equipment must be unlocked and will be consumed (prioritising the lowest upgrade level items) upon quest completion. You will receive a Furniture Fairy as a reward.
en	177	「第十九駆逐隊」を編成せよ！	A72: Organise the 19th Destroyer Division	特型駆逐艦「磯波」「浦波」「綾波」「敷波」4隻による第十九駆逐隊を編成せよ！	Have Isonami (磯波), Uranami (浦波), Ayanami (綾波), and Shikinami (敷波) in your fleet.
en	827	「第十九駆逐隊」敵主力に突入せよ！	B79: 19th Destroyer Division Against the Enemy Flagship	「第十九駆逐隊」を含む有力な艦隊を編成し、南西諸島海域沖ノ島沖に展開！<br>同方面に遊弋する敵主力を捕捉、これを撃破せよ！	Sortie a fleet with Isonami (磯波), Uranami (浦波), Ayanami (綾波), Shikinami (敷波) and two additional ships to World 2-5 and score an A rank (or higher) victory at the boss node.
en	830	夜の海を照らす「灯り」を入手せよ！	B82: Searching for a Searchlight	有力な艦隊をカムラン半島に投入、同方面に出没する敵艦隊を捕捉、これを撃滅せよ！<br>そして、夜を照らす「灯り」を入手せよ！　ある季節は夜戦以外にも使い道があるようだ！	Sortie to World 2-1 and score an S rank at the boss node.
en	831	秋刀魚漁：きらりーん！秋刀魚漁支援！	Pacific saury fishing: It's time to shine! Mackerel fishing support!	秋刀魚漁の漁場に展開、遊弋する敵艦隊を撃破して、「秋刀魚」を三尾入手せよ、ですって！<br>近海、北方海域、中部海域のどこかに秋刀魚漁に適した漁場があるみたい！	Have 3 saury in your inventory.
en	833	秋刀魚漁：最新鋭の秋刀魚漁！もっとぉ！	Pacific saury fishing: Ultra-modern saury fishing! We need moooooore!	かなーり大変だけれど、ほら、私たち最新鋭の秋刀魚漁支援艦隊じゃない？<br>最新鋭、最新鋭、最新鋭の秋刀魚漁、張り切っていきましょー！よろしくお願いしまぁーす！	Have 24 saury in your inventory.
en	832	秋刀魚漁：もっともーっと、秋刀魚漁！	Pacific saury fishing: Fish for more and more mackerel!	ちょおっと大変だけど、漁場の安全を確保して「秋刀魚」を八尾確保するんだって！<br>あまり乱獲したり、暫く同じ海域で続けてると獲れにくくなるみたい。海域を変えてみましょ！	Have 8 saury in your inventory.
en	650	噴式戦闘爆撃機の開発	F46: Develop the Jet Fighter-Bomber	ネ式エンジンを搭載した新型戦闘爆撃機の開発を行う。「紫電改二」三つを「工廠」で廃棄し、「新型航空機設計図」二つと「ネ式エンジン」一つを準備せよ！(任務達成後、用意した必要アイテムは消費します)	Scrap 3 Shiden Kai 2 and have 2 New Aircraft Blueprints and 1 Ne-Type Engine in your inventory. These iItems will be consumed upon completion.
en	705	航空艤装の近代化改修	G5: Modernisation Improvement of Flight Rigging	鉄鋼5,500及びボーキサイト2,500を準備して、任意の正規空母の近代化改修を<br>[航空母艦]x5隻同時使用により2回成功させよ！※任務達成後、準備した資源は消費します。	Modernise a Standard Carrier using a total of 5 CVL/CV for each modernisation two times while the quest is activated. 5500 steel and 2500 bauxite will be consumed upon completion.
en	838	重巡戦隊、抜錨せよ！	B87: Heavy Cruiser Squadron, Weigh Anchor!	重巡4隻を基幹戦力とした重巡旗艦の艦隊を南西諸島海域東部オリョール海に展開し、<br>同海域の敵艦隊を撃滅、制海権を確保せよ！	Take a fleet consisting of 4 CA/CAV with a CA/CAV as flagship and two other ships of choice to World 2-3 and score an S rank victory at the boss node.
en	841	冬季特別任務：水上機母艦、抜錨せよ！	SB16: Winter Special Mission: Seaplane Tender, Set Sail!	水上機母艦を旗艦とし、護衛駆逐艦3隻を含む艦隊を編成、<br>製油所地帯沿岸及び南西諸島防衛線に展開、同海域に出没する敵艦隊を撃滅せよ！	Take a fleet with 1 AV as Flagship + 3 DD and 2 other ships of choice to World 1-3 and World 1-4 and score S-rank victories at boss nodes.
en	839	戦艦戦隊、出撃せよ！	B88: Battleship Squadron, Sortie!	戦艦2隻を中核戦力とする戦艦旗艦の艦隊を北方海域アルフォンシーノ方面に進出させ、<br>同海域の敵艦隊を撃滅、北方海域の制海権確保に努めよ！	Take a fleet consisting of 2 BB/FBB/BBV with a BB/FBB/BBV as Flagship, two CV/CVL and two other ships of choice to World 3-3 to the boss node and gain a victory there. Selectable reward; clicking on either will lock the choice in as your selection.
en	842	主力戦艦戦隊、抜錨せよ！	B89: Battleship Squadron, Weigh Anchor!	戦艦または航空戦艦2隻以上からなる強力な戦艦戦隊を中核とした艦隊を沖ノ島海域前面に展開、<br>侵攻する敵艦隊を捕捉、これを撃滅せよ！	Take 2 BB/BBV + 4 other ships of choice to World 2-4 and score an S-rank victory at the boss node.
en	843	節分特別出撃：制海権を確保せよ！	SB21: Special Setsubun Quest: Obtain Naval Supremacy!	節分実施の準備として第1艦隊に4隻(内駆逐艦2隻含む)からなる精鋭艦隊を配備、鎮守府正面海域、<br>南西諸島沖、及び東部オリョール海へ展開、同海域の敵艦隊を撃滅し、節分の制海権を確保せよ！	Use a fleet of only 4 ships (must include 2 DD) and sortie to World 1-1, World 1-2, and World 2-3. Score S rank victories at boss nodes.
en	844	精鋭「第八駆逐隊」突入せよ！	B90: Elite 8th Destroyer Division, Sortie!	「荒潮改二」を旗艦とし、僚艦に「第八駆逐隊」から1隻を配備した精鋭第1艦隊で<br>サーモン海域北方に突入、同方面に接近する有力な敵艦隊を捕捉、同方面の敵戦力の漸減に努めよ！	With Arashio Kai Ni as the flagship position and one of the three following ships: Asashio, Ooshio or Michishio, sortie to 5-5 and score an A rank victory at the boss node twice.
en	423	潜水艦派遣作戦による噴式技術の入手	D21: Obtain Jet Engine Technology from Submarine Dispatch Operation	鉄鋼5,000及びボーキサイト1,500を準備して、潜水艦派遣作戦により<br>噴式エンジン技術の導入に努めよ！※任務達成後、準備した資源は消費します。	Send a submarine fleet of 4 or more submarines to Expedition 30 and Expedition 31 and successfully complete them. 5000 steel and 1500 bauxite will be consumed upon completion.
en	422	潜水艦派遣作戦による航空機技術入手	D20: Obtain Airplane Technology from Submarine Dispatch Operation	潜水艦派遣作戦により、新型航空機技術の導入に努めよ！	Send a submarine fleet of 4 or more submarines to Expedition 30 and Expedition 31 and successfully complete them.
en	314	冬季大演習	C11: Large Scale Winter Training	冬の一日中に「演習」で8回以上「勝利」をおさめ、艦隊のさらなる練度に努めよ！	Score 8 victories in practice mode in a single day.
en	652	「特注家具」の調達	F48: Procurement of Custom-Made Furniture	主砲「12.7cm連装砲」を二つ廃棄、家具コイン5,000と「7.7mm機銃」及び「九六式艦戦」各二つずつ<br>準備せよ！　※任務達成後、用意した家具コイン及び必要装備(低改修値のもの優先)は消費します。	Scrap 2x 12.7cm Twin Gun Mount and prepare 5000 furniture coins, 2x 7.7mm Machine Gun and 2x Type 96 Fighter. Items will be consumed upon completion.
en	649	新機軸偵察機の開発	F45: Develop the New Reconnaissance Plane	新機軸の偵察機の調達を行う。「零式水上偵察機」を二つ「工廠」で廃棄し、<br>「一式陸攻」一つと「彩雲」二つを準備せよ！(任務達成後、用意した必要装備は消費します)	Scrap 2 Type 0 Recon Seaplanes and have 1 Type 1 Land Attacker and 2 Saiuns in your inventory. These items will be consumed upon completion.
en	648	「特注家具」の調達	F44: Procurement of Custom-Made Furniture	「12.7cm連装高角砲」二つを廃棄し、家具コイン5,000と「14cm単装砲」及び「15.2cm単装砲」を各二つずつ準備せよ！　※任務達成後、用意した家具コイン及び必要装備(低改修を優先)は消費します。	Scrap 2 12.7cm Twin High-angle Gun Mounts and have 5000 furniture tokens, 2 14cm Naval Guns and 2 15.2cm Naval Guns in your inventory while the quest is activated.
en	651	ネ式エンジンの増産	F47: Boost the Production of Ne-Type Engines	噴式航空機生産のため、ネ式エンジンの増産を行う。「零式艦戦52型」三つを「工廠」で廃棄し、「流星」「烈風」各二つと鉄鋼8,000を準備せよ！※任務達成後、用意した必要装備と資源は消費します。	Scrap 3 Type 52 Zero Fighters and have two Reppuu, two Ryuusei and 8,000 steel in your inventory. Items will be consumed upon completion.
en	653	節分特別任務：節分準備！	SF2: Special Setsubun Quest: Setsubun Preperation!	「20.3cm連装砲(無印)」を二つ廃棄、家具コイン5,000と「12cm単装砲」「零式水上偵察機」各二つを準備せよ！　※任務達成後、用意した家具コイン及び必要装備(低改修値のもの優先)は消費します。	Scrap 2 20.3cm Twin Gun Mounts and prepare 5000 Furniture Tokens, 2 12cm Naval Guns and 2 Type 0 Recon Seaplanes in your inventory. Lowest-star items will be consumed upon completion.
en	656	六三一空「晴嵐」隊の編成	F49: Organise the Seiran 631 Air Group	秘書艦に「伊401」または「伊14」または「伊13」を配備。「晴嵐」を一番スロットに搭載。「瑞雲(六三一空)」を二番スロットに搭載。「晴嵐(六三一空)」を新編せよ！　※任務達成後瑞雲は消滅します。	Have I-401, I-13 or I-14 as your secretary and equip the secretary with a Prototype Seiran in the first slot and a Zuiun (631 Air Group) in the second slot.
en	660	精鋭「水戦」隊の増勢	F52: Expand the New Elite Seaplane Group	精鋭飛行隊の増勢：練度max及び改修maxの「二式水戦改」を一番スロットに搭載した秘書艦で、<br>「零式艦戦21型」x2「瑞雲」x2を廃棄！　※新飛行隊を編成する「熟練搭乗員」が必要です。	Have a secretary ship equipped with a Maxed Expertise and Max Star Type 2 Seaplane Fighter Kai in the first slot and then Scrap 2 Type 21 Zero Fighter and 2 Zuiun in your inventory. Requires and consumes 1 Skilled Pilot.
en	658	潜水艦武装の強化	F50: Enhance Submarine Armaments	「61cm三連装魚雷」を四つ廃棄、開発資材x120と「61cm四連装(酸素)魚雷」「九三式水中聴音機」各三つを準備せよ！　※任務達成後、用意した開発資材及び必要装備(低改修値のもの優先)は消費します。	Scrap 4 61cm Triple Torpedo Mounts and have 120 development materials, 3 61cm Quad (Oxygen) Torpedo Mounts and 3 Type 93 SONARs in your inventory. Items will be consumed upon completion.
en	657	春の準備任務：桃の節句準備！	SF3: Spring Preparation Mission: Hina Matsuri Preparations!	春の準備任務：「14cm単装砲」を二つ廃棄、家具コイン5,000と「九九式艦爆」「61cm三連装魚雷」各二つを準備せよ！　※任務達成後、用意した家具コイン及び必要装備(低改修値のもの優先)は消費します。	Scrap 2 14cm Naval Gun and have 5000 furniture coins and 2 Type 99 Dive Bombers and 2 61cm Triple Torpedo Mounts in your inventory. Items will be consumed upon completion.
en	659	精鋭「水戦」隊の新編成	F51: Organise the New Elite Seaplane Group	精鋭飛行隊の新編成：練度max及び改修maxの「二式水戦改」を一番スロットに搭載した秘書艦で、<br>「零式艦戦21型」x2「瑞雲」x2を廃棄！　※新飛行隊を編成する「熟練搭乗員」が必要です。	Have a secretary ship equipped with a Maxed Expertise and Max Star in the first slot Type 2 Seaplane Fighter Kai and then Scrap 2 Type 21 Zero Fighter and 2 Zuiun in your inventory. Requires and consumes 1 Skilled Pilot.
en	840	冬季特別任務：精鋭「駆逐隊」、出撃！	SB15: Winter Special Mission: Elite Destroyers, Sortie!	駆逐艦4隻による精鋭「駆逐隊」を編成し、鎮守府正面海域及び南西諸島沖に出撃、<br>両海域の敵艦隊を捕捉、これを撃滅せよ！	Take a fleet of only 4 DDs and score an S rank victory at the boss node of World 1-1 and World 1-2. Selectable reward; clicking on either will lock the choice in as your selection.
en	846	潜水艦隊、中部海域の哨戒を実施せよ！	B91: Submarine Fleet's Central Waters Patrol	潜水艦を旗艦とし、4隻以上の有力な潜水艦を配備した第一艦隊、精鋭潜水艦隊で<br>中部海域哨戒線に進出、回航中の敵空母を捕捉、これを襲撃せよ！	Send a Fleet consisting of 4 SS(V) with an SS(V) as flagship with two additional ships to World 6-1 and score a B rank victory at the boss node.
en	847	春の準備任務：桃の節句準備を完遂せよ！	SB22: Spring Preparation Mission: Carry Out the Hinamatsuri Preparations	春の準備任務：艦隊を東部オリョール海に反復出撃、同方面敵艦隊を覆滅し、<br>同海域周辺の制海権を完全に確保、桃の節句を迎える準備を完遂せよ！	Score 5 S rank victories at the boss node of World 2-3.
en	850	洋上航空戦力を拡充せよ！	B94: Expand the Offshore Aviation Forces	航空母艦、または水上機母艦を旗艦とした有力な艦隊を編成、北方AL海域、<br>西方海域カスガダマ沖 、中部海域MS諸島沖に展開し、各海域の敵艦隊を撃滅せよ！	Sortie a fleet with an AV/CV/CVL/CVB as Flagship and 5 additional ships tos World 3-5, 4-4, 6-2 and obtain S-rank victories at the boss nodes.
en	848	重装甲巡洋艦、鉄底海峡に突入せよ！	B92: Heavy Armored Curiser, Embark into the Ironbottom Sound!	第一艦隊旗艦に「Zara due」を配備、同艦隊で南方サブ島沖海域へ突入！同方面の敵艦隊群を突破し、鉄底海峡に展開する敵戦力を撃破せよ！	With Zara Due as the flagship, sortie to World 5-3 and score an A rank victory at the boss node.
en	851	改装航空巡洋艦、出撃！	B95: Remodelled Aviation Cruiser, Sortie	改装航空巡洋艦「鈴谷改二」を旗艦とした精強な艦隊を編成、同艦隊を南方海域に展開、<br>南方海域前面、及びサブ島沖海域に遊弋する敵艦隊群を捕捉、これを撃破せよ！	Sortie a fleet with Suzuya Kai2 as the flagship and score an A rank victory at the boss nodes of Worlds 5-1 and 5-3.
en	849	南西諸島方面の敵艦隊を撃破せよ！	B93: Defeat the Enemy Fleet at the Nansei Islands	軽巡を旗艦とした艦隊を編成し、南西諸島防衛線、バシー島沖及び<br>東部オリョール海に展開、同海域に遊弋する敵艦隊を撃破せよ！	Sortie a fleet with a CL as flagship and 5 additional ships to Worlds 1-4, 2-2, 2-3 and obtain S rank victories at the boss nodes.
en	854	戦果拡張任務！「Z作戦」前段作戦	Bq2: Ranking Points Boost Mission! "Operation Z", First Part	戦果拡張作戦：我が第一艦隊に精鋭艦艇を集中配備、同精鋭艦隊を以て、南西諸島の沖ノ島海域、<br>中部海域哨戒線、グアノ環礁沖の敵艦隊を撃破、中部北海域ピーコック島の敵戦力を破砕殲滅せよ！	Sortie a fleet to Worlds 2-4, 6-1, 6-3 and score A rank victories at the boss nodes; sortie to World 6-4 and score an S rank victory at the boss node.
en	663	新型艤装の継続研究	F55: Continued Research of New Rigging Types	工廠任務：新型艤装の開発を継続実施する。「大口径主砲」系装備x10を廃棄、鉄鋼18,000を準備せよ！<br>※任務達成後、準備した資源は消費します。「勲章」と「新型砲熕兵装資材」の獲得選択が可能です。	Prepare 18000 Steel, scrap 10 heavy guns.
en	425	海上護衛総隊、遠征開始！	D23: Maritime Escort Squadron, Expedition Start	遠征任務：遠征任務「対潜警戒任務」「海上護衛任務」「タンカー護衛任務」を実施、<br>軽巡、駆逐艦、海防艦などから編成された護衛艦隊で各遠征を成功させよ！	Complete Expeditions 4, 5 and 9.
en	857	増強海上護衛総隊、抜錨せよ！	B100: Enhanced Maritime Escort Fleet, Sortie	出撃任務：軽巡1隻以上、駆逐艦または海防艦2隻以上、さらに航空巡洋艦または軽空母で増強した<br>第一護衛艦隊を第一艦隊に編成、南西諸島海域の各海域に展開、敵艦隊を撃破、各作戦を成功させよ！	Sortie a fleet with 1 CL, 2 DDs or Coastal Defense Ships, 1 CAV or CVL, and up to 2 additional ships to Worlds 2-2, 2-3, 2-4, and 2-5 and score A rank victories at the boss nodes.
en	661	新型砲熕兵装、戦力化開始！	F53: Reinforcement of New Model Cannon Improvement, Start!	工廠任務：新型砲墳兵装の開発及び同戦力化を開始する。「副砲」系装備x10を廃棄、<br>鉄鋼6,000を準備せよ！　※任務達成後、準備した資源は消費します。	Prepare 6000 Steel, scrap 10 secondary guns.
en	426	海上通商航路の警戒を厳とせよ！	D24: Stay Alert on the Maritime Routes	遠征任務：遠征任務「警備任務」「対潜警戒任務」「海上護衛任務」「強行偵察任務」<br>を実施し、敵の通商破壊部隊を制圧、海上通商航路の安全を確保せよ！	Complete Expeditions 3, 4, 5 and 10.
en	664	電探技術の射撃装置への活用	F56: Utilising Radar Technology for Shooting Equipment	工廠任務：電探技術の射撃装置への活用を研究する。「電探」系装備x10を廃棄、弾薬及び鉄鋼を各8,000<br>準備せよ！※任務達成後、準備した資源は消費します。「勲章」と「兵装資材」の獲得選択が可能です。	Prepare 8000 Ammo and Steel, scrap 10 Radars.
en	665	民生産業への協力	F57: Cooperation with the Consumer Industry	工廠任務：軍需物資を放出し、民生産業に協力する。「小口径主砲」系装備x16を廃棄、燃料12,000を<br>準備せよ！※任務達成後、準備した資源は消費します。「勲章」と「兵装資材」の獲得選択が可能です。	Prepare 12000 fuel, scrap 16 light guns.
en	667	民生産業への協力を継続せよ！	F59: Continue your cooperation with the Consumer Industry	工廠任務：軍需物資を放出し、民生産業への協力を継続する。「機銃」系装備x10を廃棄、鉄鋼15,000を<br>準備せよ！※任務達成後、準備した資源は消費します。「特注家具職人」と「勲章」の獲得選択が可能。	Prepare 15000 Steel and scrap 10 Anti-Air Guns
en	668	新型戦闘糧食の試作	F60: Experimenting with New Combat Rations	料理任務：手軽に食事をとることができて、なおかつ美味しく腹にがっつりたまる新型の戦闘糧食を<br>開発する。「戦闘糧食」x2と燃料800及びボーキサイト150を用意せよ！油入れ送気開始！調理始め！	Prepare 2 Combat Rations, 800 Fuel and 150 Bauxite.
en	860	旗艦「由良」、抜錨！	B103: Flagship Yura, Set Sail	出撃任務：旗艦に「由良改二」、随伴艦に二駆「村雨」「夕立」「春雨」「五月雨」及び「秋月」から<br>二隻以上を配備した第一艦隊を展開、東部オリョール海及び南方海域前面の敵戦力を撃滅せよ！	Sortie Yura Kai2 as flagship with at least 2 of the following ships: Murasame, Yuudachi, Harusame, Samidare, Akizuki, and up to 3 additional ships to Worlds 2-3 and 5-1 and score S rank victories at the boss node.
en	861	強行輸送艦隊、抜錨！	Bq3: Transport Fleet Forces, Launch	航路護衛任務：航空戦艦(または補給艦でも可)2隻を中核とした艦隊で、鎮守府近海航路における<br>輸送船団護衛作戦を実施。同輸送護衛作戦を2回成功させよ！	Sortie a fleet consisting of 2 BBVs/AOs and up to 4 additional ships to World 1-6 and reach the goal point twice.
en	671	夜間作戦型艦上攻撃機の開発	F62: Nighttime Carrier-based Torpedo Bomber Development	「TBF」を秘書艦一番スロットに搭載、「13号対空電探」x2「22号対水上電探」x2廃棄、開発資材x40<br>改修資材x10、弾薬5,000、ボーキサイト8,000、「新型航空兵装資材」x1、「熟練搭乗員」を用意せよ！	Prepare 40 Development material, 10 Improvement Materials, 5000 ammo, 8000 bauxite, one Skilled Pilot and one New Model Aerial Armament Materials in your inventory. Have a TBF equipped in the first slot of the secretary ship. Scrap two Type 13 Air Radars and two Type 22 Surface Radars. ※Equipment must be unlocked. ※Consumes all the resources and equipment.
en	863	精鋭「第二二駆逐隊」出撃せよ！	B104: Sortie the Elite 22nd Destroyer Squadron	出撃任務：再編した精鋭「第二二駆逐隊」を含む精強な水雷戦隊で北方海域キス島沖に出撃、<br>キス島撤退作戦を完全成功させよ！	Sortie Fumizuki Kai2, Satsuki Kai2, Minazuki Kai, Nagatsuki Kai, and up to 2 additional ships to World 3-2 and score an S rank victory at the boss node.
en	864	精強大型航空母艦、抜錨！	B105: Large Powerful Aircraft Carrier, Setting Sail	出撃任務：「Saratoga Mk.II」または同「Mod.2」を旗艦とした「任務部隊」で、南方海域サーモン海域<br>北方及び中部海域MS諸島沖に展開、同海域敵戦力を捕捉撃滅、「MS諸島防衛戦」を成功させよ！	Sortie Saratoga Mk.II or Saratoga Mk.II Mod.2 as the flagship, 1 CL, 2 DDs, and 2 additional ships to Worlds 5-5 and 6-2 and score S rank victories at the boss nodes.
en	865	夜間作戦空母、前線に出撃せよ！	B106: Night Carrier, to the Front Lines	出撃任務：「Saratoga Mk.II」を旗艦とした第一艦隊を KW環礁沖海域に展開、敵機動部隊を迎撃！<br>「空母機動部隊迎撃戦」を見事成功させよ！　夜戦作戦空母、抜錨！　前線に出撃せよ！	Sortie Saratoga Mk.II as the flagship to World 6-5 and score an S rank victory at the boss node. ※Saratoga Mk.II Mod.2 cannot complete the quest. Must be Saratoga Mk.II.
en	180	新編「第一戦隊」を編成せよ！	A75: Organise the New First Squadron	編成任務：第一艦隊に新改装された長門型戦艦一番艦「長門改二」及び同二番艦「陸奥改」からなる<br>新編第一戦隊を配備せよ！	Have Nagato Kai2 as the flagship and Mutsu Kai as the second ship in your main fleet. 
en	181	新編「第七戦隊」を編成せよ！	A76: Organise the New Seventh Squadron	編成任務：第一艦隊旗艦に新改装された改鈴谷型「熊野改二」、同二番艦に「鈴谷改二」、<br>僚艦に「最上改」「三隈改」を配した新編第七戦隊を配備せよ！	Have Kumano Kai2 as the flagship, Suzuya Kai2 as the second ship, and Mogami Kai and Mikuma Kai in your main fleet.
en	182	精鋭「第四航空戦隊」を再編成せよ！	A77: Reorganise the Elite Fourth Carrier Division	編成任務：第一艦隊旗艦及び同二番艦に練度50以上の航空戦艦「伊勢」「日向」を配備、<br>随伴艦に軽巡洋艦1隻、駆逐艦2隻他を伴う精鋭「第四航空戦隊」を再編成せよ！	Have Ise and Hyuuga both above level 50 as the flagship and the second ship with 1 CL, 2 DD and 1 additional ship in your main fleet.
en	183	新編「第四水雷戦隊」を編成せよ！	A78: Organise the New 4th Torpedo Squadron	編成任務：第一艦隊旗艦に「由良改二」を配備、随伴艦に二駆「村雨」「夕立」「春雨」「五月雨」<br>他1隻の駆逐艦を配備、新編「第四水雷戦隊」を編成せよ！	Have Yura Kai2 as the flagship, Murasame, Yuudachi, Harusame, Samidare and 1 more DD in your main fleet.
en	184	精鋭「第二二駆逐隊」を再編成せよ！	A79: Reorganise the Elite 22th Destroyer Squadron	編成任務：「文月改二」「皐月改二」「水無月改」「長月改」の精強駆逐艦4隻の編成による<br>精鋭第二二駆逐隊を再編成せよ！	Have Fumizuki Kai2, Satsuki Kai2, Minazuki Kai and Nagatsuki Kai in your main fleet.
en	185	精強「任務部隊」を編成せよ！	A80: Organise a Powerful Task Force	編成任務：第一艦隊旗艦に「Saratoga Mk.II」または同「Mod.2」を配備、随伴艦に<br>軽巡洋艦1隻、駆逐艦2隻以上を配した夜間作戦可能な機動部隊を新編せよ！	Have Saratoga Mk.II or Saratoga Mk.II Mod.2 as the flagship with 1 CL and 2 DDs in your main fleet.
en	662	新型艤装の開発研究	F54: Development of New Type Equipment Fitting Research	工廠任務：新型艤装の開発研究を実施する。「中口径主砲」系装備x10を廃棄、鉄鋼12,000を準備せよ！<br>※任務達成後、準備した資源は消費します。「勲章」と「新型砲熕兵装資材」の獲得選択が可能です。	Prepare 12000 Steel, scrap 10 medium guns.
en	666	精鋭「瑞雲」隊の編成	F58: Organise the Elite Zuiun Group	秘書艦「日向改」の四番スロットに改修max「瑞雲(六三四空)」を搭載して、ドラム缶(輸送用)x2を廃棄。<br>さらに「九九式艦爆」x2「瑞雲」x2を用意せよ！　※新飛行隊を編成する「熟練搭乗員」が必要です。	Have 2 Type 99 Dive Bombers, 2 Zuiuns and a Skilled Pilot in your inventory and have Hyuuga Kai as secretary equipped with a ★max Zuiun (634 Air Group) in her 4th slot. Scrap 2 Drum Canisters. One Skilled Pilot is consumed in the process. ※Equipment must be unlocked.
en	670	夜戦型艦上戦闘機の性能強化	F63: Performance Improvement of the Carrier-based Night Fighter	練度&改修maxの「F6F-5」を秘書艦一番スロットに搭載、 「13号対空電探」x2 「22号対水上電探」x2<br>を廃棄、開発資材x40、改修資材x8、ボーキサイト6,000、「新型航空兵装資材」x1を準備せよ！	Prepare 40 Development material, 8 Improvement Materials, 6000 bauxite and one New Model Aerial Armament Materials in your inventory. Have a ★max Gold Chevron F6F-5 equipped in the first slot of the secretary ship. Scrap two Type 13 Air Radars and two Type 22 Surface Radars. ※Equipment must be unlocked. ※Consumes all the resources and equipment.
en	669	夜戦型艦上戦闘機の開発	F61: Nighttime Carrier-based Fighter Development	練度&改修maxの「F6F-3」を秘書艦一番スロットに搭載、 「13号対空電探」x2 「22号対水上電探」x2<br>を廃棄、開発資材x30、改修資材x6、ボーキサイト5,000、「新型航空兵装資材」x1を準備せよ！	Prepare 30 Development Materials, 6 Improvement Materials, 5000 Bauxite and one New Model Aerial Armament Materials in your inventory. Have a ★max Gold Chevron F6F-3 equipped in the first slot of the secretary ship. Scrap two Type 13 Air Radars and two Type 22 Surface Radars. ※Equipment must be unlocked.\r\n※Consumes all the resources and equipment.
en	856	新編「第一戦隊」、抜錨せよ！	B99: Sortie the New First Squadron	新編「第一戦隊」出撃任務：戦艦「長門改二」を旗艦、二番艦に「陸奥改」を配備した第一艦隊で出撃！<br>カレー洋リランカ島沖、サーモン海域北方に展開し、同海域の敵艦隊主力を捕捉、これを撃滅せよ！	Sortie a fleet with Nagato Kai2 as the flagship, Mutsu Kai as the second ship with up to 4 additional ships to Worlds 4-5 and 5-5 and score S rank victories at the boss nodes.
en	855	海上護衛体制の強化に努めよ！	B98: Focus the Strengthening of the Maritime Escort	海上護衛作戦：駆逐艦または海防艦3隻以上を含む護衛艦隊を編成し、鎮守府海域の製油所地帯沿岸、<br>南西諸島防衛線、鎮守府近海、鎮守府近海航路にそれぞれ展開、各海域における作戦を成功させよ！	Sortie a fleet with at least 3 DDs or Coastal Defense Ships to Worlds 1-3, 1-4, and 1-5 and score S rank victories at the boss nodes. Sortie the same fleet to World 1-6 and reach the goal point.
en	859	精鋭「第四航空戦隊」、抜錨せよ！	B102: Elite Fourth Carrier Division, Set Sail	精鋭「第四航空戦隊」出撃任務：精鋭航空戦艦を主戦力に再編された「第四航空戦隊」、抜錨せよ！<br>沖ノ島沖戦闘哨戒及び北方AL海域戦闘哨戒を実施、同方面の敵艦隊主力を捕捉、これを撃破せよ！	Sortie Ise and Hyuuga both above level 50 as the flagship and the second ship with 1 CL, 2 DDs, and 1 additional ship to Worlds 2-5 and 3-5 and score A rank or better victories at the boss nodes.
en	858	新編「第七戦隊」、出撃せよ！	B101: New Seventh Squadron, Sortie	出撃任務：新編「第七戦隊」を出撃！　カレー洋リランカ島沖「深海東洋艦隊漸減作戦」、<br>MS諸島沖「MS諸島防衛戦」において、敵艦隊主力を捕捉、これを撃滅せよ！	Sortie a fleet with Kumano Kai2/Kumano Carrier Kai2 as the flagship, Suzuya Kai2/Suzuya Carrier Kai2 as the second ship, Mogami Kai, Mikuma Kai, and up to 2 additional ships to Worlds 4-5 and 6-2 and score S rank victories at the boss nodes.
en	862	前線の航空偵察を実施せよ！	Bq4: Perform Aerial Reconnaissance on the Frontlines	偵察任務：水上機母艦1隻と軽巡2隻を中核とした偵察艦隊を、中部海域グアノ環礁沖海域に展開、<br>航空偵察作戦「K作戦」を反復実施せよ！さらに同方面の敵艦隊を捕捉、敵戦力の撃破に努めよ！	Sortie a fleet with 1 AV, 2 CLs and 3 additional ships to World 6-3 and score 2 A rank or better victories at the boss node.
en	316	輸送部隊の練度向上に努めよ！	C13: Raise the Transport Unit's Experience	演習任務：輸送部隊の練度向上を図る！本日中に演習で4回以上「勝利」せよ！	Get 4 victories in Exercises within the same day.
en	866	秋刀魚漁：「秋刀魚」を収獲する所存です！		秋刀魚漁支援：近海、北方海域、中部海域の秋刀魚漁漁場に展開、秋刀魚漁支援ですね？了解です！<br>漁場に遊弋する敵艦隊を撃破、秋刀魚漁を支援して、「秋刀魚」を四尾入手します！お任せください！	
en	867	秋刀魚漁：漁を全力で支援する覚悟です！		秋刀魚漁支援：漁場の安全を確保して「秋刀魚」を12尾確保ですね？少し大変そうですが、了解です！<br>あまり乱獲しては不漁になってしまいますね！適切に漁場を休ませつつ、海域も変えてみましょう！	
en	868	秋刀魚漁：どーんっ！揚げ揚げで大漁です！		秋刀魚漁支援：どーん！秋刀魚漁の総仕上げもアゲアゲでまいりましょう！そうです、揚げ揚げです！<br>漁場の深海棲艦を制圧して安全を確保、不漁なんてどーんとはねかえしていきましょう！いっけぇー！	
\.


--
-- Data for Name: tl_ships; Type: TABLE DATA; Schema: public; Owner: kcvdevelopment
--

COPY tl_ships (culture, name_ja, name) FROM stdin;
en	長門	Nagato
en	長門改	Nagato Kai
en	陸奥	Mutsu
en	陸奥改	Mutsu Kai
en	伊勢	Ise
en	伊勢改	Ise Kai
en	日向	Hyuuga
en	日向改	Hyuuga Kai
en	雪風	Yukikaze
en	雪風改	Yukikaze Kai
en	赤城	Akagi
en	赤城改	Akagi Kai
en	加賀	Kaga
en	加賀改	Kaga Kai
en	蒼龍	Souryuu
en	蒼龍改	Souryuu Kai
en	飛龍	Hiryuu
en	飛龍改	Hiryuu Kai
en	島風	Shimakaze
en	島風改	Shimakaze Kai
en	吹雪	Fubuki
en	吹雪改	Fubuki Kai
en	吹雪改二	Fubuki Kai2
en	白雪	Shirayuki
en	白雪改	Shirayuki Kai
en	初雪	Hatsuyuki
en	初雪改	Hatsuyuki Kai
en	深雪	Miyuki
en	深雪改	Miyuki Kai
en	叢雲	Murakumo
en	叢雲改	Murakumo Kai
en	叢雲改二	Murakumo Kai2
en	磯波	Isonami
en	磯波改	Isonami Kai
en	綾波	Ayanami
en	綾波改	Ayanami Kai
en	敷波	Shikinami
en	敷波改	Shikinami Kai
en	大井	Ooi
en	大井改	Ooi Kai
en	大井改二	Ooi Kai2
en	北上	Kitakami
en	北上改	Kitakami Kai
en	北上改二	Kitakami Kai2
en	金剛	Kongou
en	金剛改	Kongou Kai
en	金剛改二	Kongou Kai2
en	比叡	Hiei
en	比叡改	Hiei Kai
en	比叡改二	Hiei Kai2
en	榛名	Haruna
en	榛名改	Haruna Kai
en	霧島	Kirishima
en	霧島改	Kirishima Kai
en	霧島改二	Kirishima Kai2
en	鳳翔	Houshou
en	鳳翔改	Houshou Kai
en	扶桑	Fusou
en	扶桑改	Fusou Kai
en	山城	Yamashiro
en	山城改	Yamashiro Kai
en	天龍	Tenryuu
en	天龍改	Tenryuu Kai
en	龍田	Tatsuta
en	龍田改	Tatsuta Kai
en	龍驤	Ryuujou
en	龍驤改	Ryuujou Kai
en	睦月	Mutsuki
en	睦月改	Mutsuki Kai
en	睦月改二	Mutsuki Kai2
en	如月	Kisaragi
en	如月改	Kisaragi Kai
en	如月改二	Kisaragi Kai2
en	皐月	Satsuki
en	皐月改	Satsuki Kai
en	文月	Fumizuki
en	文月改	Fumizuki Kai
en	長月	Nagatsuki
en	長月改	Nagatsuki Kai
en	菊月	Kikuzuki
en	菊月改	Kikuzuki Kai
en	三日月	Mikazuki
en	三日月改	Mikazuki Kai
en	望月	Mochizuki
en	望月改	Mochizuki Kai
en	球磨	Kuma
en	球磨改	Kuma Kai
en	多摩	Tama
en	多摩改	Tama Kai
en	木曾	Kiso
en	木曾改	Kiso Kai
en	木曾改二	Kiso Kai2
en	長良	Nagara
en	長良改	Nagara Kai
en	五十鈴	Isuzu
en	五十鈴改	Isuzu Kai
en	五十鈴改二	Isuzu Kai2
en	名取	Natori
en	名取改	Natori Kai
en	由良	Yura
en	由良改	Yura Kai
en	川内	Sendai
en	川内改	Sendai Kai
en	神通	Jintsuu
en	神通改	Jintsuu Kai
en	神通改二	Jintsuu Kai2
en	那珂	Naka
en	那珂改	Naka Kai
en	那珂改二	Naka Kai2
en	千歳	Chitose
en	千歳改	Chitose Kai
en	千歳甲	Chitose A
en	千歳航	Chitose CVL
en	千歳航改	Chitose CVL Kai
en	千歳航改二	Chitose CVL Kai2
en	千代田	Chiyoda
en	千代田改	Chiyoda Kai
en	千代田甲	Chiyoda A
en	千代田航	Chiyoda CVL
en	千代田航改	Chiyoda CVL Kai
en	千代田航改二	Chiyoda CVL Kai2
en	最上	Mogami
en	最上改	Mogami Kai
en	古鷹	Furutaka
en	古鷹改	Furutaka Kai
en	古鷹改二	Furutaka Kai2
en	加古	Kako
en	加古改	Kako Kai
en	加古改二	Kako Kai2
en	青葉	Aoba
en	青葉改	Aoba Kai
en	妙高	Myoukou
en	妙高改	Myoukou Kai
en	那智	Nachi
en	那智改	Nachi Kai
en	那智改二	Nachi Kai2
en	足柄	Ashigara
en	足柄改	Ashigara Kai
en	足柄改二	Ashigara Kai2
en	羽黒	Haguro
en	羽黒改	Haguro Kai
en	高雄	Takao
en	高雄改	Takao Kai
en	愛宕	Atago
en	愛宕改	Atago Kai
en	摩耶	Maya
en	摩耶改	Maya Kai
en	摩耶改二	Maya Kai2
en	鳥海	Choukai
en	鳥海改	Choukai Kai
en	鳥海改二	Choukai Kai2
en	利根	Tone
en	利根改	Tone Kai
en	利根改二	Tone Kai2
en	筑摩	Chikuma
en	筑摩改	Chikuma Kai
en	筑摩改二	Chikuma Kai2
en	飛鷹	Hiyou
en	飛鷹改	Hiyou Kai
en	隼鷹	Jun'you
en	隼鷹改	Jun'you Kai
en	朧	Oboro
en	朧改	Oboro Kai
en	曙	Akebono
en	曙改	Akebono Kai
en	漣	Sazanami
en	漣改	Sazanami Kai
en	潮	Ushio
en	潮改	Ushio Kai
en	潮改二	Ushio Kai2
en	暁	Akatsuki
en	暁改	Akatsuki Kai
en	暁改二	Akatsuki Kai2
en	響	Hibiki
en	響改	Hibiki Kai
en	Верный	Verniy
en	雷	Ikazuchi
en	雷改	Ikazuchi Kai
en	電	Inazuma
en	電改	Inazuma Kai
en	初春	Hatsuharu
en	初春改	Hatsuharu Kai
en	子日	Nenohi
en	子日改	Nenohi Kai
en	若葉	Wakaba
en	若葉改	Wakaba Kai
en	初霜	Hatsushimo
en	初霜改	Hatsushimo Kai
en	初霜改二	Hatsushimo Kai2
en	白露	Shiratsuyu
en	白露改	Shiratsuyu Kai
en	時雨	Shigure
en	時雨改	Shigure Kai
en	時雨改二	Shigure Kai2
en	村雨	Murasame
en	村雨改	Murasame Kai
en	夕立	Yuudachi
en	夕立改	Yuudachi Kai
en	夕立改二	Yuudachi Kai2
en	五月雨	Samidare
en	五月雨改	Samidare Kai
en	涼風	Suzukaze
en	涼風改	Suzukaze Kai
en	朝潮	Asashio
en	朝潮改	Asashio Kai
en	大潮	Ooshio
en	大潮改	Ooshio Kai
en	満潮	Michishio
en	満潮改	Michishio Kai
en	荒潮	Arashio
en	荒潮改	Arashio Kai
en	霰	Arare
en	霰改	Arare Kai
en	霞	Kasumi
en	霞改	Kasumi Kai
en	陽炎	Kagerou
en	陽炎改	Kagerou Kai
en	不知火	Shiranui
en	不知火改	Shiranui Kai
en	黒潮	Kuroshio
en	黒潮改	Kuroshio Kai
en	祥鳳	Shouhou
en	祥鳳改	Shouhou Kai
en	翔鶴	Shoukaku
en	翔鶴改	Shoukaku Kai
en	翔鶴改二	Shoukaku Kai2
en	翔鶴改二甲	Shoukaku Kai2 A
en	瑞鶴	Zuikaku
en	瑞鶴改	Zuikaku Kai
en	鬼怒	Kinu
en	鬼怒改	Kinu Kai
en	阿武隈	Abukuma
en	阿武隈改	Abukuma Kai
en	阿武隈改二	Abukuma Kai2
en	夕張	Yuubari
en	夕張改	Yuubari Kai
en	瑞鳳	Zuihou
en	瑞鳳改	Zuihou Kai
en	三隈	Mikuma
en	三隈改	Mikuma Kai
en	初風	Hatsukaze
en	初風改	Hatsukaze Kai
en	舞風	Maikaze
en	舞風改	Maikaze Kai
en	衣笠	Kinugasa
en	衣笠改	Kinugasa Kai
en	衣笠改二	Kinugasa Kai2
en	伊19	I-19
en	伊19改	I-19 Kai
en	鈴谷	Suzuya
en	鈴谷改	Suzuya Kai
en	熊野	Kumano
en	熊野改	Kumano Kai
en	伊168	I-168
en	伊168改	I-168 Kai
en	伊58	I-58
en	伊58改	I-58 Kai
en	伊8	I-8
en	伊8改	I-8 Kai
en	大和	Yamato
en	大和改	Yamato Kai
en	秋雲	Akigumo
en	秋雲改	Akigumo Kai
en	夕雲	Yuugumo
en	夕雲改	Yuugumo Kai
en	巻雲	Makigumo
en	巻雲改	Makigumo Kai
en	長波	Naganami
en	長波改	Naganami Kai
en	阿賀野	Agano
en	阿賀野改	Agano Kai
en	能代	Noshiro
en	能代改	Noshiro Kai
en	矢矧	Yahagi
en	矢矧改	Yahagi Kai
en	武蔵	Musashi
en	武蔵改	Musashi Kai
en	大鳳	Taihou
en	大鳳改	Taihou Kai
en	伊401	I-401
en	伊401改	I-401 Kai
en	あきつ丸	Akitsu Maru
en	あきつ丸改	Akitsu Maru Kai
en	まるゆ	Maruyu
en	まるゆ改	Maruyu Kai
en	弥生	Yayoi
en	弥生改	Yayoi Kai
en	卯月	Uzuki
en	卯月改	Uzuki Kai
en	Bismarck	Bismarck
en	Bismarck改	Bismarck Kai
en	Bismarck zwei	Bismarck Zwei
en	Z1	Z1
en	Z1改	Z1 Kai
en	Z1 zwei	Z1 Zwei
en	Z3	Z3
en	Z3改	Z3 Kai
en	Z3 zwei	Z3 Zwei
en	浜風	Hamakaze
en	浜風改	Hamakaze Kai
en	天津風	Amatsukaze
en	天津風改	Amatsukaze Kai
en	谷風	Tanikaze
en	谷風改	Tanikaze Kai
en	明石	Akashi
en	明石改	Akashi Kai
en	酒匂	Sakawa
en	酒匂改	Sakawa Kai
en	浦風	Urakaze
en	浦風改	Urakaze Kai
en	羽黒改二	Haguro Kai2
en	龍驤改二	Ryuujou Kai2
en	飛龍改二	Hiryuu Kai2
en	蒼龍改二	Souryuu Kai2
en	大鯨	Taigei
en	龍鳳	Ryuuhou
en	龍鳳改	Ryuuhou Kai
en	川内改二	Sendai Kai2
en	綾波改二	Ayanami Kai2
en	妙高改二	Myoukou Kai2
en	榛名改二	Haruna Kai2
en	磯風	Isokaze
en	磯風改	Isokaze Kai
en	大淀	Ooyodo
en	大淀改	Ooyodo Kai
en	時津風	Tokitsukaze
en	時津風改	Tokitsukaze Kai
en	雲龍	Unryuu
en	雲龍改	Unryuu Kai
en	春雨	Harusame
en	春雨改	Harusame Kai
en	早霜	Hayashimo
en	早霜改	Hayashimo Kai
en	清霜	Kiyoshimo
en	清霜改	Kiyoshimo Kai
en	Bismarck drei	Bismarck Drei
en	隼鷹改二	Jun'you Kai2
en	Prinz Eugen	Prinz Eugen
en	Prinz Eugen改	Prinz Eugen Kai
en	初春改二	Hatsuharu Kai2
en	朝雲	Asagumo
en	朝雲改	Asagumo Kai
en	野分	Nowaki
en	野分改	Nowaki Kai
en	秋月	Akizuki
en	秋月改	Akizuki Kai
en	扶桑改二	Fusou Kai2
en	山城改二	Yamashiro Kai2
en	山雲	Yamagumo
en	山雲改	Yamagumo Kai
en	香取	Katori
en	香取改	Katori Kai
en	天城	Amagi
en	天城改	Amagi Kai
en	U-511	U-511
en	U-511改	U-511 Kai
en	呂500	Ro-500
en	朝霜	Asashimo
en	朝霜改	Asashimo Kai
en	葛城	Katsuragi
en	葛城改	Katsuragi Kai
en	高波	Takanami
en	高波改	Takanami Kai
en	Littorio	Littorio
en	Italia	Italia
en	Roma	Roma
en	Roma改	Roma Kai
en	秋津洲	Akitsushima
en	秋津洲改	Akitsushima Kai
en	Libeccio	Libeccio
en	Libeccio改	Libeccio Kai
en	照月	Teruzuki
en	照月改	Teruzuki Kai
en	瑞穂	Mizuho
en	瑞穂改	Mizuho Kai
en	風雲	Kazagumo
en	風雲改	Kazagumo Kai
en	海風	Umikaze
en	海風改	Umikaze Kai
en	江風	Kawakaze
en	江風改	Kawakaze Kai
en	速吸	Hayasui
en	速吸改	Hayasui Kai
en	瑞鶴改二	Zuikaku Kai2
en	瑞鶴改二甲	Zuikaku Kai2 A
en	Aquila改	Aquila Kai
en	Warspite改	Warspite Kai
en	伊26改	I-26 Kai
en	水無月改	Minazuki Kai
en	浦波改	Uranami Kai
en	Saratoga	Saratoga
en	Commandant Teste改	Commandant Teste Kai
en	潜水ヨ級	Submarine Yo-Class
en	軽巡ト級	Light Cruiser To-Class
en	軽巡ヘ級	Light Cruiser He-Class
en	輸送ワ級	Transport Ship Wa-Class
en	重巡リ級	Heavy Cruiser Ri-Class
en	駆逐イ級	Destroyer I-Class
en	駆逐ニ級	Destroyer Ni-Class
en	駆逐ハ級	Destroyer Ha-Class
en	Commandant Teste	Commandant Teste
en	山風	Yamakaze
en	浦波	Uranami
en	水母水姫	Seaplane Tender Water Princess
en	山風改	Yamakaze Kai
en	霞改二	Kasumi Kai2
en	霞改二乙	Kasumi Kai2 B
en	Zara due	Zara due
en	鈴谷航改二	Suzuya Carrier Kai2
en	松風改	Matsukaze Kai
en	戦艦タ級	Battleship Ta-Class
en	戦艦棲姫	Battleship Princess
en	浮遊要塞	Floating Fortress
en	港湾棲姫	Harbour Princess
en	潜水棲姫	Submarine Princess
en	空母ヲ級	Standard Carrier Wo-Class
en	装甲空母姫	Armoured Carrier Princess
en	護衛要塞	Escort Fortress
en	軽巡ツ級	Light Cruiser Tsu-Class
en	軽巡棲姫	Light Cruiser Princess
en	重巡ネ級	Heavy Cruiser Ne-Class
en	駆逐イ級後期型	Destroyer I-Class Late Model
en	駆逐ハ級後期型	Destroyer Ha-Class Late Model
en	駆逐ロ級後期型	Destroyer Ro-Class Late Model
en	駆逐水鬼	Destroyer Water Demon
en	？？？	<UNKNOWN>
en	朝風	Asakaze
en	Graf Zeppelin	Graf Zeppelin
en	Graf Zeppelin改	Graf Zeppelin Kai
en	嵐	Arashi
en	嵐改	Arashi Kai
en	萩風	Hagikaze
en	萩風改	Hagikaze Kai
en	鹿島	Kashima
en	鹿島改	Kashima Kai
en	Saratoga改	Saratoga Kai
en	朝風改	Asakaze Kai
en	南方棲戦鬼	Southern War Demon
en	戦艦レ級	Battleship Re-Class
en	泊地水鬼	Anchorage Water Demon
en	空母棲鬼	Aircraft Carrier Demon
en	重巡リ級改	Heavy Cruiser Ri-Class Kai
en	鬼怒改二	Kinu Kai2
en	PT小鬼群	PT Imp Group
en	北方棲姫	Northern Princess
en	南方棲戦姫	Southern War Princess
en	戦艦ル級	Battleship Ru-Class
en	戦艦ル級改	Battleship Ru-Class Kai
en	水母棲姫	Seaplane Tender Princess
en	潜水カ級	Submarine Ka-Class
en	潜水ソ級	Submarine So-Class
en	空母ヲ級改	Standard Carrier Wo-Class Kai
en	装甲空母鬼	Armoured Carrier Demon
en	軽巡ホ級	Light Cruiser Ho-Class
en	軽巡棲鬼	Light Cruiser Demon
en	軽母ヌ級	Light Carrier Nu-Class
en	雷巡チ級	Torpedo Cruiser Chi-Class
en	駆逐ニ級後期型	Destroyer Ni-Class Late Model
en	駆逐ロ級	Destroyer Ro-Class
en	駆逐棲姫	Destroyer Princess
en	初月	Hatsuzuki
en	Zara	Zara
en	Zara改	Zara Kai
en	沖波	Okinami
en	沖波改	Okinami Kai
en	初月改	Hatsuzuki Kai
en	集積地棲姫	Supply Depot Princess
en	空母棲姫	Aircraft Carrier Princess
en	重巡棲姫	Heavy Cruiser Princess
en	集積地棲姫-壊	Corrupted Supply Depot Princess
en	鈴谷改二	Suzuya Kai2
en	伊14改	I-14 Kai
en	深海双子棲姫	Abyssal Twin Princesses
en	藤波	Fujinami
en	伊13改	I-13 Kai
en	松風	Matsukaze
en	伊13	I-13
en	深海双子棲姫-壊	Abyssal Twin Princesses - Damaged
en	荒潮改二	Arashio Kai2
en	藤波改	Fujinami Kai
en	伊14	I-14
en	皐月改二	Satsuki Kai2
en	飛行場姫	Airfield Princess
en	砲台小鬼	Battery Imp
en	離島棲姫	Isolated Island Princess
en	大潮改二	Ooshio Kai2
en	江風改二	Kawakaze Kai2
en	親潮	Oyashio
en	神風	Kamikaze
en	春風	Harukaze
en	Iowa	Iowa
en	Pola	Pola
en	親潮改	Oyashio Kai
en	神風改	Kamikaze Kai
en	春風改	Harukaze Kai
en	Iowa改	Iowa Kai
en	Pola改	Pola Kai
en	リコリス棲姫	Licorice Princess
en	中枢棲姫	Central Princess
en	駆逐古鬼	Old Destroyer Demon
en	駆逐古姫	Old Destroyer Princess
en	中枢棲姫-壊	Corrupted Central Princess
en	国後	Kunashiri
en	神威	Kamoi
en	占守	Shimushu
en	神威改	Kamoi Kai
en	国後改	Kunashiri Kai
en	大鷹改二	Taiyou Kai2
en	春日丸	Kasuga Maru
en	熊野改二	Kumano Kai2
en	由良改二	Yura Kai
en	北方水姫-壊	Northern Water Princess - Damaged
en	護衛棲姫	Escort Princess
en	深海海月姫	Abyssal Jellyfish Princess
en	朝潮改二	Asashio Kai2
en	朝潮改二丁	Asashio Kai2 D
en	中間棲姫	Midway Princess
en	南方棲鬼	Southern Demon
en	戦艦水鬼	Battleship Water Demon
en	泊地棲姫	Anchorage Princess
en	泊地棲鬼	Anchorage Demon
en	港湾水鬼	Harbour Water Demon
en	空母水鬼	Aircraft Carrier Water Demon
en	防空棲姫	Air Defence Princess
en	離島棲鬼	Isolated Island Demon
en	記念日夕雲	Yuugumo (Anniversary)
en	記念日春雨改	Harusame Kai (Anniversary)
en	記念日瑞穂	Mizuho (Anniversary)
en	記念日長波	Naganami (Anniversary)
en	Aquila	Aquila
en	Warspite	Warspite
en	伊26	I-26
en	水無月	Minazuki
en	戦艦夏姫	Battleship Princess of Summer
en	港湾夏姫	Harbour Princess of Summer
en	港湾夏姫-壊	Corrupted Harbour Princess of Summer
en	潜水夏姫	Submarine Princess of Summer
en	重巡夏姫	Heavy Cruiser Princess of Summer
en	大鷹	Taiyou
en	大鷹改	Taiyou Kai
en	天霧改	Amagiri Kai
en	Ark Royal	Ark Royal
en	Luigi Torelli	Luigi Torelli
en	Luigi Torelli改	Luigi Torelli Kai
en	Richelieu	Richelieu
en	Richelieu改	Richelieu Kai
en	Гангут	Гангут
en	Гангут два	Гангут два
en	伊504	I-504
en	択捉	Etorofu
en	文月改二	Fumizuki Kai2
en	旗風	Hatakaze
en	旗風改	Hatakaze Kai
en	松輪	Matsuwa
en	熊野航改二	Kumano Carrier Kai2
en	狭霧	Sagiri
en	狭霧改	Sagiri Kai
en	戦艦仏棲姫	French Battleship Princess
en	欧州棲姫	European Princess
en	欧州棲姫-壊	European Princess - Damaged
en	空母夏姫	Aircraft Carrier Summer Princess
en	空母夏鬼	Aircraft Carrier Summer Demon
en	駆逐ナ級	Destroyer Na-class
en	軽母ヌ級改	Light Carrier Nu-class
en	神威改母	Kamoi Kai Bo
en	占守改	Shimushu Kai
en	天霧	Amagiri
en	Ark Royal改	Ark Royal Kai
en	Saratoga Mk.II	Saratoga Mk.II
en	Saratoga Mk.II Mod.2	Saratoga Mk.II Mod.2
en	UIT-25	UIT-25
en	Октябрьская революция	Октябрьская революция
en	択捉改	Etorofu Kai
en	松輪改	Matsuwa Kai
en	北方水姫	Northern Water Princess
en	北端上陸姫	Northernmost Landing Princess
en	戦艦仏棲姫-壊	French Battleship Princess - Damaged
en	潜水新棲姫	New Submarine Princess
en	長門改二	Nagato Kai2
en	集積地夏姫	Supply Depot Summer Princess
en	駆逐ナ級後期型	Destroyer Na-class Late Model
\.


--
-- Data for Name: tl_shiptypes; Type: TABLE DATA; Schema: public; Owner: kcvdevelopment
--

COPY tl_shiptypes (culture, id, name_ja, name) FROM stdin;
en	1	海防艦	DE
en	2	駆逐艦	DD
en	3	軽巡洋艦	CL
en	4	重雷装巡洋艦	CLT
en	5	重巡洋艦	CA
en	6	航空巡洋艦	CAV
en	7	軽空母	CVL
en	9	戦艦	BB
en	8	戦艦	Fast BB
en	10	航空戦艦	BBV
en	11	正規空母	CV
en	12	超弩級戦艦	B
en	13	潜水艦	SS
en	14	潜水空母	SSV
en	15	補給艦	AE
en	16	水上機母艦	AV
en	17	揚陸艦	LHA
en	18	装甲空母	CVB
en	19	工作艦	AR
en	20	潜水母艦	AS
en	21	練習巡洋艦	CLp
en	22	補給艦	AO
en	999	不審船	(sus)
\.


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: kcvdevelopment
--

COPY versions (component, culture, version, url) FROM stdin;
shiptypes	en	1	
operations	en	1	
expeditions	en	1	
ships	ja	1	
shiptypes	ja	1	
equipment	ja	1	
quests	ja	1	
operations	ja	1	
expeditions	ja	1	
app	ja	4.2.10.0	https://github.com/Yuubari/KanColleViewer/releases/tag/v4.2.10.0
app	en	4.2.10.0	https://github.com/Yuubari/KanColleViewer/releases/tag/v4.2.10.0
ships	en	21	
equipment	en	21	
quests	en	40	
\.


--
-- Name: components components_pkey; Type: CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY components
    ADD CONSTRAINT components_pkey PRIMARY KEY (name);


--
-- Name: cultures cultures_pkey; Type: CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY cultures
    ADD CONSTRAINT cultures_pkey PRIMARY KEY (name);


--
-- Name: tl_equipment tl_equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_equipment
    ADD CONSTRAINT tl_equipment_pkey PRIMARY KEY (culture, name_ja);


--
-- Name: tl_expeditions tl_expeditions_pkey; Type: CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_expeditions
    ADD CONSTRAINT tl_expeditions_pkey PRIMARY KEY (culture, id);


--
-- Name: tl_quests tl_quests_pkey; Type: CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_quests
    ADD CONSTRAINT tl_quests_pkey PRIMARY KEY (culture, id);


--
-- Name: tl_ships tl_ships_pkey; Type: CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_ships
    ADD CONSTRAINT tl_ships_pkey PRIMARY KEY (culture, name_ja);


--
-- Name: tl_shiptypes tl_shiptypes_pkey; Type: CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_shiptypes
    ADD CONSTRAINT tl_shiptypes_pkey PRIMARY KEY (culture, id);


--
-- Name: versions versions_pkey; Type: CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (component, culture);


--
-- Name: tl_equipment tl_equipment_culture_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_equipment
    ADD CONSTRAINT tl_equipment_culture_fkey FOREIGN KEY (culture) REFERENCES cultures(name);


--
-- Name: tl_expeditions tl_expeditions_culture_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_expeditions
    ADD CONSTRAINT tl_expeditions_culture_fkey FOREIGN KEY (culture) REFERENCES cultures(name);


--
-- Name: tl_quests tl_quests_culture_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_quests
    ADD CONSTRAINT tl_quests_culture_fkey FOREIGN KEY (culture) REFERENCES cultures(name);


--
-- Name: tl_ships tl_ships_culture_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_ships
    ADD CONSTRAINT tl_ships_culture_fkey FOREIGN KEY (culture) REFERENCES cultures(name);


--
-- Name: tl_shiptypes tl_shiptypes_culture_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY tl_shiptypes
    ADD CONSTRAINT tl_shiptypes_culture_fkey FOREIGN KEY (culture) REFERENCES cultures(name);


--
-- Name: versions versions_component_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY versions
    ADD CONSTRAINT versions_component_fkey FOREIGN KEY (component) REFERENCES components(name);


--
-- Name: versions versions_culture_fkey; Type: FK CONSTRAINT; Schema: public; Owner: kcvdevelopment
--

ALTER TABLE ONLY versions
    ADD CONSTRAINT versions_culture_fkey FOREIGN KEY (culture) REFERENCES cultures(name);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO pgsql;


--
-- PostgreSQL database dump complete
--

