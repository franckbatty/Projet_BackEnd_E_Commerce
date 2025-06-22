--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: e_commerce_couche_silver; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA e_commerce_couche_silver;


ALTER SCHEMA e_commerce_couche_silver OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: clients; Type: TABLE; Schema: e_commerce_couche_silver; Owner: postgres
--

CREATE TABLE e_commerce_couche_silver.clients (
    id_client integer NOT NULL,
    nom character varying(255) NOT NULL,
    prenom character varying(255) NOT NULL,
    gender character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    telephone character varying(50) NOT NULL,
    adresse character varying(255) NOT NULL
);


ALTER TABLE e_commerce_couche_silver.clients OWNER TO postgres;

--
-- Name: commandes; Type: TABLE; Schema: e_commerce_couche_silver; Owner: postgres
--

CREATE TABLE e_commerce_couche_silver.commandes (
    id_commande integer NOT NULL,
    id_client integer NOT NULL,
    date_commande character varying(50) NOT NULL,
    statut character varying(50) NOT NULL
);


ALTER TABLE e_commerce_couche_silver.commandes OWNER TO postgres;

--
-- Name: produits; Type: TABLE; Schema: e_commerce_couche_silver; Owner: postgres
--

CREATE TABLE e_commerce_couche_silver.produits (
    id_produit integer NOT NULL,
    nom character varying(255) NOT NULL,
    categorie character varying(100) NOT NULL,
    prix double precision NOT NULL,
    quantite_stock integer NOT NULL
);


ALTER TABLE e_commerce_couche_silver.produits OWNER TO postgres;

--
-- Name: details_commandes; Type: TABLE; Schema: e_commerce_couche_silver; Owner: postgres
--

CREATE TABLE e_commerce_couche_silver.details_commandes (
    id_detail_commande integer NOT NULL,
    id_commande integer NOT NULL,
    id_produit integer NOT NULL,
    quantite integer NOT NULL,
    prix_total double precision NOT NULL
);


ALTER TABLE e_commerce_couche_silver.details_commandes OWNER TO postgres;

--
-- Name: paiements; Type: TABLE; Schema: e_commerce_couche_silver; Owner: postgres
--

CREATE TABLE e_commerce_couche_silver.paiements (
    id_paiement integer NOT NULL,
    id_commande integer NOT NULL,
    methode_paiement character varying(50) NOT NULL,
    montant double precision NOT NULL,
    date_paiement character varying(50) NOT NULL
);


ALTER TABLE e_commerce_couche_silver.paiements OWNER TO postgres;

--
-- Data for Name: clients; Type: TABLE DATA; Schema: e_commerce_couche_silver; Owner: postgres
--

COPY e_commerce_couche_silver.clients (id_client, nom, prenom, gender, email, telephone, adresse) FROM stdin;
1	Juan	Monti	Male	mjuan0@cnn.com	365-532-8326	Rosenstraße 2
2	Blampey	Bobby	Male	bblampey1@bigcartel.com	428-681-3229	Market Street, Dundalk,
3	Bleue	Glory	Female	gbleue2@weibo.com	235-182-7891	260, Okolovrasten Pat Blvd.
4	Van der Baaren	Rooney	Male	rvanderbaaren3@salon.com	537-745-0007	4140 EAST STATE STREET
5	Wynne	Ninette	Female	nwynne4@samsung.com	872-153-3637	Burgstraße 1
6	Allery	Celestia	Female	callery5@hugedomains.com	125-956-5543	245 COMMERCIAL STREET
7	Daudray	Laraine	Female	ldaudray6@timesonline.co.uk	496-578-9242	15 SAMMY MCGHEE BLVD
8	Vasyutochkin	Merilyn	Female	mvasyutochkin7@instagram.com	410-138-4409	200 WEST CONGRESS STREET
9	Doxsey	Sacha	Female	sdoxsey8@topsy.com	151-749-2308	80 SUGAR CREEK CENTER BLVD.
10	Callacher	Susanna	Female	scallacher9@newsvine.com	949-482-6904	4140 EAST STATE STREET
11	Ruse	Emmit	Male	erusea@symantec.com	822-995-3931	401 S. CHURCH ST.
12	Flanders	Kara-lynn	Autres	kflandersb@tmall.com	250-304-8576	1200 E. WARRENVILLE RD
13	Burston	Johnna	Autres	jburstonc@fema.gov	489-671-7256	320 N MAIN
14	Ruusa	Olenolin	Male	oruusad@cam.ac.uk	527-649-1145	8001 VILLA PARK DRIVE
15	Royal	Brunhilde	Female	broyale@weibo.com	562-799-7473	Main Street, Roscrea,
16	Wankel	Niel	Male	nwankelf@desdev.cn	238-695-7563	Platanenstraße 11
17	Gowing	Marthe	Autres	mgowingg@yale.edu	202-215-5045	34611 HIGHWAY 200
18	Vinau	Ricky	Female	rvinauh@unc.edu	923-602-2379	St. Veiter Ring, 43
19	Trudgeon	Bonnee	Female	btrudgeoni@multiply.com	342-404-0169	1008 OAK STREET
20	Dallinder	Barnabe	Male	bdallinderj@blogger.com	174-498-5049	PIAZZA FILIPPO MEDA 4
21	Panyer	Charin	Female	cpanyerk@smh.com.au	424-835-9100	LOC: 01-5138
22	Bowdidge	Rinaldo	Male	rbowdidgel@elpais.com	159-459-4520	Pz de San Nicolás, 4
23	Dalinder	Sherri	Female	sdalinderm@gizmodo.com	896-838-9491	102 WEST BLUFF ST
24	Emms	Lauritz	Male	lemmsn@shinystat.com	239-152-3106	PIAZZA FILIPPO MEDA 4
25	Hankin	Joaquin	Male	jhankino@liveinternet.ru	643-278-8639	Rizzastraße 34
26	Curner	Milton	Male	mcurnerp@who.int	281-401-5515	9300 FLAIR DRIVE  4TH FLOOR
27	Grinyer	Marlene	Female	mgrinyerq@instagram.com	258-188-7921	12345 W COLFAX AVE
28	Shemmans	Benedetto	Male	bshemmansr@howstuffworks.com	434-187-7125	2ND FLOOR
29	Brandi	Georgianne	Female	gbrandis@seattletimes.com	183-422-6970	PIAZZA DEL CALENDARIO, 3
30	Dyzart	Casey	Male	cdyzartt@msn.com	374-176-4485	110 S FERRALL STREET
31	Sevier	York	Male	ysevieru@walmart.com	659-855-6773	110 S FERRALL STREET
32	Allday	Chlo	Female	calldayv@ovh.net	930-198-3955	80 SUGAR CREEK CENTER BLVD
33	McFater	Clemence	Female	cmcfaterw@comcast.net	821-114-8093	Obere Marktstraße 52
34	Dericot	Romola	Female	rdericotx@businesswire.com	869-164-2316	P.O. BOX 87003
35	Auckland	Greggory	Male	gaucklandy@stumbleupon.com	224-532-2866	Hauptplatz, 12
36	Tubbs	Merry	Male	mtubbsz@netlog.com	351-133-5725	PO BOX 10566
37	Minker	Tiffany	Female	tminker10@ihg.com	586-301-9908	SUITE 300
38	Verheyden	Nanci	Female	nverheyden11@chicagotribune.com	462-378-5258	Ettinger Straße 3
39	Gerraty	Georgiana	Female	ggerraty12@google.it	940-766-7941	320 N MAIN
40	Pepper	Vale	Male	vpepper13@istockphoto.com	238-581-5650	Dorfplatz 17
41	Skune	Lynde	Female	lskune14@hud.gov	439-591-5558	EP-MN-WN1A
42	Ivons	Maggy	Female	mivons15@hud.gov	128-782-6914	Main Street, Rathfarnham,
43	Wennington	Cirilo	Male	cwennington16@google.fr	477-180-9022	56, 58 AVENUE ANDRE MALRAUX
44	Haselup	Any	Male	ahaselup17@xinhuanet.com	718-663-6124	325 MAXEY DR
45	Hackelton	Skippy	Male	shackelton18@sohu.com	584-328-4742	19 RUE DES PYRAMIDES
46	Gasquoine	Romeo	Male	rgasquoine19@domainmarket.com	514-668-4546	PIAZZA SAN CARLO, 156
47	Sharrier	Douglass	Male	dsharrier1a@cbsnews.com	112-855-7127	ONE PENNS WAY
48	Krochmann	Sunny	Male	skrochmann1b@engadget.com	301-496-6755	PIAZZA FILIPPO MEDA 4
49	Edling	Allianora	Female	aedling1c@virginia.edu	233-119-0148	Netwerklaan 52
50	Mulqueeny	Shirline	Female	smulqueeny1d@opensource.org	836-565-5611	2525 GREENBAY ROAD
51	Hall-Gough	Orland	Male	ohallgough1e@bbb.org	357-859-7284	Main Street, Ballinasloe,
52	Sarle	Kelsi	Female	ksarle1f@si.edu	178-663-8284	PO BOX 107
53	Karczinski	Marguerite	Female	mkarczinski1g@tripod.com	668-495-5381	PO BOX 10566
54	Hollington	Karrie	Autres	khollington1h@printfriendly.com	201-138-5924	12345 W. COLFAX AVE.
55	Wray	Adrienne	Female	awray1i@cbslocal.com	881-577-3582	3RD FLOOR
56	Gertz	Melody	Female	mgertz1j@walmart.com	807-131-0309	101 S 65 HWY
57	Datte	Orran	Male	odatte1k@icq.com	411-156-8690	245 BELGRADE AVE
58	Greenlies	Marcos	Male	mgreenlies1l@123-reg.co.uk	453-334-9363	PIAZZA FILIPPO MEDA 4
59	Ashborne	Kary	Female	kashborne1m@amazon.co.jp	883-519-4726	1620 DODGE STREET
60	Clemont	Marjie	Female	mclemont1n@gov.uk	975-175-6924	320 N MAIN
61	Addis	Grier	Female	gaddis1o@cdbaby.com	606-785-7749	Burgstraße 8
62	Hanwright	Torey	Male	thanwright1p@last.fm	963-407-7853	401 W TEXAS STE 315
63	Dailey	Wyndham	Male	wdailey1q@360.cn	329-226-6593	Große Gallusstraße 18 (Omniturm)
64	Bryers	Hedwiga	Female	hbryers1r@patch.com	161-112-0116	LOCATER 01-5138
65	Bernt	Gardy	Male	gbernt1s@deliciousdays.com	201-369-9843	203 OKLAHOMA AVE
66	De Zamudio	Kelsey	Female	kdezamudio1t@flavors.me	809-660-1456	P O BOX 600
67	Whitehair	Steward	Male	swhitehair1u@dion.ne.jp	278-695-6240	P7-PFSC-03-H
68	Ollier	Darrin	Male	dollier1v@ucsd.edu	570-633-1169	Neustadt 17
69	Laxson	Ashby	Male	alaxson1w@naver.com	398-597-8372	43, Boulevard Royal
70	Berryann	Theressa	Female	tberryann1x@blog.com	433-879-0151	10430 HIGHLAND MANOR DRIVE
71	Duplock	Amby	Autres	aduplock1y@unc.edu	274-965-7206	50, Avenue J.F. Kennedy
72	Karpol	Gillie	Female	gkarpol1z@vkontakte.ru	179-908-8075	PIAZZA FILIPPO MEDA 4
73	Freed	Casar	Male	cfreed20@i2i.jp	779-311-0471	PIAZZA FILIPPO MEDA 4
799	Mavin	Karel	Male	kmavinm6@arstechnica.com	269-436-2019	Kornmarkt 9
74	Heilds	Jonathan	Male	jheilds21@biblegateway.com	820-291-9281	Altendorf, 7
75	Walster	Deborah	Female	dwalster22@woothemes.com	632-831-9953	VIA SEN. GUGLIELMO PELIZZO, 8-1
76	MacIan	Izzy	Male	imacian23@nasa.gov	947-794-7210	PIAZZA FILIPPO MEDA 4
77	Humbie	Roselia	Female	rhumbie24@shutterfly.com	164-738-9219	3200 WILSHIRE BLVD
78	Teissier	Trina	Female	tteissier25@technorati.com	926-276-6562	Hauptstr., 41
79	McShirie	Hewett	Male	hmcshirie26@craigslist.org	983-781-7919	24 SECOND AVENUE SE
80	Von Brook	Jim	Male	jvonbrook27@oakley.com	926-548-2046	12345 W. COLFAX AVE
81	Dodds	Sauncho	Male	sdodds28@blinklist.com	185-396-2616	80 SUGAR CREEK CENTER BLVD.
82	Pollak	Hercules	Male	hpollak29@unesco.org	268-206-1373	2ND FLOOR
83	Britian	Anderea	Female	abritian2a@house.gov	915-146-4736	PO BOX 27025, VA2-430-01-01
84	Chatband	Filberto	Male	fchatband2b@shareasale.com	191-693-5508	16 BOULEVARD DES ITALIENS
85	Steptowe	Cacilia	Female	csteptowe2c@bravesites.com	516-909-1922	2910 W. JACKSON ST
86	Scuse	Juana	Autres	jscuse2d@amazon.co.jp	341-406-1022	Gifhorner Straße 57
87	O'Dooghaine	Ike	Male	iodooghaine2e@live.com	826-603-8764	An der Sparkasse 1
88	Farlow	Aloysia	Female	afarlow2f@sogou.com	373-853-8828	PIAZZA FILIPPO MEDA 4
89	Bentley	Chrysler	Female	cbentley2g@1688.com	357-827-9527	1620 DODGE STREET
90	Ingolotti	Gwenni	Autres	gingolotti2h@ucla.edu	528-325-9280	17555 NORTHEAST SACRAMENTO
91	Maccrie	Dari	Female	dmaccrie2i@artisteer.com	361-892-5948	VIA SOPERGA, 9
92	Casina	Euell	Male	ecasina2j@wix.com	698-399-9193	Taunustor 1 (TaunusTurm)
93	Houseman	Leonanie	Female	lhouseman2k@sbwire.com	194-339-3059	EP-MN-WN1A
94	Dulson	Ludwig	Male	ldulson2l@msn.com	195-389-5191	7 PROMENADE GERMAINE SABLON
95	Hards	Freeland	Male	fhards2m@wordpress.com	798-504-6000	PIAZZA FILIPPO MEDA 4
96	Lutsch	Trista	Female	tlutsch2n@xrea.com	485-835-3660	2 RUE DU 24 FEVRIER CS 90000
97	Jurn	Gerik	Male	gjurn2o@blogs.com	629-661-8564	Saarmunder Straße 61
98	Pund	Anselm	Male	apund2p@state.tx.us	546-442-2882	ul. dr. Zielińskiego 4
99	Huckabe	Daron	Male	dhuckabe2q@intel.com	182-214-9358	9300 FLAIR DRIVE  4TH FLOOR
100	Sommerland	Aksel	Male	asommerland2r@ezinearticles.com	251-876-8204	NY-31-17-0119
101	Gavagan	Madella	Female	mgavagan2s@constantcontact.com	100-653-8426	PIAZZA FILIPPO MEDA 4
102	Coade	Dwain	Male	dcoade2t@csmonitor.com	283-421-1991	Herzog-Ernst-Ring 49
103	Letrange	Amby	Male	aletrange2u@adobe.com	731-138-6487	275 SOUTHWEST THIRD STREET
104	McNeilley	Conrade	Autres	cmcneilley2v@feedburner.com	209-849-8588	1508 TEXAS AVENUE
105	Lawday	Randee	Female	rlawday2w@redcross.org	701-267-7417	PO BOX 27025
106	Spelwood	Janek	Male	jspelwood2x@ox.ac.uk	601-770-5066	140, boulevard de la Pétrusse
107	Barstow	Katharina	Female	kbarstow2y@netvibes.com	300-725-9457	80 SUGAR CREEK CENTER BLVD
108	Winkworth	Stuart	Male	swinkworth2z@domainmarket.com	972-174-1728	211 BURNETTE ST
109	Faltskog	Dolley	Female	dfaltskog30@blogs.com	872-898-1881	PIAZZA FILIPPO MEDA 4
110	Leatherland	Pernell	Male	pleatherland31@icq.com	679-165-7562	VIA CERNAIA, 7
111	Millins	Micki	Female	mmillins32@google.nl	317-515-7192	101 N MAIN
112	Van T'Hoog	Jennilee	Female	jvanthoog33@addtoany.com	763-521-5004	1300 11TH STREET
113	Bottoms	Sasha	Male	sbottoms34@comsenz.com	172-688-2645	Bahnhofstraße 8
114	Glas	Gearard	Male	gglas35@alexa.com	835-280-0885	Jägersbrunnen 1-7
115	Van't Hoff	Giordano	Male	gvanthoff36@wired.com	526-674-4820	VIA MONS. VITO PERNICONE, 1
116	Jagiello	Roderic	Male	rjagiello37@google.ru	690-624-2569	15 Avenue John F. Kennedy, 3rd Floor
117	Blanshard	Cathryn	Female	cblanshard38@unicef.org	814-515-8248	Pettelaarpark 104
118	Haverson	Traci	Female	thaverson39@google.fr	714-659-7126	102 DUFFY AVENUE
119	Jacobovitz	Baxter	Male	bjacobovitz3a@php.net	786-569-7357	PIAZZA FILIPPO MEDA 4
120	Faier	Harbert	Male	hfaier3b@google.es	820-283-4020	P.O. BOX 643
121	Entwhistle	Dov	Male	dentwhistle3c@storify.com	296-990-6382	4140 EAST STATE STREET
122	Townson	Bertrand	Autres	btownson3d@geocities.com	917-665-5557	115 RUE MONTMARTRE
123	Fenton	Walther	Male	wfenton3e@bloglines.com	299-294-2958	42 RUE BENOIT MALON
124	Rivaland	Quill	Male	qrivaland3f@fastcompany.com	216-753-8513	SUITE 5
125	Geldeard	Elmo	Autres	egeldeard3g@joomla.org	391-766-4358	Sophienstraße 1
126	Oven	Ingeborg	Female	ioven3h@unesco.org	155-426-2267	Mühlenstraße 93
127	Garralts	Caterina	Female	cgarralts3i@friendfeed.com	325-939-2527	P.O. BOX 85139
128	Crooke	Valentine	Female	vcrooke3j@google.com.hk	279-412-1830	2ND FLOOR
129	Kopelman	Lane	Female	lkopelman3k@plala.or.jp	326-449-1690	2ND FLOOR
130	Como	Marquita	Female	mcomo3l@tmall.com	993-706-0510	VIA UNITA', 5
131	Monnelly	Tabbatha	Female	tmonnelly3m@over-blog.com	694-421-6138	1200 E WARRENVILLE RD
132	Zipsell	Atalanta	Female	azipsell3n@walmart.com	148-669-2228	Skäve Magasin
133	Mityukov	Dar	Male	dmityukov3o@fastcompany.com	232-633-5114	PIAZZA FILIPPO MEDA 4
134	MacInerney	Gay	Male	gmacinerney3p@4shared.com	157-825-0566	455 PROMENADE DES ANGLAIS
135	Rooms	Freddie	Female	frooms3q@buzzfeed.com	723-315-8806	Wilhelm-Leuschner-Straße 12-14
136	Nock	Hildegaard	Female	hnock3r@issuu.com	763-457-4579	Hamnbanegatan 5
137	Polding	Malanie	Female	mpolding3s@last.fm	115-226-9177	1830 MAIN
138	Bonett	Weidar	Male	wbonett3t@auda.org.au	153-704-6827	VIALE ALTIERO SPINELLI, 30
139	Chastaing	Shayne	Male	schastaing3u@ebay.co.uk	580-582-0925	12183 MS HWY 182
140	Gouldeby	Elvin	Male	egouldeby3v@tiny.cc	622-812-9435	Hauptstraße, 40
141	Hiorn	Hillel	Male	hhiorn3w@123-reg.co.uk	705-972-9827	101 N POPLAR ST
142	Farlow	Patric	Male	pfarlow3x@nps.gov	537-376-7081	Abbey Street, Ballypheasan
143	Flaonier	Tedi	Female	tflaonier3y@clickbank.net	891-909-9471	#10 PEDRO MARQUEZ STREET
144	Larmett	Parnell	Male	plarmett3z@eventbrite.com	894-793-7840	YRJÖNKATU 9 A
145	Barrasse	Sheff	Male	sbarrasse40@mozilla.org	152-402-4306	12345 W COLFAX AVE
146	Warr	Margaretha	Female	mwarr41@printfriendly.com	705-532-4396	120 W ARKANSAS
147	Chaplyn	Connie	Male	cchaplyn42@mediafire.com	867-518-2136	245 COMMERCIAL STREET
148	Dobeson	Imelda	Female	idobeson43@dyndns.org	956-179-2932	VIALE ALTIERO SPINELLI, 30
149	Roft	Kym	Female	kroft44@squarespace.com	537-396-1833	545 MAIN
150	Sustins	Ceciley	Female	csustins45@nymag.com	263-988-2361	PIAZZA DEL CALENDARIO, 3
151	Golton	Rutherford	Male	rgolton46@qq.com	302-991-9033	ul. Kościelna 1
152	Hollows	Levy	Male	lhollows47@g.co	928-835-1156	ACH OPERATIONS 100-99-04-10
153	Ibeson	Loria	Female	libeson48@taobao.com	666-177-5246	Hahnenstraße 57
154	Greggs	Tamma	Female	tgreggs49@dion.ne.jp	420-771-4686	Domovinskog rata 61
155	Pepperd	Juliana	Female	jpepperd4a@hud.gov	936-478-5255	400 S. BUS 65
156	Donisthorpe	Inga	Female	idonisthorpe4b@slashdot.org	919-424-6076	Mergenthalerallee 79-81
157	Clem	Phip	Male	pclem4c@angelfire.com	182-726-1108	195 MARKET STREET
158	Osgardby	Prince	Male	posgardby4d@walmart.com	861-270-3222	Rua da Quinta do Quintã, Nº 1, Edificio D. José, Piso 3
159	Callar	Elayne	Female	ecallar4e@mtv.com	994-107-0054	PO BOX 220
160	Vassar	Courtnay	Male	cvassar4f@whitehouse.gov	414-849-6469	1200 E WARRENVILLE RD
161	Jowsey	Zonda	Female	zjowsey4g@amazon.de	111-694-7772	69, route d'Esch
162	Loudiane	Hamel	Male	hloudiane4h@apache.org	756-401-3066	1 BANK PLAZA
163	Ledbury	Basil	Male	bledbury4i@nps.gov	198-785-7612	4140 EAST STATE STREET
164	Kupka	Luz	Autres	lkupka4j@wikimedia.org	658-537-5284	110 S FERRALL STREET
165	Petru	Adriano	Autres	apetru4k@zimbio.com	654-500-8252	110 W PANOLA
166	Halgarth	Sally	Female	shalgarth4l@fc2.com	210-475-4283	Engerstraße 5
167	Teml	Louie	Male	lteml4m@people.com.cn	508-635-2882	CL LAS CRUCES 33
168	Ebbles	Georgette	Female	gebbles4n@reverbnation.com	675-876-5277	2 SOUTH MAIN ST
169	Dack	Patric	Male	pdack4o@barnesandnoble.com	201-703-1051	100 CREEK RD
170	Moulsdall	Ferdy	Male	fmoulsdall4p@imgur.com	566-284-3298	2910 WEST JACKSON
171	de Mendoza	Budd	Male	bdemendoza4q@walmart.com	933-568-4810	110 S FERRALL STREET
172	Melloy	Willie	Female	wmelloy4r@e-recht24.de	102-550-2896	7 EASTON OVAL
173	Solley	Herminia	Female	hsolley4s@chronoengine.com	524-775-3026	MS: NY-31-17-0119
174	Issit	Cristi	Female	cissit4t@w3.org	288-582-9033	Hagsche Straße 33
175	Whyler	Angie	Male	awhyler4u@dedecms.com	757-321-4043	819 EAST SHOTWELL ST
176	Huchot	Nissy	Female	nhuchot4v@buzzfeed.com	555-586-5479	P O BOX 7
177	Duker	Lebbie	Female	lduker4w@parallels.com	171-787-2141	ul. Dobrzykowska 1
178	McWilliams	Zolly	Male	zmcwilliams4x@altervista.org	863-464-5905	4140 EAST STATE STREET
179	Gionettitti	Ozzy	Male	ogionettitti4y@studiopress.com	891-428-3263	4140 EAST STATE STREET
180	Boggis	Toddy	Autres	tboggis4z@feedburner.com	460-703-3558	PO BOX 7009
181	Dymocke	Alvan	Male	adymocke50@ehow.com	808-904-3100	24 SECOND AVENUE
182	Paige	Torey	Male	tpaige51@gov.uk	360-845-5675	1200 E. WARRENVILLE ROAD
183	Daugherty	Sharleen	Autres	sdaugherty52@uol.com.br	653-977-5735	5900 LA PLACE COURT  SUITE 200
184	De Hailes	Alisa	Female	adehailes53@vimeo.com	993-386-9684	PIAZZA FILIPPO MEDA 4
185	Milington	Nollie	Autres	nmilington54@prweb.com	112-645-3671	PIAZZA GAE AULENTI, 3 TOWER  A
186	Vasilov	Janek	Male	jvasilov55@whitehouse.gov	588-741-6132	307 MAIN STREET WEST
187	Rounds	Loise	Female	lrounds56@imdb.com	784-301-0910	EDMUNDS COUNTY
188	Abeles	Winnah	Female	wabeles57@macromedia.com	411-188-2341	1200 E. WARRENVILLE ROAD
189	Nevinson	Tyler	Male	tnevinson58@canalblog.com	518-321-7004	14225 ST HWY 31
190	Briatt	Guy	Male	gbriatt59@myspace.com	563-409-1181	Hauptplatz, 24-26
191	Fairey	Tessie	Female	tfairey5a@nydailynews.com	263-778-4270	4140 EAST STATE STREET
192	Theuff	Drona	Female	dtheuff5b@wikipedia.org	375-411-3633	1460 VALLEY RD
193	Bosquet	Piotr	Male	pbosquet5c@china.com.cn	962-376-0981	R. Direita, 118
194	Gunnell	Hakeem	Male	hgunnell5d@bluehost.com	990-527-6925	5611 PALMER WAY  SUITE G
195	Varndell	Sallee	Female	svarndell5e@flavors.me	400-418-6552	P O BOX 578
196	O'Doireidh	Craig	Male	codoireidh5f@bloglovin.com	983-726-8079	CORSO PERTICARI 25/27
197	Bew	Rosaline	Female	rbew5g@diigo.com	338-514-4539	PO BOX 27025
198	Novak	Fawne	Female	fnovak5h@altervista.org	744-929-3838	5050 KINGSLEY DRIVE
199	Stening	Darsie	Female	dstening5i@msn.com	356-401-3182	Oberer Stadtplatz, 1
200	O'Cullinane	Rozamond	Female	rocullinane5j@addtoany.com	671-965-5706	VIA BENIGNO CRESPI, 23
201	Begg	Arabele	Female	abegg5k@paypal.com	731-111-3170	ONE COMMUNITY PLACE
202	Shellcross	Rebekah	Female	rshellcross5l@bluehost.com	547-502-6245	Paldau, 40
203	Tirone	Gusti	Female	gtirone5m@bing.com	963-261-4199	112 CORPORATE DRIVE
204	Klaff	Burt	Autres	bklaff5n@ucla.edu	612-191-3408	200 WEST CONGRESS STREET
205	Charville	Caty	Female	ccharville5o@addthis.com	442-895-6052	PO BOX 27025, VA2-430-01-01
206	Bumpus	Arleta	Female	abumpus5p@technorati.com	258-768-8078	Bismarckstraße 1
207	Dabbs	Renault	Male	rdabbs5q@sciencedaily.com	256-290-9176	5050 KINGSLEY DRIVE
208	Floyde	Gwenette	Female	gfloyde5r@samsung.com	596-946-2673	P.O. BOX 2400
209	Butlin	Pietrek	Male	pbutlin5s@mozilla.org	795-494-7794	NY-31-17-0119
210	Merfin	Roxie	Female	rmerfin5t@usnews.com	573-704-4678	CORSO ROMA, 100
211	Harrower	Vitia	Female	vharrower5u@pcworld.com	377-721-2525	615 CEDAR STREET
212	Gut	Sande	Female	sgut5v@amazon.co.uk	349-260-7156	2910 W JACKSON ST
213	Douberday	Tye	Male	tdouberday5w@linkedin.com	571-132-5058	Boulevard Bischoffsheim, 1-8
214	Posselt	Derrick	Autres	dposselt5x@cdc.gov	979-362-1482	LOCATOR:  01-5138
215	Scrinage	Haslett	Male	hscrinage5y@creativecommons.org	359-320-1114	7 EASTON OVAL
216	MacKellar	Gunner	Male	gmackellar5z@domainmarket.com	671-255-7484	5050 KINGSLEY DRIVE
217	Ingarfield	Leonie	Female	lingarfield60@ehow.com	506-223-7935	PIAZZA FILIPPO MEDA 4
218	Jefford	Dore	Male	djefford61@ox.ac.uk	234-232-9625	3320 DREDGE DRIVE
219	Silvester	Lark	Female	lsilvester62@youku.com	551-461-9407	10 AVENUE FOCH CS 70369
220	Staddart	Danya	Male	dstaddart63@storify.com	415-319-8589	24010 PARTNERSHIP BOULVARD
221	Marxsen	Wolfy	Male	wmarxsen64@clickbank.net	625-278-8750	6B, rue du Fort niedergrunewald
222	Wykes	Rosina	Female	rwykes65@netvibes.com	729-112-0945	Jogailos g. 4
223	Vasyushkhin	Giacobo	Male	gvasyushkhin66@wikipedia.org	995-214-1942	17555 NORTHEAST SACRAMENTO
224	Whiterod	Manuel	Male	mwhiterod67@geocities.jp	675-642-6947	P. O. BOX 681
225	Ackhurst	Lorilee	Female	lackhurst68@disqus.com	753-710-7842	10430 HIGHLAND MANOR DRIVE
226	Pitkins	Myca	Male	mpitkins69@amazonaws.com	570-653-4236	PO BOX 27025, VA2-430-01-01
227	Cyseley	Merry	Female	mcyseley6a@house.gov	930-614-4638	Philip Heymans Alle 15
228	Stapforth	Alfie	Male	astapforth6b@usgs.gov	718-295-2978	Kapuzinerstraße 25
229	Manach	Estevan	Male	emanach6c@columbia.edu	676-456-7691	Hauptplatz, 103
230	Willars	Selestina	Female	swillars6d@washingtonpost.com	257-288-0716	DATA CONTROL ACH DESK
231	Boshers	Morna	Female	mboshers6e@oaic.gov.au	252-815-8686	6689 HWY 34
232	McDougal	Fawnia	Female	fmcdougal6f@w3.org	813-205-0512	88730 HWY 9
233	Riggs	Ganny	Autres	griggs6g@msn.com	805-499-7745	6600 PLAZA DRIVE
234	Riddel	Bernita	Female	briddel6h@weather.com	638-518-9323	102 DUFFY AVENUE
235	O'Riordan	Garvy	Autres	goriordan6i@smugmug.com	115-776-7183	PIAZZA FANTI, 17
236	Khosa	Jenni	Female	jkhosa6j@time.com	418-400-7101	Hochstraße 38
237	Downes	Lorena	Autres	ldownes6k@hhs.gov	677-777-5260	EP-MN-WN1A
238	Howsin	Jenine	Female	jhowsin6l@quantcast.com	898-110-3423	PO BOX 7009
239	Beevis	Ram	Male	rbeevis6m@samsung.com	535-174-3654	112 CORPORATE DRIVE
240	Surridge	Zechariah	Male	zsurridge6n@lulu.com	238-418-8262	ONE PENNS WAY
241	Talmadge	Lita	Female	ltalmadge6o@bloglovin.com	690-566-8981	PIAZZA FILIPPO MEDA 4
242	Neal	Emmy	Female	eneal6p@bravesites.com	394-899-3174	Weserstraße 60
243	Weatherall	Stephanie	Female	sweatherall6q@army.mil	208-552-7660	Jahnstraße 4-8
244	Sneezem	Shanna	Female	ssneezem6r@freewebs.com	974-724-1412	Grazer Straße, 19
245	Bellsham	Livy	Female	lbellsham6s@meetup.com	749-559-4789	12 PLACE DES ETATS UNIS
246	Dunwoody	Alexandr	Male	adunwoody6t@sina.com.cn	842-284-5397	Dorfstraße, 24
247	Wardel	Johanna	Female	jwardel6u@ehow.com	581-108-7704	P. O. BOX 8287
248	MacRorie	Emlynn	Female	emacrorie6v@spiegel.de	360-109-7649	RUE CASE NÈGRE BP 370
249	Chattock	Gabriella	Female	gchattock6w@devhub.com	891-178-7730	P O DRAWER 635050
250	Crocker	Gertrude	Female	gcrocker6x@dyndns.org	306-334-3278	Torvet 1
251	Enocksson	Zonnya	Female	zenocksson6y@cbc.ca	704-162-6093	P.O. BOX 280
252	Gudeman	Mort	Male	mgudeman6z@webnode.com	778-334-2461	PIAZZA FILIPPO MEDA 4
253	Blofield	Alysia	Autres	ablofield70@dailymotion.com	904-346-6487	SUITE 1000
254	Kann	Alexandra	Female	akann71@utexas.edu	854-957-8722	Lindenstraße 32
255	Romans	Kristy	Female	kromans72@dell.com	349-682-6034	Bridge Street, Lifford,
256	Van der Mark	Leland	Female	lvandermark73@about.me	727-303-7946	Hoofdstraat 10 a
257	Minshall	Arvie	Male	aminshall74@drupal.org	889-961-4926	921 AVE E
258	Cristofvao	Xerxes	Male	xcristofvao75@google.it	448-514-9124	VIA MADONNA DEL SUFFRAGIO, 22
259	Ranking	Dud	Male	dranking76@ibm.com	970-131-6504	ul. Lubelska 11
260	Matityahu	Ruben	Male	rmatityahu77@newsvine.com	290-762-2010	Dreifaltigkeitsplatz, 2
261	Minillo	Elysee	Female	eminillo78@nymag.com	323-975-3333	301 E MAIN ST
262	Carruth	Glenn	Female	gcarruth79@zdnet.com	815-200-7276	18479 MAIN ST
263	Hartop	Brunhilda	Female	bhartop7a@chronoengine.com	404-783-5608	Magazinska cesta 69
264	Vidyapin	Rodd	Male	rvidyapin7b@opera.com	141-777-7448	VIA DUCA DEGLI ABRUZZI, 103
265	Burgill	Dilan	Male	dburgill7c@yahoo.com	394-607-6213	1 CITIZENS DRIVE
266	Mackneis	Eleanore	Female	emackneis7d@answers.com	865-222-5855	80 SUGAR CREEK CENTER BLVD.
267	Dowson	Ossie	Male	odowson7e@purevolume.com	293-105-5342	Schupstraat, 18-20
268	Staves	Douglass	Male	dstaves7f@godaddy.com	793-915-3159	VIA VALLE AURINA, 20
269	Murcutt	Husain	Male	hmurcutt7g@hostgator.com	612-644-0276	Nr., 19
270	Valentelli	Hallsy	Male	hvalentelli7h@ning.com	309-301-5285	VA2-430-01-01
271	Sunter	Salvador	Male	ssunter7i@washingtonpost.com	926-237-5956	ACH OPERATIONS 100-99-04-10
272	Wiltshier	Reeba	Female	rwiltshier7j@nydailynews.com	562-532-6519	P.O. BOX 85139
273	Bedle	Link	Male	lbedle7k@mapy.cz	101-382-8664	P O BOX 660
274	Hassekl	Chicky	Male	chassekl7l@mashable.com	739-333-7224	201 MAIN AVE BOX 227
275	Maltby	Devonne	Autres	dmaltby7m@gnu.org	541-705-8366	PO BOX 27025
276	Dooher	Cornelius	Male	cdooher7n@reverbnation.com	706-490-5451	235 GRIFFIN ST
277	Joly	Kacey	Female	kjoly7o@miibeian.gov.cn	801-931-1688	CORSO GARIBALDI, 49/51
278	Redit	Gilly	Female	gredit7p@wikispaces.com	920-781-3007	MAC N9301-041
279	Fitchew	Isidro	Male	ifitchew7q@liveinternet.ru	262-777-2202	Katharinenplatz 17
280	Matoshin	Davon	Male	dmatoshin7r@about.com	809-399-5576	300 E NORTHWEST HIGHWAY
281	Dmitr	Curt	Male	cdmitr7s@exblog.jp	875-538-2153	PO BOX 27025, VA2-430-01-01
282	Hubatsch	Lissa	Female	lhubatsch7t@accuweather.com	822-547-3053	Taunusanlage 12
283	Hubatsch	Jobina	Female	jhubatsch7u@nytimes.com	394-662-5209	PIAZZA FILIPPO MEDA 4
284	Dugue	Jsandye	Female	jdugue7v@smh.com.au	470-730-5725	ATTN: ACH DESK LOC:01-5138
285	Bourner	Allyce	Female	abourner7w@odnoklassniki.ru	724-442-9220	601 PENN ST., 5TH FLOOR
286	Ilyinski	Ritchie	Male	rilyinski7x@google.nl	617-777-5792	P.O. BOX 1377
287	Duns	Julee	Female	jduns7y@census.gov	962-227-5619	12345 WEST COLFAX AVENUE
288	Lightollers	Jone	Autres	jlightollers7z@istockphoto.com	571-953-9100	PIAZZA DELLA REPUBBLICA, 28
289	Barnard	Halette	Female	hbarnard80@squidoo.com	342-362-0040	Wittekindstraße 17-19
290	Sketch	Pen	Male	psketch81@diigo.com	248-830-2031	PO BOX 555
291	Bartleman	Augie	Male	abartleman82@clickbank.net	499-168-1897	Hoveniersstraat, 29
292	Cardenosa	Louis	Male	lcardenosa83@ca.gov	908-500-7701	VIA DEL CROCINO, 2
293	Jakucewicz	Bartholomeo	Male	bjakucewicz84@cisco.com	451-165-3433	200 E. MAIN ST.
294	Hallewell	Mattie	Male	mhallewell85@wp.com	506-679-2417	PO BOX 1890
295	Norval	Sergent	Male	snorval86@ihg.com	435-857-2172	MAC N9301-041
296	Fison	Jodi	Male	jfison87@yellowbook.com	651-600-4987	Van Putlei, 74-76
297	Tupling	Elene	Autres	etupling88@studiopress.com	938-614-6711	P.O. BOX 507
298	Malham	Patsy	Male	pmalham89@oakley.com	528-193-0649	809 CLARK ST
299	Pragnell	Lazarus	Male	lpragnell8a@surveymonkey.com	399-145-1588	610 W. RANDOL MILL RD.
300	Reame	Lammond	Male	lreame8b@prlog.org	715-485-8173	St. Veiter Ring, 43
301	Thorns	Kerrie	Female	kthorns8c@go.com	917-916-5102	P. O. BOX 4678
302	Labbet	Kort	Autres	klabbet8d@skyrock.com	672-666-6606	SUITE 1500
303	Pitt	Analiese	Autres	apitt8e@elpais.com	229-299-1931	3405 N LOUISE AVE
304	Faires	Pip	Male	pfaires8f@printfriendly.com	560-964-3488	VIA DANTE ALIGHIERI, 2
305	Gottschalk	Debbie	Female	dgottschalk8g@netlog.com	840-699-7052	Kleiner Markt
306	Kennham	Mitch	Autres	mkennham8h@furl.net	459-198-8889	Mindelheimer Straße 7
307	Highton	Josephine	Female	jhighton8i@nydailynews.com	370-725-1432	PO BOX 27025, VA2-430-01-01
308	Brett	Josh	Male	jbrett8j@netvibes.com	526-437-4069	Am Stadtpark, 9
309	Capstake	Napoleon	Male	ncapstake8k@ft.com	934-764-1115	Landsvägen 40
310	Fawson	Gusta	Female	gfawson8l@feedburner.com	116-776-8877	PIAZZA FILIPPO MEDA 4
311	Rehme	Neill	Male	nrehme8m@businessinsider.com	800-905-2699	13 BOULEVARD HAUSSMANN
312	Agett	Gunar	Male	gagett8n@ocn.ne.jp	738-333-6561	MAC N9301-041
313	Heeps	Bidget	Female	bheeps8o@360.cn	495-293-3150	PO BOX 2290
314	Dauncey	Rikki	Female	rdauncey8p@bloglovin.com	902-796-3088	Av Don Bosco, 2
315	Janousek	Ernestus	Autres	ejanousek8q@youtu.be	828-746-9468	PO BOX 3938
316	Janu	Alida	Female	ajanu8r@storify.com	715-567-3432	29 AVENUE DE L OPERA
317	Dewett	Rainer	Male	rdewett8s@stanford.edu	779-824-8964	4812 E 81ST ST
318	Yakuntsov	Jillane	Female	jyakuntsov8t@dell.com	386-923-9575	LEVEL 7 ARAGON HOUSE BUSINESS CENTRE TRIQ DRAGONARA
319	Stuehmeier	Othelia	Female	ostuehmeier8u@alibaba.com	146-738-6730	AV CORAZÓN DE JESÚS, 3
320	Meenehan	Fletcher	Male	fmeenehan8v@eventbrite.com	780-849-0091	VA2-430-01-01
321	Cawt	Alexandra	Female	acawt8w@latimes.com	581-174-2920	Theaterplatz 8
322	Rendbaek	Alford	Male	arendbaek8x@furl.net	846-915-6237	Bockenheimer Landstraße 2-4 (Opernturm)
323	Verriour	Sadie	Female	sverriour8y@timesonline.co.uk	499-943-0333	P.O. BOX 1377
324	Isard	Lorie	Female	lisard8z@illinois.edu	132-280-2246	Praça Marquês de Pombal, n.º 13, 2.º andar
325	Hammerberger	Emanuel	Male	ehammerberger90@tripod.com	630-580-7759	VIA DON ERNESTO RICCI, 1
326	Garnham	Ollie	Male	ogarnham91@sfgate.com	858-430-4588	Walter Macken Road, Mervue,
327	Stoffler	Paxton	Male	pstoffler92@hugedomains.com	498-523-8949	1017 HARRISON
328	Coslitt	Sadella	Autres	scoslitt93@nsw.gov.au	886-861-9678	78 High Street, Gardens
329	Spearing	Daniele	Female	dspearing94@blog.com	518-778-3600	40 RUE DE COURCELLES
330	Gilvear	Cleopatra	Female	cgilvear95@deliciousdays.com	743-845-1555	Am Markt 1
331	Westmoreland	Lorne	Male	lwestmoreland96@imdb.com	534-851-5553	ul. Handlowa 35/37
332	Gardiner	Aharon	Male	agardiner97@aboutads.info	350-273-2704	100 COMMERCE ST
333	Bakes	Garreth	Autres	gbakes98@webeden.co.uk	854-502-9166	Kurtalstraße 2
334	Chesterton	Ulrikaumeko	Autres	uchesterton99@miibeian.gov.cn	547-808-8444	5050 KINGSLEY DRIVE
335	Crayke	Cheston	Male	ccrayke9a@cornell.edu	805-938-1181	TOUR D2 17 BIS PLACE DES REFLETS
336	Barca	Amalea	Female	abarca9b@mapquest.com	427-753-4067	1460 VALLEY ROAD
337	Barok	Karalynn	Female	kbarok9c@example.com	753-587-8242	Main Street, Athboy,
338	Paladino	Sonja	Female	spaladino9d@edublogs.org	663-868-9497	255 2ND AVE SOUTH
339	Fills	Horst	Male	hfills9e@stumbleupon.com	877-151-3354	VIA VITTORIO EMANUELE S.N.C.
340	Pendre	Hedda	Female	hpendre9f@telegraph.co.uk	505-436-9170	SUITE 600
341	Litchmore	Shayne	Male	slitchmore9g@sitemeter.com	532-325-2101	P. O. BOX 910
342	Whiteman	Collete	Female	cwhiteman9h@dyndns.org	580-551-8193	BOX 269
343	Mogg	Izzy	Male	imogg9i@cdbaby.com	463-631-1848	Højevej 18, Astrup
344	McRoberts	Karina	Female	kmcroberts9j@spotify.com	669-307-1917	Marktstraße 16
345	Tunnicliff	Hi	Autres	htunnicliff9k@bing.com	577-252-3850	PO BOX 537
346	Works	Ninon	Female	nworks9l@ft.com	270-558-4179	200 E. NASHVILLE AVE
347	Jimes	Katuscha	Female	kjimes9m@amazon.de	223-240-5304	Waffenstraße 15
348	Lumox	Felicia	Female	flumox9n@csmonitor.com	109-907-3295	PO BOX 10566
349	Gocke	Teresa	Female	tgocke9o@narod.ru	672-366-0413	90 AVENUE DES CHAMPS ELYSEES
350	Claridge	Arvie	Male	aclaridge9p@intel.com	943-636-0799	23 avenue de la Costa
351	Pudney	Cobby	Male	cpudney9q@smh.com.au	135-652-3933	Am Hauptbahnhof 2
352	Shorthouse	Caryl	Female	cshorthouse9r@friendfeed.com	423-141-4994	80 SUGAR CREEK CENTER BLVD
353	Roizn	Margit	Female	mroizn9s@t.co	359-138-6908	MAC N9301-041
354	Archard	Ernesto	Autres	earchard9t@github.com	489-115-3125	63 HIGHWAY 515
355	MacMaster	Beverie	Female	bmacmaster9u@chron.com	860-657-1955	PIAZZA FILIPPO MEDA 4
356	Weiss	Kiah	Female	kweiss9v@bloglovin.com	932-914-8607	PO BOX 27025
357	Heitz	Germain	Female	gheitz9w@tinypic.com	188-452-2005	PIAZZA MARCONI, 28
358	Dawes	Kerri	Female	kdawes9x@tripod.com	435-573-6813	PO BOX 307
359	Foad	Nickie	Autres	nfoad9y@narod.ru	143-649-5771	100 NORTH PHILLIPS AVENUE
360	Ffoulkes	Erasmus	Male	effoulkes9z@posterous.com	774-152-1495	PO BOX 27025, VA2-430-01-01
361	Folcarelli	Tait	Male	tfolcarellia0@eventbrite.com	282-351-0517	10TH FLOOR
362	Gostling	Hi	Male	hgostlinga1@cdbaby.com	765-334-5218	Av de Santa Marina 15
363	Ghelerdini	Emanuele	Male	eghelerdinia2@japanpost.jp	334-580-7859	Hauptstraße 188
364	Figge	Goraud	Male	gfiggea3@friendfeed.com	452-716-0103	Lechner Ödön fasor 8.
365	Veighey	Deanne	Female	dveigheya4@tripod.com	823-497-1217	1 Parnell Street,
366	Ruffell	Brenn	Female	bruffella5@tumblr.com	809-284-8592	Hauptstraße 29
367	Haggleton	Nichol	Autres	nhaggletona6@forbes.com	145-862-9340	P.O. BOX 643
368	Balsillie	Tatiania	Female	tbalsilliea7@china.com.cn	110-536-0105	2258 EAST MAIN
369	Pickring	Stace	Female	spickringa8@wikispaces.com	709-132-6693	1200 E WARRENVILLE ROAD
370	Naismith	Romy	Female	rnaismitha9@theguardian.com	965-398-6907	VIALE ALTIERO SPINELLI, 30
371	Walkowski	Kiel	Male	kwalkowskiaa@macromedia.com	753-651-9288	719 WASHINGTON ST
372	Fackrell	Selma	Female	sfackrellab@usnews.com	439-908-9060	600 MIDLAND AVE
373	Joutapavicius	Octavius	Male	ojoutapaviciusac@ihg.com	663-627-1602	Bergstraße 6
374	Chellingworth	Phillie	Female	pchellingworthad@skype.com	181-687-2651	Etoile Saint Honoré, 21-25 Rue Balzac
375	Tamplin	Demetris	Male	dtamplinae@apache.org	355-437-4208	Nibelungenplatz 3
376	Shitliffe	Hephzibah	Female	hshitliffeaf@wp.com	858-810-3562	Ludwigsplatz 1
377	Lumber	Pansy	Female	plumberag@berkeley.edu	561-735-7882	16 BOULEVARD DES ITALIENS
378	Kervin	Cordie	Female	ckervinah@mysql.com	249-801-9243	S. Dariaus ir S. Girėno g. 70
379	Shepland	Maybelle	Female	msheplandai@goodreads.com	576-419-3759	VIA ROMA, 109
380	Grocutt	Gabriela	Female	ggrocuttaj@google.ru	596-907-2766	Depenau 2
381	Sellan	Lita	Female	lsellanak@nymag.com	220-402-5629	PO BOX 27025, VA2-430-01-01
382	Awton	Auroora	Female	aawtonal@linkedin.com	600-733-8819	MAC N9301-041
383	Bestiman	Leif	Male	lbestimanam@google.ru	105-806-5140	P O BOX 290
384	Roelvink	Gnni	Female	groelvinkan@unblog.fr	290-198-4112	Mergenthalerallee 61
385	Coyett	Rudolph	Male	rcoyettao@twitter.com	771-618-8923	The Icon Vienna (Turm, 24) Wiedner Gürtel 13
386	Shillingford	Carolus	Male	cshillingfordap@guardian.co.uk	496-251-2645	112 CORPORTATE DRIVE
387	Waddie	Ali	Female	awaddieaq@ca.gov	631-788-2939	P O BOX 800
388	Basill	Barrie	Female	bbasillar@phpbb.com	491-139-8447	80 SUGAR CREEK CENTER BLVD
389	Landell	Jewell	Female	jlandellas@behance.net	571-678-2476	103 MAIN STREET
390	Poncet	Simmonds	Male	sponcetat@reuters.com	409-837-7636	200 W CONGRESS
391	Suston	Michel	Female	msustonau@wikia.com	974-735-6019	Laisvės a. 4
392	Hamnet	Marve	Male	mhamnetav@irs.gov	287-265-6715	Am Schloßplatz 2
393	Mottram	Valma	Autres	vmottramaw@shutterfly.com	821-229-3063	1 TALLMAN D
394	Pawlowicz	Myrtia	Female	mpawlowiczax@nasa.gov	895-402-8201	PO BOX 158
395	Crossdale	Juliette	Female	jcrossdaleay@delicious.com	140-725-0654	MAC N9301-041
396	Bonin	Brier	Female	bboninaz@youtube.com	307-347-6265	P O BOX 970
397	Jays	Clair	Autres	cjaysb0@shinystat.com	774-144-7479	Ruhrstraße 45
398	Balston	Trudy	Female	tbalstonb1@is.gd	904-214-9487	24 SECOND AVENUE
399	Kilgannon	Rebeka	Female	rkilgannonb2@blinklist.com	484-989-1446	Schwanenwall 27
400	Gheorghescu	Starlin	Female	sgheorghescub3@liveinternet.ru	458-459-1949	115 E MAIN ST
401	Simony	Brew	Male	bsimonyb4@hp.com	217-368-6648	NY-31-17-0119
402	Oliva	Pierre	Male	polivab5@symantec.com	318-660-3715	Kornmarkt 9
403	Janowski	Tonie	Female	tjanowskib6@freewebs.com	678-534-4045	PIAZZA ROMA, 1
404	Philipsen	Violetta	Female	vphilipsenb7@cafepress.com	574-396-6215	Schloßstraße 10
405	Focke	Dolly	Female	dfockeb8@yahoo.com	447-685-5834	1200 E WARRENVILLE RD
406	Jowitt	Alexandre	Male	ajowittb9@flavors.me	493-959-3334	Halderstraße 1-5
407	Bratt	Hedi	Female	hbrattba@ted.com	973-434-5532	VIA CENTRALE, 38
408	Nassie	George	Male	gnassiebb@yale.edu	285-353-6328	Sparkassenplatz, 3
409	Dorant	Leilah	Female	ldorantbc@squarespace.com	986-660-1942	Poststraße 7
410	Chinnock	Tyrus	Male	tchinnockbd@wsj.com	166-940-4010	16, Boulevard Royal
411	Enstone	Julia	Autres	jenstonebe@amazon.de	757-870-0505	Gmünder Straße 39
412	McCaughey	Billi	Female	bmccaugheybf@sourceforge.net	100-736-8085	255 2ND AVE SOUTH
413	Clayal	Leland	Female	lclayalbg@zdnet.com	579-235-7822	VIALE ALTIERO SPINELLI, 30
414	Marcome	Tiler	Male	tmarcomebh@odnoklassniki.ru	189-383-9979	Greystone Street, Carrick-on-suir,
415	Garforth	Gerek	Male	ggarforthbi@google.co.jp	413-589-1824	12183 MS HWY 182
416	Meek	Welch	Male	wmeekbj@freewebs.com	429-251-8493	255 2ND AVE SOUTH
417	Cusick	Grazia	Autres	gcusickbk@seesaa.net	569-272-0428	1200 E WARRENVILLE ROAD
418	Vial	Eliza	Female	evialbl@xinhuanet.com	765-999-1107	VA2-430-01-01
419	Pester	Kerry	Male	kpesterbm@t-online.de	208-951-1304	109 NORTH ST. PAUL AVENUE
420	Glover	Ronnie	Female	rgloverbn@webnode.com	454-894-3675	24 SECOND AVE SE
421	Elnaugh	Bartolomeo	Male	belnaughbo@hostgator.com	218-853-2368	Karawankenplatz, 2
422	Purchon	Janelle	Female	jpurchonbp@addtoany.com	205-292-1413	400 RELLA BLVD
423	Dangerfield	Ricky	Male	rdangerfieldbq@sbwire.com	874-569-4020	116 W SIXTH ST
424	Schankelborg	Darcey	Female	dschankelborgbr@ted.com	286-346-9760	24010 PARTNERSHIP BOULEVARD
425	Wynne	Fanya	Autres	fwynnebs@gov.uk	732-620-3020	12345 W COLFAX AVE
426	Shadbolt	Gaultiero	Male	gshadboltbt@vkontakte.ru	631-126-8804	12 PLACE DES ETATS UNIS
427	Andrei	Jacky	Female	jandreibu@spiegel.de	693-804-0499	255 2ND AVENUE SOUTH  MAC N9301-041
428	Simmill	Joel	Male	jsimmillbv@bloglines.com	407-376-8060	Hauptstraße 24
429	Camies	Sutherlan	Male	scamiesbw@over-blog.com	916-351-7917	14 AVENUE DU PAVE NEUF CS 10001
430	Swansborough	Welch	Male	wswansboroughbx@nbcnews.com	734-258-4059	Bajcsy-Zsilinszky út 78.
431	Neaverson	Neale	Male	nneaversonby@tumblr.com	536-484-9621	116 COURS LAFAYETTE BP 3276
432	Beedie	Virgie	Male	vbeediebz@cnbc.com	210-549-7426	Nordwall 6-8
433	Syseland	Filia	Female	fsyselandc0@friendfeed.com	501-190-8769	60 LIVINGSTON
434	d'Arcy	Mahala	Female	mdarcyc1@wikia.com	756-100-4416	202 JACKSON ST
435	Ertelt	Giff	Male	gerteltc2@dailymotion.com	856-452-2432	PO BOX 200
436	Bispo	Hildagard	Female	hbispoc3@scribd.com	210-100-4812	4140 EAST STATE STREET
437	Cloute	Robinet	Female	rcloutec4@goo.ne.jp	531-428-8181	50 SPRING ROAD
438	Piggens	Rockwell	Male	rpiggensc5@java.com	521-183-2227	106 QUAI DE BACALAN CS 41272
439	Girardot	Noelle	Female	ngirardotc6@telegraph.co.uk	190-602-7063	Katharinenplatz 17
440	Tollet	Grace	Male	gtolletc7@yale.edu	312-228-5836	PO BOX 27025, VA2-430-01-01
441	Sember	Avivah	Female	asemberc8@deviantart.com	496-774-6778	2ND FLOOR
442	Golt	Lettie	Female	lgoltc9@zdnet.com	355-525-4170	1008 OAK STREET
443	Willcock	Baird	Male	bwillcockca@cargocollective.com	272-599-5686	Bahnhofstraße 19
444	Reggler	Charlie	Male	cregglercb@ebay.com	658-396-7618	Luitpoldplatz 5
445	Carefull	Kristien	Female	kcarefullcc@google.com.hk	493-986-5822	VIA G. GARIBALDI, 46
446	Graysmark	Cassy	Female	cgraysmarkcd@deliciousdays.com	282-946-6816	200 EAST MAIN ST
447	Brummell	Rodolph	Male	rbrummellce@webs.com	631-814-3757	CORSO ROMA, 100
448	Routh	Carroll	Male	crouthcf@163.com	530-265-3729	PIAZZA FILIPPO MEDA 4
449	Lidbetter	Chastity	Female	clidbettercg@epa.gov	571-342-3892	12 PLACE DES ETATS UNIS
450	Delahunt	Selena	Female	sdelahuntch@bigcartel.com	856-593-4291	56, 58 AVENUE ANDRE MALRAUX
451	Spiaggia	Mal	Male	mspiaggiaci@cornell.edu	624-288-9163	23/24 Main Street, Midleton,
452	Woolston	Nady	Female	nwoolstoncj@businesswire.com	980-478-7188	P.O. BOX 85139
453	Preist	Sherwynd	Male	spreistck@chronoengine.com	852-454-3393	Dorfstraße, 25
454	Spirritt	Virge	Male	vspirrittcl@google.com.au	353-126-8046	2600 S THOMPSON
455	Christophle	Keeley	Female	kchristophlecm@earthlink.net	800-938-6279	16 BOULEVARD DES ITALIENS
456	Manifold	Cassandra	Female	cmanifoldcn@cnbc.com	989-638-3854	Neue Mainzer Straße 14 - 18
457	Tonge	Antonio	Male	atongeco@phpbb.com	150-803-1774	3RD FLOOR
458	Karpol	Freeland	Male	fkarpolcp@yellowbook.com	174-116-5625	9300 FLAIR DRIVE  4TH FLOOR
459	Ellaman	Dallis	Autres	dellamancq@google.de	588-414-8482	Paulinenstraße 15
460	Pulley	Danny	Autres	dpulleycr@cpanel.net	270-267-8777	PO BOX 27025, VA2-430-01-01
461	Dobrowolski	Teodoor	Male	tdobrowolskics@answers.com	640-194-7344	128 N. PARKERSON AVE.
462	Bick	Gertie	Female	gbickct@zdnet.com	366-841-2902	9300 FLAIR DRIVE  4TH FLOOR
463	Harsent	Hildy	Female	hharsentcu@omniture.com	158-882-5871	VIA CONTE KUENIGL, 1
464	Latty	Neron	Male	nlattycv@scribd.com	762-195-7843	VIALE LODOVICO SCARAMPO, 15
465	Jodrelle	Danit	Autres	djodrellecw@shinystat.com	530-282-6572	VIALE ALTIERO SPINELLI, 30
466	Moraleda	Jo	Male	jmoraledacx@360.cn	169-169-5531	Odersbacher Weg 1
467	Lawtey	Waldemar	Male	wlawteycy@blog.com	275-135-1164	Rue Montoyer, 14
468	Bewshaw	Ariadne	Female	abewshawcz@craigslist.org	343-771-3926	PO BOX 27025
469	Jervoise	Minetta	Female	mjervoised0@craigslist.org	855-735-1929	P7-PFSC-03-H
470	Gwyther	Lena	Female	lgwytherd1@ted.com	839-967-2440	Hauptstr., 39
471	Havock	Nevsa	Female	nhavockd2@dropbox.com	850-388-2174	VIALE ALTIERO SPINELLI, 30
472	Kliment	Pietrek	Male	pklimentd3@sogou.com	984-280-3997	9300 FLAIR DRIVE, 4TH FLOOR
473	Gladtbach	Theodore	Male	tgladtbachd4@geocities.jp	210-978-0825	110 S FERRALL STREET
474	Tinto	Harri	Female	htintod5@pen.io	833-994-7776	7 PROMENADE GERMAINE SABLON
475	Belchamber	Marty	Autres	mbelchamberd6@whitehouse.gov	267-925-6863	811 MAIN ST
476	Kleinert	Clifford	Autres	ckleinertd7@jugem.jp	792-131-1471	Mühlenstraße 28
477	Yearne	Dawna	Female	dyearned8@tripod.com	710-529-7055	3405 N LOUISE AVE
478	Labusquiere	Johann	Male	jlabusquiered9@nba.com	196-140-9659	Markt 8
479	Lilley	Baxter	Male	blilleyda@tinypic.com	271-357-9196	601 PENN STREET
480	Beckson	Kristine	Female	kbecksondb@github.com	918-865-9336	Elbuferstraße 117
481	Liepins	Louella	Female	lliepinsdc@typepad.com	323-832-7915	NY-31-17-0119
482	Greated	Dudley	Male	dgreateddd@wufoo.com	572-244-3623	P O BOX 100
483	Peile	Colline	Female	cpeilede@prnewswire.com	342-225-2895	2ND FLOOR
484	Siburn	Benjie	Male	bsiburndf@slashdot.org	194-174-6599	BOX 217
485	Helleckas	Alley	Male	ahelleckasdg@unicef.org	451-718-5712	P.O.BOX 547
486	Acum	Abagail	Female	aacumdh@google.cn	879-899-8286	Regeringsgatan 103
487	Laflin	Siusan	Female	slaflindi@chronoengine.com	651-900-4370	VIA B. FRANKLIN, 6
488	McSorley	Morey	Male	mmcsorleydj@google.ru	130-859-1227	ELECTRONIC BANKING D-339
489	Sparham	Juliet	Female	jsparhamdk@prnewswire.com	820-220-9918	Kungsträdgårdsgatan 2
490	Andrez	Helsa	Autres	handrezdl@sogou.com	317-283-4951	VIALE ALTIERO SPINELLI, 30
491	Tulk	Marje	Female	mtulkdm@noaa.gov	188-463-5103	MS: NY-31-17-0119
492	Divver	Jacquette	Female	jdivverdn@craigslist.org	988-213-9792	8001 VILLA PARK DRIVE
493	Jervis	Sansone	Male	sjervisdo@infoseek.co.jp	276-573-3407	811 MAIN STREET
494	Grishechkin	Nissy	Female	ngrishechkindp@xing.com	101-903-7657	12345 W COLFAX AVE
495	Grutchfield	Becca	Female	bgrutchfielddq@soup.io	290-385-3732	Taunusanlage 17
496	Nolleau	Normie	Male	nnolleaudr@simplemachines.org	594-355-3821	PIAZZALE DURANTE FRANCESCO, 11
497	Henrichs	Catlin	Female	chenrichsds@tmall.com	413-585-2379	BASISWG 32
498	Raymen	Royal	Male	rraymendt@youku.com	303-631-6012	PIAZZA DI SANTA MARIA SOPRARNO, 1
499	Tring	Rica	Female	rtringdu@weebly.com	158-514-4744	Augustaanlage 61
500	MacGiolla	Leena	Female	lmacgiolladv@bigcartel.com	650-375-3914	Nordhoffstraße 1
501	McFaul	Cybil	Female	cmcfauldw@twitpic.com	472-201-3936	PIAZZA FILIPPO MEDA 4
502	Rawstorn	Alanson	Male	arawstorndx@tmall.com	516-165-6093	100 EAST TRYON ROAD/DAC28
503	Roubay	Guillermo	Male	groubaydy@t.co	216-572-5824	SECOND FLOOR
504	Lehrle	Carly	Female	clehrledz@bigcartel.com	217-151-1684	Meinhardstraße, 1
505	Heasly	Dollie	Autres	dheaslye0@sun.com	561-552-9300	80 SUGAR CREEK CENTER BLVD
506	Druitt	Jenn	Female	jdruitte1@mozilla.com	151-835-4635	PIAZZA FILIPPO MEDA 4
507	Pinkie	Ezechiel	Male	epinkiee2@soup.io	120-628-0457	EP-MN-WN1A
508	Blazevic	Temple	Male	tblazevice3@1688.com	527-731-2426	Pettelaarpark 104
509	Piscot	Freedman	Male	fpiscote4@aboutads.info	599-795-9181	PIAZZA FILIPPO MEDA 4
510	Trevorrow	Fanchon	Female	ftrevorrowe5@cmu.edu	952-541-9198	Breite Straße 18-28
511	Redmore	Raddie	Male	rredmoree6@clickbank.net	118-190-6817	Kirchenplatz, 11
512	Skudder	Pepi	Female	pskuddere7@oaic.gov.au	661-164-7832	7001 NORTH OAK
513	Dargie	Grace	Autres	gdargiee8@geocities.com	731-669-9984	P.O. BOX 595
514	Hirsthouse	Mitch	Male	mhirsthousee9@utexas.edu	830-122-0366	P.O. BOX 128
515	Karlsson	Klara	Female	kkarlssonea@domainmarket.com	183-916-6411	24010 PARTNERSHIP BOULEVARD
516	Joost	Katrine	Female	kjoosteb@army.mil	293-237-0260	PIAZZA FILIPPO MEDA 4
517	Turbern	Maryann	Female	mturbernec@tamu.edu	690-114-8389	Theaterstraße 5
518	Kybbye	Dorian	Male	dkybbyeed@liveinternet.ru	376-971-3048	200 WEST CONGRESS STREET
519	Coll	Justen	Male	jcollee@sphinn.com	997-932-9346	200 W CONGRESS
520	Liddicoat	Marissa	Female	mliddicoatef@canalblog.com	362-941-6235	1401 S 3RD STREET
521	Carbine	Zacherie	Male	zcarbineeg@mashable.com	654-412-6894	140, boulevard de la Pétrusse
522	Batterson	Giffard	Male	gbattersoneh@nifty.com	220-703-0844	Am Diek 50
523	Praton	Robby	Male	rpratonei@xrea.com	171-623-8530	Schillerstraße 3
524	Binnie	Brandea	Female	bbinnieej@delicious.com	422-899-2082	Gifhorner Straße 57
525	Hebdon	Eziechiele	Male	ehebdonek@cbsnews.com	654-501-0765	106 W FIRST ST
526	Gyver	Pall	Male	pgyverel@bloglovin.com	431-185-3931	Vesterbrogade 5
527	Damiata	Filberte	Male	fdamiataem@liveinternet.ru	200-898-9456	Maximilianstraße 29
528	Le Cornu	Elnore	Female	elecornuen@google.com	213-386-7396	P.O. BOX 291
529	Kroll	Hailey	Male	hkrolleo@macromedia.com	803-641-0472	12 PLACE DES ETATS UNIS CS 20001
530	Fenemore	Germaine	Female	gfenemoreep@tripod.com	562-740-8882	4140 EAST STATE STREET
531	Neames	Halsey	Male	hneameseq@com.com	355-886-3059	PO BOX 324
532	Lafranconi	Matthiew	Male	mlafranconier@ustream.tv	224-714-3820	PO BOX 1377
533	Hearle	Pace	Male	phearlees@people.com.cn	266-268-0853	PO BOX 27025, VA2-430-01-01
534	Rosenkrantz	Hugibert	Autres	hrosenkrantzet@odnoklassniki.ru	125-952-1895	50 NORTH THIRD ST
535	Livingston	Julie	Autres	jlivingstoneu@so-net.ne.jp	927-887-7252	88 NORTH PARK AVENUE
536	Benedikt	Donalt	Male	dbenediktev@netlog.com	861-507-5753	30 RUE D EPAGNAC CS 72424 SOYAUX
537	Skentelbery	Madelle	Female	mskentelberyew@wisc.edu	618-902-4824	1200 E WARRENVILLE RD
538	Kiss	Burg	Male	bkissex@reuters.com	844-867-3904	7 EASTON OVAL
539	Tomaszkiewicz	Arden	Female	atomaszkiewiczey@gmpg.org	346-932-9426	Erzbergerstraße 2a
540	Dumphrey	Angil	Female	adumphreyez@aol.com	990-798-8915	Rechte Tauberstraße 1
541	Mayfield	Orella	Female	omayfieldf0@berkeley.edu	168-183-6686	Main Street, Carrigart, Letterkenny,
542	Simonnet	Pippa	Autres	psimonnetf1@w3.org	211-629-0096	Yrjönkatu 9 A
543	Smithen	Corene	Female	csmithenf2@archive.org	774-932-9048	111 WEST WASHINGTON
544	McIlvenny	Lanni	Female	lmcilvennyf3@theguardian.com	758-140-2241	P.O. BOX 10566
545	Sebring	Sabina	Female	ssebringf4@usnews.com	808-513-4094	Jahnstraße 7
546	Curness	Lemmy	Autres	lcurnessf5@house.gov	965-456-9768	PO BOX 196
547	Erridge	Nilson	Male	nerridgef6@imdb.com	802-562-7578	115 E MAIN ST
548	Illiston	Garrek	Male	gillistonf7@icq.com	205-529-9797	PO BOX 3938
549	Jarad	Petra	Female	pjaradf8@deviantart.com	910-392-5030	Buxtehuder Straße 5
550	Sussans	Beverly	Female	bsussansf9@pinterest.com	831-460-5982	12 PLACE DES ETATS UNIS
551	Griss	Bearnard	Autres	bgrissfa@tumblr.com	327-869-3507	245 COMMERCIAL STREET
552	Hudd	Emylee	Female	ehuddfb@printfriendly.com	503-896-8262	P O BOX 127
553	Hymus	Kit	Male	khymusfc@shinystat.com	403-385-7419	P7-PFSC-03-H
554	Milton	Isiahi	Male	imiltonfd@privacy.gov.au	359-456-8629	Bockenheimer Landstraße 2-4 (Opernturm)
555	Molan	Corene	Autres	cmolanfe@gov.uk	281-406-4294	PO BOX 1578
556	Dickie	Harbert	Male	hdickieff@goo.gl	781-199-6187	Friedberger Straße 101
557	Kingsland	Lothario	Male	lkingslandfg@reuters.com	896-592-7093	BASISWG 32
558	Walsh	Jeniece	Female	jwalshfh@mlb.com	315-905-7609	4140 EAST STATE STREET
559	Karpychev	Elijah	Male	ekarpychevfi@alibaba.com	291-659-4762	VIA DON LUIGI STURZO, 9/11/13
560	Chilley	Jorge	Male	jchilleyfj@hc360.com	972-467-4024	Sveavägen 163
561	Woloschinski	Jareb	Male	jwoloschinskifk@dell.com	327-659-4508	SUITE 5
562	Inggall	Sonni	Female	singgallfl@tiny.cc	431-635-2485	Hauptstraße 186
563	Tumilson	Randi	Female	rtumilsonfm@google.it	170-525-4131	Regeringsgatan 56
564	Knighton	Zulema	Female	zknightonfn@wordpress.org	889-187-0367	10430 HIGHLAND MANOR DRIVE
565	Nice	Allene	Female	anicefo@storify.com	342-892-3307	P.O. BOX 85139
566	Bebbell	Bren	Male	bbebbellfp@harvard.edu	245-967-9383	Prinz-Eugen-Straße 8-10, Top 17 + Top 18
567	Dorken	Helyn	Autres	hdorkenfq@netscape.com	680-795-9204	Sparkassenplatz, 3
568	Lamborn	Cybill	Female	clambornfr@seesaa.net	816-163-3487	3RD FLR
569	Kubasiewicz	Barnabas	Male	bkubasiewiczfs@flavors.me	528-800-4507	Am Stadtpark, 9
570	Deeley	Deeanne	Female	ddeeleyft@mashable.com	186-453-3791	SUITE 5
571	Prattington	Eirena	Autres	eprattingtonfu@free.fr	596-450-0582	36 BOULEVARD DE LA REPUBLIQUE
572	De la croix	Nils	Male	ndelacroixfv@fc2.com	111-531-9353	1 TALLMAN RD
573	Keyden	Shepherd	Autres	skeydenfw@google.cn	171-541-4498	VIA SAN MARCO, 11
574	Bartocci	Kermit	Male	kbartoccifx@technorati.com	429-237-4614	2ND FLOOR
575	Perham	Veronike	Autres	vperhamfy@issuu.com	820-250-9139	Cl Padres Dominicos, 7
576	Friese	Desmund	Male	dfriesefz@go.com	377-724-9890	14500 AVIATION BLVD
577	Nornable	Thomasine	Female	tnornableg0@weebly.com	327-667-4077	Poststraße 9-10
578	Allabarton	Jeanie	Female	jallabartong1@ft.com	612-523-8043	111 S. CASAVER AVE.
579	Claypole	Margarete	Autres	mclaypoleg2@1688.com	829-377-2017	9300 FLAIR DRIVE  4TH FLOOR
580	Slyman	Belita	Female	bslymang3@over-blog.com	541-459-7649	Marktplatz 8
581	Carrier	Brett	Male	bcarrierg4@home.pl	379-791-8158	100 PINNACLE PLACE
582	Linzey	Jeth	Male	jlinzeyg5@cmu.edu	460-734-8364	ul. Chorzowska 50
583	Johnigan	Wait	Male	wjohnigang6@topsy.com	375-543-5280	12 PLACE DES ETATS UNIS
584	Jefferies	Marilee	Female	mjefferiesg7@pen.io	901-690-5915	Cl Pintor Sorolla 2-4
585	Dightham	Florida	Female	fdighthamg8@apache.org	474-443-3227	1 TALLMAN RD
586	Bamlet	Mattie	Male	mbamletg9@google.co.uk	768-581-1322	PO BOX 520
587	Harp	Lars	Male	lharpga@pcworld.com	818-163-7686	GUSTAV MAHLERLN 360
588	Torel	Denney	Male	dtorelgb@utexas.edu	927-200-6603	Promenade 20
589	Dagworthy	Sindee	Female	sdagworthygc@addtoany.com	980-984-5565	1125 BERKSHIRE BOULEVARD
590	Kearsley	Manfred	Male	mkearsleygd@acquirethisname.com	845-582-2834	P7-PFSC-03-H
591	Wharton	Giraud	Male	gwhartonge@goo.ne.jp	884-552-6265	200 W CONGRESS ST
592	Defew	Salmon	Male	sdefewgf@histats.com	478-541-7278	1200 E WARRENVILLE RD
593	Berrey	Maddy	Autres	mberreygg@meetup.com	142-496-0454	234 E  1ST AVE
594	Packington	Seumas	Male	spackingtongh@statcounter.com	289-724-6465	100 N PHILLIPS
595	Bryan	Lowell	Autres	lbryangi@elegantthemes.com	930-157-5356	SUITE 201
596	Bake	Denice	Female	dbakegj@tuttocitta.it	459-510-8159	Sparkassenplatz, 1
597	Tebbett	Pavlov	Male	ptebbettgk@ted.com	372-902-4916	MAC N9301-041
598	Asplen	Steffane	Female	sasplengl@github.com	698-133-0681	Ralphtown, Bridgetown,
599	Braganca	Ginger	Male	gbragancagm@technorati.com	651-598-0820	1151 W. HIGHWAY 77
600	Pamplin	Eimile	Female	epamplingn@harvard.edu	667-796-0942	208 WEST 4TH STREET
601	Smythin	Elden	Male	esmythingo@technorati.com	601-674-1440	NY-31-17-0119
602	Ortiger	Brittan	Female	bortigergp@vk.com	151-362-1382	1000 N OAK
603	Kasperski	Patin	Male	pkasperskigq@scribd.com	110-254-6412	6, rue Lou Hemmer
604	Gritsaev	Isidora	Female	igritsaevgr@yellowpages.com	598-278-5733	Dorf, 4
605	Arson	Reade	Male	rarsongs@usnews.com	928-317-0871	PO BOX 525
606	Eppson	Leyla	Female	leppsongt@php.net	937-838-9668	Kaiser-Joseph-Straße 186-190
607	Maykin	Lon	Male	lmaykingu@deliciousdays.com	873-300-5166	Credit Union House, Bridge Street, Gort,
608	Cromer	Fraser	Male	fcromergv@wordpress.com	908-742-0189	P.O. BOX 469
609	Underhill	Yevette	Female	yunderhillgw@simplemachines.org	304-289-2731	4140 EAST STATE STREET
610	Brennen	Inigo	Male	ibrennengx@google.com.hk	304-484-2953	101 S. WHEELER STREET
611	Stanway	Leland	Autres	lstanwaygy@a8.net	407-140-1532	340 MAIN STREET
612	Roobottom	Vanna	Female	vroobottomgz@cmu.edu	210-666-0274	100 S PHILLIPS AVE
613	Haysom	Nicki	Female	nhaysomh0@uol.com.br	879-355-8795	ul. dr. Zielińskiego 4
614	Weatherdon	Starlene	Female	sweatherdonh1@tripod.com	378-506-8429	10 RUE CALLOT CS 90710
615	Palfreman	Leopold	Male	lpalfremanh2@seesaa.net	200-863-3439	VIA MEISULES, 211
616	Battie	Godfrey	Male	gbattieh3@aol.com	853-333-6995	CL ALTO GUADALQUIVIR, 4
617	Stinchcombe	Ulrica	Female	ustinchcombeh4@qq.com	744-356-0757	Hauptstr., 39
618	Cowpland	Rea	Female	rcowplandh5@intel.com	342-355-9041	Clare House, 37 Glenageary Park
619	Bertie	Georges	Male	gbertieh6@blogger.com	391-501-5835	P.O. BOX 85139
620	Fleetwood	Hoyt	Male	hfleetwoodh7@ca.gov	486-597-4609	Calea Plevnei nr.200, sector 6
621	Kenn	Hayward	Male	hkennh8@opensource.org	877-252-1760	PIAZZA FILIPPO MEDA 4
622	Colcutt	Marlin	Male	mcolcutth9@pcworld.com	566-195-9616	56 RUE DE LA GLACIERE
623	Morch	Valida	Female	vmorchha@samsung.com	396-846-4787	301 W. WALKER STREET
624	Owers	Avram	Male	aowershb@instagram.com	742-902-7857	100 E WASHINGTON ST
625	Clague	Winnah	Female	wclaguehc@altervista.org	114-512-2072	Bockenheimer Landstraße 2-4 (Opernturm)
626	Meader	Greta	Female	gmeaderhd@hostgator.com	859-892-6982	3451 PRESCOTT ROAD
627	Nardi	Odille	Autres	onardihe@ustream.tv	686-271-5238	P.O. 150097
628	Greenway	Sammy	Female	sgreenwayhf@un.org	682-211-5942	99 NORTH STREET
629	Slemming	Ingar	Male	islemminghg@bravesites.com	391-320-3700	Bahnhofstraße 8
630	Winyard	Sianna	Autres	swinyardhh@google.ru	834-598-0655	Raiffeisenplatz 1
631	McKim	Jackelyn	Autres	jmckimhi@springer.com	704-709-0423	Bergstraße 6
632	Dissman	Theodore	Male	tdissmanhj@addtoany.com	471-341-3835	6TH FLOOR
633	Imison	Delmar	Male	dimisonhk@about.com	932-250-3047	Hans-Strothoff-Platz 1
634	Santos	Fanni	Female	fsantoshl@hhs.gov	221-916-4747	118 N GARFIELD
635	Grummitt	Robinet	Male	rgrummitthm@com.com	863-351-3594	15, ARC. MAKARIOU III AVENUE
636	Bargery	Kelila	Female	kbargeryhn@goo.gl	602-539-4491	Im Tal 1
637	Vankin	Garrick	Male	gvankinho@woothemes.com	429-679-8455	Hauptstraße 49
638	Drogan	Tamas	Male	tdroganhp@github.io	217-664-8036	Hermannstraße 13
639	Bolsover	Georgianna	Female	gbolsoverhq@netscape.com	970-559-8581	Marktplatz 43-45
640	Keward	Livvyy	Female	lkewardhr@spiegel.de	470-105-6111	De Boelelaan 7
641	Estoile	Amelita	Female	aestoilehs@shutterfly.com	340-518-8532	940 N MAC ARTHUR
642	Selvey	Balduin	Male	bselveyht@google.de	396-997-0759	11 NORTH MAIN
643	McCuffie	Genia	Female	gmccuffiehu@icq.com	114-417-7575	PIAZZA FILIPPO MEDA 4
644	Heaker	Darn	Male	dheakerhv@photobucket.com	951-358-3459	1361 RAILROAD ST
645	Vyse	Linet	Autres	lvysehw@paginegialle.it	102-205-1687	12, rue Eugène Ruppert
646	McTavish	Brucie	Male	bmctavishhx@merriam-webster.com	651-822-3788	SECOND FLOOR
647	Van Merwe	Caspar	Male	cvanmerwehy@ning.com	881-637-3218	63 HIGWAY 515
648	Lilford	Audre	Female	alilfordhz@economist.com	968-240-1243	Mühlenstraße 93
649	Peart	Lucilia	Female	lpearti0@walmart.com	583-970-8401	1 BOULEVARD HAUSSMANN
650	Cridland	Margaret	Autres	mcridlandi1@cmu.edu	402-368-0168	26 WEST MONROE STREET
651	O' Mullane	Suzette	Female	somullanei2@mozilla.com	415-864-0807	730 MADISON
652	Banasik	Ermina	Female	ebanasiki3@dmoz.org	627-225-4823	115 N WALNUT STREET
653	Codlin	Abigail	Female	acodlini4@slate.com	875-189-7467	83 Main Street
654	Dran	Cosme	Male	cdrani5@paginegialle.it	339-614-6318	Konstitucijos pr. 21B
655	Cisco	Powell	Male	pciscoi6@nationalgeographic.com	451-210-9788	P O BOX 7
656	Piche	Morgan	Male	mpichei7@ehow.com	351-611-4100	110 E 7TH ST.
657	Mickleburgh	Anabel	Autres	amickleburghi8@usnews.com	714-283-6573	P O BOX 218
658	Kirkpatrick	Solomon	Male	skirkpatricki9@indiatimes.com	916-740-1590	59 AVENUE PIERRE MENDES FRANCE
659	Bagworth	Melessa	Female	mbagworthia@blogs.com	254-178-5127	Domsheide 14
660	Trowsdall	Fairlie	Male	ftrowsdallib@taobao.com	935-809-5406	MC- NC 6024
661	Potts	Tades	Male	tpottsic@usda.gov	753-617-7780	2285 LAKESHORE DRIVE, BUILDING 4
662	Waterfall	Paco	Male	pwaterfallid@si.edu	295-779-6723	PO BOX 7009
663	O'Doohaine	Leela	Female	lodoohaineie@nsw.gov.au	156-506-7439	PO BOX 188
664	Hackinge	Silvester	Male	shackingeif@hatena.ne.jp	731-195-0276	195 MARKET ST
665	Peteri	Ezra	Male	epeteriig@themeforest.net	523-190-6880	200 E. MAIN ST.
666	Orford	Towny	Male	torfordih@samsung.com	962-233-3518	Bernstorffsgade 40
667	Core	Hamid	Male	hcoreii@altervista.org	702-671-3836	200 W CONGRESS ST
668	Dongall	Patric	Autres	pdongallij@examiner.com	732-992-6235	Rathausplatz 5-7
669	Bicknell	Marin	Female	mbicknellik@rambler.ru	620-779-2088	5050 KINGSLEY DRIVE
670	Niezen	Ryan	Autres	rniezenil@rediff.com	376-688-7296	Herrenbergstraße 2
671	Bartolini	Sayre	Female	sbartoliniim@trellian.com	813-225-5924	Getreidegasse, 10
672	Poytheras	Jodie	Male	jpoytherasin@paginegialle.it	853-693-2101	P.O. BOX 681
673	Gilluley	Serene	Female	sgilluleyio@photobucket.com	512-621-5835	Sparkassenplatz, 69
674	Dine-Hart	Glynn	Male	gdinehartip@privacy.gov.au	793-581-9036	SUITE 100
675	Rosas	Karole	Female	krosasiq@spotify.com	303-791-9049	24 WEST DIVISION
676	Jemmison	Rhianon	Female	rjemmisonir@twitpic.com	251-942-3937	PO BOX 4748
677	Androsik	Kimball	Male	kandrosikis@techcrunch.com	900-222-6841	MAC N9301-041
678	Dunne	Jacquie	Female	jdunneit@rakuten.co.jp	433-392-3522	P O BOX 3619
679	Debrick	Jacqui	Autres	jdebrickiu@umich.edu	565-308-7923	P.O. BOX 1377
680	Peche	Allys	Female	apecheiv@mozilla.org	242-704-4132	Seestraße, 1
681	Pitcaithly	Geri	Female	gpitcaithlyiw@nih.gov	611-531-6548	Am Hauptbahnhof 2
682	Jacob	Teddie	Male	tjacobix@4shared.com	871-557-3369	12345 W COLFAX AVE
683	Bandiera	Vachel	Male	vbandieraiy@about.com	561-923-3985	SUITE 1500
684	Estick	Aubree	Female	aestickiz@kickstarter.com	192-494-2813	NY-31-17-0119
685	Paradise	Clemens	Male	cparadisej0@bing.com	196-482-7897	324 N 4TH STREET
686	Howford	Tanner	Male	thowfordj1@paginegialle.it	564-772-8257	GUSTAV MAHLERLN 10
687	Beed	Linn	Male	lbeedj2@tinyurl.com	914-596-8718	Beuthener Straße 25
688	Lynde	Jolyn	Female	jlyndej3@miibeian.gov.cn	727-774-2208	EP-MN-WN1A
689	Sokale	Gaston	Male	gsokalej4@privacy.gov.au	988-874-2486	400 4TH AVE NE
690	Grinnell	Edwin	Male	egrinnellj5@gnu.org	736-444-6849	STE B
691	Wyche	Neal	Male	nwychej6@mit.edu	587-445-6439	MAC N9301-041
692	Eversley	Junette	Female	jeversleyj7@ox.ac.uk	957-332-9062	VIA SAN FRANCESCO DI PAOLA, SNC
693	Loins	Tam	Male	tloinsj8@ftc.gov	938-249-5679	301 N ROCHESTER ST
694	Grafton-Herbert	Korella	Autres	kgraftonherbertj9@blogspot.com	452-635-7620	PO BOX 178
695	Castro	Jessalin	Female	jcastroja@github.io	402-678-6099	5611 PALMER WAY  SUITE G
696	Turnbull	Maynord	Male	mturnbulljb@tamu.edu	128-685-4761	211 BURNETTE ST
697	Murcutt	Emmaline	Female	emurcuttjc@cocolog-nifty.com	105-752-5766	Hauptstraße 3
698	Fasset	Cornelia	Female	cfassetjd@pagesperso-orange.fr	286-479-8906	Balasta dambis 15
699	Konerding	Kliment	Male	kkonerdingje@t.co	737-992-8398	1000 PEACHTREE ST, N.E.
700	Rayment	Ynes	Female	yraymentjf@macromedia.com	993-247-0068	8001 VILLA PARK DRIVE
701	Rosterne	Brewster	Male	brosternejg@google.com.br	671-724-5426	EAST PLAZA
702	Brumwell	Jocelyne	Female	jbrumwelljh@psu.edu	868-191-1890	MAC N9301-041
703	Callaby	Darsey	Female	dcallabyji@wisc.edu	729-158-4235	PO BOX N
704	Mokes	Rebeca	Autres	rmokesjj@yahoo.co.jp	952-406-9248	1101 22ND AVE
705	Durek	Lavina	Female	ldurekjk@springer.com	723-882-8585	2220 6TH STREET
706	McAllan	Hamlen	Male	hmcallanjl@wikia.com	876-874-7587	CONTRADA ACQUEVIVE, 20/A
707	Picheford	Sherilyn	Female	spichefordjm@purevolume.com	817-383-8249	Marktstraße 15
708	Christopher	Helge	Female	hchristopherjn@acquirethisname.com	895-153-1848	Gorkistraße 9
709	Haycroft	Emmy	Autres	ehaycroftjo@goo.gl	319-634-1469	P O BOX 681
710	Skynner	Valeda	Female	vskynnerjp@oracle.com	180-614-0175	Heinemannstraße 15
711	McFee	Celine	Autres	cmcfeejq@howstuffworks.com	588-947-2204	825 N. PATRICK
712	Sowersby	Quinn	Female	qsowersbyjr@paginegialle.it	625-411-8188	SUITE 1500
713	Kearn	Darn	Male	dkearnjs@umich.edu	948-743-8125	Bahnhofstraße 89-91
714	Bertelmot	Clareta	Female	cbertelmotjt@walmart.com	998-452-2078	PO BOX 577
715	Coppock.	Imogene	Female	icoppockju@mtv.com	772-762-2071	P O BOX 27025
716	Kisbey	Dorri	Female	dkisbeyjv@wiley.com	404-985-2037	CORSO SICCARDI, 13
717	Abrahams	Holly	Male	habrahamsjw@networksolutions.com	650-459-7658	5050 KINGSLEY DRIVE
718	Maruszewski	Phylys	Female	pmaruszewskijx@vimeo.com	246-978-3179	700 S MAIN
719	Binden	Kalvin	Male	kbindenjy@oaic.gov.au	740-696-2317	24 SECOND AVE SE
720	Job	Dollie	Female	djobjz@nytimes.com	878-894-0392	14500 AVIATION BOULEVARD
721	Ferrulli	Les	Male	lferrullik0@apache.org	591-612-7931	P.O. BOX 1377
722	Seakin	Corri	Female	cseakink1@cocolog-nifty.com	524-129-6006	Credit Union House, Saint Mary's Road, Cahir
723	Riply	Binny	Female	briplyk2@nyu.edu	145-280-4135	2, boulevard Konrad Adenauer
724	Lestrange	Noland	Male	nlestrangek3@sogou.com	728-160-1791	Hauptstraße, 39
725	Rowan	Elsinore	Female	erowank4@facebook.com	862-336-3541	VIA SAN MARCO, 11
726	Hastin	Madelin	Female	mhastink5@merriam-webster.com	212-790-6608	DAC 28
727	Grishechkin	Denny	Female	dgrishechkink6@google.it	299-197-5808	Hauptstraße 91
728	Fischer	Frayda	Female	ffischerk7@delicious.com	842-294-5808	PO BOX 27025, VA2-430-01-01
729	Lilleyman	Mathilda	Autres	mlilleymank8@booking.com	808-148-2649	P.O. BOX 85139
730	Iannelli	Devina	Autres	diannellik9@dropbox.com	670-839-6345	VIA MARIO BIANCHINI 13
731	McNicol	Mareah	Female	mmcnicolka@imdb.com	507-274-5639	Isefjords Alle 5
732	Gehringer	Brandise	Female	bgehringerkb@youtu.be	970-128-8087	436 SLATER RD
733	Mundall	Monti	Male	mmundallkc@ucoz.ru	174-344-3828	PIAZZA FILIPPO MEDA 4
734	Markwick	Leticia	Female	lmarkwickkd@gravatar.com	894-944-5692	Bulevardul Pipera, nr.10, Sos. Buc. Nord, Global City Business Park, cladirea 011
735	Merkel	Marcellus	Male	mmerkelke@addthis.com	837-589-7435	Oktoberplatz, 1
736	Twaite	Agnesse	Female	atwaitekf@vinaora.com	609-619-3636	102 BYPASS PLAZA
737	Buller	Andros	Male	abullerkg@adobe.com	943-514-6128	The Icon Vienna (Turm, 24) Wiedner Gürtel 13
738	Philcott	Alli	Autres	aphilcottkh@altervista.org	351-101-8244	Isefjords Alle 5
739	Kerrod	Rahel	Female	rkerrodki@tinypic.com	463-956-9798	VIA SAN DALMAZZO, 15
740	Linskill	Norton	Male	nlinskillkj@shareasale.com	636-450-4493	437 BRIDGE AVENUE
741	Minney	Emmaline	Female	eminneykk@arstechnica.com	197-418-5178	1630 4TH AVENUE NORTH
742	Fanton	Wade	Male	wfantonkl@facebook.com	472-888-8467	PIAZZA MUNICIPIO, 13
743	Everit	El	Male	eeveritkm@usatoday.com	840-892-3920	4140 EAST STATE STREET
744	Franke	Rabi	Male	rfrankekn@wordpress.org	243-476-8520	Taunustor 1 (TaunusTurm)
745	Willshaw	Amara	Female	awillshawko@creativecommons.org	465-293-5172	GUSTAV MAHLERLN 10
746	Bradder	Yorker	Male	ybradderkp@soup.io	179-855-3630	29 AVENUE DE MESSINE
747	Schoenleiter	Olympie	Female	oschoenleiterkq@webs.com	276-714-5237	P.O. BOX 681
748	Duffan	Cathleen	Female	cduffankr@state.tx.us	217-142-0380	VIALE CHIASSI, 17
749	Whittlesee	Vonny	Female	vwhittleseeks@plala.or.jp	154-760-8615	PIAZZA FILIPPO MEDA 4
750	Sheryn	Lorette	Female	lsherynkt@fotki.com	569-518-2819	THE CENTRE - TIGNE POINT,LEVEL 12
751	Steele	Rene	Male	rsteeleku@sphinn.com	531-763-0050	P.O. BOX 398
752	Tegeller	Melany	Female	mtegellerkv@geocities.com	267-351-5415	5050 KINGSLEY DRIVE
753	Philippard	Addy	Female	aphilippardkw@wikipedia.org	754-794-1505	200 WEST CONGRESS STREET
754	Bohl	Vitoria	Female	vbohlkx@w3.org	353-345-3329	Schloßstraße 82
755	Geraldini	Lolita	Female	lgeraldiniky@wisc.edu	994-128-0471	Hüttau Nr., 35
756	Muskett	Marta	Female	mmuskettkz@hatena.ne.jp	991-679-9841	4140 EAST STATE STREET
757	Beake	Nicol	Male	nbeakel0@cbslocal.com	632-576-3756	Hauptstraße 206
758	Scammell	Tedda	Female	tscammelll1@redcross.org	213-319-3337	Nr., 873
759	Eyeington	Ernest	Male	eeyeingtonl2@fastcompany.com	714-342-1125	220 PALO PINTO STREET
760	Dahl	Mateo	Male	mdahll3@google.ru	953-669-2664	12 PLACE DES ETATS UNIS
761	Colyer	Starlin	Female	scolyerl4@guardian.co.uk	802-818-7035	PO BOX 709
762	Searight	Dud	Male	dsearightl5@sbwire.com	155-704-5545	43, Avenue J.F. Kennedy
763	Virgoe	Veradis	Female	vvirgoel6@cbc.ca	333-227-1608	Pz D. Basilio Paraíso, 2
764	Arend	Howey	Male	harendl7@xing.com	521-213-1527	VIA ROMA, 89
765	Hyde-Chambers	Berna	Autres	bhydechambersl8@prnewswire.com	779-200-6105	1017 HARRISON
766	McGrory	Karoline	Female	kmcgroryl9@blogtalkradio.com	592-999-3409	Poststraße 30a
767	Banthorpe	Angus	Male	abanthorpela@privacy.gov.au	780-276-3182	P.O. BOX 291
768	Fusco	Michaella	Female	mfuscolb@w3.org	158-408-0742	4 RUE LOUIS BRAILLE
769	Spanswick	Minnnie	Female	mspanswicklc@umich.edu	155-853-8072	VIA CADUTI DI SABBIUNO, 3
770	Costerd	Base	Autres	bcosterdld@vkontakte.ru	196-386-6103	Karl-Scharnagl-Ring 10
771	Gann	Goldia	Female	ggannle@prnewswire.com	292-808-5579	Wildtalstraße 2
772	Dawney	York	Male	ydawneylf@mail.ru	696-875-5596	ATTN: ACH DESK LOC:01-5138
773	Tether	Karlotta	Female	ktetherlg@census.gov	199-217-1966	10430 HIGHLAND MANOR DRIVE
774	Eyton	Alanna	Female	aeytonlh@liveinternet.ru	865-340-3354	6 RUE DE L AMIRAL HAMELIN
775	Uccelli	Lissi	Female	luccellili@feedburner.com	101-581-1028	80 SUGAR CREEK CENTER BLVD.
776	Frostdick	Madelyn	Female	mfrostdicklj@reddit.com	876-694-5745	43, Boulevard Royal
777	Trillow	Woodrow	Male	wtrillowlk@friendfeed.com	415-558-2929	PIAZZA FILIPPO MEDA 4
778	Sparks	Adriaens	Autres	asparksll@nifty.com	688-613-1551	Gustav Mahlerlaan 350
779	McCullen	Stephannie	Female	smccullenlm@sphinn.com	643-936-8953	Hauptstraße 56
780	Kettlewell	Sibbie	Female	skettlewellln@moonfruit.com	158-959-0301	2910 WEST JACKSON
781	Skey	Deanna	Female	dskeylo@japanpost.jp	420-559-2435	P.O. BOX 85139
782	Glassman	Nobie	Male	nglassmanlp@com.com	131-529-4635	7 PROMENADE GERMAINE SABLON
783	Burchell	Boone	Autres	bburchelllq@ycombinator.com	644-623-3267	Hofmark 14
784	Uphill	Melony	Female	muphilllr@123-reg.co.uk	497-770-0579	Raiffeisenstraße 16
785	Farebrother	Brannon	Male	bfarebrotherls@ameblo.jp	820-406-2033	PIAZZA FILIPPO MEDA 4
786	Cowdray	Shelli	Female	scowdraylt@fema.gov	921-313-5603	P.O. BOX 27
787	Gillmor	Davy	Male	dgillmorlu@cocolog-nifty.com	982-261-1214	Platz der Republik
788	Espadate	Sadie	Female	sespadatelv@nasa.gov	576-326-1642	Kapstadtring 7
789	Shrubsall	Diann	Female	dshrubsalllw@ameblo.jp	708-700-7795	20544 HUSKER DR
790	Wapples	Lindsay	Male	lwappleslx@freewebs.com	335-153-7678	P7-PFSC-03-H
791	McGrirl	Timothy	Male	tmcgrirlly@latimes.com	229-929-8516	Pz de San Nicolás, 4
792	Coite	Kermit	Male	kcoitelz@vimeo.com	414-369-0551	Wallfahrtstraße 8
793	Dabs	Marcellus	Male	mdabsm0@examiner.com	856-881-2148	Nybrogade 3
794	Hubber	Nance	Female	nhubberm1@multiply.com	554-365-6311	PO BOX 10
795	Fairnington	Jimmie	Autres	jfairningtonm2@ucsd.edu	432-204-2696	Gebhardinaukio 1
796	Sherrott	Hilary	Male	hsherrottm3@list-manage.com	986-905-8400	115 N WALNUT ST
797	Reichardt	Ash	Male	areichardtm4@bandcamp.com	970-105-7410	LOC 01-5138
798	Smead	Kevin	Male	ksmeadm5@washingtonpost.com	884-873-0026	PIAZZA FILIPPO MEDA 4
800	Frostick	Juliane	Female	jfrostickm7@shutterfly.com	144-769-9892	2ND FLOOR
801	Greenwood	Glenda	Female	ggreenwoodm8@washington.edu	834-215-6764	211 SECOND STREET
802	Dyment	Lambert	Male	ldymentm9@auda.org.au	650-452-0117	P O BOX 507
803	Clackson	Ruttger	Male	rclacksonma@europa.eu	690-542-7844	1111 S MUSKOGEE AVE
804	Dionisetti	Carleen	Female	cdionisettimb@xing.com	837-130-5080	Am Stadtpark, 9
805	Black	Yulma	Autres	yblackmc@indiegogo.com	689-135-4970	P O BOX 96
806	Zanutti	Leonhard	Male	lzanuttimd@hugedomains.com	280-635-3302	73 Orwell Road, Rathgar,
807	Schole	Ariella	Female	ascholeme@moonfruit.com	165-912-3178	601 PENN STREET
808	Lewsie	Tymothy	Male	tlewsiemf@nih.gov	799-336-7806	ONE PENN'S WAY
809	Ogelsby	Malinda	Female	mogelsbymg@yahoo.co.jp	987-413-6970	Am Hafen 1
810	Szapiro	Rosalind	Female	rszapiromh@imdb.com	767-925-7015	Ballycullen Avenue, Firhouse,
811	Vernall	Silvano	Male	svernallmi@chron.com	329-384-1180	ul. Kościuszki 1
812	Massy	Bailie	Male	bmassymj@google.nl	937-351-7000	P O BOX 500
813	O'Doohaine	Moll	Autres	modoohainemk@angelfire.com	337-868-3635	PO BOX 951
814	Conisbee	Gail	Male	gconisbeeml@bizjournals.com	290-979-2838	P O BOX 158
815	Wicks	Matilda	Female	mwicksmm@meetup.com	676-497-2402	245 BELGRADE AVE
816	Oldershaw	Babb	Female	boldershawmn@1688.com	630-250-2068	311 MILWAUKEE AV
817	Purcell	Hewe	Male	hpurcellmo@google.nl	957-913-5852	PIAZZA FILIPPO MEDA 4
818	Aksell	Wallis	Male	waksellmp@latimes.com	779-656-7763	PO BOX 69
819	Sloley	Marlyn	Female	msloleymq@samsung.com	592-909-5389	VIA COL ALT, 16
820	Schuler	Joby	Female	jschulermr@odnoklassniki.ru	400-729-2944	Schwarzstraße, 1
821	Worgen	Austen	Male	aworgenms@cyberchimps.com	694-393-1894	Oststraße 77
822	Huntingdon	Pren	Male	phuntingdonmt@xrea.com	951-486-4444	P.O. BOX 10566
823	Dannohl	Wake	Male	wdannohlmu@youku.com	557-922-2136	PO BOX 10566
824	Alonso	Jemmie	Autres	jalonsomv@topsy.com	402-170-4786	Hoveniersstraat, 29
825	Biaggetti	Emera	Female	ebiaggettimw@rambler.ru	636-826-0414	Trierer Straße 46
826	Beresfore	Harp	Male	hberesforemx@squidoo.com	962-467-0759	P O BOX 4748
827	Chark	Dennie	Male	dcharkmy@microsoft.com	558-169-2548	Clarke House, Laurence Street, Drogheda,
828	Dellenbach	Ingamar	Male	idellenbachmz@mtv.com	873-294-5948	Portastraße 8-14
829	Jorgesen	Otes	Male	ojorgesenn0@ameblo.jp	957-975-7191	P. O. BOX 79
830	Tathacott	Chucho	Male	ctathacottn1@typepad.com	256-321-5898	P.O. BOX 85139
831	Foyster	Diena	Female	dfoystern2@springer.com	356-380-6957	5306 BROWN ST.
832	Markl	Alena	Female	amarkln3@bluehost.com	432-904-8471	823 NASHVILLE HWY
833	Gouldthorp	Keen	Male	kgouldthorpn4@loc.gov	629-433-1779	PIAZZA RISORGIMENTO, 16
834	Cleeton	Tomkin	Male	tcleetonn5@google.ca	448-234-0174	3320 DREDGE DRIVE
835	Winchester	Dulsea	Female	dwinchestern6@theglobeandmail.com	261-438-6707	Hochbrücktorstraße 27
836	Kobera	Afton	Female	akoberan7@icio.us	492-663-1997	P O BOX 3619
837	Redparth	Heath	Male	hredparthn8@arstechnica.com	353-436-9232	1460 VALLEY RD
838	Coleshill	Perla	Female	pcoleshilln9@java.com	353-124-8646	P O BOX 7009
839	Corbould	Enid	Female	ecorbouldna@soundcloud.com	377-720-5246	Jan Van Rijswijcklaan, 184
840	O'Farris	Lowrance	Male	lofarrisnb@ycombinator.com	982-256-0045	Sos. Fabrica de Glucoza nr.5, Business Center, Novo Park 3, cladirea F, et.5 si 6, sector 2
841	Heck	Lynnette	Female	lhecknc@thetimes.co.uk	429-936-0392	Gerhart-Hauptmann-Platz 50
842	Vater	Ellette	Female	evaternd@howstuffworks.com	196-689-6690	NY-31-17-0119
843	Geratasch	Pammi	Female	pgerataschne@intel.com	623-788-3257	Credit Union House, Redgate,
844	Caro	Carmine	Autres	ccaronf@google.com.br	453-450-9214	PIAZZA FILIPPO MEDA 4
845	Gamon	Alanson	Male	agamonng@liveinternet.ru	938-413-2707	1912 CHEROKEE AVENUE SOUTH WEST
846	Keyzor	Selia	Female	skeyzornh@un.org	106-428-7862	P7-PFSC-03-H
847	Bettam	Karlotta	Female	kbettamni@uiuc.edu	470-753-1665	111 SYLVAN AVE
848	Pugh	Kincaid	Male	kpughnj@last.fm	641-291-3574	POST OFFICE BOX 6136
849	Fordy	Jerald	Male	jfordynk@census.gov	518-427-4181	Augustenstraße 7
850	Urien	Sylvester	Male	suriennl@4shared.com	138-305-0831	4140 EAST STATE STREET
851	Macek	Kimberli	Female	kmaceknm@nifty.com	152-555-2768	Luchspergergasse, 2 - 4
852	De Pero	Kiley	Female	kdeperonn@jalbum.net	699-755-1544	1927 GREENSBURG CROSSINGS
853	Brookshaw	Morlee	Male	mbrookshawno@mozilla.org	464-956-1669	102 W MAIN
854	Borg	Frederigo	Male	fborgnp@unblog.fr	289-159-7475	2, boulevard Konrad Adenauer
855	Mc Gaughey	Lonee	Female	lmcgaugheynq@bing.com	961-636-7560	Karlstraße 4
856	Measen	Alexandra	Female	ameasennr@europa.eu	950-454-9327	PO BOX 937
857	Collihole	Clementina	Female	ccolliholens@cargocollective.com	343-347-8292	VIA CERNAIA, 7
858	Mackriell	Erek	Male	emackriellnt@prweb.com	100-813-1968	Nyropsgade 17
859	Sparham	Marna	Female	msparhamnu@chicagotribune.com	913-359-2487	37, Dragan Tsankov Blvd.
860	Bergstram	Thomasine	Autres	tbergstramnv@scribd.com	741-759-6501	Old Church Street, Athenry,
861	Tong	Delano	Autres	dtongnw@weebly.com	628-713-7368	P.O. BOX 398
862	Stockney	Berny	Male	bstockneynx@reference.com	315-419-7156	PIAZZA FILIPPO MEDA 4
863	Cantillon	Edward	Male	ecantillonny@discovery.com	471-217-4138	78 High Street, Gardens
864	Pollard	Kate	Female	kpollardnz@lulu.com	968-345-3993	S. Moniuškos g. 27
865	Braisher	Louella	Female	lbraishero0@hao123.com	274-551-7749	Taunusanlage 12
866	Sindall	Hashim	Male	hsindallo1@printfriendly.com	312-898-6997	Christophstraße 35
867	McClaren	Axe	Male	amcclareno2@fema.gov	158-282-3045	Cl Pintor Sorolla 2-4
868	Pobjoy	Cindie	Female	cpobjoyo3@dailymail.co.uk	713-182-4413	44/46 Shandon Street
869	Roobottom	Portia	Female	proobottomo4@mozilla.org	234-190-3010	PIAZZA FILIPPO MEDA 4
870	Turban	Fraser	Male	fturbano5@furl.net	977-768-5552	Hamnbanegatan 5
871	Lautie	Elwood	Male	elautieo6@alibaba.com	685-848-5191	Bayerstraße 33
872	Claussen	Mildred	Female	mclausseno7@feedburner.com	791-534-4222	Landsvägen 40
873	Sauvage	Domenic	Male	dsauvageo8@163.com	144-213-6663	1400 BEST PLAZA DR
874	Volker	Lazaro	Male	lvolkero9@mozilla.com	240-118-7908	PIAZZA GALVANI, 4
875	Madders	Allis	Female	amaddersoa@dropbox.com	780-720-0886	P O BOX 1629
876	Sprigin	Michelle	Female	mspriginob@nba.com	124-947-6176	9300 FLAIR DRIVE, 4TH FLOOR
877	Gibling	Harrie	Female	hgiblingoc@businessinsider.com	366-697-6301	ELECTRONIC BANKING DEPT
878	Alliot	Jasmina	Female	jalliotod@elegantthemes.com	210-134-9334	PIAZZA DEL CALENDARIO, 3
879	Fakes	Bryn	Male	bfakesoe@cdbaby.com	259-148-8108	112 CORPORATE DRIVE
880	Gatsby	Winne	Female	wgatsbyof@ft.com	154-779-8334	52-54, Dimitar Hadzhikotsev Str.
881	Banbrook	Chrysa	Female	cbanbrookog@moonfruit.com	991-394-1094	2910 W JACKSON STREET
882	Bazeley	Niki	Male	nbazeleyoh@list-manage.com	744-179-1512	Hessgasse, 1
883	MacPeake	Betti	Female	bmacpeakeoi@cargocollective.com	754-162-6440	1200 E WARRENVILLE RD
884	Harkus	Heddi	Female	hharkusoj@examiner.com	781-462-8128	Mühlenstraße 8
885	Speedin	Marylin	Female	mspeedinok@google.co.jp	328-105-0452	Raiffeisenstraße 2
886	Debell	Andras	Male	adebellol@aboutads.info	573-163-0317	Arkadiagatan 4-6 A
887	Room	Allayne	Autres	aroomom@imgur.com	907-307-4292	Bahnhofstraße, 9
888	Spickett	Elonore	Female	espicketton@bizjournals.com	914-522-5414	P O BOX 160
889	Paslow	Konstanze	Female	kpaslowoo@msn.com	801-242-5043	PO BOX 709
890	Dubble	Adora	Female	adubbleop@biglobe.ne.jp	399-640-6601	Bamberger Straße 3b
891	Ritmeier	Elsy	Female	eritmeieroq@yellowpages.com	745-898-9021	411 THEODORE FREMD AVENUE SUITE 350
892	Hess	Garfield	Male	ghessor@ifeng.com	166-802-8228	12345 WEST COLFAX AVENUE
893	Grolle	Allis	Female	agrolleos@google.fr	809-389-4962	P.O. BOX 10566
894	Hallowell	Honor	Female	hhallowellot@virginia.edu	265-876-9822	SUTIE 1500
895	Symper	Sanford	Male	ssymperou@adobe.com	692-988-8256	24 SECOND AVE SE
896	Gaudon	Elroy	Male	egaudonov@freewebs.com	326-710-7251	PO BOX 407
897	Mattinson	Susan	Female	smattinsonow@bloomberg.com	198-994-2939	PIAZZA FILIPPO MEDA 4
898	Mantha	Arda	Female	amanthaox@ftc.gov	228-519-4897	Pettelaarpark 104
899	Gurdon	Gabriellia	Female	ggurdonoy@jugem.jp	436-188-9792	12345 W COLFAX AVE
900	Darrel	Eolanda	Female	edarreloz@mail.ru	266-890-7603	1238 BROAD STREET
901	Copcutt	Napoleon	Male	ncopcuttp0@alexa.com	739-831-3295	116 W SIXTH ST
902	Gilchrest	Sallie	Female	sgilchrestp1@ted.com	173-973-9297	SUITE 5
903	Peschmann	Anestassia	Female	apeschmannp2@businessweek.com	615-333-5711	1361 RAILROAD ST
904	Liepmann	Berke	Male	bliepmannp3@sfgate.com	524-322-4759	7 ROUTE DU LOCH
905	Coushe	Abran	Autres	acoushep4@ehow.com	471-877-8779	Bahnhofstraße 15
906	Devine	Lynnea	Female	ldevinep5@biglobe.ne.jp	653-677-0416	ATTN: CAROLYN SISCO
907	Augustin	Shurwood	Male	saugustinp6@multiply.com	346-489-3270	200 N FIFTH ST
908	Adan	Brig	Male	badanp7@illinois.edu	549-845-2606	P. O. BOX 681
909	Bisson	Madge	Female	mbissonp8@last.fm	971-411-5717	1421 S BROADWAY
910	Becarra	Flo	Female	fbecarrap9@slate.com	405-901-0982	Am Hafen 1
911	Eisig	Corrie	Female	ceisigpa@mashable.com	667-246-1996	12 PLACE DES ETATS UNIS
912	Rushsorth	Stafford	Male	srushsorthpb@dailymotion.com	452-988-9481	DATA CONTROL ACH DESK
913	Rimer	Dolph	Male	drimerpc@flavors.me	258-417-1086	Skelagervej 15
914	Corkitt	Edwin	Autres	ecorkittpd@biblegateway.com	396-630-2084	VIA DUCA DEGLI ABRUZZI, 103
915	Adlam	Weidar	Male	wadlampe@weather.com	814-691-4567	2525 GREENBAY ROAD
916	Gilliard	Lois	Autres	lgilliardpf@ox.ac.uk	982-520-8835	VIA MANZONI, 50
917	Jeal	Henrietta	Female	hjealpg@geocities.com	661-695-3111	VIALE ALTIERO SPINELLI, 30
918	Manifold	Elsie	Female	emanifoldph@pcworld.com	754-214-2029	102 BYPASS PLAZA
919	Currm	Pall	Male	pcurrmpi@example.com	836-603-6503	Schupstraat, 18-20
920	Luquet	Maddi	Female	mluquetpj@diigo.com	742-896-0154	14 BOULEVARD DE LA TREMOUILLE BP 20810
921	Enion	Issiah	Male	ienionpk@howstuffworks.com	108-745-7308	2ND FLOOR
922	Bosward	Lew	Male	lboswardpl@google.cn	820-261-4726	8001 VILLA PARK DRIVE
923	Bucher	Dillie	Male	dbucherpm@scientificamerican.com	620-240-2504	PIAZZA FILIPPO MEDA 4
924	Jenicke	Philomena	Female	pjenickepn@ustream.tv	698-259-0562	Credit Union House, Askea,
925	Fennelly	Kathye	Autres	kfennellypo@zimbio.com	191-246-5158	P.O. BOX 1377
926	Elms	Milzie	Autres	melmspp@purevolume.com	776-452-9801	VIALE LODOVICO SCARAMPO, 15
927	Wickey	Silva	Female	swickeypq@cam.ac.uk	669-839-0538	Burggraben 4
928	Scurfield	Maddalena	Female	mscurfieldpr@soundcloud.com	153-529-2384	Fontaneplatz 1
929	Scarrisbrick	Danella	Female	dscarrisbrickps@mozilla.org	857-600-5718	5455 SUNSET BOULEVARD
930	Aberkirder	Aubert	Male	aaberkirderpt@shinystat.com	825-618-9002	Av. João XXI, 63
931	Baumler	Evered	Male	ebaumlerpu@harvard.edu	386-919-8407	3833 EBONY ST
932	Van Hault	Jarid	Male	jvanhaultpv@about.com	232-941-6839	Cl Serrano, 59
933	Rubbert	Barbi	Autres	brubbertpw@vimeo.com	617-746-6264	14 AVENUE DU PAVE NEUF CS 10001
934	Loges	Dunn	Male	dlogespx@globo.com	348-363-1829	4 RUE AUBER
935	Halgarth	Lois	Female	lhalgarthpy@reddit.com	863-286-2607	111 SYLVAN AVENUE
936	Jenteau	Winnifred	Autres	wjenteaupz@free.fr	926-398-1647	5455 SUNSET BOULEVARD
937	Jevons	Ulysses	Autres	ujevonsq0@twitter.com	269-368-6590	Arnulfstraße 15
938	Roalfe	Byrann	Male	broalfeq1@geocities.jp	649-522-6597	Am Stadtpark, 9
939	Rosenthaler	Tobias	Male	trosenthalerq2@washingtonpost.com	470-405-4955	PIAZZA FILIPPO MEDA 4
940	Curragh	Wilmar	Male	wcurraghq3@list-manage.com	686-287-9459	Bijlmerdreef 106
941	Whiley	Lexine	Female	lwhileyq4@harvard.edu	555-362-7416	Bahnhofstraße 2a
942	Geldeard	Kingsley	Male	kgeldeardq5@elegantthemes.com	605-188-0069	12 PLACE DES ETATS UNIS
943	Ruddiman	Staford	Autres	sruddimanq6@over-blog.com	280-129-2564	PIAZZA FILIPPO MEDA 4
944	Peasegood	Lesly	Female	lpeasegoodq7@angelfire.com	933-809-2606	SUITE 5
945	Cowins	Henri	Autres	hcowinsq8@cnbc.com	185-694-9519	ul. Sokola 12
946	Emanson	Tiffany	Female	temansonq9@spiegel.de	776-523-4744	12 PLACE DES ETATS UNIS CS 20001
947	Dradey	Wynn	Female	wdradeyqa@businessinsider.com	123-992-4279	Hans-und-Sophie-Scholl-Platz 2
948	Allsworth	Lanna	Female	lallsworthqb@biglobe.ne.jp	432-691-6838	Sparkassenplatz, 1
949	Redwin	Stephen	Male	sredwinqc@is.gd	750-847-6497	P7-PFSC-03-H
950	Fieller	Brockie	Male	bfiellerqd@istockphoto.com	282-154-5279	707 17TH STREET, SUITE 2950
951	Burgett	Pauletta	Female	pburgettqe@cnn.com	351-101-0913	Wolfgangseestr., 26
952	Winterbottom	Lilah	Female	lwinterbottomqf@fc2.com	695-338-6191	2285 LAKESHORE DRIVE, BUILDING 4
953	Van der Beek	Alma	Female	avanderbeekqg@xing.com	337-114-7316	39, allée Scheffer
954	Dowber	Celestine	Female	cdowberqh@abc.net.au	229-676-0233	MAC N9301-041
955	Coyte	Agnesse	Autres	acoyteqi@1und1.de	959-414-1211	P.O. BOX 878
956	Nice	Saree	Female	sniceqj@toplist.cz	209-955-5812	(IL2-8412)
957	Firby	Hadria	Female	hfirbyqk@usnews.com	121-181-3263	Jura Alunāna iela 2
958	Wimms	Thornie	Male	twimmsql@miitbeian.gov.cn	367-530-0681	P7-PFSC-03-H
959	Welsh	Cesar	Male	cwelshqm@alexa.com	245-380-4128	102 DUFFY AVENUE
960	Offin	Brad	Male	boffinqn@plala.or.jp	852-757-2344	Hauptstraße, 39
961	Wallington	Noll	Male	nwallingtonqo@nsw.gov.au	425-427-2614	825 N. PATRICK
962	Naris	Jennie	Female	jnarisqp@aboutads.info	796-793-2568	PO BOX 607
963	Gilleon	Abby	Male	agilleonqq@admin.ch	528-294-5195	Getreidegasse, 10
964	Brigg	Frants	Male	fbriggqr@xing.com	407-455-0722	Stadtplatz, 24
965	Wotton	Blaine	Male	bwottonqs@unblog.fr	697-127-7368	Dorf, 4
966	Kellie	Stacia	Female	skellieqt@artisteer.com	881-904-5694	6 AVENUE DE PROVENCE
967	Shortt	Nat	Male	nshorttqu@a8.net	833-108-5221	SUITE 600
968	Smitherman	Silvano	Autres	ssmithermanqv@npr.org	646-894-4044	Schrobenhausener Straße 2
969	Fife	Tallie	Autres	tfifeqw@ask.com	623-117-1527	Fuhlsbüttler Straße 437
970	Bernardotte	Carney	Autres	cbernardotteqx@army.mil	546-682-2529	2ND FLOOR
971	Ofen	Aggi	Female	aofenqy@ox.ac.uk	381-901-3275	EP-MN-WN1A
972	MacGillivrie	Randal	Male	rmacgillivrieqz@tinypic.com	317-297-9488	500 ROSS ST.
973	Dundon	Clayborn	Male	cdundonr0@chron.com	239-100-8929	3320 DREDGE DRIVE
974	Shortt	Arne	Male	ashorttr1@webnode.com	882-367-4425	3731 WILSHIRE BLVD STE 1000
975	Schottli	Giffy	Autres	gschottlir2@netvibes.com	355-440-8394	4140 EAST STATE STREET
976	Samudio	Camey	Male	csamudior3@constantcontact.com	302-537-3841	1200 E WARRENVILLE RD
977	Seabert	Wenona	Female	wseabertr4@seesaa.net	756-851-0039	110 S FERRALL STREET
978	Bilverstone	Hedvig	Female	hbilverstoner5@google.de	376-917-2881	80 SUGAR CREEK CENTER BLVD
979	Killigrew	Udell	Male	ukilligrewr6@mlb.com	894-256-2093	Bahnhofstraße 7
980	Naisey	Aliza	Female	anaiseyr7@spotify.com	264-221-7858	110 S FERRALL STREET
981	Dougharty	Lauri	Female	ldoughartyr8@dmoz.org	291-446-6247	Vorstadtstraße 1
982	Curm	Catharine	Female	ccurmr9@sciencedirect.com	428-788-2021	P.O.BOX 280
983	Loggie	Alyss	Female	aloggiera@oakley.com	898-602-8797	Alleestraße 76-88
984	Trett	Melissa	Female	mtrettrb@prnewswire.com	168-118-9003	Largo Cândido dos Reis, nºs 19 a 25
985	Cosslett	Abie	Autres	acosslettrc@sakura.ne.jp	229-610-7669	P7-PFSC-03-H
986	Bohlje	Joy	Female	jbohljerd@plala.or.jp	823-590-7283	Sparkassenplatz 1
987	Tudbald	Dario	Male	dtudbaldre@macromedia.com	247-144-4006	1460 VALLEY ROAD
988	Standbridge	Leeanne	Autres	lstandbridgerf@hubpages.com	473-742-9354	ACH OPERATOR 100-99-04-10
989	Pencot	Davon	Autres	dpencotrg@tmall.com	504-191-1110	Taunustor 1 (TaunusTurm)
990	Fyrth	Elfrieda	Autres	efyrthrh@gov.uk	296-396-8941	Baneskellet 1, Hammershøj
991	Grzesiewicz	Jana	Female	jgrzesiewiczri@jigsy.com	386-156-6586	VIALE ALTIERO SPINELLI, 30
992	Tofanini	Dahlia	Female	dtofaninirj@statcounter.com	634-410-7507	1460 VALLEY RD
993	Skayman	Lenard	Male	lskaymanrk@weibo.com	321-621-5895	P7-PFSC-03-H
994	Sarten	Mehetabel	Female	msartenrl@elpais.com	698-562-6151	P O BOX 7005
995	Lube	Danika	Autres	dluberm@live.com	280-584-7240	Alströmergatan 39
996	Tarbatt	Elden	Male	etarbattrn@feedburner.com	918-296-6859	P.O. BOX 85139
997	Docket	Vic	Male	vdocketro@edublogs.org	549-350-8145	100 CIRCLE DRIVE
998	Elfleet	Zorina	Female	zelfleetrp@timesonline.co.uk	709-579-6142	Neubrückenstraße 66
999	Simmill	Marvin	Male	msimmillrq@unc.edu	530-106-2506	Hindenburgstraße 6-10
1000	Dowsey	Forest	Male	fdowseyrr@tinypic.com	340-572-3863	6 Main Street, Dunboyne,
\.


--
-- Data for Name: commandes; Type: TABLE DATA; Schema: e_commerce_couche_silver; Owner: postgres
--

COPY e_commerce_couche_silver.commandes (id_commande, id_client, date_commande, statut) FROM stdin;
1	1	2021-07-31 00:00:00	annulee
2	2	2021-06-24 00:00:00	annulee
3	3	2021-12-01 00:00:00	annulee
4	4	2020-12-28 00:00:00	expediee
5	5	2022-04-18 00:00:00	en attente
6	6	2020-01-15 00:00:00	en attente
7	7	2022-04-29 00:00:00	annulee
8	8	2022-09-20 00:00:00	en cours de traitement
9	9	2020-11-24 00:00:00	en cours de traitement
10	10	2020-12-09 00:00:00	expediee
11	11	2021-07-08 00:00:00	livree
12	12	2021-02-21 00:00:00	en cours de traitement
13	13	2022-07-15 00:00:00	expediee
14	14	2022-01-14 00:00:00	livree
15	15	2020-05-11 00:00:00	livree
16	16	2021-02-06 00:00:00	en cours de traitement
17	17	2020-05-11 00:00:00	expediee
18	18	2022-11-16 00:00:00	annulee
19	19	2022-04-26 00:00:00	annulee
20	20	2022-04-21 00:00:00	expediee
21	21	2022-04-16 00:00:00	livree
22	22	2021-08-22 00:00:00	expediee
23	23	2021-08-22 00:00:00	livree
24	24	2022-07-07 00:00:00	livree
25	25	2022-10-18 00:00:00	en attente
26	26	2022-05-11 00:00:00	expediee
27	27	2020-10-01 00:00:00	annulee
28	28	2020-06-08 00:00:00	annulee
29	29	2021-12-16 00:00:00	livree
30	30	2021-11-12 00:00:00	en attente
31	31	2021-07-17 00:00:00	livree
32	32	2020-06-17 00:00:00	livree
33	33	2020-12-09 00:00:00	en attente
34	34	2022-08-21 00:00:00	en attente
35	35	2022-10-21 00:00:00	annulee
36	36	2020-12-07 00:00:00	expediee
37	37	2022-01-24 00:00:00	annulee
38	38	2021-09-30 00:00:00	en cours de traitement
39	39	2020-10-29 00:00:00	en attente
40	40	2020-07-05 00:00:00	en attente
41	41	2021-10-31 00:00:00	livree
42	42	2022-05-10 00:00:00	expediee
43	43	2022-06-01 00:00:00	livree
44	44	2020-11-07 00:00:00	annulee
45	45	2022-01-17 00:00:00	expediee
46	46	2021-07-28 00:00:00	annulee
47	47	2021-12-19 00:00:00	livree
48	48	2021-06-15 00:00:00	en attente
49	49	2022-05-05 00:00:00	expediee
50	50	2022-02-11 00:00:00	en cours de traitement
51	51	2021-03-31 00:00:00	expediee
52	52	2020-06-11 00:00:00	en attente
53	53	2022-09-18 00:00:00	en cours de traitement
54	54	2020-06-12 00:00:00	en attente
55	55	2022-08-14 00:00:00	en cours de traitement
56	56	2022-08-29 00:00:00	expediee
57	57	2022-07-22 00:00:00	en attente
58	58	2020-11-25 00:00:00	livree
59	59	2021-11-06 00:00:00	annulee
60	60	2022-02-06 00:00:00	en cours de traitement
61	61	2021-09-24 00:00:00	livree
62	62	2022-01-20 00:00:00	annulee
63	63	2022-05-29 00:00:00	en cours de traitement
64	64	2020-03-18 00:00:00	annulee
65	65	2022-11-25 00:00:00	annulee
66	66	2020-05-20 00:00:00	annulee
67	67	2022-11-16 00:00:00	expediee
68	68	2020-11-21 00:00:00	annulee
69	69	2022-08-09 00:00:00	expediee
70	70	2022-01-31 00:00:00	en attente
71	71	2020-11-02 00:00:00	en attente
72	72	2022-12-19 00:00:00	expediee
73	73	2021-11-12 00:00:00	annulee
74	74	2020-03-27 00:00:00	expediee
75	75	2020-10-14 00:00:00	en attente
76	76	2022-08-11 00:00:00	livree
77	77	2020-11-04 00:00:00	expediee
78	78	2022-02-09 00:00:00	en attente
79	79	2020-01-03 00:00:00	expediee
80	80	2021-11-23 00:00:00	annulee
81	81	2022-07-20 00:00:00	en cours de traitement
82	82	2020-07-22 00:00:00	annulee
83	83	2020-08-24 00:00:00	en cours de traitement
84	84	2020-09-13 00:00:00	livree
85	85	2022-05-10 00:00:00	livree
86	86	2022-06-04 00:00:00	livree
87	87	2020-12-26 00:00:00	expediee
88	88	2021-06-28 00:00:00	en cours de traitement
89	89	2020-07-11 00:00:00	en attente
90	90	2020-09-11 00:00:00	en cours de traitement
91	91	2021-10-05 00:00:00	en cours de traitement
92	92	2021-12-08 00:00:00	livree
93	93	2022-06-01 00:00:00	en cours de traitement
94	94	2020-03-27 00:00:00	en cours de traitement
95	95	2021-03-24 00:00:00	en cours de traitement
96	96	2020-09-11 00:00:00	annulee
97	97	2020-05-22 00:00:00	expediee
98	98	2022-12-05 00:00:00	annulee
99	99	2021-11-09 00:00:00	annulee
100	100	2022-03-09 00:00:00	expediee
101	101	2020-11-08 00:00:00	annulee
102	102	2020-01-31 00:00:00	en cours de traitement
103	103	2021-07-12 00:00:00	expediee
104	104	2020-01-02 00:00:00	expediee
105	105	2020-05-27 00:00:00	en cours de traitement
106	106	2021-03-07 00:00:00	expediee
107	107	2020-07-31 00:00:00	en cours de traitement
108	108	2021-07-26 00:00:00	livree
109	109	2020-01-21 00:00:00	annulee
110	110	2021-11-03 00:00:00	annulee
111	111	2022-09-01 00:00:00	livree
112	112	2021-09-23 00:00:00	en attente
113	113	2022-05-14 00:00:00	en attente
114	114	2020-02-28 00:00:00	en cours de traitement
115	115	2021-07-17 00:00:00	en attente
116	116	2020-10-05 00:00:00	livree
117	117	2022-02-01 00:00:00	livree
118	118	2021-05-13 00:00:00	en cours de traitement
119	119	2020-10-21 00:00:00	annulee
120	120	2021-08-11 00:00:00	expediee
121	121	2020-12-19 00:00:00	expediee
122	122	2021-06-10 00:00:00	en cours de traitement
123	123	2022-01-29 00:00:00	expediee
124	124	2022-07-07 00:00:00	annulee
125	125	2021-02-06 00:00:00	annulee
126	126	2022-07-25 00:00:00	annulee
127	127	2020-01-30 00:00:00	en cours de traitement
128	128	2022-08-25 00:00:00	en cours de traitement
129	129	2021-05-04 00:00:00	expediee
130	130	2021-03-12 00:00:00	en attente
131	131	2022-03-28 00:00:00	en cours de traitement
132	132	2022-04-18 00:00:00	expediee
133	133	2021-04-11 00:00:00	en attente
134	134	2020-05-11 00:00:00	annulee
135	135	2022-11-17 00:00:00	annulee
136	136	2022-05-07 00:00:00	en cours de traitement
137	137	2022-05-23 00:00:00	en attente
138	138	2021-12-22 00:00:00	expediee
139	139	2020-12-12 00:00:00	expediee
140	140	2020-10-17 00:00:00	annulee
141	141	2020-01-18 00:00:00	annulee
142	142	2021-01-12 00:00:00	en cours de traitement
143	143	2021-11-10 00:00:00	annulee
144	144	2020-11-14 00:00:00	livree
145	145	2022-12-24 00:00:00	expediee
146	146	2021-04-30 00:00:00	en cours de traitement
147	147	2022-02-21 00:00:00	livree
148	148	2021-09-16 00:00:00	en cours de traitement
149	149	2021-07-20 00:00:00	annulee
150	150	2020-02-21 00:00:00	en attente
151	151	2022-05-24 00:00:00	livree
152	152	2021-08-31 00:00:00	expediee
153	153	2021-04-11 00:00:00	annulee
154	154	2022-11-22 00:00:00	en cours de traitement
155	155	2022-03-28 00:00:00	en attente
156	156	2020-11-19 00:00:00	livree
157	157	2021-02-20 00:00:00	annulee
158	158	2020-12-25 00:00:00	en attente
159	159	2021-09-25 00:00:00	en cours de traitement
160	160	2021-05-18 00:00:00	expediee
161	161	2020-01-01 00:00:00	expediee
162	162	2022-06-17 00:00:00	annulee
163	163	2020-07-03 00:00:00	livree
164	164	2020-09-23 00:00:00	en cours de traitement
165	165	2020-01-15 00:00:00	en cours de traitement
166	166	2022-09-27 00:00:00	en attente
167	167	2022-10-20 00:00:00	expediee
168	168	2020-03-23 00:00:00	en attente
169	169	2021-11-05 00:00:00	en cours de traitement
170	170	2021-05-20 00:00:00	en attente
171	171	2022-11-25 00:00:00	annulee
172	172	2022-06-03 00:00:00	livree
173	173	2022-06-08 00:00:00	annulee
174	174	2022-07-05 00:00:00	en cours de traitement
175	175	2021-01-22 00:00:00	en cours de traitement
176	176	2021-05-04 00:00:00	livree
177	177	2022-09-10 00:00:00	en attente
178	178	2021-07-26 00:00:00	annulee
179	179	2020-02-06 00:00:00	en cours de traitement
180	180	2022-07-21 00:00:00	annulee
181	181	2021-08-02 00:00:00	annulee
182	182	2021-11-15 00:00:00	expediee
183	183	2021-09-30 00:00:00	expediee
184	184	2021-06-22 00:00:00	expediee
185	185	2021-09-30 00:00:00	en attente
186	186	2021-09-05 00:00:00	en attente
187	187	2021-07-21 00:00:00	en attente
188	188	2021-11-14 00:00:00	livree
189	189	2020-05-15 00:00:00	en cours de traitement
190	190	2021-06-26 00:00:00	annulee
191	191	2022-06-23 00:00:00	expediee
192	192	2021-07-31 00:00:00	en attente
193	193	2021-03-28 00:00:00	en cours de traitement
194	194	2020-11-03 00:00:00	expediee
195	195	2022-04-19 00:00:00	en attente
196	196	2020-03-18 00:00:00	expediee
197	197	2020-01-15 00:00:00	expediee
198	198	2020-05-14 00:00:00	expediee
199	199	2020-03-01 00:00:00	expediee
200	200	2021-04-12 00:00:00	en attente
201	201	2022-03-01 00:00:00	expediee
202	202	2021-09-29 00:00:00	livree
203	203	2020-05-01 00:00:00	en attente
204	204	2022-05-31 00:00:00	livree
205	205	2020-07-05 00:00:00	annulee
206	206	2022-06-27 00:00:00	en attente
207	207	2020-05-17 00:00:00	en attente
208	208	2022-10-16 00:00:00	en cours de traitement
209	209	2020-07-04 00:00:00	annulee
210	210	2022-02-17 00:00:00	expediee
211	211	2020-03-21 00:00:00	expediee
212	212	2022-12-09 00:00:00	expediee
213	213	2021-01-26 00:00:00	livree
214	214	2022-12-19 00:00:00	expediee
215	215	2022-10-02 00:00:00	expediee
216	216	2020-09-28 00:00:00	annulee
217	217	2020-10-25 00:00:00	expediee
218	218	2021-05-15 00:00:00	expediee
219	219	2020-12-21 00:00:00	en cours de traitement
220	220	2022-12-15 00:00:00	livree
221	221	2021-01-24 00:00:00	annulee
222	222	2021-09-24 00:00:00	en attente
223	223	2021-01-08 00:00:00	annulee
224	224	2020-02-11 00:00:00	annulee
225	225	2022-10-30 00:00:00	en cours de traitement
226	226	2020-02-03 00:00:00	expediee
227	227	2021-07-15 00:00:00	en attente
228	228	2022-02-21 00:00:00	en attente
229	229	2021-04-01 00:00:00	en cours de traitement
230	230	2020-05-01 00:00:00	annulee
231	231	2020-03-12 00:00:00	expediee
232	232	2020-09-11 00:00:00	annulee
233	233	2022-02-04 00:00:00	en cours de traitement
234	234	2020-12-15 00:00:00	livree
235	235	2020-12-20 00:00:00	en cours de traitement
236	236	2021-01-30 00:00:00	annulee
237	237	2020-05-22 00:00:00	expediee
238	238	2020-02-23 00:00:00	annulee
239	239	2022-02-15 00:00:00	annulee
240	240	2020-11-17 00:00:00	expediee
241	241	2021-02-01 00:00:00	expediee
242	242	2022-10-23 00:00:00	en cours de traitement
243	243	2020-01-22 00:00:00	annulee
244	244	2022-10-03 00:00:00	annulee
245	245	2020-04-03 00:00:00	en cours de traitement
246	246	2022-02-05 00:00:00	en attente
247	247	2020-07-01 00:00:00	en cours de traitement
248	248	2020-01-24 00:00:00	expediee
249	249	2021-03-15 00:00:00	en attente
250	250	2022-10-05 00:00:00	expediee
251	251	2022-12-24 00:00:00	annulee
252	252	2020-10-22 00:00:00	en attente
253	253	2020-07-26 00:00:00	en cours de traitement
254	254	2020-02-27 00:00:00	livree
255	255	2021-10-27 00:00:00	annulee
256	256	2022-06-12 00:00:00	annulee
257	257	2022-11-29 00:00:00	expediee
258	258	2022-07-29 00:00:00	livree
259	259	2021-03-06 00:00:00	expediee
260	260	2021-07-08 00:00:00	annulee
261	261	2022-12-11 00:00:00	expediee
262	262	2020-01-18 00:00:00	en cours de traitement
263	263	2021-09-03 00:00:00	livree
264	264	2020-02-04 00:00:00	expediee
265	265	2021-11-20 00:00:00	en cours de traitement
266	266	2022-01-20 00:00:00	livree
267	267	2021-10-28 00:00:00	en cours de traitement
268	268	2022-12-21 00:00:00	expediee
269	269	2021-08-16 00:00:00	annulee
270	270	2022-03-22 00:00:00	en cours de traitement
271	271	2021-10-30 00:00:00	en cours de traitement
272	272	2021-02-12 00:00:00	en cours de traitement
273	273	2022-05-17 00:00:00	livree
274	274	2021-01-09 00:00:00	annulee
275	275	2020-07-19 00:00:00	en cours de traitement
276	276	2022-08-13 00:00:00	en attente
277	277	2021-12-06 00:00:00	en attente
278	278	2021-01-23 00:00:00	livree
279	279	2021-09-09 00:00:00	annulee
280	280	2021-12-19 00:00:00	en cours de traitement
281	281	2020-06-30 00:00:00	expediee
282	282	2021-06-16 00:00:00	en cours de traitement
283	283	2022-07-26 00:00:00	en attente
284	284	2021-05-26 00:00:00	livree
285	285	2020-04-05 00:00:00	en cours de traitement
286	286	2021-03-29 00:00:00	en cours de traitement
287	287	2021-07-13 00:00:00	annulee
288	288	2022-03-30 00:00:00	expediee
289	289	2021-09-03 00:00:00	en cours de traitement
290	290	2022-03-27 00:00:00	en attente
291	291	2022-07-21 00:00:00	livree
292	292	2022-04-12 00:00:00	annulee
293	293	2021-01-07 00:00:00	livree
294	294	2021-04-28 00:00:00	livree
295	295	2020-09-23 00:00:00	annulee
296	296	2020-10-24 00:00:00	en cours de traitement
297	297	2022-07-22 00:00:00	livree
298	298	2022-05-20 00:00:00	en cours de traitement
299	299	2022-11-25 00:00:00	en cours de traitement
300	300	2022-06-16 00:00:00	livree
301	301	2021-04-20 00:00:00	en attente
302	302	2020-11-16 00:00:00	en cours de traitement
303	303	2020-01-25 00:00:00	livree
304	304	2020-08-12 00:00:00	annulee
305	305	2021-11-27 00:00:00	expediee
306	306	2021-01-17 00:00:00	livree
307	307	2021-08-10 00:00:00	en cours de traitement
308	308	2020-10-15 00:00:00	en cours de traitement
309	309	2022-02-26 00:00:00	en cours de traitement
310	310	2021-08-24 00:00:00	expediee
311	311	2022-10-30 00:00:00	en attente
312	312	2022-07-31 00:00:00	annulee
313	313	2021-11-03 00:00:00	en attente
314	314	2021-07-20 00:00:00	livree
315	315	2020-03-14 00:00:00	en cours de traitement
316	316	2020-07-25 00:00:00	expediee
317	317	2020-10-10 00:00:00	expediee
318	318	2022-05-08 00:00:00	expediee
319	319	2020-04-12 00:00:00	en attente
320	320	2020-08-22 00:00:00	annulee
321	321	2022-07-31 00:00:00	expediee
322	322	2021-07-30 00:00:00	livree
323	323	2021-03-28 00:00:00	annulee
324	324	2020-05-11 00:00:00	livree
325	325	2021-11-22 00:00:00	livree
326	326	2022-05-01 00:00:00	expediee
327	327	2021-01-06 00:00:00	livree
328	328	2021-06-17 00:00:00	expediee
329	329	2021-10-06 00:00:00	annulee
330	330	2021-11-13 00:00:00	en cours de traitement
331	331	2021-09-04 00:00:00	en cours de traitement
332	332	2022-03-09 00:00:00	annulee
333	333	2021-06-18 00:00:00	livree
334	334	2021-12-31 00:00:00	en cours de traitement
335	335	2022-09-27 00:00:00	annulee
336	336	2022-04-05 00:00:00	en cours de traitement
337	337	2022-05-30 00:00:00	en cours de traitement
338	338	2022-01-06 00:00:00	en cours de traitement
339	339	2020-05-30 00:00:00	annulee
340	340	2020-01-06 00:00:00	annulee
341	341	2022-06-05 00:00:00	en attente
342	342	2020-10-21 00:00:00	expediee
343	343	2020-07-27 00:00:00	en cours de traitement
344	344	2022-05-28 00:00:00	annulee
345	345	2022-01-04 00:00:00	livree
346	346	2020-08-15 00:00:00	en attente
347	347	2021-01-06 00:00:00	en attente
348	348	2022-04-15 00:00:00	livree
349	349	2020-06-06 00:00:00	expediee
350	350	2020-10-13 00:00:00	livree
351	351	2020-01-16 00:00:00	en attente
352	352	2022-08-05 00:00:00	en cours de traitement
353	353	2022-11-13 00:00:00	livree
354	354	2020-12-31 00:00:00	annulee
355	355	2021-09-24 00:00:00	annulee
356	356	2021-04-28 00:00:00	annulee
357	357	2020-11-11 00:00:00	en cours de traitement
358	358	2021-04-03 00:00:00	livree
359	359	2021-07-14 00:00:00	en attente
360	360	2020-08-16 00:00:00	livree
361	361	2021-05-13 00:00:00	livree
362	362	2021-07-21 00:00:00	livree
363	363	2020-02-26 00:00:00	annulee
364	364	2022-09-11 00:00:00	annulee
365	365	2020-10-19 00:00:00	en attente
366	366	2021-04-01 00:00:00	expediee
367	367	2022-07-05 00:00:00	annulee
368	368	2020-07-01 00:00:00	expediee
369	369	2020-07-13 00:00:00	annulee
370	370	2022-05-23 00:00:00	livree
371	371	2020-01-09 00:00:00	livree
372	372	2022-04-27 00:00:00	en cours de traitement
373	373	2021-09-16 00:00:00	en attente
374	374	2022-07-04 00:00:00	en attente
375	375	2021-05-24 00:00:00	en attente
376	376	2021-04-09 00:00:00	livree
377	377	2021-06-16 00:00:00	livree
378	378	2021-11-29 00:00:00	livree
379	379	2022-08-08 00:00:00	en cours de traitement
380	380	2022-03-15 00:00:00	en attente
381	381	2022-05-31 00:00:00	annulee
382	382	2021-08-09 00:00:00	en attente
383	383	2020-04-08 00:00:00	expediee
384	384	2020-12-02 00:00:00	annulee
385	385	2022-07-29 00:00:00	en cours de traitement
386	386	2020-09-04 00:00:00	livree
387	387	2022-11-07 00:00:00	livree
388	388	2021-10-22 00:00:00	annulee
389	389	2022-04-07 00:00:00	en attente
390	390	2020-07-22 00:00:00	en cours de traitement
391	391	2021-03-16 00:00:00	en attente
392	392	2022-10-14 00:00:00	expediee
393	393	2022-08-02 00:00:00	livree
394	394	2022-10-04 00:00:00	annulee
395	395	2021-01-26 00:00:00	annulee
396	396	2020-05-16 00:00:00	livree
397	397	2021-08-08 00:00:00	annulee
398	398	2022-12-28 00:00:00	en attente
399	399	2022-04-13 00:00:00	expediee
400	400	2020-09-02 00:00:00	en cours de traitement
401	401	2021-01-31 00:00:00	en attente
402	402	2022-04-21 00:00:00	annulee
403	403	2022-12-11 00:00:00	en attente
404	404	2020-02-01 00:00:00	expediee
405	405	2020-06-26 00:00:00	expediee
406	406	2022-03-21 00:00:00	en attente
407	407	2021-09-26 00:00:00	expediee
408	408	2020-06-01 00:00:00	livree
409	409	2020-02-13 00:00:00	livree
410	410	2020-05-22 00:00:00	annulee
411	411	2022-05-07 00:00:00	annulee
412	412	2020-09-02 00:00:00	annulee
413	413	2021-05-24 00:00:00	en cours de traitement
414	414	2022-03-08 00:00:00	en cours de traitement
415	415	2022-12-17 00:00:00	en attente
416	416	2021-12-23 00:00:00	en cours de traitement
417	417	2020-12-06 00:00:00	en cours de traitement
418	418	2021-03-13 00:00:00	en attente
419	419	2020-03-17 00:00:00	annulee
420	420	2020-06-24 00:00:00	livree
421	421	2022-12-24 00:00:00	en cours de traitement
422	422	2020-11-09 00:00:00	annulee
423	423	2021-12-23 00:00:00	livree
424	424	2020-03-28 00:00:00	expediee
425	425	2021-11-11 00:00:00	en attente
426	426	2022-02-06 00:00:00	annulee
427	427	2020-11-30 00:00:00	en cours de traitement
428	428	2021-11-17 00:00:00	en cours de traitement
429	429	2020-10-12 00:00:00	livree
430	430	2021-10-12 00:00:00	en attente
431	431	2021-06-06 00:00:00	expediee
432	432	2020-03-13 00:00:00	livree
433	433	2021-05-14 00:00:00	annulee
434	434	2022-02-16 00:00:00	expediee
435	435	2020-01-23 00:00:00	livree
436	436	2022-08-04 00:00:00	en attente
437	437	2021-05-22 00:00:00	livree
438	438	2021-08-27 00:00:00	annulee
439	439	2020-10-06 00:00:00	annulee
440	440	2020-07-20 00:00:00	en cours de traitement
441	441	2020-05-24 00:00:00	expediee
442	442	2022-08-10 00:00:00	livree
443	443	2022-09-09 00:00:00	en attente
444	444	2021-12-06 00:00:00	annulee
445	445	2022-09-23 00:00:00	en cours de traitement
446	446	2022-06-06 00:00:00	en attente
447	447	2022-01-30 00:00:00	en cours de traitement
448	448	2021-12-11 00:00:00	en attente
449	449	2020-06-13 00:00:00	annulee
450	450	2020-04-13 00:00:00	expediee
451	451	2022-01-21 00:00:00	en cours de traitement
452	452	2022-01-28 00:00:00	livree
453	453	2020-01-14 00:00:00	expediee
454	454	2020-09-28 00:00:00	annulee
455	455	2021-07-11 00:00:00	livree
456	456	2021-11-23 00:00:00	livree
457	457	2020-07-21 00:00:00	expediee
458	458	2020-08-09 00:00:00	annulee
459	459	2021-11-26 00:00:00	livree
460	460	2022-09-15 00:00:00	livree
461	461	2021-07-20 00:00:00	annulee
462	462	2022-10-25 00:00:00	annulee
463	463	2020-04-03 00:00:00	livree
464	464	2021-10-05 00:00:00	livree
465	465	2020-02-12 00:00:00	en cours de traitement
466	466	2020-10-08 00:00:00	expediee
467	467	2022-10-14 00:00:00	en cours de traitement
468	468	2021-08-18 00:00:00	livree
469	469	2020-07-23 00:00:00	annulee
470	470	2022-06-20 00:00:00	en attente
471	471	2020-03-16 00:00:00	expediee
472	472	2020-06-08 00:00:00	expediee
473	473	2021-06-27 00:00:00	en cours de traitement
474	474	2021-11-15 00:00:00	en attente
475	475	2022-02-20 00:00:00	en cours de traitement
476	476	2020-03-29 00:00:00	en attente
477	477	2021-03-24 00:00:00	expediee
478	478	2022-12-07 00:00:00	livree
479	479	2021-09-11 00:00:00	annulee
480	480	2022-03-27 00:00:00	annulee
481	481	2021-02-08 00:00:00	en cours de traitement
482	482	2020-07-21 00:00:00	en cours de traitement
483	483	2022-11-02 00:00:00	en cours de traitement
484	484	2020-04-15 00:00:00	annulee
485	485	2020-12-27 00:00:00	annulee
486	486	2022-12-25 00:00:00	annulee
487	487	2022-06-15 00:00:00	en cours de traitement
488	488	2021-05-01 00:00:00	en attente
489	489	2022-01-07 00:00:00	annulee
490	490	2021-03-20 00:00:00	en cours de traitement
491	491	2022-10-29 00:00:00	expediee
492	492	2020-01-19 00:00:00	en attente
493	493	2020-07-14 00:00:00	en cours de traitement
494	494	2020-03-30 00:00:00	livree
495	495	2022-11-18 00:00:00	expediee
496	496	2021-03-29 00:00:00	en attente
497	497	2022-10-15 00:00:00	expediee
498	498	2022-05-17 00:00:00	en attente
499	499	2021-09-18 00:00:00	annulee
500	500	2022-07-17 00:00:00	expediee
501	501	2022-07-05 00:00:00	en attente
502	502	2020-11-25 00:00:00	annulee
503	503	2020-04-29 00:00:00	expediee
504	504	2022-03-14 00:00:00	en cours de traitement
505	505	2020-03-01 00:00:00	expediee
506	506	2022-10-27 00:00:00	annulee
507	507	2021-05-08 00:00:00	annulee
508	508	2022-10-02 00:00:00	en cours de traitement
509	509	2020-05-03 00:00:00	livree
510	510	2022-07-01 00:00:00	livree
511	511	2020-02-26 00:00:00	livree
512	512	2022-08-19 00:00:00	en attente
513	513	2022-05-05 00:00:00	en attente
514	514	2021-06-14 00:00:00	annulee
515	515	2021-07-09 00:00:00	annulee
516	516	2020-07-18 00:00:00	en attente
517	517	2020-09-30 00:00:00	livree
518	518	2022-12-30 00:00:00	livree
519	519	2020-11-30 00:00:00	en attente
520	520	2022-12-17 00:00:00	livree
521	521	2020-06-10 00:00:00	expediee
522	522	2021-05-02 00:00:00	en attente
523	523	2022-11-14 00:00:00	expediee
524	524	2022-10-03 00:00:00	annulee
525	525	2021-04-23 00:00:00	en cours de traitement
526	526	2022-05-23 00:00:00	en cours de traitement
527	527	2022-08-28 00:00:00	annulee
528	528	2020-05-01 00:00:00	expediee
529	529	2022-07-29 00:00:00	en attente
530	530	2021-10-13 00:00:00	annulee
531	531	2020-11-01 00:00:00	en attente
532	532	2021-05-27 00:00:00	annulee
533	533	2022-02-27 00:00:00	en cours de traitement
534	534	2022-08-14 00:00:00	annulee
535	535	2021-01-16 00:00:00	annulee
536	536	2021-03-04 00:00:00	en cours de traitement
537	537	2021-06-26 00:00:00	en cours de traitement
538	538	2020-10-23 00:00:00	en attente
539	539	2022-11-15 00:00:00	annulee
540	540	2020-04-25 00:00:00	livree
541	541	2020-05-31 00:00:00	expediee
542	542	2022-03-18 00:00:00	expediee
543	543	2021-12-19 00:00:00	annulee
544	544	2020-04-10 00:00:00	expediee
545	545	2021-09-13 00:00:00	livree
546	546	2021-01-17 00:00:00	annulee
547	547	2020-04-13 00:00:00	en attente
548	548	2022-05-26 00:00:00	livree
549	549	2022-01-23 00:00:00	annulee
550	550	2021-12-13 00:00:00	en attente
551	551	2020-06-21 00:00:00	en cours de traitement
552	552	2021-05-01 00:00:00	expediee
553	553	2020-05-28 00:00:00	expediee
554	554	2021-04-15 00:00:00	en attente
555	555	2021-01-11 00:00:00	annulee
556	556	2022-12-03 00:00:00	annulee
557	557	2022-10-18 00:00:00	annulee
558	558	2021-04-02 00:00:00	livree
559	559	2021-12-07 00:00:00	livree
560	560	2020-05-29 00:00:00	annulee
561	561	2022-01-08 00:00:00	livree
562	562	2021-03-08 00:00:00	en attente
563	563	2022-01-01 00:00:00	en cours de traitement
564	564	2021-03-26 00:00:00	en cours de traitement
565	565	2021-07-10 00:00:00	livree
566	566	2020-09-02 00:00:00	expediee
567	567	2021-09-07 00:00:00	livree
568	568	2021-03-01 00:00:00	livree
569	569	2020-09-23 00:00:00	en attente
570	570	2022-04-06 00:00:00	en cours de traitement
571	571	2022-06-16 00:00:00	en cours de traitement
572	572	2022-10-18 00:00:00	annulee
573	573	2021-12-13 00:00:00	en cours de traitement
574	574	2020-03-20 00:00:00	en attente
575	575	2022-10-13 00:00:00	expediee
576	576	2020-04-13 00:00:00	en attente
577	577	2020-04-26 00:00:00	en attente
578	578	2021-08-27 00:00:00	expediee
579	579	2021-06-16 00:00:00	livree
580	580	2022-09-16 00:00:00	en attente
581	581	2021-01-29 00:00:00	en attente
582	582	2020-04-03 00:00:00	livree
583	583	2022-03-27 00:00:00	annulee
584	584	2021-02-18 00:00:00	en attente
585	585	2021-09-21 00:00:00	expediee
586	586	2020-03-25 00:00:00	en cours de traitement
587	587	2021-04-03 00:00:00	en cours de traitement
588	588	2022-11-22 00:00:00	livree
589	589	2020-02-05 00:00:00	expediee
590	590	2021-09-24 00:00:00	en cours de traitement
591	591	2020-01-30 00:00:00	en cours de traitement
592	592	2021-02-24 00:00:00	livree
593	593	2021-01-18 00:00:00	en cours de traitement
594	594	2022-10-11 00:00:00	livree
595	595	2022-03-21 00:00:00	livree
596	596	2020-09-14 00:00:00	en cours de traitement
597	597	2022-01-06 00:00:00	en attente
598	598	2021-11-19 00:00:00	livree
599	599	2022-07-05 00:00:00	en cours de traitement
600	600	2022-05-19 00:00:00	annulee
601	601	2021-10-13 00:00:00	annulee
602	602	2021-07-06 00:00:00	en cours de traitement
603	603	2021-06-07 00:00:00	livree
604	604	2021-11-24 00:00:00	expediee
605	605	2020-04-02 00:00:00	en cours de traitement
606	606	2021-12-05 00:00:00	expediee
607	607	2022-11-15 00:00:00	livree
608	608	2020-10-07 00:00:00	livree
609	609	2022-07-08 00:00:00	annulee
610	610	2020-01-30 00:00:00	livree
611	611	2020-05-30 00:00:00	en attente
612	612	2022-01-31 00:00:00	en cours de traitement
613	613	2022-07-16 00:00:00	en attente
614	614	2020-02-22 00:00:00	expediee
615	615	2020-01-20 00:00:00	annulee
616	616	2021-01-04 00:00:00	en cours de traitement
617	617	2021-02-05 00:00:00	en attente
618	618	2021-10-15 00:00:00	expediee
619	619	2022-04-29 00:00:00	en attente
620	620	2021-04-14 00:00:00	en cours de traitement
621	621	2021-04-01 00:00:00	livree
622	622	2021-10-21 00:00:00	livree
623	623	2020-04-17 00:00:00	annulee
624	624	2021-02-08 00:00:00	annulee
625	625	2021-02-25 00:00:00	en cours de traitement
626	626	2021-01-13 00:00:00	en attente
627	627	2022-11-30 00:00:00	en attente
628	628	2020-04-12 00:00:00	livree
629	629	2021-12-06 00:00:00	en cours de traitement
630	630	2021-01-31 00:00:00	en attente
631	631	2021-12-10 00:00:00	en attente
632	632	2021-03-10 00:00:00	livree
633	633	2022-09-26 00:00:00	annulee
634	634	2021-03-05 00:00:00	livree
635	635	2020-08-05 00:00:00	en attente
636	636	2021-07-28 00:00:00	en attente
637	637	2021-04-03 00:00:00	expediee
638	638	2021-12-24 00:00:00	annulee
639	639	2021-03-28 00:00:00	expediee
640	640	2021-01-29 00:00:00	annulee
641	641	2021-10-15 00:00:00	en attente
642	642	2021-08-01 00:00:00	livree
643	643	2021-09-08 00:00:00	livree
644	644	2020-02-13 00:00:00	livree
645	645	2020-08-24 00:00:00	annulee
646	646	2021-01-16 00:00:00	annulee
647	647	2022-08-21 00:00:00	livree
648	648	2022-11-05 00:00:00	expediee
649	649	2022-05-26 00:00:00	expediee
650	650	2021-06-24 00:00:00	expediee
651	651	2020-01-02 00:00:00	annulee
652	652	2020-05-25 00:00:00	expediee
653	653	2022-07-23 00:00:00	livree
654	654	2021-12-22 00:00:00	en attente
655	655	2020-04-05 00:00:00	livree
656	656	2021-04-13 00:00:00	en cours de traitement
657	657	2020-10-07 00:00:00	en cours de traitement
658	658	2020-11-11 00:00:00	en cours de traitement
659	659	2022-09-22 00:00:00	en attente
660	660	2021-03-11 00:00:00	en attente
661	661	2021-02-11 00:00:00	annulee
662	662	2020-06-02 00:00:00	en cours de traitement
663	663	2020-07-14 00:00:00	en cours de traitement
664	664	2021-05-29 00:00:00	expediee
665	665	2021-10-08 00:00:00	expediee
666	666	2022-09-12 00:00:00	en cours de traitement
667	667	2022-09-27 00:00:00	annulee
668	668	2022-10-13 00:00:00	en cours de traitement
669	669	2022-07-28 00:00:00	annulee
670	670	2021-06-29 00:00:00	expediee
671	671	2022-09-30 00:00:00	expediee
672	672	2021-04-25 00:00:00	expediee
673	673	2021-06-10 00:00:00	expediee
674	674	2021-12-29 00:00:00	en attente
675	675	2020-05-18 00:00:00	expediee
676	676	2021-05-10 00:00:00	expediee
677	677	2021-09-08 00:00:00	en cours de traitement
678	678	2022-03-05 00:00:00	livree
679	679	2022-02-15 00:00:00	livree
680	680	2020-03-02 00:00:00	annulee
681	681	2022-02-13 00:00:00	en attente
682	682	2021-02-07 00:00:00	livree
683	683	2020-04-08 00:00:00	en cours de traitement
684	684	2021-01-29 00:00:00	en cours de traitement
685	685	2021-04-18 00:00:00	livree
686	686	2021-02-28 00:00:00	expediee
687	687	2020-05-24 00:00:00	livree
688	688	2022-11-10 00:00:00	en attente
689	689	2022-08-25 00:00:00	en attente
690	690	2021-12-16 00:00:00	livree
691	691	2022-03-13 00:00:00	en attente
692	692	2021-04-04 00:00:00	livree
693	693	2020-01-16 00:00:00	en attente
694	694	2022-12-19 00:00:00	en cours de traitement
695	695	2021-07-26 00:00:00	annulee
696	696	2022-04-21 00:00:00	expediee
697	697	2021-09-30 00:00:00	livree
698	698	2022-05-24 00:00:00	en cours de traitement
699	699	2022-12-16 00:00:00	livree
700	700	2020-01-25 00:00:00	en cours de traitement
701	701	2020-05-22 00:00:00	en attente
702	702	2022-06-11 00:00:00	annulee
703	703	2022-02-09 00:00:00	en cours de traitement
704	704	2021-08-22 00:00:00	expediee
705	705	2022-08-02 00:00:00	en attente
706	706	2021-01-03 00:00:00	en attente
707	707	2021-11-03 00:00:00	livree
708	708	2021-04-07 00:00:00	en cours de traitement
709	709	2020-08-28 00:00:00	annulee
710	710	2022-10-07 00:00:00	expediee
711	711	2022-08-19 00:00:00	annulee
712	712	2022-05-02 00:00:00	en attente
713	713	2021-07-13 00:00:00	en cours de traitement
714	714	2021-01-04 00:00:00	en attente
715	715	2021-04-28 00:00:00	annulee
716	716	2022-10-05 00:00:00	annulee
717	717	2020-02-03 00:00:00	annulee
718	718	2020-07-13 00:00:00	annulee
719	719	2020-11-27 00:00:00	annulee
720	720	2020-06-16 00:00:00	livree
721	721	2022-06-29 00:00:00	en attente
722	722	2021-10-12 00:00:00	annulee
723	723	2021-11-27 00:00:00	expediee
724	724	2020-08-24 00:00:00	annulee
725	725	2021-05-25 00:00:00	en attente
726	726	2022-04-09 00:00:00	en cours de traitement
727	727	2021-04-30 00:00:00	en attente
728	728	2020-11-06 00:00:00	en attente
729	729	2022-04-21 00:00:00	en attente
730	730	2021-03-22 00:00:00	en attente
731	731	2020-09-30 00:00:00	expediee
732	732	2022-06-10 00:00:00	annulee
733	733	2020-04-25 00:00:00	expediee
734	734	2021-11-04 00:00:00	en attente
735	735	2020-07-13 00:00:00	en attente
736	736	2022-05-10 00:00:00	annulee
737	737	2021-11-19 00:00:00	annulee
738	738	2021-09-10 00:00:00	en attente
739	739	2021-05-10 00:00:00	livree
740	740	2020-02-21 00:00:00	en attente
741	741	2020-09-30 00:00:00	annulee
742	742	2020-12-14 00:00:00	expediee
743	743	2022-11-29 00:00:00	en attente
744	744	2020-07-29 00:00:00	en cours de traitement
745	745	2020-01-26 00:00:00	en cours de traitement
746	746	2021-08-07 00:00:00	annulee
747	747	2022-04-29 00:00:00	livree
748	748	2021-05-01 00:00:00	annulee
749	749	2022-12-18 00:00:00	en attente
750	750	2020-11-09 00:00:00	en attente
751	751	2022-07-14 00:00:00	expediee
752	752	2022-06-17 00:00:00	en cours de traitement
753	753	2020-05-31 00:00:00	annulee
754	754	2021-11-18 00:00:00	expediee
755	755	2022-06-09 00:00:00	annulee
756	756	2022-03-17 00:00:00	expediee
757	757	2020-06-27 00:00:00	livree
758	758	2021-10-15 00:00:00	en cours de traitement
759	759	2021-12-23 00:00:00	en cours de traitement
760	760	2022-07-30 00:00:00	expediee
761	761	2022-08-28 00:00:00	en cours de traitement
762	762	2021-11-23 00:00:00	livree
763	763	2022-07-14 00:00:00	en attente
764	764	2021-08-25 00:00:00	expediee
765	765	2020-03-21 00:00:00	en cours de traitement
766	766	2022-03-16 00:00:00	annulee
767	767	2021-08-20 00:00:00	en cours de traitement
768	768	2022-04-22 00:00:00	expediee
769	769	2022-09-18 00:00:00	en attente
770	770	2021-08-29 00:00:00	en cours de traitement
771	771	2022-04-14 00:00:00	annulee
772	772	2022-10-13 00:00:00	expediee
773	773	2021-11-25 00:00:00	expediee
774	774	2022-12-06 00:00:00	annulee
775	775	2022-10-27 00:00:00	en cours de traitement
776	776	2021-10-26 00:00:00	annulee
777	777	2022-01-22 00:00:00	en cours de traitement
778	778	2020-07-04 00:00:00	expediee
779	779	2020-01-10 00:00:00	en attente
780	780	2020-11-01 00:00:00	en cours de traitement
781	781	2022-03-11 00:00:00	expediee
782	782	2020-09-29 00:00:00	en cours de traitement
783	783	2020-08-05 00:00:00	livree
784	784	2020-05-10 00:00:00	livree
785	785	2021-10-05 00:00:00	annulee
786	786	2022-09-18 00:00:00	en attente
787	787	2022-04-06 00:00:00	en cours de traitement
788	788	2021-12-10 00:00:00	expediee
789	789	2021-03-28 00:00:00	annulee
790	790	2021-09-11 00:00:00	en cours de traitement
791	791	2020-02-22 00:00:00	annulee
792	792	2022-03-07 00:00:00	en attente
793	793	2022-05-21 00:00:00	annulee
794	794	2021-06-22 00:00:00	expediee
795	795	2022-01-19 00:00:00	livree
796	796	2022-12-20 00:00:00	en cours de traitement
797	797	2021-01-05 00:00:00	en cours de traitement
798	798	2020-03-08 00:00:00	livree
799	799	2021-08-09 00:00:00	livree
800	800	2020-01-10 00:00:00	livree
801	801	2022-08-12 00:00:00	livree
802	802	2022-11-05 00:00:00	expediee
803	803	2020-01-20 00:00:00	expediee
804	804	2020-05-12 00:00:00	annulee
805	805	2020-08-29 00:00:00	expediee
806	806	2021-01-07 00:00:00	en attente
807	807	2022-08-22 00:00:00	annulee
808	808	2021-06-20 00:00:00	en cours de traitement
809	809	2020-05-02 00:00:00	annulee
810	810	2022-06-07 00:00:00	livree
811	811	2020-11-23 00:00:00	expediee
812	812	2022-08-23 00:00:00	annulee
813	813	2022-09-14 00:00:00	annulee
814	814	2020-10-26 00:00:00	livree
815	815	2020-08-26 00:00:00	en cours de traitement
816	816	2020-04-24 00:00:00	livree
817	817	2022-02-08 00:00:00	livree
818	818	2020-06-06 00:00:00	en attente
819	819	2020-12-28 00:00:00	en cours de traitement
820	820	2022-01-24 00:00:00	annulee
821	821	2021-03-31 00:00:00	en cours de traitement
822	822	2021-02-22 00:00:00	en cours de traitement
823	823	2022-10-12 00:00:00	en attente
824	824	2020-01-21 00:00:00	en cours de traitement
825	825	2022-10-06 00:00:00	en cours de traitement
826	826	2020-11-25 00:00:00	livree
827	827	2022-01-29 00:00:00	livree
828	828	2020-06-21 00:00:00	annulee
829	829	2022-07-30 00:00:00	en cours de traitement
830	830	2021-05-08 00:00:00	expediee
831	831	2021-01-16 00:00:00	livree
832	832	2020-04-20 00:00:00	en attente
833	833	2021-01-04 00:00:00	en cours de traitement
834	834	2022-08-17 00:00:00	livree
835	835	2022-07-11 00:00:00	en attente
836	836	2022-06-17 00:00:00	en attente
837	837	2022-05-27 00:00:00	en attente
838	838	2022-11-19 00:00:00	annulee
839	839	2021-03-12 00:00:00	expediee
840	840	2020-06-10 00:00:00	annulee
841	841	2021-09-26 00:00:00	annulee
842	842	2022-09-20 00:00:00	livree
843	843	2022-09-24 00:00:00	expediee
844	844	2020-12-31 00:00:00	annulee
845	845	2022-06-11 00:00:00	annulee
846	846	2021-09-22 00:00:00	annulee
847	847	2020-04-05 00:00:00	expediee
848	848	2021-03-15 00:00:00	livree
849	849	2021-01-12 00:00:00	en cours de traitement
850	850	2021-05-23 00:00:00	en attente
851	851	2020-02-01 00:00:00	expediee
852	852	2022-09-05 00:00:00	en cours de traitement
853	853	2021-09-12 00:00:00	annulee
854	854	2020-02-05 00:00:00	en cours de traitement
855	855	2021-04-30 00:00:00	en attente
856	856	2020-01-20 00:00:00	en attente
857	857	2020-03-06 00:00:00	en cours de traitement
858	858	2021-12-03 00:00:00	expediee
859	859	2022-04-06 00:00:00	expediee
860	860	2022-08-24 00:00:00	en attente
861	861	2022-06-28 00:00:00	expediee
862	862	2022-08-14 00:00:00	en attente
863	863	2021-02-18 00:00:00	en cours de traitement
864	864	2020-11-01 00:00:00	en attente
865	865	2021-05-05 00:00:00	en cours de traitement
866	866	2021-06-15 00:00:00	expediee
867	867	2020-08-18 00:00:00	en attente
868	868	2022-11-16 00:00:00	annulee
869	869	2020-09-28 00:00:00	en attente
870	870	2021-10-06 00:00:00	annulee
871	871	2020-04-17 00:00:00	livree
872	872	2021-07-01 00:00:00	en cours de traitement
873	873	2021-08-02 00:00:00	livree
874	874	2020-08-24 00:00:00	expediee
875	875	2020-01-16 00:00:00	expediee
876	876	2021-06-16 00:00:00	expediee
877	877	2022-03-25 00:00:00	expediee
878	878	2022-03-02 00:00:00	en attente
879	879	2020-06-25 00:00:00	en attente
880	880	2022-01-03 00:00:00	en cours de traitement
881	881	2021-07-30 00:00:00	en cours de traitement
882	882	2020-08-29 00:00:00	en cours de traitement
883	883	2021-06-17 00:00:00	en cours de traitement
884	884	2022-07-31 00:00:00	expediee
885	885	2021-01-01 00:00:00	annulee
886	886	2021-05-29 00:00:00	en attente
887	887	2021-10-05 00:00:00	annulee
888	888	2020-01-22 00:00:00	en cours de traitement
889	889	2021-01-29 00:00:00	annulee
890	890	2021-06-11 00:00:00	annulee
891	891	2021-10-04 00:00:00	livree
892	892	2022-01-19 00:00:00	en attente
893	893	2022-08-05 00:00:00	livree
894	894	2021-10-07 00:00:00	en cours de traitement
895	895	2021-05-13 00:00:00	annulee
896	896	2020-06-20 00:00:00	expediee
897	897	2020-06-15 00:00:00	annulee
898	898	2022-05-09 00:00:00	annulee
899	899	2022-09-22 00:00:00	livree
900	900	2022-10-07 00:00:00	annulee
901	901	2021-07-30 00:00:00	annulee
902	902	2021-12-08 00:00:00	expediee
903	903	2021-04-03 00:00:00	expediee
904	904	2020-04-28 00:00:00	annulee
905	905	2022-02-01 00:00:00	annulee
906	906	2022-10-09 00:00:00	annulee
907	907	2021-07-26 00:00:00	en cours de traitement
908	908	2022-06-29 00:00:00	en attente
909	909	2022-09-19 00:00:00	livree
910	910	2021-09-02 00:00:00	en cours de traitement
911	911	2020-02-05 00:00:00	en attente
912	912	2020-03-02 00:00:00	livree
913	913	2022-04-27 00:00:00	en attente
914	914	2022-07-17 00:00:00	en cours de traitement
915	915	2021-08-16 00:00:00	annulee
916	916	2021-03-24 00:00:00	expediee
917	917	2022-09-23 00:00:00	livree
918	918	2022-05-19 00:00:00	annulee
919	919	2022-10-04 00:00:00	expediee
920	920	2020-01-21 00:00:00	expediee
921	921	2021-08-25 00:00:00	annulee
922	922	2021-11-24 00:00:00	livree
923	923	2021-12-14 00:00:00	livree
924	924	2022-07-12 00:00:00	expediee
925	925	2021-01-26 00:00:00	annulee
926	926	2021-05-02 00:00:00	en cours de traitement
927	927	2022-04-07 00:00:00	annulee
928	928	2020-06-20 00:00:00	livree
929	929	2022-02-17 00:00:00	en attente
930	930	2020-12-19 00:00:00	expediee
931	931	2022-01-02 00:00:00	annulee
932	932	2021-05-03 00:00:00	en cours de traitement
933	933	2021-03-25 00:00:00	annulee
934	934	2021-01-07 00:00:00	expediee
935	935	2022-05-06 00:00:00	en attente
936	936	2021-01-19 00:00:00	en attente
937	937	2020-07-16 00:00:00	annulee
938	938	2020-04-17 00:00:00	annulee
939	939	2022-04-18 00:00:00	en cours de traitement
940	940	2022-02-01 00:00:00	en cours de traitement
941	941	2020-10-14 00:00:00	annulee
942	942	2020-10-25 00:00:00	expediee
943	943	2020-08-19 00:00:00	expediee
944	944	2020-11-18 00:00:00	livree
945	945	2021-05-04 00:00:00	expediee
946	946	2021-07-21 00:00:00	en cours de traitement
947	947	2021-10-04 00:00:00	en cours de traitement
948	948	2021-06-30 00:00:00	en cours de traitement
949	949	2022-07-03 00:00:00	expediee
950	950	2022-09-03 00:00:00	livree
951	951	2020-01-14 00:00:00	livree
952	952	2021-08-29 00:00:00	en attente
953	953	2020-11-25 00:00:00	expediee
954	954	2021-12-17 00:00:00	expediee
955	955	2022-12-24 00:00:00	annulee
956	956	2022-05-27 00:00:00	en attente
957	957	2021-05-30 00:00:00	livree
958	958	2020-04-19 00:00:00	en cours de traitement
959	959	2022-06-04 00:00:00	en attente
960	960	2022-08-13 00:00:00	annulee
961	961	2022-01-18 00:00:00	expediee
962	962	2021-12-29 00:00:00	en cours de traitement
963	963	2021-05-25 00:00:00	annulee
964	964	2021-06-16 00:00:00	expediee
965	965	2020-10-21 00:00:00	en cours de traitement
966	966	2021-06-10 00:00:00	en attente
967	967	2020-12-10 00:00:00	annulee
968	968	2020-04-13 00:00:00	expediee
969	969	2020-03-08 00:00:00	en cours de traitement
970	970	2020-10-30 00:00:00	livree
971	971	2022-10-17 00:00:00	en cours de traitement
972	972	2021-11-03 00:00:00	en attente
973	973	2020-08-02 00:00:00	livree
974	974	2021-09-03 00:00:00	livree
975	975	2020-09-29 00:00:00	expediee
976	976	2021-05-17 00:00:00	expediee
977	977	2022-05-21 00:00:00	en attente
978	978	2022-05-26 00:00:00	annulee
979	979	2022-02-28 00:00:00	livree
980	980	2021-09-26 00:00:00	annulee
981	981	2020-04-27 00:00:00	livree
982	982	2020-07-02 00:00:00	annulee
983	983	2020-10-30 00:00:00	annulee
984	984	2020-09-15 00:00:00	expediee
985	985	2021-05-11 00:00:00	annulee
986	986	2021-03-20 00:00:00	en attente
987	987	2021-06-13 00:00:00	expediee
988	988	2020-09-27 00:00:00	livree
989	989	2022-03-31 00:00:00	annulee
990	990	2020-07-13 00:00:00	en attente
991	991	2022-03-23 00:00:00	en attente
992	992	2020-07-02 00:00:00	en cours de traitement
993	993	2020-08-09 00:00:00	annulee
994	994	2020-04-10 00:00:00	expediee
995	995	2022-05-31 00:00:00	annulee
996	996	2020-04-07 00:00:00	en attente
997	997	2020-04-26 00:00:00	livree
998	998	2021-06-24 00:00:00	annulee
999	999	2022-08-27 00:00:00	en attente
1000	1000	2020-07-10 00:00:00	expediee
\.


--
-- Data for Name: details_commandes; Type: TABLE DATA; Schema: e_commerce_couche_silver; Owner: postgres
--

COPY e_commerce_couche_silver.details_commandes (id_detail_commande, id_commande, id_produit, quantite, prix_total) FROM stdin;
9	9	9	655	2833.47
19	19	19	473	1265.4
35	35	35	924	8759.21
45	45	45	501	2122.33
52	52	52	7	8551.37
55	55	55	664	5495.75
65	65	65	463	9119.14
66	66	66	125	5572.13
75	75	75	834	2472.96
81	81	81	605	3465.11
83	83	83	28	1173.53
91	91	91	526	3056.31
96	96	96	377	1004.85
110	110	110	216	684.34
115	115	115	15	5442.76
121	121	121	982	4198.01
124	124	124	293	1267.96
131	131	131	26	3065.48
184	184	184	169	8274.05
190	190	190	303	470.48
198	198	198	627	4651.67
202	202	202	88	1065.64
212	212	212	658	9727.88
230	230	230	114	8144.45
242	242	242	268	7508.52
247	247	247	765	1600.91
250	250	250	811	2043.47
252	252	252	875	8307.73
259	259	259	598	9498.73
262	262	262	776	9202.13
272	272	272	541	7920.65
283	283	283	961	5938.14
291	291	291	728	2672.77
296	296	296	514	3037.03
298	298	298	187	966.58
299	299	299	709	981.52
301	301	301	317	6258.94
304	304	304	178	1985.63
307	307	307	132	7534.6
321	321	321	358	1231.94
322	322	322	620	6057.02
326	326	326	873	6026.53
328	328	328	32	8011.12
340	340	340	823	7233.53
342	342	342	643	9185.78
351	351	351	786	4255.73
355	355	355	394	847.4
366	366	366	531	8077.28
371	371	371	260	1052.32
374	374	374	981	188.2
376	376	376	795	1916.76
388	388	388	811	6123.8
389	389	389	505	2010.59
392	392	392	315	9779.1
395	395	395	960	5906.05
397	397	397	989	7544.9
402	402	402	893	2431.98
405	405	405	470	7572.93
410	410	410	799	9741.08
411	411	411	979	3018.7
438	438	438	850	4603.9
440	440	440	989	2370.75
470	470	470	595	8742.2
479	479	479	731	4913.6
500	500	500	427	8270.94
501	501	501	420	9120.99
504	504	504	460	753.67
518	518	518	938	4466.71
528	528	528	578	3555.43
529	529	529	707	4188.71
535	535	535	874	8234.32
546	546	546	288	4527.02
551	551	551	550	1300.36
562	562	562	981	5052.55
564	564	564	833	431.5
568	568	568	407	7483.86
569	569	569	388	9128.02
582	582	582	363	9770.37
583	583	583	218	266.24
586	586	586	101	1882.81
587	587	587	561	1452.77
588	588	588	546	9173.53
590	590	590	861	2292.68
603	603	603	948	6842.77
604	604	604	718	355.14
613	613	613	263	4961.81
619	619	619	277	4222.08
636	636	636	274	8605.94
649	649	649	454	587.95
661	661	661	598	7550.11
664	664	664	959	8438.22
668	668	668	103	4295.07
677	677	677	701	7566.45
678	678	678	859	9558.17
684	684	684	508	2281.35
686	686	686	726	7639.11
693	693	693	33	8335.47
697	697	697	376	9134.49
702	702	702	166	7078.75
705	705	705	261	5197.31
706	706	706	56	2756.54
707	707	707	131	804.22
710	710	710	922	8863.9
732	732	732	520	7763.83
753	753	753	209	9193.96
780	780	780	840	9394.99
793	793	793	501	1837.72
794	794	794	419	9809.67
803	803	803	863	9296.4
818	818	818	804	2261.76
819	819	819	536	8710.27
820	820	820	844	8102.72
842	842	842	593	5856.4
846	846	846	322	3840.98
851	851	851	72	6497.64
853	853	853	210	5883.98
869	869	869	696	1282.51
872	872	872	73	5908.74
889	889	889	920	3911.77
897	897	897	899	4865.5
900	900	900	648	2126.37
908	908	908	136	6079.23
920	920	920	209	4247.48
929	929	929	889	1426.46
942	942	942	207	6116.56
946	946	946	666	3032.66
980	980	980	594	9030.47
991	991	991	243	9103.69
993	993	993	868	3259.71
996	996	996	194	7684.76
\.


--
-- Data for Name: paiements; Type: TABLE DATA; Schema: e_commerce_couche_silver; Owner: postgres
--

COPY e_commerce_couche_silver.paiements (id_paiement, id_commande, methode_paiement, montant, date_paiement) FROM stdin;
1	1	mobile money	2396.76	2/13/2025
2	2	mobile money	8753.83	7/23/2025
3	3	mobile money	4341.97	2/13/2024
4	4	mobile money	4264.67	10/6/2024
5	5	cash	9714.35	7/12/2024
6	6	cash	5860.99	5/5/2024
7	7	mobile money	5899.34	12/15/2025
8	8	mobile money	3370.48	3/14/2025
9	9	mobile money	8683.17	7/8/2024
10	10	mobile money	4035.71	3/3/2025
11	11	mobile money	402.08	7/5/2025
12	12	mobile money	2312.13	9/26/2025
13	13	cash	1627.2	12/15/2025
14	14	mobile money	4705.73	3/1/2024
15	15	cash	9672.17	10/25/2024
16	16	mobile money	6352.81	8/31/2025
17	17	mobile money	2174.89	7/14/2025
18	18	mobile money	2040.65	6/4/2025
19	19	cash	4562.67	8/26/2024
20	20	mobile money	1198.29	11/1/2024
21	21	mobile money	3059.69	12/10/2024
22	22	mobile money	7625.12	1/31/2024
23	23	cash	1614.05	11/8/2025
24	24	cash	3368.61	3/13/2025
25	25	mobile money	5149.46	4/10/2024
26	26	cash	7779.88	7/12/2025
27	27	mobile money	3425.41	12/24/2025
28	28	mobile money	3476.9	9/23/2025
29	29	cash	6404.32	12/3/2024
30	30	mobile money	4969.74	5/8/2024
31	31	mobile money	1260.02	11/27/2025
32	32	cash	8589.19	3/4/2025
33	33	cash	1990.57	6/16/2025
34	34	cash	3175.01	11/24/2024
35	35	cash	4149.65	11/22/2025
36	36	mobile money	368.69	5/25/2025
37	37	mobile money	5048.64	5/9/2025
38	38	cash	7599.94	11/20/2024
39	39	mobile money	2579.12	12/5/2024
40	40	cash	9805.95	9/27/2025
41	41	mobile money	2846.37	7/10/2025
42	42	cash	7924.41	2/21/2024
43	43	mobile money	6686.07	6/19/2025
44	44	mobile money	2682.12	12/25/2024
45	45	mobile money	7882.42	8/28/2024
46	46	mobile money	5477.02	12/24/2025
47	47	cash	9623.46	10/25/2024
48	48	cash	6831	5/21/2025
49	49	mobile money	2551.9	2/10/2024
50	50	cash	3475.23	5/26/2024
51	51	mobile money	2648.29	2/12/2025
52	52	cash	6255.15	7/8/2025
53	53	mobile money	5916.21	8/12/2024
54	54	mobile money	1646.53	4/4/2024
55	55	mobile money	1108.71	6/4/2025
56	56	mobile money	8659	4/25/2024
57	57	mobile money	5830.23	2/3/2025
58	58	mobile money	3917.7	3/6/2024
59	59	mobile money	4666.44	11/21/2024
60	60	mobile money	9707.01	11/28/2025
61	61	mobile money	9918.68	2/26/2025
62	62	cash	6037.21	2/12/2025
63	63	mobile money	4509.54	4/17/2025
64	64	mobile money	2069.98	2/23/2024
65	65	mobile money	6241.34	1/15/2024
66	66	mobile money	5602.81	10/18/2024
67	67	mobile money	6215.51	7/7/2024
68	68	mobile money	9119.63	9/5/2025
69	69	mobile money	4908.6	11/3/2024
70	70	cash	9849.14	11/25/2025
71	71	mobile money	8152.62	6/10/2025
72	72	cash	4586.08	1/15/2024
73	73	cash	1446.42	4/7/2024
74	74	mobile money	738.36	7/5/2024
75	75	mobile money	8446.87	8/21/2024
76	76	mobile money	9166.88	3/10/2025
77	77	mobile money	6617.86	6/14/2025
78	78	mobile money	9357.03	11/15/2024
79	79	cash	2496.93	8/9/2025
80	80	mobile money	3892.38	6/12/2024
81	81	mobile money	5940.16	10/31/2025
82	82	mobile money	3004.5	11/25/2025
83	83	mobile money	5340.54	9/1/2024
84	84	cash	4805.43	7/9/2024
85	85	mobile money	9809.61	2/19/2025
86	86	mobile money	7511.32	10/28/2025
87	87	mobile money	8248.53	3/26/2024
88	88	mobile money	1384.5	7/24/2025
89	89	mobile money	3618.39	11/18/2024
90	90	cash	9128.11	3/5/2025
91	91	cash	2219.41	3/31/2024
92	92	cash	5450.55	6/21/2024
93	93	mobile money	6257.16	5/16/2024
94	94	cash	7222.62	10/6/2025
95	95	cash	5545.45	1/15/2025
96	96	mobile money	3311.86	5/23/2025
97	97	cash	6182.67	1/29/2025
98	98	mobile money	8513.95	4/14/2024
99	99	cash	4823.93	2/19/2025
100	100	cash	2522.21	2/8/2025
101	101	cash	2783.49	2/18/2024
102	102	mobile money	7227.97	8/25/2024
103	103	mobile money	9414.67	2/23/2025
104	104	mobile money	5667.1	8/9/2025
105	105	mobile money	9032.88	1/31/2024
106	106	mobile money	9422.19	11/29/2024
107	107	mobile money	3657.78	3/16/2024
108	108	mobile money	1806.37	1/22/2024
109	109	mobile money	8625.82	8/7/2024
110	110	mobile money	4018.6	4/9/2024
111	111	cash	6143.98	6/21/2024
112	112	mobile money	3247.67	4/29/2024
113	113	cash	2917.69	1/31/2025
114	114	mobile money	4182.34	10/26/2025
115	115	cash	4478.08	9/20/2024
116	116	cash	9314.62	8/13/2024
117	117	cash	1281.22	3/15/2024
118	118	cash	9967.93	11/8/2024
119	119	mobile money	9397.4	4/24/2025
120	120	mobile money	1572.55	6/24/2024
121	121	cash	8298.84	7/28/2024
122	122	mobile money	4432.79	10/9/2024
123	123	mobile money	8654.21	12/29/2025
124	124	mobile money	3952.36	6/24/2025
125	125	cash	9591.07	5/16/2024
126	126	mobile money	6765.57	12/14/2025
127	127	mobile money	345.97	11/30/2024
128	128	mobile money	3965.96	6/10/2025
129	129	mobile money	861.56	2/22/2024
130	130	mobile money	3346.66	9/9/2025
131	131	mobile money	1609.68	8/12/2024
132	132	mobile money	6375.46	10/5/2024
133	133	mobile money	2965.86	2/25/2025
134	134	cash	5075.25	7/20/2024
135	135	mobile money	5896.2	7/19/2024
136	136	mobile money	3968.18	6/1/2025
137	137	cash	1136.2	8/6/2025
138	138	cash	128.1	10/14/2025
139	139	cash	5031.18	1/9/2025
140	140	mobile money	1838.36	8/31/2025
141	141	cash	6077.2	10/31/2025
142	142	cash	4700.03	2/6/2024
143	143	cash	1761.99	12/21/2025
144	144	mobile money	9026.13	6/15/2024
145	145	mobile money	6568.47	12/16/2025
146	146	cash	3546.33	1/25/2024
147	147	mobile money	327.81	6/27/2025
148	148	cash	9729.6	9/8/2025
149	149	mobile money	7274.24	9/24/2024
150	150	mobile money	1746.78	7/21/2025
151	151	cash	8457.14	5/9/2025
152	152	mobile money	134.68	10/19/2025
153	153	mobile money	2882.42	5/2/2024
154	154	mobile money	3520.42	2/15/2025
155	155	mobile money	9473.07	11/4/2024
156	156	mobile money	4625.01	4/15/2025
157	157	mobile money	8574.13	8/17/2024
158	158	mobile money	3171.15	7/23/2025
159	159	cash	6133.33	4/18/2025
160	160	mobile money	7237.48	3/8/2025
161	161	cash	7077.74	2/28/2024
162	162	mobile money	6766.15	11/2/2024
163	163	mobile money	1020.87	1/28/2025
164	164	mobile money	7192.07	4/4/2025
165	165	cash	8467.51	1/18/2024
166	166	mobile money	9023.59	8/9/2025
167	167	mobile money	4441.24	10/16/2025
168	168	mobile money	755.03	2/8/2024
169	169	mobile money	1737.94	11/7/2025
170	170	mobile money	1963.33	10/25/2025
171	171	mobile money	1159.2	4/26/2024
172	172	cash	4561.39	10/17/2024
173	173	cash	1888.01	4/3/2024
174	174	mobile money	2663.84	4/10/2025
175	175	mobile money	9966.33	11/18/2025
176	176	mobile money	233.87	2/4/2025
177	177	cash	4574.66	9/14/2024
178	178	cash	3991.36	3/26/2024
179	179	mobile money	308.73	8/8/2024
180	180	mobile money	8594.58	8/26/2024
181	181	mobile money	6050.16	6/29/2024
182	182	mobile money	9711.04	8/26/2024
183	183	mobile money	8385.75	9/9/2025
184	184	mobile money	944.91	5/9/2024
185	185	mobile money	3981.99	9/28/2025
186	186	mobile money	5629.29	10/31/2025
187	187	cash	2645.47	2/16/2025
188	188	mobile money	7856.79	7/2/2025
189	189	mobile money	2476.73	12/19/2025
190	190	cash	2160.03	3/2/2024
191	191	cash	8610	12/28/2025
192	192	mobile money	5106.31	8/7/2024
193	193	mobile money	8053.04	9/19/2024
194	194	mobile money	3143.59	8/13/2024
195	195	mobile money	2104.16	1/31/2025
196	196	mobile money	5467.5	9/8/2024
197	197	mobile money	4971.16	1/16/2025
198	198	mobile money	9563.6	11/18/2025
199	199	cash	6461.61	5/15/2024
200	200	cash	7867.49	9/19/2025
201	201	mobile money	285.49	11/12/2025
202	202	mobile money	5264.3	4/23/2025
203	203	mobile money	8310.39	5/9/2025
204	204	mobile money	2664.2	5/28/2024
205	205	mobile money	8906.03	10/22/2025
206	206	mobile money	6466.6	4/28/2024
207	207	mobile money	9104.84	11/12/2025
208	208	mobile money	8359.16	11/19/2024
209	209	mobile money	1174.43	4/24/2025
210	210	mobile money	1855.67	3/14/2024
211	211	cash	9197.21	8/20/2024
212	212	cash	1884.51	1/24/2024
213	213	cash	5466.99	6/20/2025
214	214	cash	3878.66	2/26/2024
215	215	mobile money	7890.75	1/31/2025
216	216	mobile money	6647.82	5/8/2024
217	217	mobile money	9453.74	3/31/2025
218	218	cash	8211.69	7/15/2024
219	219	cash	7114.08	11/18/2024
220	220	cash	9974.94	3/11/2025
221	221	mobile money	6886.74	1/24/2024
222	222	cash	6746.09	3/20/2025
223	223	mobile money	1268.41	4/9/2025
224	224	cash	7231.65	12/21/2025
225	225	mobile money	38.35	10/14/2025
226	226	cash	1759.26	10/27/2024
227	227	cash	2832.21	7/4/2024
228	228	mobile money	112.74	4/16/2024
229	229	mobile money	4513.18	7/2/2025
230	230	cash	1350.43	12/13/2024
231	231	mobile money	6322.28	1/17/2025
232	232	mobile money	5269.44	5/19/2025
233	233	mobile money	2338	3/16/2025
234	234	mobile money	9774.71	6/27/2024
235	235	mobile money	8733	12/4/2025
236	236	cash	9051.51	10/28/2024
237	237	mobile money	2341.31	7/13/2024
238	238	cash	6072.95	4/11/2025
239	239	cash	1779.97	8/17/2025
240	240	cash	5072.13	8/18/2025
241	241	mobile money	9538.1	8/15/2024
242	242	cash	184.4	9/30/2025
243	243	mobile money	4438.77	5/3/2024
244	244	mobile money	8520.27	11/2/2025
245	245	mobile money	444.91	4/7/2025
246	246	mobile money	9855.44	7/4/2024
247	247	mobile money	8265.16	10/20/2024
248	248	mobile money	3563.61	8/23/2025
249	249	cash	7074.24	6/10/2024
250	250	cash	8155.14	4/19/2025
251	251	cash	9353.66	5/14/2024
252	252	mobile money	7892.6	3/26/2025
253	253	mobile money	6887.53	4/8/2024
254	254	mobile money	3026.53	6/3/2025
255	255	cash	1774.94	9/20/2025
256	256	mobile money	7442.29	6/14/2024
257	257	cash	5451.92	4/22/2025
258	258	mobile money	6756.16	8/7/2024
259	259	cash	1278.83	7/6/2025
260	260	mobile money	429.56	8/17/2024
261	261	mobile money	351.9	1/14/2025
262	262	mobile money	2963.6	1/9/2024
263	263	mobile money	6775.68	11/3/2024
264	264	mobile money	5240.11	6/16/2024
265	265	mobile money	6894.57	1/22/2025
266	266	mobile money	19.48	5/28/2025
267	267	mobile money	851.83	10/20/2025
268	268	mobile money	8503.32	1/20/2024
269	269	cash	3143.14	11/25/2024
270	270	mobile money	7053.67	3/14/2024
271	271	cash	3786.39	11/11/2024
272	272	cash	9068.3	10/18/2024
273	273	mobile money	1814.38	9/26/2025
274	274	cash	7005.11	6/23/2025
275	275	cash	6292.44	8/24/2024
276	276	mobile money	5086.78	9/28/2025
277	277	cash	5951.71	7/14/2025
278	278	mobile money	290.42	5/13/2025
279	279	mobile money	7277.48	6/22/2024
280	280	mobile money	9380.66	3/26/2025
281	281	mobile money	3578.81	6/14/2025
282	282	mobile money	4325.1	4/21/2025
283	283	mobile money	7251.87	3/6/2024
284	284	cash	3062.22	9/20/2024
285	285	mobile money	4633.85	1/24/2025
286	286	mobile money	7997.36	10/27/2024
287	287	mobile money	5644.47	10/22/2025
288	288	mobile money	5993.3	11/17/2024
289	289	mobile money	7824.56	1/3/2024
290	290	mobile money	3725.4	12/31/2024
291	291	cash	5638.21	8/15/2025
292	292	mobile money	731.14	2/22/2025
293	293	cash	6303.97	9/12/2024
294	294	mobile money	2509.25	12/29/2024
295	295	mobile money	7731.02	7/2/2024
296	296	mobile money	4264.59	3/9/2024
297	297	mobile money	4123.82	8/31/2024
298	298	mobile money	4588.92	11/29/2025
299	299	mobile money	7417.42	12/15/2025
300	300	mobile money	9440.71	10/12/2025
301	301	mobile money	4829.79	6/18/2025
302	302	mobile money	8022.86	9/4/2024
303	303	cash	3827.54	5/7/2025
304	304	mobile money	7299.08	10/17/2024
305	305	mobile money	2918.92	9/4/2024
306	306	mobile money	7338.9	12/20/2025
307	307	mobile money	4851.22	4/15/2024
308	308	cash	2023.95	11/14/2025
309	309	mobile money	6956.59	4/26/2025
310	310	mobile money	9402.04	11/7/2024
311	311	cash	6840.52	3/29/2025
312	312	mobile money	3332.75	6/12/2025
313	313	mobile money	4970.39	6/4/2024
314	314	mobile money	4659.38	7/26/2025
315	315	mobile money	8498.63	8/2/2024
316	316	mobile money	6367.97	3/23/2025
317	317	cash	7509.15	9/16/2024
318	318	mobile money	5171.92	5/30/2024
319	319	cash	5966.96	4/23/2025
320	320	mobile money	8531.36	9/22/2024
321	321	mobile money	1755.15	5/1/2024
322	322	cash	1101.93	3/24/2025
323	323	mobile money	92.54	12/22/2024
324	324	cash	2768.38	4/2/2025
325	325	mobile money	1925.52	8/4/2024
326	326	mobile money	2975.3	5/18/2024
327	327	mobile money	7434.56	6/30/2024
328	328	mobile money	8372.24	2/6/2025
329	329	mobile money	1401.32	9/9/2024
330	330	cash	236.46	4/2/2024
331	331	mobile money	597.99	3/14/2025
332	332	mobile money	272.39	1/6/2024
333	333	cash	6970.92	4/25/2024
334	334	mobile money	422.86	1/23/2025
335	335	cash	8802.74	7/9/2024
336	336	mobile money	1298.1	12/26/2025
337	337	mobile money	9536.44	4/5/2025
338	338	cash	8466.11	9/9/2025
339	339	cash	5523.26	12/19/2024
340	340	mobile money	4883.15	5/11/2025
341	341	cash	9039.31	3/3/2024
342	342	cash	3824.42	5/23/2024
343	343	cash	6192.73	12/26/2025
344	344	mobile money	6044.63	3/23/2025
345	345	mobile money	5709.22	11/30/2024
346	346	mobile money	3709.16	12/29/2024
347	347	mobile money	5405.2	7/16/2024
348	348	cash	2877.86	5/15/2024
349	349	mobile money	3614.57	4/21/2025
350	350	cash	9981.37	10/3/2024
351	351	mobile money	8114.48	5/5/2025
352	352	mobile money	6412.46	12/10/2024
353	353	mobile money	9347.36	6/17/2024
354	354	cash	9517.44	2/9/2025
355	355	cash	9487.04	7/23/2025
356	356	cash	4889.49	8/22/2024
357	357	cash	2532.75	12/14/2024
358	358	mobile money	3565.93	12/12/2024
359	359	mobile money	1779.1	7/14/2025
360	360	mobile money	4925.33	12/25/2025
361	361	mobile money	6283.46	2/9/2025
362	362	mobile money	1356.95	2/27/2025
363	363	cash	3569.46	1/21/2024
364	364	mobile money	8930.59	10/30/2024
365	365	cash	8601.31	10/1/2025
366	366	mobile money	6426.48	3/17/2025
367	367	mobile money	3919.91	5/14/2024
368	368	mobile money	8664.8	9/16/2025
369	369	mobile money	1426.66	3/2/2025
370	370	mobile money	6158.41	4/22/2025
371	371	mobile money	4697.48	4/10/2025
372	372	cash	3555.42	6/22/2024
373	373	cash	9119.83	7/15/2025
374	374	mobile money	1634.05	6/8/2024
375	375	cash	5009.39	8/1/2024
376	376	mobile money	1400.97	5/22/2025
377	377	mobile money	1667.66	9/22/2024
378	378	mobile money	9100.1	12/2/2024
379	379	cash	7695.61	4/29/2024
380	380	mobile money	4442.59	11/12/2024
381	381	mobile money	8268.96	5/6/2024
382	382	mobile money	173.03	2/19/2025
383	383	mobile money	1023.24	8/25/2024
384	384	cash	9941.26	10/18/2024
385	385	mobile money	9192.86	8/16/2025
386	386	mobile money	2057.37	3/5/2024
387	387	mobile money	1713.63	3/12/2025
388	388	mobile money	6757.37	5/19/2025
389	389	cash	1940.93	1/13/2025
390	390	cash	4343.25	3/30/2025
391	391	mobile money	1445.74	8/23/2025
392	392	mobile money	5129.69	2/25/2024
393	393	mobile money	7332.47	7/17/2025
394	394	cash	4045.49	10/15/2024
395	395	mobile money	4972.73	11/18/2025
396	396	mobile money	4293.18	4/30/2024
397	397	mobile money	2077.8	5/6/2024
398	398	mobile money	7750.7	10/19/2025
399	399	mobile money	7252.41	4/3/2025
400	400	cash	7476.18	5/24/2024
401	401	cash	9320.78	4/22/2024
402	402	mobile money	2135.19	4/11/2025
403	403	mobile money	4562.59	7/7/2025
404	404	cash	8263.76	3/8/2025
405	405	mobile money	479.15	8/6/2024
406	406	cash	4246.78	11/21/2025
407	407	mobile money	9278.16	4/24/2025
408	408	mobile money	4555.58	8/10/2025
409	409	mobile money	5041.53	1/15/2025
410	410	mobile money	1364.72	8/15/2024
411	411	cash	4514.57	7/28/2024
412	412	cash	4893.33	10/8/2025
413	413	mobile money	2348.43	1/19/2024
414	414	mobile money	1339.79	5/11/2025
415	415	mobile money	4274.5	12/5/2024
416	416	mobile money	3644.11	8/3/2024
417	417	cash	9803.6	9/25/2025
418	418	mobile money	3689.7	8/6/2025
419	419	cash	1351.7	6/3/2024
420	420	mobile money	9499.16	2/26/2024
421	421	mobile money	3165.14	8/5/2025
422	422	mobile money	7025.12	10/9/2024
423	423	mobile money	9927.4	4/13/2025
424	424	mobile money	9836.84	1/23/2024
425	425	cash	1419.42	1/19/2024
426	426	cash	5987.38	1/28/2025
427	427	cash	9848.97	11/18/2025
428	428	cash	5624.89	6/28/2024
429	429	mobile money	7293.63	8/19/2025
430	430	mobile money	486.87	7/28/2024
431	431	mobile money	9140.13	8/8/2024
432	432	mobile money	5768.64	9/8/2025
433	433	mobile money	7485.67	8/19/2024
434	434	mobile money	6162.81	10/21/2024
435	435	mobile money	9652.05	5/27/2025
436	436	mobile money	2775.63	10/18/2024
437	437	mobile money	1437.62	5/9/2024
438	438	cash	9707.44	7/9/2024
439	439	mobile money	4687.86	7/26/2024
440	440	mobile money	1902.07	3/5/2024
441	441	cash	3398.9	3/23/2024
442	442	mobile money	8690.08	3/21/2024
443	443	mobile money	646.65	8/19/2024
444	444	mobile money	9212.42	10/11/2025
445	445	mobile money	8702.15	6/20/2025
446	446	mobile money	104.44	7/29/2024
447	447	mobile money	9171.82	2/17/2025
448	448	cash	5282.5	4/25/2025
449	449	cash	8837.53	9/23/2024
450	450	cash	3621.39	7/20/2025
451	451	mobile money	4724.28	9/30/2025
452	452	cash	2486.91	8/27/2024
453	453	cash	9809.62	3/30/2025
454	454	mobile money	227.68	12/24/2025
455	455	cash	33.05	1/19/2024
456	456	mobile money	4723.1	9/10/2025
457	457	mobile money	5480.76	9/30/2024
458	458	mobile money	2687.09	10/25/2024
459	459	mobile money	1695.51	5/20/2025
460	460	mobile money	9392.01	5/15/2025
461	461	cash	4459.58	5/27/2025
462	462	mobile money	5856.86	10/25/2024
463	463	cash	5903.77	5/30/2024
464	464	mobile money	4035.82	5/28/2024
465	465	cash	8433.57	11/25/2025
466	466	cash	1150	2/8/2025
467	467	cash	7231.95	2/16/2024
468	468	mobile money	9578.91	11/20/2025
469	469	cash	5404.76	4/16/2025
470	470	mobile money	3016.13	7/15/2025
471	471	mobile money	5220.75	1/10/2025
472	472	mobile money	8548.98	4/28/2025
473	473	cash	3161.71	11/15/2024
474	474	cash	5720.34	4/22/2025
475	475	cash	9558.97	5/25/2024
476	476	mobile money	6210.95	1/26/2024
477	477	mobile money	9908.21	1/11/2024
478	478	mobile money	6021.05	11/1/2025
479	479	mobile money	9379.02	11/15/2024
480	480	cash	1701.12	8/15/2024
481	481	mobile money	2738.49	5/27/2024
482	482	mobile money	7081.52	9/22/2024
483	483	cash	3952.45	1/9/2024
484	484	mobile money	818.3	9/27/2024
485	485	mobile money	4095.16	1/22/2025
486	486	mobile money	3723.73	9/14/2024
487	487	mobile money	409.68	4/2/2024
488	488	mobile money	8966.36	11/3/2025
489	489	cash	1074.77	11/11/2025
490	490	cash	5062.25	11/9/2025
491	491	mobile money	6340.95	11/26/2025
492	492	mobile money	9672.32	12/24/2025
493	493	mobile money	1919.45	12/31/2024
494	494	cash	6092.65	6/11/2025
495	495	mobile money	2951.75	3/11/2025
496	496	cash	1630.6	8/25/2025
497	497	mobile money	5217.35	9/11/2025
498	498	mobile money	5318.31	3/9/2024
499	499	mobile money	3761.96	5/2/2025
500	500	cash	3518.02	1/20/2025
501	501	cash	8666.28	8/2/2025
502	502	cash	349.93	4/3/2024
503	503	mobile money	2270.59	11/13/2025
504	504	mobile money	6517.77	7/15/2025
505	505	mobile money	4079.06	11/20/2024
506	506	mobile money	6694.94	5/5/2024
507	507	cash	6611.27	1/18/2024
508	508	mobile money	4274.15	10/24/2024
509	509	mobile money	4577.34	8/17/2025
510	510	mobile money	9652.57	7/9/2024
511	511	cash	4670.87	5/14/2025
512	512	mobile money	3498.77	6/12/2025
513	513	mobile money	4755.08	2/8/2024
514	514	mobile money	9860.25	8/7/2025
515	515	mobile money	8189.39	8/30/2025
516	516	mobile money	2726.18	8/24/2024
517	517	cash	4866.11	2/1/2025
518	518	mobile money	1397.07	10/8/2024
519	519	cash	6634.97	4/22/2024
520	520	mobile money	6174.65	12/19/2025
521	521	cash	7200.04	5/30/2024
522	522	cash	818.77	12/16/2025
523	523	cash	5876.9	10/6/2025
524	524	mobile money	3786.1	1/11/2025
525	525	cash	6858.5	8/18/2025
526	526	mobile money	3097.97	8/4/2025
527	527	mobile money	577.32	2/16/2025
528	528	mobile money	1345.44	2/19/2024
529	529	cash	3962.58	12/16/2025
530	530	mobile money	4526.99	9/16/2025
531	531	cash	7073.82	12/21/2024
532	532	mobile money	4128.95	1/16/2025
533	533	mobile money	4674.19	3/4/2024
534	534	mobile money	6470.87	5/10/2024
535	535	mobile money	5027.52	9/29/2024
536	536	mobile money	4540.98	9/4/2025
537	537	mobile money	8315.21	1/9/2025
538	538	mobile money	3084	4/5/2025
539	539	mobile money	5323.57	5/9/2025
540	540	cash	9512.22	7/23/2024
541	541	mobile money	5264.86	5/4/2025
542	542	cash	7072.08	2/16/2024
543	543	mobile money	3373.58	6/27/2024
544	544	cash	4789.96	10/22/2024
545	545	mobile money	3821.64	6/27/2024
546	546	mobile money	7981.1	5/7/2024
547	547	mobile money	9244.66	7/1/2025
548	548	mobile money	7820.02	11/25/2025
549	549	mobile money	4155.47	2/26/2025
550	550	cash	5419.27	5/28/2025
551	551	cash	1404.12	5/11/2025
552	552	cash	4071.89	2/19/2025
553	553	mobile money	5908.22	9/1/2025
554	554	mobile money	3049.35	1/9/2025
555	555	mobile money	5322.42	9/9/2025
556	556	mobile money	5035.46	5/21/2025
557	557	cash	1946.3	3/10/2025
558	558	mobile money	2092.22	9/4/2024
559	559	cash	8809.87	6/12/2024
560	560	cash	556.2	5/22/2024
561	561	mobile money	4188	11/26/2024
562	562	cash	4037.77	4/19/2024
563	563	mobile money	218.42	5/26/2025
564	564	cash	8423.1	8/14/2025
565	565	mobile money	466.34	5/21/2024
566	566	cash	4045.99	10/25/2024
567	567	mobile money	181.37	2/13/2024
568	568	mobile money	5341.07	11/14/2024
569	569	cash	1509.95	6/17/2025
570	570	cash	5317.14	4/7/2025
571	571	mobile money	8389.99	5/22/2024
572	572	mobile money	810.1	5/25/2025
573	573	mobile money	4910.09	10/2/2024
574	574	mobile money	1009.26	1/22/2025
575	575	mobile money	8189.88	1/16/2024
576	576	cash	7347.44	10/19/2024
577	577	mobile money	9582.04	2/19/2025
578	578	mobile money	6651.87	10/6/2025
579	579	mobile money	7469.14	2/5/2024
580	580	mobile money	4502.68	8/23/2025
581	581	mobile money	3978.26	6/23/2025
582	582	cash	6758.95	12/21/2025
583	583	cash	3853.11	10/8/2025
584	584	mobile money	7635.75	4/26/2024
585	585	cash	2569.56	4/30/2025
586	586	mobile money	8961.67	2/20/2025
587	587	mobile money	6227.2	7/14/2025
588	588	mobile money	805.47	11/14/2025
589	589	mobile money	6654.76	4/20/2025
590	590	cash	4850.01	5/28/2024
591	591	mobile money	3079.66	5/5/2025
592	592	cash	7273.5	8/14/2025
593	593	cash	5728.87	3/8/2024
594	594	cash	4249.5	7/5/2024
595	595	mobile money	3989.23	12/16/2024
596	596	mobile money	4126.17	12/20/2025
597	597	mobile money	8086.62	1/22/2024
598	598	mobile money	1464.36	3/8/2025
599	599	mobile money	8216.09	9/28/2024
600	600	mobile money	7091.83	2/15/2025
601	601	cash	6785.1	1/1/2025
602	602	mobile money	5560.24	11/14/2025
603	603	cash	4062.16	8/2/2024
604	604	cash	6184.82	5/6/2025
605	605	cash	9946.64	2/11/2025
606	606	mobile money	562.6	5/21/2025
607	607	mobile money	9004.93	11/1/2024
608	608	cash	9677.99	11/26/2025
609	609	mobile money	5585.46	2/9/2025
610	610	mobile money	6841.99	9/27/2025
611	611	mobile money	5648.28	2/1/2025
612	612	cash	1420.16	2/18/2024
613	613	mobile money	4333.96	7/5/2025
614	614	mobile money	7367.49	11/19/2024
615	615	mobile money	5763.53	3/18/2025
616	616	mobile money	6331.44	4/3/2025
617	617	cash	4255.54	7/7/2024
618	618	mobile money	9769.31	10/15/2025
619	619	mobile money	9439.07	1/2/2025
620	620	cash	1415.24	8/1/2024
621	621	cash	4311.16	12/27/2024
622	622	mobile money	1343	8/30/2024
623	623	cash	307.6	3/6/2024
624	624	cash	6999.29	5/13/2025
625	625	cash	5633.28	9/6/2025
626	626	mobile money	9794.8	1/27/2024
627	627	mobile money	2990.09	12/29/2024
628	628	mobile money	7043.66	3/5/2024
629	629	mobile money	4252.47	8/12/2025
630	630	cash	7632.63	7/7/2024
631	631	mobile money	6228.16	4/12/2024
632	632	cash	570.6	4/29/2025
633	633	cash	18.03	8/29/2025
634	634	mobile money	5981.48	6/15/2025
635	635	cash	475.71	4/3/2024
636	636	mobile money	6831.9	3/18/2024
637	637	mobile money	2958.59	11/19/2025
638	638	cash	4294.42	10/31/2025
639	639	mobile money	627.41	10/19/2024
640	640	mobile money	8109.64	4/5/2024
641	641	mobile money	1503.99	4/1/2024
642	642	mobile money	7141.26	2/13/2025
643	643	mobile money	7474.86	2/27/2024
644	644	cash	8964.75	11/22/2024
645	645	mobile money	1122.91	5/9/2025
646	646	mobile money	3827.7	1/28/2025
647	647	mobile money	9297.22	12/10/2024
648	648	mobile money	1655.04	3/12/2024
649	649	mobile money	5513.46	7/17/2025
650	650	mobile money	8412.36	10/19/2024
651	651	mobile money	4481.11	8/6/2025
652	652	mobile money	9018.92	6/8/2025
653	653	mobile money	6136.96	9/10/2025
654	654	cash	1515.98	8/17/2024
655	655	mobile money	4781.86	11/28/2025
656	656	mobile money	5511.71	11/27/2024
657	657	mobile money	5479.41	12/9/2025
658	658	mobile money	1405.5	2/26/2024
659	659	mobile money	8781.52	2/18/2025
660	660	mobile money	7178.46	12/22/2025
661	661	cash	7579.42	4/22/2024
662	662	mobile money	3614.27	1/21/2024
663	663	cash	9756.82	2/13/2025
664	664	cash	9081.07	1/10/2024
665	665	mobile money	2695.71	5/19/2024
666	666	cash	3083.01	2/22/2025
667	667	mobile money	7252.08	11/28/2024
668	668	mobile money	9562.73	3/21/2025
669	669	cash	899.25	3/4/2024
670	670	mobile money	7557.24	2/13/2024
671	671	mobile money	3600.31	5/27/2025
672	672	cash	8113.97	4/5/2025
673	673	mobile money	6177.33	7/1/2025
674	674	cash	525.19	5/14/2024
675	675	cash	2896.6	3/10/2025
676	676	mobile money	8199.05	9/5/2024
677	677	cash	8233.3	5/25/2025
678	678	cash	1715.8	12/28/2024
679	679	mobile money	5571.82	1/4/2025
680	680	cash	1454.66	7/6/2024
681	681	cash	4220.49	12/3/2025
682	682	mobile money	9812.13	10/18/2025
683	683	mobile money	7981.54	1/28/2025
684	684	cash	9864.52	11/2/2024
685	685	mobile money	5888.22	1/11/2024
686	686	mobile money	8883.99	1/14/2025
687	687	cash	4373.23	10/22/2025
688	688	mobile money	411.46	8/11/2024
689	689	mobile money	8333.41	11/12/2025
690	690	cash	8298.5	8/1/2025
691	691	mobile money	3744.43	12/28/2025
692	692	mobile money	2697.48	3/30/2025
693	693	mobile money	833.46	12/14/2024
694	694	mobile money	1099.55	9/9/2025
695	695	mobile money	9479.79	7/25/2024
696	696	mobile money	7123.9	5/14/2025
697	697	mobile money	6044.04	10/16/2024
698	698	mobile money	6936.41	3/8/2024
699	699	mobile money	1695.43	7/21/2024
700	700	mobile money	7521.92	3/22/2024
701	701	cash	7751.02	5/30/2025
702	702	mobile money	1888.24	1/8/2024
703	703	mobile money	8755.19	8/27/2025
704	704	mobile money	4182.39	12/18/2025
705	705	mobile money	8687.75	6/24/2025
706	706	cash	5862.87	10/15/2025
707	707	mobile money	1545.5	6/1/2025
708	708	mobile money	1811.08	5/15/2025
709	709	mobile money	6083.02	11/3/2024
710	710	mobile money	1491.53	5/13/2024
711	711	mobile money	3078.99	8/24/2024
712	712	mobile money	8582.52	5/11/2024
713	713	mobile money	8309.11	4/15/2025
714	714	mobile money	9782.11	10/6/2024
715	715	mobile money	2599.8	10/29/2024
716	716	cash	2929.88	3/27/2025
717	717	mobile money	7825.18	1/10/2024
718	718	mobile money	3741.32	12/20/2025
719	719	mobile money	9222.61	10/8/2024
720	720	mobile money	5677.01	9/15/2025
721	721	mobile money	5638.89	7/12/2025
722	722	mobile money	6778.84	3/27/2025
723	723	mobile money	7044.7	7/14/2024
724	724	mobile money	6310.97	9/6/2024
725	725	cash	6280.26	10/20/2025
726	726	mobile money	6696.27	5/9/2024
727	727	cash	1653.58	4/1/2025
728	728	cash	7488.32	4/3/2024
729	729	mobile money	8922.75	9/28/2025
730	730	cash	5812.06	7/31/2024
731	731	mobile money	1020.73	3/17/2025
732	732	mobile money	9646.33	8/7/2025
733	733	mobile money	6082.55	3/7/2024
734	734	mobile money	4683.51	12/21/2024
735	735	cash	7678.19	10/7/2024
736	736	mobile money	185.73	5/8/2024
737	737	mobile money	2190.99	7/25/2024
738	738	mobile money	6571.34	7/5/2025
739	739	mobile money	8839.69	10/6/2024
740	740	mobile money	9172.08	4/5/2025
741	741	mobile money	5329.25	4/25/2025
742	742	mobile money	11.85	10/4/2025
743	743	mobile money	3593.1	8/13/2025
744	744	mobile money	9660.58	2/26/2024
745	745	mobile money	1399.63	6/28/2024
746	746	mobile money	8947.95	8/8/2025
747	747	mobile money	9965.65	1/14/2025
748	748	mobile money	8383.87	5/13/2024
749	749	cash	5055.99	8/7/2025
750	750	cash	9642.7	8/12/2025
751	751	mobile money	8145.21	2/2/2024
752	752	mobile money	4185.18	8/3/2025
753	753	cash	7178.17	2/13/2024
754	754	mobile money	7614.39	7/25/2024
755	755	cash	3985.95	9/5/2025
756	756	cash	6367.37	4/24/2024
757	757	cash	3425.72	3/14/2025
758	758	cash	9388.1	4/2/2025
759	759	mobile money	4888.35	5/5/2025
760	760	mobile money	6132.06	1/10/2025
761	761	mobile money	3860.78	12/15/2025
762	762	cash	8493.34	12/10/2024
763	763	cash	7963.81	1/1/2024
764	764	cash	4713.41	8/12/2025
765	765	cash	1400.42	10/5/2025
766	766	mobile money	742.06	7/23/2025
767	767	cash	2536.98	3/24/2025
768	768	mobile money	3993.03	3/11/2025
769	769	cash	1788.82	1/14/2025
770	770	mobile money	1462.21	8/10/2024
771	771	mobile money	2058.23	12/4/2025
772	772	mobile money	173.35	8/17/2025
773	773	mobile money	191.21	4/14/2025
774	774	mobile money	66.22	12/16/2024
775	775	mobile money	2546.41	5/17/2025
776	776	mobile money	4467.31	7/28/2024
777	777	mobile money	1713.08	2/28/2024
778	778	mobile money	2557.96	12/18/2024
779	779	mobile money	496.29	3/3/2025
780	780	mobile money	6710.93	8/25/2024
781	781	mobile money	2438.2	7/5/2025
782	782	mobile money	2224.33	2/25/2024
783	783	mobile money	2945.99	7/17/2025
784	784	cash	5066.77	2/5/2025
785	785	mobile money	9573.29	1/14/2024
786	786	cash	9541.68	12/6/2024
787	787	cash	2250.51	2/25/2025
788	788	mobile money	601.9	5/4/2025
789	789	mobile money	1990.3	3/20/2025
790	790	mobile money	5733.94	6/11/2024
791	791	mobile money	4849.99	8/16/2024
792	792	cash	4104.28	10/15/2024
793	793	mobile money	3293.58	7/2/2025
794	794	cash	9893.92	3/5/2024
795	795	mobile money	9210.85	3/3/2024
796	796	mobile money	2759.71	6/9/2024
797	797	cash	7542.55	6/6/2025
798	798	mobile money	5799.04	9/22/2025
799	799	cash	8887.99	5/23/2025
800	800	cash	1940.54	7/1/2025
801	801	mobile money	3.43	10/28/2024
802	802	mobile money	1848.84	4/11/2024
803	803	mobile money	3231.79	1/23/2024
804	804	cash	3285.19	5/31/2025
805	805	cash	767.3	2/22/2024
806	806	mobile money	4192.7	11/13/2025
807	807	mobile money	8935.31	2/11/2025
808	808	mobile money	5278.65	6/6/2024
809	809	mobile money	5903.1	6/1/2025
810	810	cash	2929.07	10/18/2025
811	811	mobile money	6525.52	7/21/2024
812	812	cash	7391.01	10/15/2025
813	813	cash	7089.33	9/9/2024
814	814	mobile money	8922.06	6/9/2024
815	815	mobile money	8562.97	4/24/2025
816	816	mobile money	2060.67	1/8/2025
817	817	mobile money	603.09	3/21/2025
818	818	cash	5811.04	6/5/2024
819	819	mobile money	9987.52	8/18/2025
820	820	mobile money	6827.38	12/17/2025
821	821	mobile money	7125.92	3/21/2025
822	822	mobile money	6784.45	1/2/2025
823	823	mobile money	5242.61	7/20/2025
824	824	mobile money	5450.41	4/25/2024
825	825	mobile money	8547.48	10/18/2025
826	826	cash	5560.78	5/7/2024
827	827	mobile money	4531.83	12/26/2025
828	828	mobile money	7978.1	3/8/2024
829	829	cash	1850.19	12/1/2024
830	830	cash	2169.93	11/2/2024
831	831	cash	1342.06	8/10/2024
832	832	mobile money	5454.55	5/8/2024
833	833	mobile money	4705.79	9/22/2025
834	834	mobile money	3373.3	5/26/2024
835	835	mobile money	1218.91	5/19/2025
836	836	mobile money	5979.83	8/16/2024
837	837	mobile money	2976.57	12/8/2024
838	838	mobile money	9840.9	3/26/2025
839	839	cash	3776.59	8/29/2024
840	840	mobile money	4179.89	6/4/2025
841	841	mobile money	6143.06	11/27/2025
842	842	mobile money	7271.08	12/22/2025
843	843	mobile money	2177.15	7/23/2024
844	844	cash	2507.02	9/2/2024
845	845	cash	4377.55	3/12/2024
846	846	mobile money	317.38	2/25/2024
847	847	mobile money	1659.73	9/18/2024
848	848	cash	401.87	2/18/2024
849	849	mobile money	8229.36	8/16/2024
850	850	mobile money	8608.52	9/21/2024
851	851	mobile money	9174.19	5/30/2024
852	852	mobile money	3694.57	5/5/2024
853	853	mobile money	3524.9	6/23/2025
854	854	mobile money	6755.52	6/2/2024
855	855	mobile money	7104.31	4/15/2025
856	856	cash	987.1	12/7/2025
857	857	cash	1776.1	1/2/2025
858	858	mobile money	6323.15	8/28/2024
859	859	cash	6066.76	11/25/2024
860	860	mobile money	2754.92	6/9/2024
861	861	cash	8268.59	11/5/2025
862	862	mobile money	9004.18	3/28/2024
863	863	cash	2315.47	6/15/2024
864	864	mobile money	4264.01	9/25/2025
865	865	cash	8663.37	3/26/2025
866	866	mobile money	7015.86	9/27/2024
867	867	mobile money	5331.98	10/16/2024
868	868	cash	2241.77	2/24/2024
869	869	mobile money	7452.04	4/2/2025
870	870	mobile money	9755.16	12/23/2025
871	871	mobile money	1961.35	2/15/2025
872	872	mobile money	7843.37	11/19/2025
873	873	mobile money	550.07	12/24/2024
874	874	mobile money	6972.88	4/10/2024
875	875	mobile money	6063.43	5/9/2024
876	876	mobile money	2232.92	11/1/2025
877	877	mobile money	6018.18	8/11/2025
878	878	mobile money	1410.82	9/22/2025
879	879	cash	7250.86	2/9/2025
880	880	mobile money	5809.03	12/19/2024
881	881	mobile money	3074.67	2/20/2024
882	882	mobile money	1242.97	6/20/2024
883	883	mobile money	6265.82	12/13/2024
884	884	cash	9031.51	7/19/2025
885	885	cash	7239.75	12/27/2024
886	886	mobile money	351.41	12/12/2025
887	887	mobile money	9342.83	12/11/2024
888	888	mobile money	6571.58	3/3/2024
889	889	cash	8761.06	10/18/2025
890	890	mobile money	3147	5/4/2025
891	891	cash	8607.24	3/29/2024
892	892	cash	9547.11	6/17/2024
893	893	cash	5946.29	5/31/2024
894	894	cash	1015.14	6/19/2024
895	895	mobile money	2551.86	2/27/2025
896	896	mobile money	3049.16	10/26/2024
897	897	mobile money	3480.19	8/17/2025
898	898	mobile money	3258.81	2/8/2025
899	899	mobile money	9019.22	7/9/2025
900	900	mobile money	6661.38	3/29/2025
901	901	mobile money	8717.17	11/17/2025
902	902	mobile money	931	1/27/2025
903	903	cash	9762.86	4/4/2025
904	904	mobile money	7824.07	12/13/2025
905	905	mobile money	3521.84	12/27/2024
906	906	mobile money	2869.61	4/10/2025
907	907	mobile money	9599.69	12/28/2024
908	908	mobile money	2422.57	12/25/2025
909	909	cash	1887.36	2/3/2025
910	910	mobile money	522.38	7/18/2025
911	911	mobile money	4017.09	8/29/2024
912	912	mobile money	923.47	8/2/2024
913	913	cash	9821.78	4/29/2025
914	914	mobile money	9501.16	6/14/2025
915	915	cash	5025.88	7/7/2024
916	916	mobile money	1872.17	4/6/2025
917	917	cash	9530.42	9/17/2025
918	918	cash	7737.42	8/18/2024
919	919	mobile money	7760.34	3/18/2024
920	920	mobile money	2145.54	7/3/2025
921	921	cash	5615.17	10/29/2025
922	922	cash	1378.17	6/25/2024
923	923	cash	6495.76	11/27/2025
924	924	cash	2837.79	11/26/2024
925	925	mobile money	6162.42	2/17/2025
926	926	cash	3176.51	2/10/2024
927	927	cash	1403.4	1/28/2024
928	928	mobile money	1257.59	9/2/2025
929	929	mobile money	5924.27	10/6/2024
930	930	mobile money	3421.97	9/11/2024
931	931	mobile money	4559.66	3/17/2025
932	932	mobile money	3050.52	5/27/2025
933	933	cash	7971.23	7/7/2025
934	934	mobile money	7349.53	10/4/2025
935	935	mobile money	3321.84	2/16/2024
936	936	cash	7056.42	12/18/2025
937	937	mobile money	3815.69	9/29/2025
938	938	mobile money	3224.29	1/23/2024
939	939	mobile money	6716.37	4/24/2025
940	940	mobile money	1444.46	3/10/2025
941	941	mobile money	7981.5	2/17/2024
942	942	mobile money	9363.6	4/25/2025
943	943	mobile money	4051.96	7/29/2024
944	944	mobile money	799.4	3/8/2024
945	945	mobile money	8561.91	12/25/2025
946	946	cash	590.98	8/12/2024
947	947	cash	6365.55	12/8/2025
948	948	mobile money	2906.06	2/10/2025
949	949	mobile money	1241.21	7/5/2025
950	950	cash	7952.12	9/8/2024
951	951	mobile money	4491	6/24/2025
952	952	mobile money	8775.64	12/20/2024
953	953	mobile money	7432.4	5/21/2025
954	954	mobile money	8648.93	2/17/2024
955	955	mobile money	9803.39	1/4/2024
956	956	cash	7782.04	9/12/2024
957	957	mobile money	2762.77	8/30/2025
958	958	mobile money	7179.56	10/31/2025
959	959	mobile money	1999.5	2/14/2024
960	960	mobile money	5813.47	4/20/2024
961	961	mobile money	9841.06	3/19/2025
962	962	mobile money	1894.8	7/1/2025
963	963	mobile money	7260.32	5/26/2024
964	964	cash	577.97	4/18/2024
965	965	mobile money	3275.06	6/26/2025
966	966	mobile money	5137.58	1/2/2025
967	967	mobile money	7178.73	6/9/2025
968	968	cash	4864	11/1/2024
969	969	mobile money	4758.23	1/30/2024
970	970	cash	3688.53	8/26/2024
971	971	mobile money	1730.13	12/23/2024
972	972	mobile money	8470.44	5/20/2025
973	973	mobile money	1056.47	6/13/2025
974	974	cash	3298.6	9/21/2025
975	975	cash	6344.76	4/21/2024
976	976	mobile money	9996.42	5/11/2024
977	977	mobile money	9009.39	9/30/2025
978	978	mobile money	6947.68	3/15/2024
979	979	mobile money	9119.06	8/29/2025
980	980	mobile money	6164.45	9/4/2025
981	981	cash	1070.74	10/22/2025
982	982	mobile money	1397.69	7/30/2025
983	983	cash	1693.19	12/4/2024
984	984	mobile money	1703.6	2/28/2024
985	985	mobile money	5007.01	6/30/2024
986	986	cash	4705.01	9/17/2024
987	987	mobile money	8519.92	6/26/2024
988	988	mobile money	3400.73	2/12/2024
989	989	mobile money	4855.58	6/8/2024
990	990	cash	8006.76	10/15/2024
991	991	mobile money	2458.49	7/25/2024
992	992	mobile money	2883.94	1/4/2025
993	993	cash	1677.58	8/11/2024
994	994	cash	8483.75	4/12/2024
995	995	cash	869.48	3/10/2025
996	996	mobile money	4393.99	10/13/2024
997	997	mobile money	753.85	9/29/2024
998	998	mobile money	1837.53	10/5/2024
999	999	mobile money	6921.08	11/17/2024
1000	1000	mobile money	7860.59	8/15/2024
\.


--
-- Data for Name: produits; Type: TABLE DATA; Schema: e_commerce_couche_silver; Owner: postgres
--

COPY e_commerce_couche_silver.produits (id_produit, nom, categorie, prix, quantite_stock) FROM stdin;
9	Electric Wax Warmer	Maison	22.99	9
19	Hand Crank Blender	Cuisine	18.99	3
35	Non-Stick Grill Pan	Cuisine	39.99	3
45	Scented Soy Candles	Maison	19.99	2
52	Luxury Memory Foam Mattress Topper	Maison	129.99	8
55	Scent Diffuser	Maison	34.99	8
65	Wine Glasses	Maison	29.99	9
66	Pest Control Traps	Maison	22.99	8
75	Pest Control Traps	Maison	22.99	3
81	Luxury Memory Foam Mattress Topper	Maison	129.99	3
83	Multicolored LED Strip Lights	Maison	29.99	8
91	Multi-Layer Food Steamer	Cuisine	39.99	5
96	Vegetable Spiralizer	Cuisine	19.99	6
110	Dual Function Electric Skillet	Cuisine	59.99	6
115	Memory Foam Mattress Topper	Maison	109.99	3
121	Eco-Friendly Beeswax Wraps	Cuisine	14.99	5
124	Electric Butter Churn	Cuisine	49.99	5
131	Manual Coffee Grinder	Cuisine	22.99	10
184	Magic Color-Changing Mug	Cuisine	14.99	6
190	Non-Stick Crepe Pan	Cuisine	29.99	9
198	Heated Throw Blanket	Maison	49.99	7
202	Ceramic Cookware Set	Cuisine	179.99	4
212	Snap-On Tupperware Set	Cuisine	34.99	4
230	Electric Stir Fry Pan	Cuisine	49.99	9
242	Digital Wireless Meat Thermometer	Cuisine	39.99	7
247	Plant-Based Meal Prep Containers	Cuisine	18.99	2
250	Electric Stir Fry Pan	Cuisine	49.99	2
252	Spice Rack	Cuisine	39.99	2
259	Fridge Magnet Set	Maison	15.99	8
262	Professional Chef Knife	Cuisine	89.99	4
272	Salt and Pepper Grinder Set	Cuisine	19.99	6
283	Cocktail Shaker Set	Cuisine	29.99	9
291	Tea Infuser Bottle	Cuisine	19.99	10
296	LED Strip Lights with Remote Control	Maison	29.99	4
298	LED Strip Lights with Remote Control	Maison	29.99	2
299	Decorative Throw Pillows	Maison	29.99	7
301	Halloween Decoration Set	Maison	29.99	4
304	Faux Fur Throw Blanket	Maison	39.99	2
307	Silicone Ice Cube Tray	Cuisine	10.99	7
321	Ice Cream Scoop	Cuisine	12.99	9
322	Wall-Mounted Wine Rack	Maison	39.99	8
326	Pasta Portion Control Measure	Cuisine	9.99	4
328	Luminous Night Light	Maison	15.99	9
340	Microfiber Cleaning Cloths	Maison	9.99	7
342	Eco-Friendly Cleaning Cloths	Maison	12.99	5
351	Faux Fur Throw Blanket	Maison	39.99	7
355	Electric Wax Warmer	Maison	22.99	3
366	Chopping Board	Cuisine	29.99	10
371	Wooden Kitchen Utensil Set	Cuisine	19.99	7
374	Wall Calendar	Maison	17.99	7
376	Electric Griddle with Removable Plates	Cuisine	59.99	9
388	LED Under Cabinet Lighting	Maison	29.99	8
389	Electric Opener for Jars and Bottles	Cuisine	24.99	3
392	Spice Rack	Cuisine	39.99	7
395	Air Fryer Oven	Cuisine	149.99	6
397	Multi-Layer Food Steamer	Cuisine	39.99	3
402	Hand Mixer	Cuisine	29.99	8
405	Indoor Grill	Cuisine	59.99	6
410	Rustic Wooden Picture Frame	Maison	19.99	4
411	Oven Thermometer	Cuisine	11.99	3
438	Electric Egg Cooker	Cuisine	29.99	5
440	Ceramic Cookware Set	Cuisine	179.99	2
470	Decorative Wall Tapestry	Maison	34.99	8
479	Instant Read Meat Thermometer	Cuisine	24.99	3
500	Air Fryer Oven	Cuisine	149.99	2
501	Reusable Food Storage Bags	Cuisine	19.99	6
504	Hand Crank Blender	Cuisine	18.99	4
518	Biodegradable Trash Bags	Maison	12.99	9
528	Electric Food Slicer	Cuisine	99.99	7
529	Electric Hot Water Dispenser	Cuisine	59.99	3
535	Personal Blender with Travel Lid	Cuisine	34.99	7
546	Electric Stool Heater	Maison	29.99	8
551	Ice Cream Maker	Cuisine	79.99	5
562	Luxury Memory Foam Mattress Topper	Maison	129.99	9
564	Magic Color-Changing Mug	Cuisine	14.99	8
568	Wireless Security Camera	Maison	109.99	5
569	Insulated Lunch Bag	Cuisine	24.99	4
582	Wall Art Stickers	Maison	19.99	2
583	Reusable Coffee Filter	Cuisine	10.99	9
586	LED Christmas Lights	Maison	29.99	8
587	Ice Cream Maker	Cuisine	79.99	3
588	Decorative Throw Pillows	Maison	29.99	4
590	Microfiber Cleaning Cloth Set	Maison	9.99	6
603	Electric Blanket	Maison	59.99	2
604	Stainless Steel Mixing Bowls	Cuisine	29.99	6
613	Ceramic Cookware Set	Cuisine	179.99	5
619	Eco-Friendly Cleaning Cloths	Maison	12.99	10
636	Rechargeable Battery Organizer	Maison	17.99	4
649	Travel Mug	Cuisine	18.99	9
661	Glass Food Containers	Cuisine	34.99	4
664	Magnetic Spice Containers	Cuisine	24.99	4
668	Multi-Layer Food Steamer	Cuisine	39.99	10
677	Professional Chef Knife	Cuisine	89.99	6
678	Plant-Based Meal Prep Containers	Cuisine	18.99	9
684	Bamboo Utensil Set	Cuisine	14.99	10
686	Personal Blender with Travel Cup	Cuisine	39.99	9
693	Multi-Function Meat Tenderizer	Cuisine	19.99	7
697	Digital Kitchen Timer	Cuisine	14.99	9
702	Tea Infuser	Cuisine	12.99	5
705	Electric Stool Heater	Maison	29.99	7
706	High-Speed Hand Blender	Cuisine	39.99	2
707	Coffee Maker	Cuisine	89.99	10
710	Compact Shoe Rack	Maison	34.99	6
732	Dish Soap Dispenser	Cuisine	18.99	5
753	Ceramic Bakeware Set	Cuisine	49.99	9
780	Measuring Cups Set	Cuisine	19.99	3
793	Tea Set with Infuser	Cuisine	34.99	3
794	Wall-Mounted Organizer	Maison	34.99	10
803	Travel Mug with Leak-Proof Lid	Cuisine	24.99	6
818	Over-the-Door Shoe Organizer	Maison	22.99	8
819	Air Fryer	Cuisine	79.99	6
820	Rechargeable Battery Organizer	Maison	17.99	4
842	Non-Stick Baking Sheets	Cuisine	29.99	4
846	Siphon Coffee Maker	Cuisine	49.99	4
851	Chopping Board	Cuisine	29.99	3
853	LED Under Cabinet Lighting	Maison	29.99	4
869	USB Desk Fan	Maison	14.99	9
872	Compact Shoe Rack	Maison	34.99	4
889	Coconut Bowls Set	Cuisine	22.99	3
897	High-Speed Blender	Cuisine	99.99	2
900	Scent Diffuser Oil	Maison	14.99	9
908	Digital Food Scale	Cuisine	22.99	6
920	Personal Blender	Cuisine	39.99	6
929	Siphon Coffee Maker	Cuisine	49.99	5
942	Incense Holder	Maison	14.99	2
946	LED Desk Light	Maison	34.99	3
980	Mini Fondue Set	Cuisine	34.99	10
991	Wall-Mounted Wine Rack	Maison	39.99	10
993	Multicolored LED Strip Lights	Maison	29.99	6
996	Electric Wax Warmer	Maison	22.99	4
\.


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: e_commerce_couche_silver; Owner: postgres
--

ALTER TABLE ONLY e_commerce_couche_silver.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id_client);


--
-- Name: commandes commandes_pkey; Type: CONSTRAINT; Schema: e_commerce_couche_silver; Owner: postgres
--

ALTER TABLE ONLY e_commerce_couche_silver.commandes
    ADD CONSTRAINT commandes_pkey PRIMARY KEY (id_commande);


--
-- Name: details_commandes details_commandes_pkey; Type: CONSTRAINT; Schema: e_commerce_couche_silver; Owner: postgres
--

ALTER TABLE ONLY e_commerce_couche_silver.details_commandes
    ADD CONSTRAINT details_commandes_pkey PRIMARY KEY (id_detail_commande);


--
-- Name: paiements paiements_pkey; Type: CONSTRAINT; Schema: e_commerce_couche_silver; Owner: postgres
--

ALTER TABLE ONLY e_commerce_couche_silver.paiements
    ADD CONSTRAINT paiements_pkey PRIMARY KEY (id_paiement);


--
-- Name: produits produits_pkey; Type: CONSTRAINT; Schema: e_commerce_couche_silver; Owner: postgres
--

ALTER TABLE ONLY e_commerce_couche_silver.produits
    ADD CONSTRAINT produits_pkey PRIMARY KEY (id_produit);


--
-- Name: commandes commandes_id_client_fkey; Type: FK CONSTRAINT; Schema: e_commerce_couche_silver; Owner: postgres
--

ALTER TABLE ONLY e_commerce_couche_silver.commandes
    ADD CONSTRAINT commandes_id_client_fkey FOREIGN KEY (id_client) REFERENCES e_commerce_couche_silver.clients(id_client);


--
-- Name: details_commandes details_commandes_id_commande_fkey; Type: FK CONSTRAINT; Schema: e_commerce_couche_silver; Owner: postgres
--

ALTER TABLE ONLY e_commerce_couche_silver.details_commandes
    ADD CONSTRAINT details_commandes_id_commande_fkey FOREIGN KEY (id_commande) REFERENCES e_commerce_couche_silver.commandes(id_commande);


--
-- Name: details_commandes details_commandes_id_produit_fkey; Type: FK CONSTRAINT; Schema: e_commerce_couche_silver; Owner: postgres
--

ALTER TABLE ONLY e_commerce_couche_silver.details_commandes
    ADD CONSTRAINT details_commandes_id_produit_fkey FOREIGN KEY (id_produit) REFERENCES e_commerce_couche_silver.produits(id_produit);


--
-- Name: paiements paiements_id_commande_fkey; Type: FK CONSTRAINT; Schema: e_commerce_couche_silver; Owner: postgres
--

ALTER TABLE ONLY e_commerce_couche_silver.paiements
    ADD CONSTRAINT paiements_id_commande_fkey FOREIGN KEY (id_commande) REFERENCES e_commerce_couche_silver.commandes(id_commande);


--
-- PostgreSQL database dump complete
--

