--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: arvio; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY arvio (nimi, selitys, minimi, maksimi) FROM stdin;
\.


--
-- Data for Name: kayttaja; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY kayttaja (nimi, slsjasennumero, puhelin, sahkoposti, syntymavuosi, sukupuoli, tunniste, vahvistus, vahvistuslahetetty, tila, lisatty) FROM stdin;
Tuomas Aaltonen	91308313	050 356 2929	tiaaltonen@yahoo.com	1971	E	91308313	\N	\N	lainaaja	2015-05-13 11:12:51.036502+03
Timo Aho	91410162		noppagames@gmail.com	1978	E	91410162	\N	\N	lainaaja	2015-05-13 11:12:51.054407+03
Mauri Sahlberg	90500895	+358 44 5229238	mos@iki.fi	1969	T	daFool		\N	superadmin	2015-04-08 14:53:00.259967+03
Jari Ahonen	91308164		jari.n.ahonen@gmail.com	1987	E	91308164	\N	\N	lainaaja	2015-05-13 11:12:51.062365+03
Ville Ahonen	91510664	050 412 3200	wilhonen@gmail.com	1986	E	91510664	\N	\N	lainaaja	2015-05-13 11:12:51.070541+03
Pekka Ahponen	90501056	040 700 7822	pekka.ahponen@kolumbus.fi	1968	E	90501056	\N	\N	lainaaja	2015-05-13 11:12:51.079031+03
Aleksi Ahtiainen	90601859	040 662 5110	aleksi.ahtiainen@iki.fi	1977	E	90601859	\N	\N	lainaaja	2015-05-13 11:12:51.096005+03
Patrik Ahvenainen	91410133	050 520 1495	patrik.ahvenainen@gmail.com	1986	E	91410133	\N	\N	lainaaja	2015-05-13 11:12:51.104223+03
Noora Aittokallio	91308494	045 318 2085	aittokallio.noora@gmail.com	1985	E	91308494	\N	\N	lainaaja	2015-05-13 11:12:51.112652+03
Jari Ala-Poikela	91409940	045 652 7836	jaalapo@gmail.com	1986	E	91409940	\N	\N	lainaaja	2015-05-13 11:12:51.121286+03
Jukka Alanen	91308067	050 394 9019	jukka.alanen@mbnet.fi	1981	E	91308067	\N	\N	lainaaja	2015-05-13 11:12:51.128996+03
Jukka Alanko	91005027		bookofmagic@jippii.fi	1985	E	91005027	\N	\N	lainaaja	2015-05-13 11:12:51.150232+03
Lauri Alho	91408954		lauri.alho@gmail.com	1985	E	91408954	\N	\N	lainaaja	2015-05-13 11:12:51.16249+03
Toni Ali-Sisto	91308504	050 360 6485	tonial@student.uef.fi	1990	E	91308504	\N	\N	lainaaja	2015-05-13 11:12:51.170531+03
Petteri Alvinen	91308083	040 715 9818	peetteri_88@hotmail.com	1988	E	91308083	\N	\N	lainaaja	2015-05-13 11:12:51.200064+03
Tapani Anttila	91005166	050 305 3199	mr.tapani.anttila@gmail.com	1982	E	91005166	\N	\N	lainaaja	2015-05-13 11:12:51.22072+03
Keijo Arajärvi	91206677	040 527 8657	karajarv@gmail.com	1980	E	91206677	\N	\N	lainaaja	2015-05-13 11:12:51.229412+03
Markus Aranko	90904598	040 570 1979	markus@theterrene.net	1979	E	90904598	\N	\N	lainaaja	2015-05-13 11:12:51.237599+03
Taneli Armanto	91106162		taneli.armanto@gmail.com	1965	E	91106162	\N	\N	lainaaja	2015-05-13 11:12:51.245919+03
Tapio Aropaltio	91207485	050 511 9217	tapio.aropaltio@elisanet.fi	1995	E	91207485	\N	\N	lainaaja	2015-05-13 11:12:51.254305+03
Jani Arponen	90602269	0400 669 321	jarponen@gmail.com	1974	E	90602269	\N	\N	lainaaja	2015-05-13 11:12:51.262559+03
Mikko Asikainen	91004866	050 430 5779	mikko.p.asikainen@uef.fi	1982	E	91004866	\N	\N	lainaaja	2015-05-13 11:12:51.270982+03
Mirja Aukee-Peiponen	91410256	050 490 9165	mirja.aukee@helsinki.fi	1967	E	91410256	\N	\N	lainaaja	2015-05-13 11:12:51.279291+03
Tapani Aulu	91206871	050 405 1472	aulu@sci.fi	1981	E	91206871	\N	\N	lainaaja	2015-05-13 11:12:51.287443+03
Sami Ayvasik	90702541		sami.ayvasik.x@student.uta.fi	1988	E	90702541	\N	\N	lainaaja	2015-05-13 11:12:51.296421+03
Tom Björke	90601914	045 323 4466	tom.bjorke@iki.fi	1968	E	90601914	\N	\N	lainaaja	2015-05-13 11:12:51.304517+03
Henry Brade	91308041	050 368 5404	sabbe.the.technomage@gmail.com	1985	E	91308041	\N	\N	lainaaja	2015-05-13 11:12:51.312902+03
Robert Bregovic	90501001	040 747 6025	bregovic@cs.tut.fi	1970	E	90501001	\N	\N	lainaaja	2015-05-13 11:12:51.320538+03
Marco Bucci	91106447		bucci.marco@gmail.com	1982	E	91106447	\N	\N	lainaaja	2015-05-13 11:12:51.329366+03
Natalia Chtchepina	91308986		natalia.chtchepina@gmail.com	1983	E	91308986	\N	\N	lainaaja	2015-05-13 11:12:51.337481+03
Henrik Collin	91409937	0400 563 036	hcollin78@gmail.com	1978	E	91409937	\N	\N	lainaaja	2015-05-13 11:12:51.34591+03
Leena Eerola	90904475	040 575 4493	leena.e@hotmail.com	1980	E	90904475	\N	\N	lainaaja	2015-05-13 11:12:51.354449+03
Olli Eklund	90703032	050 520 2978	handipad@gmail.com	1978	E	90703032	\N	\N	lainaaja	2015-05-13 11:12:51.362432+03
Antti-Matti Ellä	91410049	040 865 5588	anttimattiella@gmail.com	1988	E	91410049	\N	\N	lainaaja	2015-05-13 11:12:51.370989+03
Joonas Eloranta	91308203	0400 925 225	joonas.eloranta@eng.tamk.fi	1988	E	91308203	\N	\N	lainaaja	2015-05-13 11:12:51.379214+03
Magnus Engblom	90500206	050 568 6917	mankka@iki.fi	1976	E	90500206	\N	\N	lainaaja	2015-05-13 11:12:51.387497+03
Stefan Engblom	90400092		sengblom@gmail.com	1981	E	90400092	\N	\N	lainaaja	2015-05-13 11:12:51.395905+03
Jan Englund	90904682	044 040 4044	englund.jan@gmail.com	1976	E	90904682	\N	\N	lainaaja	2015-05-13 11:12:51.404035+03
Mats Engsbo	91005250		mats.engsbo@pp.malax.fi	1974	E	91005250	\N	\N	lainaaja	2015-05-13 11:12:51.412735+03
Timo Enroos	91004992	040 842 4844	timo.enroos@niinimaki-enroos.fi	1963	E	91004992	\N	\N	lainaaja	2015-05-13 11:12:51.420688+03
Marianna Ferreira-Aulu	91206884	050 577 2103	maribmf@gmail.com	1986	E	91206884	\N	\N	lainaaja	2015-05-13 11:12:51.42956+03
Pascal Filoche	91005221		pascal.filoche@gmail.com	1974	E	91005221	\N	\N	lainaaja	2015-05-13 11:12:51.437471+03
Nicolas Fleury	91510402	040 576 9558	mr.fleury@gmail.com	1981	E	91510402	\N	\N	lainaaja	2015-05-13 11:12:51.445763+03
Virpi Flyktman	90601354		vmf@iki.fi	1969	E	90601354	\N	\N	lainaaja	2015-05-13 11:12:51.454328+03
Petri Forma	91410188	050 321 0853	petriforma@gmail.com	1961	E	91410188	\N	\N	lainaaja	2015-05-13 11:12:51.46232+03
Ferdinand Garoff	90803563		ferdinand.garoff@gmail.com	1975	E	90803563	\N	\N	lainaaja	2015-05-13 11:12:51.470613+03
Philippe Gelard	91510525	045 639 4238	philippeg.office@gmail.com	1979	E	91510525	\N	\N	lainaaja	2015-05-13 11:12:51.479156+03
Iraklis Grous	90904420	050 320 8640	iraklis.grous@gmail.com	1983	E	90904420	\N	\N	lainaaja	2015-05-13 11:12:51.487282+03
Seppo Grubert	91205720		sepe.grubert@gmail.com	1976	E	91205720	\N	\N	lainaaja	2015-05-13 11:12:51.49573+03
Olli Haajanen	91004989		olli.haajanen@helsinki.fi	1979	E	91004989	\N	\N	lainaaja	2015-05-13 11:12:51.504306+03
Risto Haapala	91207362	045 354 4115	jobez86@gmail.com	1986	E	91207362	\N	\N	lainaaja	2015-05-13 11:12:51.512731+03
Maija Haavisto	91510680	050 408 2931	maija@writeme.com	1984	E	91510680	\N	\N	lainaaja	2015-05-13 11:12:51.52094+03
Simo Haavisto	91409966		haavistosimo@gmail.com	1987	E	91409966	\N	\N	lainaaja	2015-05-13 11:12:51.529239+03
Johanna Haiko	90803709	050 338 0065	haiko.johanna@gmail.com	1981	E	90803709	\N	\N	lainaaja	2015-05-13 11:12:51.53725+03
Nino Hailuoto	91410214	050 454 4711	nhailuoto@gmail.com	1985	E	91410214	\N	\N	lainaaja	2015-05-13 11:12:51.546006+03
Rafael Hannula	91207155		hannula.rafael@gmail.com	1993	E	91207155	\N	\N	lainaaja	2015-05-13 11:12:51.554143+03
Ville Hannula	91004963	040 521 5816	ville.h.hannula@gmail.com	1978	E	91004963	\N	\N	lainaaja	2015-05-13 11:12:51.562399+03
Jani Harju	91207281	044 060 9903	janzu19_90@hotmail.com	1990	E	91207281	\N	\N	lainaaja	2015-05-13 11:12:51.570877+03
Miira Hartemo	91106227	044 298 1885	miira_auroora@hotmail.com	1985	E	91106227	\N	\N	lainaaja	2015-05-13 11:12:51.579+03
Karimatti Hautala	91206897	040 543 5883	kartsa@gmail.com	1982	E	91206897	\N	\N	lainaaja	2015-05-13 11:12:51.587431+03
Esa Hautanen	91409050		esahautanen@suomi24.fi	1985	E	91409050	\N	\N	lainaaja	2015-05-13 11:12:51.595811+03
Sami Heikkinen	91409102	040 353 8069	sami.v.heikkinen@gmail.com	1989	E	91409102	\N	\N	lainaaja	2015-05-13 11:12:51.604798+03
Teemu Heinimäki	91410078		tjheinimaki@gmail.com	1981	E	91410078	\N	\N	lainaaja	2015-05-13 11:12:51.612388+03
Juha Helminen	91308672		helminen.juha.h@student.uta.fi	1981	E	91308672	\N	\N	lainaaja	2015-05-13 11:12:51.622035+03
Veli Hemming	91005247	050 480 0011	veli.v.hemming@jyu.fi	1988	E	91005247	\N	\N	lainaaja	2015-05-13 11:12:51.629159+03
Joosu Hertsi	91510570	041 507 5293	joosu.hertsi@gmail.com	1991	E	91510570	\N	\N	lainaaja	2015-05-13 11:12:51.637404+03
Jonna Hind	91106308	040 450 8679	jonna.hind@iki.fi	1976	E	91106308	\N	\N	lainaaja	2015-05-13 11:12:51.646707+03
Jukka Hintikka	91207223	050 574 2984	paivanimurmelina@hotmail.com	1989	E	91207223	\N	\N	lainaaja	2015-05-13 11:12:51.654755+03
Kari Hoffren	91308708		kari.hoffren@gmail.com	1986	E	91308708	\N	\N	lainaaja	2015-05-13 11:12:51.662684+03
Eero Holmlund	91307893		eero.holmlund@savonia.fi	1975	E	91307893	\N	\N	lainaaja	2015-05-13 11:12:51.670818+03
Anttoni Huhtala	90500866	050 341 2221	anttoni.huhtala@iki.fi	1980	E	90500866	\N	\N	lainaaja	2015-05-13 11:12:51.679921+03
Tero Huomo	91308342	040 776 2097	terohuomo@gmail.com	1989	E	91308342	\N	\N	lainaaja	2015-05-13 11:12:51.687437+03
Aki Huovinen	91307712	050 591 6022	aki.j.huovinen@gmail.com	1982	E	91307712	\N	\N	lainaaja	2015-05-13 11:12:51.696091+03
Ville Hurmalainen	91005425		ville.hurmalainen@dlc.fi	1961	E	91005425	\N	\N	lainaaja	2015-05-13 11:12:51.704418+03
Jukka Huttunen	91206729	050 354 3131	jphuttun@gmail.com	1979	E	91206729	\N	\N	lainaaja	2015-05-13 11:12:51.713446+03
Riikka Huttunen	91004895		rhail@kapsi.fi	1984	E	91004895	\N	\N	lainaaja	2015-05-13 11:12:51.720674+03
Heikki Hyhkö	90602285		hyhko@cc.helsinki.fi	1968	E	90602285	\N	\N	lainaaja	2015-05-13 11:12:51.729251+03
Lasse Hynninen	91408909	040 594 0766	lasse.hynninen@gmail.com	1980	E	91408909	\N	\N	lainaaja	2015-05-13 11:12:51.737442+03
Aleksi Hynönen	91308656		hynonen.aleksi@gmail.com	1988	E	91308656	\N	\N	lainaaja	2015-05-13 11:12:51.745874+03
Joonas Hyttinen	91207171	050 372 5066	joonas.hyttinen@gmail.com	1991	E	91207171	\N	\N	lainaaja	2015-05-13 11:12:51.754247+03
Oskari Hyvönen	91410052		oskhyv@gmail.com	1990	E	91410052	\N	\N	lainaaja	2015-05-13 11:12:51.762361+03
Antti Hyyryläinen	91410146	050 525 6009	deewhistler@hotmail.com	1978	E	91410146	\N	\N	lainaaja	2015-05-13 11:12:51.770798+03
Mikko Hyökki	91207074	040 829 8918	mhyokki@gmail.com	1970	E	91207074	\N	\N	lainaaja	2015-05-13 11:12:51.779466+03
Tero Hyötyläinen	90400034		tero.hyotylainen@gmail.com	1977	E	90400034	\N	\N	lainaaja	2015-05-13 11:12:51.787809+03
Aaro Häkkinen	90903803	045 631 2036	aaro.hakkinen@gmail.com	1988	E	90903803	\N	\N	lainaaja	2015-05-13 11:12:51.795927+03
Marja Hämäläinen	91409021	040 531 1198	marjap.hamalainen@gmail.com	1982	E	91409021	\N	\N	lainaaja	2015-05-13 11:12:51.804934+03
Mikko Hänninen	91105781	050 465 2539	mikhanni@outlook.com	1988	E	91105781	\N	\N	lainaaja	2015-05-13 11:12:51.812536+03
Niko Hänninen	91105752		radnike@gmail.com	1992	E	91105752	\N	\N	lainaaja	2015-05-13 11:12:51.820794+03
Nina Hänninen	91105817	040 583 8930	ninahanninen@gmail.com	1987	E	91105817	\N	\N	lainaaja	2015-05-13 11:12:51.829311+03
Vesa Hätinen	91308559	050 538 6288	vesa_hatinen@yahoo.com	1977	E	91308559	\N	\N	lainaaja	2015-05-13 11:12:51.83743+03
Arttu Häyhä	90500659	050 596 5335	arttu.hayha@gmail.com	1975	E	90500659	\N	\N	lainaaja	2015-05-13 11:12:51.846146+03
Jani Höglund	90500743		moo@kapsi.fi	1974	E	90500743	\N	\N	lainaaja	2015-05-13 11:12:51.854303+03
Tommi Hölttä	91206868	045 113 6580	tommi.holtta@phnet.fi	1983	E	91206868	\N	\N	lainaaja	2015-05-13 11:12:51.862564+03
Tarja Iivonen	91308591	040 527 6214	tarja.r.iivonen@gmail.com	1961	E	91308591	\N	\N	lainaaja	2015-05-13 11:12:51.871744+03
Antti Ilmavirta	91410065	050 329 1165	antti.ilmavirta@iki.fi	1985	E	91410065	\N	\N	lainaaja	2015-05-13 11:12:51.879302+03
Eetu Immonen	91105888		eetu.immonen@gmail.com	1986	E	91105888	\N	\N	lainaaja	2015-05-13 11:12:51.887582+03
Tomas Ingo	91004950	050 591 2460	tomas.ingo@gmail.com	1988	E	91004950	\N	\N	lainaaja	2015-05-13 11:12:51.895976+03
Markus Inkeri	91206651	040 701 5877	markus.inkeri@gmail.com	1980	E	91206651	\N	\N	lainaaja	2015-05-13 11:12:51.904141+03
Ville Inkiläinen	90500594		inkilainen@hotmail.com	1983	E	90500594	\N	\N	lainaaja	2015-05-13 11:12:51.912598+03
Antti Isohella	91410191	044 972 5278	antti.isohella@gmail.com	1983	E	91410191	\N	\N	lainaaja	2015-05-13 11:12:51.920575+03
Jarkko Isola	91308151	050 301 0521	jakke86@gmail.com	1986	E	91308151	\N	\N	lainaaja	2015-05-13 11:12:51.92926+03
Timo Isola	90803398	0400 473 696	timo.isola@gmail.com	1982	E	90803398	\N	\N	lainaaja	2015-05-13 11:12:51.937501+03
Veli-Matti Jaakkola	90602227	0400 330 224	masa.jaakkola@gmail.com	1982	E	90602227	\N	\N	lainaaja	2015-05-13 11:12:51.946493+03
Veli-Pekka Jaakkola	91307660	040 867 5717	polvilumpio@sci.fi	1979	E	91307660	\N	\N	lainaaja	2015-05-13 11:12:51.954328+03
Essi Jaakkonen	91307945	040 515 5470	essinen1@gmail.com	1982	E	91307945	\N	\N	lainaaja	2015-05-13 11:12:51.962552+03
Markku Jaatinen	90500510	040 587 2713	markku.jaatinen@teliasonera.com	1965	E	90500510	\N	\N	lainaaja	2015-05-13 11:12:51.971009+03
Akseli Jalava	91308520	040 719 3277	axu.echo@hotmail.com	1986	E	91308520	\N	\N	lainaaja	2015-05-13 11:12:51.979311+03
Otto Jokelainen	91409131		ottoj@student.uef.fi	1990	E	91409131	\N	\N	lainaaja	2015-05-13 11:12:51.988328+03
Jarno Jokinen	91005522	045 264 3234	jarno.jokinen@iki.fi	1978	E	91005522	\N	\N	lainaaja	2015-05-13 11:12:51.996302+03
Misa Jokisalo	91510868	044 284 3289	misa.jokisalo@gmail.com	1990	E	91510868	\N	\N	lainaaja	2015-05-13 11:12:52.004255+03
Olli Juhala	91409759	041 535 6556	olli.juhala@gmail.com	1982	E	91409759	\N	\N	lainaaja	2015-05-13 11:12:52.012488+03
Mikko Julén	91005001	040 579 9842	mikko.julen@gmail.com	1986	E	91005001	\N	\N	lainaaja	2015-05-13 11:12:52.020668+03
Juha Julkunen	91106573	0400 452 045	jysky.jouni@gmail.com	1986	E	91106573	\N	\N	lainaaja	2015-05-13 11:12:52.029296+03
Saku Junni	91510936	040 540 6255	saku.junni@pp1.inet.fi	1986	E	91510936	\N	\N	lainaaja	2015-05-13 11:12:52.037541+03
Katja Junttila	91207427	050 377 3082	katja.junttila@helsinki.fi	1982	E	91207427	\N	\N	lainaaja	2015-05-13 11:12:52.046144+03
Murad Juraev	91005687		muradju@outlook.com	1977	E	91005687	\N	\N	lainaaja	2015-05-13 11:12:52.053999+03
Suvi Juutilainen	91207317		suikku81@gmail.com	1981	E	91207317	\N	\N	lainaaja	2015-05-13 11:12:52.062672+03
Aki Järvi-Eskola	91005179		northburns@gmail.com	1987	E	91005179	\N	\N	lainaaja	2015-05-13 11:12:52.070788+03
Jyri Järvinen	91206541	040 744 0218	jyri.jarvinen@hotmail.com	1991	E	91206541	\N	\N	lainaaja	2015-05-13 11:12:52.0794+03
Mikko Järvinen	91308025	050 463 9007	bbird190@gmail.com	1982	E	91308025	\N	\N	lainaaja	2015-05-13 11:12:52.088094+03
Juha Jääskeläinen	91307877	044 722 7097	juha.jaaskelainen@gmail.com	1976	E	91307877	\N	\N	lainaaja	2015-05-13 11:12:52.096502+03
Miiro Jääskeläinen	91409704	040 744 9263	miiro.jaaskelainen@helsinki.fi	1987	E	91409704	\N	\N	lainaaja	2015-05-13 11:12:52.104052+03
Atro Kajaste	90500646	050 327 5720	atro.kajaste@iki.fi	1976	E	90500646	\N	\N	lainaaja	2015-05-13 11:12:52.112686+03
Ilari Kajaste	90500170	044 367 4422	ilari.kajaste@iki.fi	1981	E	90500170	\N	\N	lainaaja	2015-05-13 11:12:52.120904+03
Eero Kalliala	90803314		eero.kalliala@gmail.com	1982	E	90803314	\N	\N	lainaaja	2015-05-13 11:12:52.129388+03
Sami Kallioinen	90702460		sami.kallioinen@welho.com	1969	E	90702460	\N	\N	lainaaja	2015-05-13 11:12:52.137497+03
Satu Kangas	91410227		satu.mmk@gmail.com	1985	E	91410227	\N	\N	lainaaja	2015-05-13 11:12:52.146183+03
Tapio Kangasaho	91207595	040 503 5953	tapiok1@mbnet.fi	1968	E	91207595	\N	\N	lainaaja	2015-05-13 11:12:52.154472+03
Mikko Kankainen	91307864	0400 530 312	kankainen.mikko@luukku.com	1988	E	91307864	\N	\N	lainaaja	2015-05-13 11:12:52.162595+03
Tuomo Kareoja	91106298	050 570 1218	tuomo.kareoja@helsinki.fi	1986	E	91106298	\N	\N	lainaaja	2015-05-13 11:12:52.170784+03
Antti Karjalainen	91408941	041 436 9895	klavian@luukku.com	1986	E	91408941	\N	\N	lainaaja	2015-05-13 11:12:52.179485+03
Pasi Karjalainen	91308300	040 718 2748	karjalainen.pasi@gmail.com	1971	E	91308300	\N	\N	lainaaja	2015-05-13 11:12:52.187531+03
Justus Kelloniemi	90803262	044 541 9041	justus.kelloniemi@vaasa.fi	1969	E	90803262	\N	\N	lainaaja	2015-05-13 11:12:52.195989+03
Jari Kemppainen	91005658		jari.kemppainen@vero.fi	1966	E	91005658	\N	\N	lainaaja	2015-05-13 11:12:52.204087+03
Teemu Kemppainen	91308009	044 554 3350	kemppainen.teemu@dnainternet.net	1971	E	91308009	\N	\N	lainaaja	2015-05-13 11:12:52.212778+03
Juhana Keskinen	90803246	040 726 5940	juhkeski@hotmail.com	1977	E	90803246	\N	\N	lainaaja	2015-05-13 11:12:52.220781+03
Juha Kettunen	91005399	040 563 9581	juha.kettunen@gmail.com	1973	E	91005399	\N	\N	lainaaja	2015-05-13 11:12:52.229238+03
Tapio Kilpiä	91308135	044 032 2280	tapio.kilpia@gmail.com	1989	E	91308135	\N	\N	lainaaja	2015-05-13 11:12:52.237399+03
Topi Kilpiäinen	90904006	040 588 2013	toby.kilpia@hotmail.com	1985	E	90904006	\N	\N	lainaaja	2015-05-13 11:12:52.246059+03
Miika Kirjavainen	90904705	040 540 0772	miika.kirjavainen@pp.inet.fi	1971	E	90904705	\N	\N	lainaaja	2015-05-13 11:12:52.254722+03
Maria Kivilaakso	91106353	040 709 0358	maria.kivilaakso@gmail.com	1988	E	91106353	\N	\N	lainaaja	2015-05-13 11:12:52.262525+03
Tuomas Kiviluoto	91005373		kiviluotot@gmail.com	1982	E	91005373	\N	\N	lainaaja	2015-05-13 11:12:52.27075+03
Arto Klami	90500882	050 582 3654	arto.klami@gmail.com	1978	E	90500882	\N	\N	lainaaja	2015-05-13 11:12:52.279376+03
Antti Koistinen	91409076	041 507 3211	kanavakaani_74@yahoo.com	1974	E	91409076	\N	\N	lainaaja	2015-05-13 11:12:52.287478+03
Jani Koistiola	90702538	044 545 0313	koistiola@gmail.com	1982	E	90702538	\N	\N	lainaaja	2015-05-13 11:12:52.295806+03
Hideki Koivisto	90702554	045 121 2992	radagast@mbnet.fi	1984	E	90702554	\N	\N	lainaaja	2015-05-13 11:12:52.304467+03
Arto Koivistoinen	91409115		juniori@kapsi.fi	1981	E	91409115	\N	\N	lainaaja	2015-05-13 11:12:52.31264+03
Niko Koivumaa	91409953		niko_koivumaa@yahoo.com	1974	E	91409953	\N	\N	lainaaja	2015-05-13 11:12:52.321104+03
Lauri Koivunen	91410159	044 012 1214	ljm.koivunen@gmail.com	1999	E	91410159	\N	\N	lainaaja	2015-05-13 11:12:52.32935+03
Marko Koivusalo	91409733	040 704 4359	marko.koivusalo@gmail.com	1980	E	91409733	\N	\N	lainaaja	2015-05-13 11:12:52.33788+03
Janne Kokkola	91308478		razzeli@gmail.com	1983	E	91308478	\N	\N	lainaaja	2015-05-13 11:12:52.346026+03
Harri Kokkonen	91005276	050 349 5484	abzone@gmail.com	1987	E	91005276	\N	\N	lainaaja	2015-05-13 11:12:52.354512+03
Kalle Kokkonen	90602243		kalle.kokkonen@iki.fi	1983	E	90602243	\N	\N	lainaaja	2015-05-13 11:12:52.362615+03
Ville Koli	90803408	050 592 5484	ville.koli@iki.fi	1971	E	90803408	\N	\N	lainaaja	2015-05-13 11:12:52.371188+03
Antti Konola	91106133	040 777 2119	anaksimandros@hotmail.com	1973	E	91106133	\N	\N	lainaaja	2015-05-13 11:12:52.379381+03
Jani Kontkanen	91005289		jani.kontkanen@gmail.com	1981	E	91005289	\N	\N	lainaaja	2015-05-13 11:12:52.387482+03
Sami Koponen	90601341		sami.johannes.koponen@gmail.com	1984	E	90601341	\N	\N	lainaaja	2015-05-13 11:12:52.396567+03
Topi Koponen	91207304		topula@gmail.com	1988	E	91207304	\N	\N	lainaaja	2015-05-13 11:12:52.404282+03
Mika Korhonen	90702318		mika.j.korhonen@gmail.com	1974	E	90702318	\N	\N	lainaaja	2015-05-13 11:12:52.413004+03
Timo Korkama	91207142	040 543 1774	latrosurdus@hotmail.com	1984	E	91207142	\N	\N	lainaaja	2015-05-13 11:12:52.421458+03
Aaron Kortteenniemi	91309008	044 527 8898	aaronin.oma@gmail.com	1988	E	91309008	\N	\N	lainaaja	2015-05-13 11:12:52.429968+03
Antti Koskinen	90601817	050 338 1483	antti@anttikoskinen.com	1981	E	90601817	\N	\N	lainaaja	2015-05-13 11:12:52.43747+03
Janne Koskinen	90501085		jjkoskin@netti.fi	1979	E	90501085	\N	\N	lainaaja	2015-05-13 11:12:52.446155+03
Toni Koskinen	91510897	040 869 9538	toni.koskinen@gmail.com	1990	E	91510897	\N	\N	lainaaja	2015-05-13 11:12:52.454257+03
Tuomas Koskinen	91206790	050 912 0406	spoon@iki.fi	1976	E	91206790	\N	\N	lainaaja	2015-05-13 11:12:52.462753+03
Timo Kosonen	91308533	040 764 0203	timo.kosonen@helsinki.fi	1980	E	91308533	\N	\N	lainaaja	2015-05-13 11:12:52.470947+03
Sami Kujala	91106081	040 537 9116	sami.kujala@saunalahti.fi	1974	E	91106081	\N	\N	lainaaja	2015-05-13 11:12:52.479915+03
Joni Kukkonen	90903984	040 527 5194	joni.kukkonen@kolumbus.fi	1967	E	90903984	\N	\N	lainaaja	2015-05-13 11:12:52.487735+03
Matias Kullström	91106337	040 846 4638	matias_kullstrom@hotmail.com	1986	E	91106337	\N	\N	lainaaja	2015-05-13 11:12:52.496016+03
Mikaela Kumlander	90500879		fay@iki.fi	1980	E	90500879	\N	\N	lainaaja	2015-05-13 11:12:52.50422+03
Soila Kuuluvainen	90601435		soila.kuuluvainen@gmail.com	1981	E	90601435	\N	\N	lainaaja	2015-05-13 11:12:52.513528+03
Harry-Pekka Kuusela	90703003	050 587 4066	hakuus@gmail.com	1975	E	90703003	\N	\N	lainaaja	2015-05-13 11:12:52.521043+03
Antero Kuusi	91307806	040 356 0277	akuusi@iki.fi	1980	E	91307806	\N	\N	lainaaja	2015-05-13 11:12:52.529297+03
Aleksi Kähärä	91409665	040 544 7687	aleksi.kahara@gmail.com	1983	E	91409665	\N	\N	lainaaja	2015-05-13 11:12:52.538002+03
Olli Kärkkäinen	91106272	040 566 2632	paattymaton@gmail.com	1985	E	91106272	\N	\N	lainaaja	2015-05-13 11:12:52.54609+03
Katri Könönen	90500905	044 021 9915	katri.kononen@gmail.com	1983	E	90500905	\N	\N	lainaaja	2015-05-13 11:12:52.554832+03
Heikki Laakkonen	91207650	044 338 9331	hessens@hotmail.com	1988	E	91207650	\N	\N	lainaaja	2015-05-13 11:12:52.562768+03
Petteri Laakkonen	90903861	040 715 3947	poooppi@hotmail.com	1981	E	90903861	\N	\N	lainaaja	2015-05-13 11:12:52.570923+03
Sari Laakso	91206981		sari_laakso@hotmail.com	1966	E	91206981	\N	\N	lainaaja	2015-05-13 11:12:52.579411+03
Sami Laaksonen	91308818		sami.valtteri@gmail.com	1983	E	91308818	\N	\N	lainaaja	2015-05-13 11:12:52.587893+03
Teemu Laaksonen	90703029		teemu.s.laaksonen@kotikone.fi	1978	E	90703029	\N	\N	lainaaja	2015-05-13 11:12:52.595877+03
Jarkko Laiho	91510732	044 082 9932	jarkko@laiho.co	1980	E	91510732	\N	\N	lainaaja	2015-05-13 11:12:52.604672+03
Juha Laine	90904381		jlaine8@hotmail.com	1980	E	90904381	\N	\N	lainaaja	2015-05-13 11:12:52.6127+03
Pasi Lallinaho	91206622	041 523 5865	pasi@lallinaho.fi	1986	E	91206622	\N	\N	lainaaja	2015-05-13 11:12:52.621272+03
Kalle Lamberg	91500920	040 522 9074	kallelamberg@gmail.com	1974	E	91500920	\N	\N	lainaaja	2015-05-13 11:12:52.629423+03
Timo Lamminen	90601930	045 327 5668	timo.lamminen@vsmedia.fi	1978	E	90601930	\N	\N	lainaaja	2015-05-13 11:12:52.637445+03
Pertti Lampila	91308630	050 486 9355	perlamp1@saunalahti.fi	1947	E	91308630	\N	\N	lainaaja	2015-05-13 11:12:52.646249+03
Max Lampinen	91307987		max.lampinen@gmail.com	1991	E	91307987	\N	\N	lainaaja	2015-05-13 11:12:52.654365+03
Tommi Lantta	90803741		tommi.lantta@kolumbus.fi	1979	E	90803741	\N	\N	lainaaja	2015-05-13 11:12:52.662769+03
Matias Lappi	91510376	040 163 4363	lappimatias@gmail.com	1991	E	91510376	\N	\N	lainaaja	2015-05-13 11:12:52.670988+03
Samu Lattu	91106450	050 375 7234	samu.lattu@gmail.com	1988	E	91106450	\N	\N	lainaaja	2015-05-13 11:12:52.679414+03
Eetu Laukka	91308287	0400 295 075	scoopart@hotmail.com	1991	E	91308287	\N	\N	lainaaja	2015-05-13 11:12:52.687832+03
Jarkko Laurila	91207566	040 731 9949	platinakettu@netikka.fi	1977	E	91207566	\N	\N	lainaaja	2015-05-13 11:12:52.696036+03
Rafael Leal	90702994	040 777 3332	raaf@gmx.com	1980	E	90702994	\N	\N	lainaaja	2015-05-13 11:12:52.704435+03
Antti Lehmusjärvi	90500154	050 536 5320	antleh@windowslive.com	1975	E	90500154	\N	\N	lainaaja	2015-05-13 11:12:52.712611+03
Sami-Pekka Lehmuskoski	91207126		sami.lehmuskoski@gmail.com	1988	E	91207126	\N	\N	lainaaja	2015-05-13 11:12:52.720916+03
Kristiina Lehto	91207689		krissu.lehto@gmail.com	1986	E	91207689	\N	\N	lainaaja	2015-05-13 11:12:52.729426+03
Tuomas Lehto	90803602	044 578 9870	tuomasklehto@gmail.com	1980	E	90803602	\N	\N	lainaaja	2015-05-13 11:12:52.737696+03
Olavi Lehtola	91408912	040 778 6166	olli.lehtola@gmail.com	1982	E	91408912	\N	\N	lainaaja	2015-05-13 11:12:52.746206+03
Ville Lehtola	90602117	044 559 3611	ville.lehtola@iki.fi	1980	E	90602117	\N	\N	lainaaja	2015-05-13 11:12:52.75425+03
Hanna Leikas	91005616	040 744 0757	hannakristiina@gmx.com	1982	E	91005616	\N	\N	lainaaja	2015-05-13 11:12:52.762811+03
Arto Leinonen	91308449	050 535 0415	arwin.goodman@gmail.com	1989	E	91308449	\N	\N	lainaaja	2015-05-13 11:12:52.771185+03
Matti Leinonen	91207676	045 675 3531	matti.leinonen@netti.fi	1988	E	91207676	\N	\N	lainaaja	2015-05-13 11:12:52.779558+03
Mika Leinonen	90702716		mikleino@outlook.com	1978	E	90702716	\N	\N	lainaaja	2015-05-13 11:12:52.787929+03
Virpi Leinonen	91308724	040 764 4052	virpye@gmail.com	1990	E	91308724	\N	\N	lainaaja	2015-05-13 11:12:52.796045+03
Kimmo Leivo	91004772	041 436 7559	kimmo.leivo@gmail.com	1977	E	91004772	\N	\N	lainaaja	2015-05-13 11:12:52.80417+03
Mikael Leminen	91206923	040 756 5387	mikaelleminen@gmail.com	1987	E	91206923	\N	\N	lainaaja	2015-05-13 11:12:52.812756+03
Pekka Lempola	90702897	045 657 5003	plempola@gmail.com	1963	E	90702897	\N	\N	lainaaja	2015-05-13 11:12:52.821259+03
Mika Lemström	90500455	050 467 4937	mikalem@gmail.com	1985	E	90500455	\N	\N	lainaaja	2015-05-13 11:12:52.829555+03
Matti Lenkkeri	91308106		matti.lenkkeri@wippies.fi	1988	E	91308106	\N	\N	lainaaja	2015-05-13 11:12:52.837509+03
Pierre-Emmanuel Leonard	90904624	045 235 5395	pierem_leonard@yahoo.fr	1980	E	90904624	\N	\N	lainaaja	2015-05-13 11:12:52.846475+03
Marko Lepola	90500662	040 555 6868	marko.lepola@uta.fi	1975	E	90500662	\N	\N	lainaaja	2015-05-13 11:12:52.854255+03
Tero Leppikangas	91510428	050 599 8743	tero.leppikangas@iki.fi	1978	E	91510428	\N	\N	lainaaja	2015-05-13 11:12:52.862822+03
Juha-Matti Leppälä	91308546		juha.leppala@sci.fi	1981	E	91308546	\N	\N	lainaaja	2015-05-13 11:12:52.871009+03
Tuomas Lesonen	91005056	040 839 7334	jalmardo@gmail.com	1978	E	91005056	\N	\N	lainaaja	2015-05-13 11:12:52.879362+03
Timo Liimatta	91106434	045 327 5668	timo.liimatta@gmail.com	1982	E	91106434	\N	\N	lainaaja	2015-05-13 11:12:52.887935+03
Timo Lindi	91207621	040 707 4605	timo.lindi@gmail.com	1969	E	91207621	\N	\N	lainaaja	2015-05-13 11:12:52.896048+03
Jukka Lindström	91510842	045 670 9740	jukka.lindstrom@iki.fi	1977	E	91510842	\N	\N	lainaaja	2015-05-13 11:12:52.904198+03
Juha Lintula	91308148		juha.lintula@gmail.com	1975	E	91308148	\N	\N	lainaaja	2015-05-13 11:12:52.912849+03
Mikko Litmanen	91408873		mikko.litmanen123@gmail.com	1986	E	91408873	\N	\N	lainaaja	2015-05-13 11:12:52.921028+03
Kalle Lunkka	91408899	050 357 0179	lunkka.kalle@gmail.com	1983	E	91408899	\N	\N	lainaaja	2015-05-13 11:12:52.929992+03
Matti Luostarinen	90601260		malulok@hotmail.com	1961	E	90601260	\N	\N	lainaaja	2015-05-13 11:12:52.93742+03
Tapani Löksy	91510910		errtu.constantine@gmail.com	1976	E	91510910	\N	\N	lainaaja	2015-05-13 11:12:52.946147+03
Petri Maaninen	90501072		petri.maaninen@iki.fi	1968	E	90501072	\N	\N	lainaaja	2015-05-13 11:12:52.954399+03
Tomi Majola	90904611		tomi.majola@helsinki.fi	1982	E	90904611	\N	\N	lainaaja	2015-05-13 11:12:52.962984+03
Kasperi Malinen	91510884	050 527 2251	kasperi.malinen@gmail.com	1980	E	91510884	\N	\N	lainaaja	2015-05-13 11:12:52.971327+03
Matti Malinen	91410010		mjm3.141@gmail.com	1985	E	91410010	\N	\N	lainaaja	2015-05-13 11:12:52.979355+03
Kalle Malmioja	90904129	040 746 1098	kalle.malmioja@gmail.com	1982	E	90904129	\N	\N	lainaaja	2015-05-13 11:12:52.987646+03
Esko Malmiola	91308368	040 730 3704	eskilway@gmail.com	1981	E	91308368	\N	\N	lainaaja	2015-05-13 11:12:53.004673+03
Risto Malmstedt	91106230	044 290 7337	risto.malmstedt@gmail.com	1981	E	91106230	\N	\N	lainaaja	2015-05-13 11:12:53.012769+03
Aedo Marchant	91207265		wenuitun@gmail.com	1983	E	91207265	\N	\N	lainaaja	2015-05-13 11:12:53.02111+03
Ulla Marila	91510651		ulla.marila@nerd.fi	1979	E	91510651	\N	\N	lainaaja	2015-05-13 11:12:53.029554+03
Kati Marjala	91105710	040 759 7694	kati@sconet.org	1980	E	91105710	\N	\N	lainaaja	2015-05-13 11:12:53.037906+03
Marko Marjamäki	91410036		marko.marjamaki@gmail.com	1970	E	91410036	\N	\N	lainaaja	2015-05-13 11:12:53.046122+03
Kalle Marjola	90500837	040 590 3022	kalle.marjola@iki.fi	1973	E	90500837	\N	\N	lainaaja	2015-05-13 11:12:53.054622+03
Alba Martin	90904556		aemart@utu.fi	1988	E	90904556	\N	\N	lainaaja	2015-05-13 11:12:53.063644+03
Henrik Marttinen	91207207		imhenrik@hotmail.com	1991	E	91207207	\N	\N	lainaaja	2015-05-13 11:12:53.071176+03
Anu Masalin	91410308	0400 211 510	anu.masalin@gmail.com	1960	E	91410308	\N	\N	lainaaja	2015-05-13 11:12:53.079481+03
Petrus Mertanen	91307903	040 483 9727	winglydarren@hotmail.com	1988	E	91307903	\N	\N	lainaaja	2015-05-13 11:12:53.088142+03
Aino Metsä	90702321	041 502 1315	ainometsa@suomi24.fi	1984	E	90702321	\N	\N	lainaaja	2015-05-13 11:12:53.096148+03
Juha Metsäkallas	90500183		juha.metsakallas@iki.fi	1967	E	90500183	\N	\N	lainaaja	2015-05-13 11:12:53.104463+03
Markus Meurman	90903971	040 525 2522	markus.meurman@gmail.com	1985	E	90903971	\N	\N	lainaaja	2015-05-13 11:12:53.112757+03
Eero Miettinen	90601545		eejiim@gmail.com	1970	E	90601545	\N	\N	lainaaja	2015-05-13 11:12:53.121546+03
Markus Miettinen	91206635		markus.miettinen@netti.fi	1982	E	91206635	\N	\N	lainaaja	2015-05-13 11:12:53.129381+03
Toni Miinalainen	91106175		miinalainen_toni@hotmail.com	1985	E	91106175	\N	\N	lainaaja	2015-05-13 11:12:53.137733+03
Anni Mikkonen	91307916	040 520 3003	anni.mikkonen@elisanet.fi	1993	E	91307916	\N	\N	lainaaja	2015-05-13 11:12:53.145952+03
Jani Moliis	90803068	041 469 6202	jani@moliis.org	1980	E	90803068	\N	\N	lainaaja	2015-05-13 11:12:53.154679+03
Tomi Mononen	90904051	044 719 3072	tomi.mononen@gmail.com	1982	E	90904051	\N	\N	lainaaja	2015-05-13 11:12:53.162873+03
Kim Morka	91510619	050 592 9544	ronin911fi@yahoo.com	1973	E	91510619	\N	\N	lainaaja	2015-05-13 11:12:53.170912+03
Petter Morottaja	90803738	0400 860 797	petter.morottaja@gmail.com	1982	E	90803738	\N	\N	lainaaja	2015-05-13 11:12:53.179286+03
Antti Muhonen	90904653	040 590 2087	antti.muhonen@hotmail.com	1977	E	90904653	\N	\N	lainaaja	2015-05-13 11:12:53.187785+03
Jenni Muhonen	90904132		jenni.e.muhonen@gmail.com	1984	E	90904132	\N	\N	lainaaja	2015-05-13 11:12:53.196126+03
Jyri Mustajoki	90904417	050 400 9887	jyri.mustajoki@gmail.com	1972	E	90904417	\N	\N	lainaaja	2015-05-13 11:12:53.221155+03
Mikko Mustonen	90904242		mikkotmustonen@gmail.com	1974	E	90904242	\N	\N	lainaaja	2015-05-13 11:12:53.229275+03
Ville Myllymaa	91510761	040 820 7058	myllymaa.ville@gmail.com	1984	E	91510761	\N	\N	lainaaja	2015-05-13 11:12:53.238072+03
Marko Mäenpää	91308834		finmaky@gmail.com	1970	E	91308834	\N	\N	lainaaja	2015-05-13 11:12:53.246132+03
Vili Mäkelä	91409694	044 510 0490	vili.makela@hotmail.com	1991	E	91409694	\N	\N	lainaaja	2015-05-13 11:12:53.254321+03
Olli Mäkiketola	90601503	050 306 3255	olli.makiketola@iki.fi	1980	E	90601503	\N	\N	lainaaja	2015-05-13 11:12:53.262642+03
Ritva Mäkinen	91410094		rituri89@hotmail.com	1989	E	91410094	\N	\N	lainaaja	2015-05-13 11:12:53.271004+03
Veli-Pekka Mäkinen	91307770	040 778 5758	velipekka.makinen@gmail.com	1980	E	91307770	\N	\N	lainaaja	2015-05-13 11:12:53.279449+03
Matti Mäkäräinen	90601477	050 384 8449	kezerk@kezerk.com	1969	E	90601477	\N	\N	lainaaja	2015-05-13 11:12:53.287772+03
Petteri Määttä	91510774	050 326 0838	petukkainen72@gmail.com	1972	E	91510774	\N	\N	lainaaja	2015-05-13 11:12:53.296352+03
Susanna Neiglick	91410243		susssus@iki.fi	1978	E	91410243	\N	\N	lainaaja	2015-05-13 11:12:53.304343+03
Henna Niemi	91410007		heanie@utu.fi	1992	E	91410007	\N	\N	lainaaja	2015-05-13 11:12:53.312883+03
Jarkko Nieminen	90904378	044 218 2181	jarkko.nieminen@gmail.com	1967	E	90904378	\N	\N	lainaaja	2015-05-13 11:12:53.320904+03
Jaakko Niiles	91308384	050 577 2865	jaakko.niiles@gmail.com	1983	E	91308384	\N	\N	lainaaja	2015-05-13 11:12:53.329425+03
Janne Niinivaara	91307767		janne.niinivaara@gmail.com	1977	E	91307767	\N	\N	lainaaja	2015-05-13 11:12:53.337554+03
Juha Niittynen	91409982		juha.niittynen@gmail.com	1985	E	91409982	\N	\N	lainaaja	2015-05-13 11:12:53.346264+03
Jarmo Nikumaa	91106104		jnikumaa@pp.inet.fi	1979	E	91106104	\N	\N	lainaaja	2015-05-13 11:12:53.355369+03
Riina Niskakangas	91410201		riina.niskakangas@gmail.com	1988	E	91410201	\N	\N	lainaaja	2015-05-13 11:12:53.362568+03
Mika Nissinen	91510350	040 938 7772	mika.nissinen@netti.fi	1977	E	91510350	\N	\N	lainaaja	2015-05-13 11:12:53.371169+03
Antti Normaja	91409144		antti.normaja@enfo.fi	1966	E	91409144	\N	\N	lainaaja	2015-05-13 11:12:53.379377+03
Toni Nummela	91510716	045 678 8892	ttrainer@gmail.com	1986	E	91510716	\N	\N	lainaaja	2015-05-13 11:12:53.388412+03
Markus Nuopponen	90400128	050 567 0901	markus@nuopponen.com	1975	E	90400128	\N	\N	lainaaja	2015-05-13 11:12:53.396119+03
Akseli Nurmio	91510703	040 506 1829	akseli@nurmio.fi	1994	E	91510703	\N	\N	lainaaja	2015-05-13 11:12:53.404792+03
Ari Nuutinen	91410269	040 739 2235	radikus@nesretro.com	1982	E	91410269	\N	\N	lainaaja	2015-05-13 11:12:53.430371+03
Juha Oinonen	91308423	040 170 5599	woodeyester@gmail.com	1984	E	91308423	\N	\N	lainaaja	2015-05-13 11:12:53.43763+03
Antti Ojala	91308643		anttiojala73@gmail.com	1986	E	91308643	\N	\N	lainaaja	2015-05-13 11:12:53.446211+03
Juho-Matti Ojala	91510486	045 114 5993	jmmojala@gmail.com	1988	E	91510486	\N	\N	lainaaja	2015-05-13 11:12:53.454606+03
Tuomas Ojala	91409827	050 347 3681	tuomas.o@gmail.com	1983	E	91409827	\N	\N	lainaaja	2015-05-13 11:12:53.463464+03
Ville Ojala	91409678	040 520 1738	vowen333@gmail.com	1987	E	91409678	\N	\N	lainaaja	2015-05-13 11:12:53.471042+03
Markus Oksanen	90803330	040 560 1985	markus.j.oksanen@helsinki.fi	1978	E	90803330	\N	\N	lainaaja	2015-05-13 11:12:53.479411+03
Markku Oksman	91308096		markku.oksman@gmail.com	1980	E	91308096	\N	\N	lainaaja	2015-05-13 11:12:53.487658+03
Jarno Oljakka	91510538		jarnooljakka@gmail.com	1977	E	91510538	\N	\N	lainaaja	2015-05-13 11:12:53.496302+03
Timo Ollikainen	91005454	045 323 4466	tollikainen@dnainternet.net	1975	E	91005454	\N	\N	lainaaja	2015-05-13 11:12:53.504286+03
Veli-Matti Orava	90904734		velgar.bloodwind@gmail.com	1986	E	90904734	\N	\N	lainaaja	2015-05-13 11:12:53.512893+03
Ville Outamaa	91308452	040 569 2583	ville.outamaa@gmail.com	1985	E	91308452	\N	\N	lainaaja	2015-05-13 11:12:53.520958+03
Margus Paananen	91510415		marguspaa@gmail.com	1986	E	91510415	\N	\N	lainaaja	2015-05-13 11:12:53.529767+03
Aleksi Pajunen	91004824	0400 846 253	aleksi.pajunen@gmail.com	1991	E	91004824	\N	\N	lainaaja	2015-05-13 11:12:53.537945+03
Joona Palaste	91409788	044 511 0111	joona.palaste@saunalahti.fi	1976	E	91409788	\N	\N	lainaaja	2015-05-13 11:12:53.54625+03
Janne Palmroos	91410311	050 303 1648	palmu77@gmail.com	1977	E	91410311	\N	\N	lainaaja	2015-05-13 11:12:53.554328+03
Johannes Parkkonen	91005014		pahannes@gmail.com	1984	E	91005014	\N	\N	lainaaja	2015-05-13 11:12:53.562933+03
Hannu Partanen	91510541	045 884 7902	hannu.parta@gmail.com	1991	E	91510541	\N	\N	lainaaja	2015-05-13 11:12:53.571067+03
Niko Pasanen	91207016	040 565 5677	niko@pasanen.me	1988	E	91207016	\N	\N	lainaaja	2015-05-13 11:12:53.580056+03
Tuomo Pekkanen	90904048	050 374 0592	tuomo.pekkanen@gmail.com	1978	E	90904048	\N	\N	lainaaja	2015-05-13 11:12:53.587922+03
Ville Pekonen	91207184	050 541 7930	skinmealive79@hotmail.com	1979	E	91207184	\N	\N	lainaaja	2015-05-13 11:12:53.595976+03
Santtu Pelkonen	91106117	040 577 2264	santtupelkonen@gmail.com	1981	E	91106117	\N	\N	lainaaja	2015-05-13 11:12:53.604248+03
Matti Peltola	90904158	041 530 0556	matti@eurosinkut.net	1966	E	90904158	\N	\N	lainaaja	2015-05-13 11:12:53.612942+03
Arttu Peltonen	91308588		peltonen.arttu@gmail.com	1990	E	91308588	\N	\N	lainaaja	2015-05-13 11:12:53.638005+03
Siv Pensar	90602120	044 363 4395	sivp1a9fi@gmail.com	1960	E	90602120	\N	\N	lainaaja	2015-05-13 11:12:53.646254+03
Kari Perho	91510648	050 595 1679	perho.kari@gmail.com	1982	E	91510648	\N	\N	lainaaja	2015-05-13 11:12:53.654381+03
Päivi Perkiö-Suominen	91005098		paivi.perkiosuominen@gmail.com	1978	E	91005098	\N	\N	lainaaja	2015-05-13 11:12:53.662891+03
Henna Perälä	91510839	040 724 2983	henna@blivet.fi	1983	E	91510839	\N	\N	lainaaja	2015-05-13 11:12:53.6712+03
Konstantin Petrukhnov	91510363	046 810 5468	konstantin.petrukhnov@gmail.com	1985	E	91510363	\N	\N	lainaaja	2015-05-13 11:12:53.679674+03
Matti Pieniniemi	91308847		odbeari@gmail.com	1988	E	91308847	\N	\N	lainaaja	2015-05-13 11:12:53.687703+03
Artturi Piipponen	91307709	050 501 0230	artturi.piipponen@gmail.com	1987	E	91307709	\N	\N	lainaaja	2015-05-13 11:12:53.696745+03
Harri Piispanen	91410117	050 592 9766	harri.piispanen@gmail.com	1981	E	91410117	\N	\N	lainaaja	2015-05-13 11:12:53.705304+03
Hanna Pilli	90601781		hanna.k.pilli@gmail.com	1984	E	90601781	\N	\N	lainaaja	2015-05-13 11:12:53.713125+03
Tapio Pilli	90702842		tapio.pilli@kamppailulajit.net	1983	E	90702842	\N	\N	lainaaja	2015-05-13 11:12:53.720967+03
Timo Pitkänen	90702729		timo.pitkanen@iki.fi	1981	E	90702729	\N	\N	lainaaja	2015-05-13 11:12:53.737861+03
Inka Plit	91105859		konna@biomi.org	1981	E	91105859	\N	\N	lainaaja	2015-05-13 11:12:53.74616+03
Timo Pohja	91005140	040 867 5717	pohjatk@gmail.com	1982	E	91005140	\N	\N	lainaaja	2015-05-13 11:12:53.754895+03
David Price	90400131	050 483 7282	david.price@iki.fi	1966	E	90400131	\N	\N	lainaaja	2015-05-13 11:12:53.762822+03
Akseli Pulkkinen	90803372	050 588 2126	akselipulkkinen@gmail.com	1983	E	90803372	\N	\N	lainaaja	2015-05-13 11:12:53.771378+03
Kristian Pulkkinen	91410104	040 724 5466	kurisu@iki.fi	1984	E	91410104	\N	\N	lainaaja	2015-05-13 11:12:53.779641+03
Tuomas Pulliainen	91206716	050 414 6349	tuomas.pulliainen@gmail.com	1977	E	91206716	\N	\N	lainaaja	2015-05-13 11:12:53.787872+03
Piia Puranen	91409047	040 706 4016	piia_puranen@hotmail.com	1987	E	91409047	\N	\N	lainaaja	2015-05-13 11:12:53.796148+03
Tommi Pylkkänen	91510758	050 911 6348	tommi.pylkkanen@gmail.com	1977	E	91510758	\N	\N	lainaaja	2015-05-13 11:12:53.804846+03
Jari Raaska	90702431		sfwjari@gmail.com	1971	E	90702431	\N	\N	lainaaja	2015-05-13 11:12:53.81273+03
Petteri Raatikainen	91510622	040 188 4077	haperaa@gmail.com	1964	E	91510622	\N	\N	lainaaja	2015-05-13 11:12:53.820955+03
Jalmari Raippalinna	90904352	040 822 9103	jalmari.raippalinna@gmail.com	1978	E	90904352	\N	\N	lainaaja	2015-05-13 11:12:53.829736+03
Ossi Rajala	91308481	040 844 9798	ossi.m.s.rajala@gmail.com	1989	E	91308481	\N	\N	lainaaja	2015-05-13 11:12:53.837773+03
Jari Rannikko	91308711		jari.rannikko@suomi24.fi	1974	E	91308711	\N	\N	lainaaja	2015-05-13 11:12:53.846152+03
Tommi Ranta	91308737	040 741 6696	tommi.ranta@gmail.com	1982	E	91308737	\N	\N	lainaaja	2015-05-13 11:12:53.854641+03
Taro Rauhala	91005645	040 707 1883	znakebitex@gmail.com	1987	E	91005645	\N	\N	lainaaja	2015-05-13 11:12:53.86363+03
Mikko Raunio	90602256		mpj.raunio@gmail.com	1980	E	90602256	\N	\N	lainaaja	2015-05-13 11:12:53.870955+03
Jan Rautio	91307725		jan.rautio@noahpl.com	1961	E	91307725	\N	\N	lainaaja	2015-05-13 11:12:53.879474+03
Raisa Rautiola	91510826	040 833 2322	raisa.rautiola@gmail.com	1987	E	91510826	\N	\N	lainaaja	2015-05-13 11:12:53.887896+03
Juho Reivo	91308627		juho.reivo@gmail.com	1979	E	91308627	\N	\N	lainaaja	2015-05-13 11:12:53.896376+03
Lars Remes	90500387	040 840 5140	lars.remes@gmail.com	1975	E	90500387	\N	\N	lainaaja	2015-05-13 11:12:53.904437+03
Sanna Remes	90500374		sanna.remes@puheterapeutti.fi	1978	E	90500374	\N	\N	lainaaja	2015-05-13 11:12:53.913091+03
Simo Rinkinen	92009653	050 591 2200	simo.rinkinen@iki.fi	1977	E	92009653	\N	\N	lainaaja	2015-05-13 11:12:53.922437+03
Mikko Rintala	91308698	045 863 7878	mjrint@gmail.com	1982	E	91308698	\N	\N	lainaaja	2015-05-13 11:12:53.92964+03
Sampsa Ritvanen	91105914	040 708 2148	sampsa.ritvanen@gmail.com	1988	E	91105914	\N	\N	lainaaja	2015-05-13 11:12:53.946255+03
Petri Roikonen	91408938	040 708 2928	petri.roikonen@helsinki.fi	1988	E	91408938	\N	\N	lainaaja	2015-05-13 11:12:53.954421+03
Henri Roni	91409681	050 408 6404	henri.roni@gmail.com	1986	E	91409681	\N	\N	lainaaja	2015-05-13 11:12:53.963077+03
Tuomas Rossi	91308229		tuomas.rossi@aalto.fi	1988	E	91308229	\N	\N	lainaaja	2015-05-13 11:12:53.971345+03
Aamos Ruha	91307990	040 718 0247	aamos.ruha@gmail.com	1987	E	91307990	\N	\N	lainaaja	2015-05-13 11:12:53.979601+03
Mikko Ruohomäki	90702651	050 548 4921	mikko.ruohomaki@gmail.com	1979	E	90702651	\N	\N	lainaaja	2015-05-13 11:12:53.987881+03
Ari Ruusunen	91005072	044 535 3349	ari.ruusunen@dnainternet.net	1970	E	91005072	\N	\N	lainaaja	2015-05-13 11:12:53.996047+03
Ilkka Rytkönen	91308216	045 856 5800	ilkka.rytkonen@pp.inet.fi	1981	E	91308216	\N	\N	lainaaja	2015-05-13 11:12:54.004337+03
Miikka Rytty	90500581	044 560 6956	miikkary@gmail.com	1981	E	90500581	\N	\N	lainaaja	2015-05-13 11:12:54.01299+03
Esa Ryömä	91308575	040 960 7463	esa.ryoma@gmail.com	1984	E	91308575	\N	\N	lainaaja	2015-05-13 11:12:54.021092+03
Oskari Räsänen	91409128	040 723 9581	rasanen.oskari@gmail.com	1991	E	91409128	\N	\N	lainaaja	2015-05-13 11:12:54.030142+03
Raine Rönnholm	90904310	040 583 8920	raine_r@hotmail.com	1987	E	90904310	\N	\N	lainaaja	2015-05-13 11:12:54.037675+03
Perttu Saalasti	90500620	040 768 6861	perttu.saalasti@kolumbus.fi	1977	E	90500620	\N	\N	lainaaja	2015-05-13 11:12:54.054818+03
Tommi Saarainen	91207456		s153406@yahoo.com	1975	E	91207456	\N	\N	lainaaja	2015-05-13 11:12:54.062942+03
Matti Saarenketo	90904446	0400 770 968	matti.v.saarenketo@gmail.com	1988	E	90904446	\N	\N	lainaaja	2015-05-13 11:12:54.071133+03
Mikko Saari	90400241	041 469 0914	mikko@mikkosaari.fi	1980	E	90400241	\N	\N	lainaaja	2015-05-13 11:12:54.079712+03
Jani Saarinen	91510790		jani.zaarinen@gmail.com	1980	E	91510790	\N	\N	lainaaja	2015-05-13 11:12:54.087839+03
Jari Saarinen	90500824	040 547 4032	jpj.saarinen@suomi24.fi	1970	E	90500824	\N	\N	lainaaja	2015-05-13 11:12:54.096279+03
Teppo Saarinen	90803110	040 821 7902	teppolainen@gmail.com	1973	E	90803110	\N	\N	lainaaja	2015-05-13 11:12:54.105181+03
Mari Saavalainen	91004918		tuku@suomi24.fi	1971	E	91004918	\N	\N	lainaaja	2015-05-13 11:12:54.112855+03
Saku Sairanen	90501069		saku_sairanen@hotmail.com	1971	E	90501069	\N	\N	lainaaja	2015-05-13 11:12:54.129635+03
Toni Sallanmaa	90500798		toni.sallanmaa@iki.fi	1985	E	90500798	\N	\N	lainaaja	2015-05-13 11:12:54.137846+03
Jani Salmi	91408967		dr.jani.salmi@gmail.com	1975	E	91408967	\N	\N	lainaaja	2015-05-13 11:12:54.154785+03
Esa Salminen	90904297	050 327 6277	esa.salminen@student.tut.fi	1977	E	90904297	\N	\N	lainaaja	2015-05-13 11:12:54.162928+03
Henri Salminen	90803518	040 576 5474	jorkka@kotiportti.fi	1978	E	90803518	\N	\N	lainaaja	2015-05-13 11:12:54.171089+03
Santtu Salminen	91105998		santtu.salminen@kolumbus.fi	1974	E	91105998	\N	\N	lainaaja	2015-05-13 11:12:54.17946+03
Teppo Salminen	91206826	050 343 7765	soolibooli@gmail.com	1991	E	91206826	\N	\N	lainaaja	2015-05-13 11:12:54.18779+03
Timo Salminen	91005218		zalminen@gmail.com	1981	E	91005218	\N	\N	lainaaja	2015-05-13 11:12:54.196192+03
Tuomo Salo	91005386		bass+lps@iki.fi	1975	E	91005386	\N	\N	lainaaja	2015-05-13 11:12:54.2046+03
Toni Salonen	91409157	044 581 8568	sintonic@luukku.com	1983	E	91409157	\N	\N	lainaaja	2015-05-13 11:12:54.212962+03
Petri Savola	90501221		petri@netcore.fi	1984	E	90501221	\N	\N	lainaaja	2015-05-13 11:12:54.221523+03
Aki Seuranen	91409775	050 301 060	aki.seuranen@gmail.com	1971	E	91409775	\N	\N	lainaaja	2015-05-13 11:12:54.229581+03
Esa Seuranen	90702952	040 721 7727	esa.seuranen@gmail.com	1980	E	90702952	\N	\N	lainaaja	2015-05-13 11:12:54.237688+03
Sampo Sikiö	90501166		sampo.sikio@iki.fi	1977	E	90501166	\N	\N	lainaaja	2015-05-13 11:12:54.246262+03
Sebastian Silfverberg	91207294	050 469 4376	sebastian.silfverberg@gmail.com	1992	E	91207294	\N	\N	lainaaja	2015-05-13 11:12:54.254475+03
Niilo Siljamo	90601558		siljamo@iki.fi	1968	E	90601558	\N	\N	lainaaja	2015-05-13 11:12:54.263049+03
Mikko Siljander	91207634	050 342 3368	mikkoville@gmail.com	1971	E	91207634	\N	\N	lainaaja	2015-05-13 11:12:54.27104+03
Risto Sillanpää	91207692	045 678 5234	risto.sillanpaa@netti.fi	1979	E	91207692	\N	\N	lainaaja	2015-05-13 11:12:54.279588+03
Sanna Siltanen	90903968	050 301 3046	sanna.siltanen@gmail.com	1980	E	90903968	\N	\N	lainaaja	2015-05-13 11:12:54.287902+03
Petteri Simola	90702305		pete187@hotmail.com	1962	E	90702305	\N	\N	lainaaja	2015-05-13 11:12:54.296287+03
Mika Simonen	90601600	050 545 8765	m1ka@iki.fi	1974	E	90601600	\N	\N	lainaaja	2015-05-13 11:12:54.304577+03
Antti Sinervo	91307783	041 461 8015	antti_sinervo@hotmail.com	1986	E	91307783	\N	\N	lainaaja	2015-05-13 11:12:54.312832+03
Juha Sjöholm	91207540		sjoholm.juha@gmail.com	1977	E	91207540	\N	\N	lainaaja	2015-05-13 11:12:54.321958+03
Saku Slioor	90601642	040 572 3176	sslioor@cc.helsinki.fi	1973	E	90601642	\N	\N	lainaaja	2015-05-13 11:12:54.329739+03
Jani Sorsa	91510512	044 992 8520	jani.sorsa.97@gmail.com	1997	E	91510512	\N	\N	lainaaja	2015-05-13 11:12:54.337912+03
Kimmo Sorsamo	90803903	050 368 0634	kimmo@sorsamodesigns.fi	1981	E	90803903	\N	\N	lainaaja	2015-05-13 11:12:54.34732+03
Sampo Sorvisto	91308407	040 735 4233	sampo.sorvisto@gmail.com	1986	E	91308407	\N	\N	lainaaja	2015-05-13 11:12:54.35477+03
Sampsa Suhonen	91409649		onteri@gmail.com	1974	E	91409649	\N	\N	lainaaja	2015-05-13 11:12:54.362899+03
Elina Suikanen	91510923	044 399 2206	elinasuni@gmail.com	1983	E	91510923	\N	\N	lainaaja	2015-05-13 11:12:54.370875+03
Mart Suikanen	91510949	044 055 1776	mart.suikanen@gmail.com	1986	E	91510949	\N	\N	lainaaja	2015-05-13 11:12:54.37953+03
Jari Sulkava	91408925	044 055 2625	jari.sulkava@luukku.com	1964	E	91408925	\N	\N	lainaaja	2015-05-13 11:12:54.387888+03
Arno Sundell	91005328	045 631 7771	rajuarska@hotmail.com	1984	E	91005328	\N	\N	lainaaja	2015-05-13 11:12:54.396464+03
Tommi Sundell	91409995	040 588 2117	tojusun@utu.fi	1990	E	91409995	\N	\N	lainaaja	2015-05-13 11:12:54.404485+03
Mika Suominen	91106007	0400 945 317	mika.s@pp.nic.fi	1960	E	91106007	\N	\N	lainaaja	2015-05-13 11:12:54.413491+03
Tuomo Syvänperä	91105875	050 400 9509	tuomo.syvanpera@gmail.com	1975	E	91105875	\N	\N	lainaaja	2015-05-13 11:12:54.422148+03
Milla Södö	91410324	044 344 3721	milla.sodo@student.oulu.fi	1989	E	91410324	\N	\N	lainaaja	2015-05-13 11:12:54.429595+03
Antti Tahvanainen	90500426	044 529 8692	antti.tahvanainen@aalto.fi	1982	E	90500426	\N	\N	lainaaja	2015-05-13 11:12:54.437777+03
Marko Tainio	90400050		marko.tainio@gmail.com	1977	E	90400050	\N	\N	lainaaja	2015-05-13 11:12:54.446306+03
Antti Tamminen	91207168	040 583 0911	antti.tamminen@gmail.com	1980	E	91207168	\N	\N	lainaaja	2015-05-13 11:12:54.454628+03
Atte Tamminen	91105765		atukka@gmail.com	1991	E	91105765	\N	\N	lainaaja	2015-05-13 11:12:54.462985+03
Marko Tamminen	90500468	0400 744 554	zumba@iki.fi	1975	E	90500468	\N	\N	lainaaja	2015-05-13 11:12:54.47136+03
Tatu-Pekka Taskinen	91206758		tpot88@gmail.com	1988	E	91206758	\N	\N	lainaaja	2015-05-13 11:12:54.479735+03
Mika Tiainen	90904268	040 146 9876	fronx@nettilinja.fi	1981	E	90904268	\N	\N	lainaaja	2015-05-13 11:12:54.488507+03
Ilmari Tiitinen	90500633	050 540 9318	ilmaritiitinen@gmail.com	1983	E	90500633	\N	\N	lainaaja	2015-05-13 11:12:54.496135+03
Janne Tikka	91106405	050 462 6171	jannetikka@hotmail.com	1971	E	91106405	\N	\N	lainaaja	2015-05-13 11:12:54.504577+03
Ilari Tikkanen	91105891	040 577 9705	ilari.tikkanen@nic.fi	1976	E	91105891	\N	\N	lainaaja	2015-05-13 11:12:54.512931+03
Jussi Tikkanen	91410230		jutikka@hotmail.com	1985	E	91410230	\N	\N	lainaaja	2015-05-13 11:12:54.521129+03
Harri Toijala	90702745	050 303 9405	hartsukka@gmail.com	1972	E	90702745	\N	\N	lainaaja	2015-05-13 11:12:54.529711+03
Jussi Toivanen	91307958		jussi.toivanen@uef.fi	1985	E	91307958	\N	\N	lainaaja	2015-05-13 11:12:54.537884+03
Leevi Toiviainen	91309862	040 186 6446	leevi.toiviainen@saunalahti.fi	1988	E	91309862	\N	\N	lainaaja	2015-05-13 11:12:54.546433+03
Petri Toiviainen	91409063	050 410 9728	petri.toiviainen@gmail.com	1976	E	91409063	\N	\N	lainaaja	2015-05-13 11:12:54.554442+03
Juha-Matti Torkkel	91409843	045 867 0737	jm.torkkel@gmail.com	1984	E	91409843	\N	\N	lainaaja	2015-05-13 11:12:54.563587+03
Päivi Tuhkanen	90803084	040 524 6482	paivi.tuhkanen@iki.fi	1974	E	90803084	\N	\N	lainaaja	2015-05-13 11:12:54.571175+03
Joni Tuimala	91207210	040 834 1940	jo.tuimala@gmail.com	1986	E	91207210	\N	\N	lainaaja	2015-05-13 11:12:54.579651+03
Vilppu Tuominen	90804180		vilppu.tuominen@iki.fi	1982	E	90804180	\N	\N	lainaaja	2015-05-13 11:12:54.587778+03
Pauli Tuoresmäki	91206745		pauli.tuoresmaki@gmail.com	1988	E	91206745	\N	\N	lainaaja	2015-05-13 11:12:54.596568+03
Juho Tuovinen	91207320		juhotuovinen1@gmail.com	1992	E	91207320	\N	\N	lainaaja	2015-05-13 11:12:54.60491+03
Toni Turhanen	91510499		toni.turhanen@gmail.com	1988	E	91510499	\N	\N	lainaaja	2015-05-13 11:12:54.613113+03
Jani Turku	91005344	040 725 4359	puro@iki.fi	1976	E	91005344	\N	\N	lainaaja	2015-05-13 11:12:54.621276+03
Antti Turtiainen	91308740		antti.turtiainen@uta.fi	1983	E	91308740	\N	\N	lainaaja	2015-05-13 11:12:54.629768+03
Marko Turunen	91510745	040 778 6331	marko.turunen@gmail.com	1972	E	91510745	\N	\N	lainaaja	2015-05-13 11:12:54.637919+03
Jari Tuukkanen	91409160		jari-tuukkanen@hotmail.com	1964	E	91409160	\N	\N	lainaaja	2015-05-13 11:12:54.646304+03
Jari Tyrväinen	91510606	044 259 9191	jari.tyrvainen@gmail.com	1990	E	91510606	\N	\N	lainaaja	2015-05-13 11:12:54.654579+03
Marko Tyrväinen	91308562	044 046 5333	marko.tyrvainen@gmail.com	1984	E	91308562	\N	\N	lainaaja	2015-05-13 11:12:54.662893+03
Mika Tönning	91510389	041 528 9578	tooninki@hotmail.com	1978	E	91510389	\N	\N	lainaaja	2015-05-13 11:12:54.671097+03
Lars Törn	91409746	045 263 8000	lars.torn@gmail.com	1969	E	91409746	\N	\N	lainaaja	2015-05-13 11:12:54.679602+03
Klaus Törnkvist	91004947	044 353 5041	klaus.tornkvist@gmail.com	1980	E	91004947	\N	\N	lainaaja	2015-05-13 11:12:54.687863+03
Hannu Uusitalo	91510444		hannu.uusitalo@gmail.com	1981	E	91510444	\N	\N	lainaaja	2015-05-13 11:12:54.696434+03
Jari-Matti Uusitupa	91308850		jmuusitupa@gmail.com	1974	E	91308850	\N	\N	lainaaja	2015-05-13 11:12:54.705207+03
Santeri Vaara	91005674		santeri.vaara@hotmail.com	1983	E	91005674	\N	\N	lainaaja	2015-05-13 11:12:54.71301+03
Sameli Valkama	91409762	040 592 6218	sameli.valkama@turku.fi	1983	E	91409762	\N	\N	lainaaja	2015-05-13 11:12:54.72115+03
Renni Valkeinen	91206949	040 555 4884	renni.valkeinen@gmail.com	1978	E	91206949	\N	\N	lainaaja	2015-05-13 11:12:54.729655+03
Jukka Valta	91105794		jvalta@yahoo.co.uk	1972	E	91105794	\N	\N	lainaaja	2015-05-13 11:12:54.737758+03
Paavo Valta	91207414	050 371 8309	paavo.valta@gmail.com	1960	E	91207414	\N	\N	lainaaja	2015-05-13 11:12:54.746392+03
Joanna Valtari	91005182		joanna.valtari@gmail.com	1987	E	91005182	\N	\N	lainaaja	2015-05-13 11:12:54.754642+03
Mika Valtola	90903926		mika.valtola@gmail.com	1979	E	90903926	\N	\N	lainaaja	2015-05-13 11:12:54.763205+03
Kari Vanhanen	91510787	040 727 8367	kari.vanhanen.pelit@gmail.com	1977	E	91510787	\N	\N	lainaaja	2015-05-13 11:12:54.771054+03
Katri Vaparanta	91510907	050 336 5491	katri.vaparanta@gmail.com	1988	E	91510907	\N	\N	lainaaja	2015-05-13 11:12:54.779566+03
Mikko Varjanne	91308122	050 362 5130	varjanne@gmail.com	1979	E	91308122	\N	\N	lainaaja	2015-05-13 11:12:54.78783+03
Henrik Vartiainen	91510473		henrikv@student.uef.fi	1990	E	91510473	\N	\N	lainaaja	2015-05-13 11:12:54.796168+03
Kimmo Vassinen	91410023		kimmo.vassinen@gmail.com	1979	E	91410023	\N	\N	lainaaja	2015-05-13 11:12:54.804587+03
Jani Vepsä	91409814	044 027 7283	janivepsai@gmail.com	1989	E	91409814	\N	\N	lainaaja	2015-05-13 11:12:54.813137+03
Marko Vertanen	91510392	044 342 6828	markovertanen@gmail.com	1985	E	91510392	\N	\N	lainaaja	2015-05-13 11:12:54.821189+03
Senni Vesterinen	91510635		senni.vesterinen@helsinki.fi	1991	E	91510635	\N	\N	lainaaja	2015-05-13 11:12:54.829544+03
Matti Viertamo	91207401		mviertamo@hotmail.com	1983	E	91207401	\N	\N	lainaaja	2015-05-13 11:12:54.838534+03
Matias Viitasalo	90400063	040 669 2595	matias.viitasalo@gmail.com	1979	E	90400063	\N	\N	lainaaja	2015-05-13 11:12:54.846735+03
Valtteri Vinni	91510509	045 633 9004	valtteri.vinni@elisanet.fi	1997	E	91510509	\N	\N	lainaaja	2015-05-13 11:12:54.854524+03
Otto-Ville Virkkunen	91106599		ovv@supakuul.org	1981	E	91106599	\N	\N	lainaaja	2015-05-13 11:12:54.863052+03
Joni Virolainen	91005302		jvirolai@yahoo.com	1979	E	91005302	\N	\N	lainaaja	2015-05-13 11:12:54.871503+03
Vesa Virri	90803343		vvirri@gmail.com	1974	E	90803343	\N	\N	lainaaja	2015-05-13 11:12:54.879745+03
Jere Virtanen	91410081	0400 586 199	jere.wirtanen@gmail.com	1989	E	91410081	\N	\N	lainaaja	2015-05-13 11:12:54.888033+03
Jussi Virtanen	90904174	0400 714 817	juzzuf@gmail.com	1974	E	90904174	\N	\N	lainaaja	2015-05-13 11:12:54.896575+03
Tuomas Virtanen	91510813	044 344 1728	nekograd@gmail.com	1981	E	91510813	\N	\N	lainaaja	2015-05-13 11:12:54.904628+03
Simo Voutilainen	91206680	050 466 8140	simo_voutilainen@hotmail.com	1974	E	91206680	\N	\N	lainaaja	2015-05-13 11:12:54.913197+03
Lauri Vuojola	91308685		lauri.vuojola@gmail.com	1988	E	91308685	\N	\N	lainaaja	2015-05-13 11:12:54.921104+03
Antti Vuokko	90904721	040 564 0604	eetu.vuokko@pp1.inet.fi	1983	E	90904721	\N	\N	lainaaja	2015-05-13 11:12:54.929756+03
Ville Vuorenmaa	91206619	040 727 8473	villevuor@gmail.com	1995	E	91206619	\N	\N	lainaaja	2015-05-13 11:12:54.937907+03
Tuomas Vuori	91510693	040 557 5538	tuomas.vuori@gmail.com	1981	E	91510693	\N	\N	lainaaja	2015-05-13 11:12:54.946307+03
Petri Vähänen	90803071		petri.vahanen@kolumbus.fi	1966	E	90803071	\N	\N	lainaaja	2015-05-13 11:12:54.955014+03
Topi Väisänen	91510457	041 439 9119	topsukka@gmail.com	1987	E	91510457	\N	\N	lainaaja	2015-05-13 11:12:54.963144+03
Vilho Väisänen	90500714	050 443 2403	fey@iki.fi	1967	E	90500714	\N	\N	lainaaja	2015-05-13 11:12:54.971222+03
Piia Välimäki	91307754		piia.valimaki@gmail.com	1988	E	91307754	\N	\N	lainaaja	2015-05-13 11:12:54.979884+03
Katja Väyrynen	90702525	0400 702 928	katja.vayrynen@gmail.com	1978	E	90702525	\N	\N	lainaaja	2015-05-13 11:12:54.987924+03
Timo Walden	91307796		timowalden@yahoo.com	1970	E	91307796	\N	\N	lainaaja	2015-05-13 11:12:54.9965+03
Oskari Westerholm	90500785		walker@niksula.hut.fi	1975	E	90500785	\N	\N	lainaaja	2015-05-13 11:12:55.004671+03
Jouni Westling	91409717	050 371 2547	jouni.westling@helsinki.fi	1981	E	91409717	\N	\N	lainaaja	2015-05-13 11:12:55.013183+03
Daniel Westman	91207582		ultimario@hotmail.com	1984	E	91207582	\N	\N	lainaaja	2015-05-13 11:12:55.021337+03
Niclas Willberg	91106214		niclaswillberg@hotmail.com	1985	E	91106214	\N	\N	lainaaja	2015-05-13 11:12:55.029852+03
Timo Yli-Hemmo	90601778	050 463 2814	nothing@kolumbus.fi	1981	E	90601778	\N	\N	lainaaja	2015-05-13 11:12:55.037862+03
Antti Yli-Tainio	91207032	044 021 2324	antti.yli-tainio@iki.fi	1981	E	91207032	\N	\N	lainaaja	2015-05-13 11:12:55.046469+03
Kimmo Ylinen	91510431		kimmo_ylinen@hotmail.com	1981	E	91510431	\N	\N	lainaaja	2015-05-13 11:12:55.054799+03
Anssi Ylönen	91106023	050 384 3771	anylonen@gmail.com	1976	E	91106023	\N	\N	lainaaja	2015-05-13 11:12:55.063057+03
Ville Yrjänä	91105804	044 520 7927	ville.yrjana@pp.inet.fi	1982	E	91105804	\N	\N	lainaaja	2015-05-13 11:12:55.071294+03
Niro Åhman	91410298	040 530 6418	niro.ahman@gmail.com	1986	E	91410298	\N	\N	lainaaja	2015-05-13 11:12:55.07986+03
\.


--
-- Data for Name: kayttajarooli; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY kayttajarooli (kohde, kayttaja, roolinimi) FROM stdin;
\.


--
-- Data for Name: kayttajatunnistus; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY kayttajatunnistus (kayttaja, tyyppi, salaisuusavain, salaisuus) FROM stdin;
daFool	local	1X7oXqA=	43ce1d6569d955481dbdfedf63c9e72219a91b90ce728591ba4984b52ed102ec
\.


--
-- Data for Name: tapahtuma; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY tapahtuma (nimi, sijainti, alkaa, loppuu) FROM stdin;
Ropecon 2015	Dipoli, Espoo	2015-05-15	2015-05-17
\.


--
-- Data for Name: kokoelma; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY kokoelma (nimi, laji, omistaja, tapahtuma, lisatty) FROM stdin;
SLS	1	daFool	\N	2015-04-08 15:00:50.306301
Ropecon 2015	0	daFool	Ropecon 2015	2015-05-13 10:56:28.252154
Fool's Gold	1	daFool	\N	2015-05-13 14:59:34.182448
\.


--
-- Data for Name: lahjoittaja; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY lahjoittaja (nimi, verkkoosoite) FROM stdin;
Mikko Saari / Korttipeliopas	\N
Gen-X	\N
Pema	\N
Lautapelit.fi	\N
Nestori Lehtonen	\N
Eggertspiele	\N
Amo	\N
Onni games	\N
Peliko	\N
Warfrog	\N
Japon Brand	\N
Competo	\N
Stefan Engblom	\N
Sherco Games	\N
Väinö Hirvelä	\N
Markus Nuopponen	\N
Asmodée	\N
ASS	\N
Mindwarrior Games	\N
Mindwarrior games	\N
Eduard Luhtonen	\N
GMT Games	\N
Lautapeliopas	\N
QWG	\N
Asmodee	\N
Zoch	\N
Abacus	\N
Reiver Games	\N
Devir	\N
JKLM Games	\N
Kanai Factory	\N
Markku Jaatinen	\N
Insight Games	\N
Murad Juraev	\N
Kalle Malmioja	\N
Twilight Creations	\N
Smirk & Dagger Games	\N
Isimat	\N
Günter Cornett/Bambus Spielverlag	\N
Eye-Level Entertainment	\N
Right Games	\N
Friedemann Friese	\N
What's your game	\N
Eggert Spiele	\N
Alea	\N
Blind Spot	\N
Roll D6	\N
Wolf Fang	\N
Vatnuorin kyläyhdistys	\N
Revision-Games	\N
Virpi Flyktman	\N
Touko Tahkokallio	\N
Kuznia Gier	\N
Portal	\N
Piatnik	\N
Magnus Engblom	\N
Atro Kajaste	\N
Taneli Armanto	\N
TOP-TOY	\N
Harald Enoksson/Mondainai	\N
Markus Nuopponen, säännöt vain saksaksi	\N
Julia Lehto	\N
Queen Games	\N
Nestori Lehtonen; Geekissä listattua varhaisempi versio arviolta vuodelta 1966	\N
Tuonela Productions	\N
Marco Bing/PYXI	\N
Hyptic Games	\N
\.


--
-- Data for Name: peli; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY peli (nimi, suunnittelija, julkaisija, bgglinkki, kesto, pelaajia, gtin, tunniste, lisatty, vuosi) FROM stdin;
1, 2, 3 ... wie lerne ich die Zahlen?			http://www.boardgamegeek.com/game/33883	\N	\N	\N	5980	2015-05-13 17:16:21.374228	-1
150 korttipeliä				\N	\N	\N	5981	2015-05-13 17:16:21.42882	-1
2 de Mayo			http://www.boardgamegeek.com/game/36522	\N	\N	\N	5982	2015-05-13 17:16:21.521528	-1
6 Billion			http://www.boardgamegeek.com/game/375	\N	\N	\N	5983	2015-05-13 17:16:21.562039	-1
6 Nimmt			http://www.boardgamegeek.com/game/432	\N	\N	\N	5984	2015-05-13 17:16:21.578533	-1
7 Signum			http://www.boardgamegeek.com/game/8129	\N	\N	\N	5985	2015-05-13 17:16:21.595394	-1
7 Wonders			http://www.boardgamegeek.com/game/68448	\N	\N	\N	5986	2015-05-13 17:16:21.611978	-1
77 Kysymystä ja vastausta				\N	\N	\N	5987	2015-05-13 17:16:21.628605	-1
A Castle for All Seasons			http://www.boardgamegeek.com/game/38386	\N	\N	\N	5988	2015-05-13 17:16:21.645036	-1
A-Ö			http://www.boardgamegeek.com/game/416	\N	\N	\N	5989	2015-05-13 17:16:21.661677	-1
Aaverauniot			http://www.boardgamegeek.com/game/38197	\N	\N	\N	5991	2015-05-13 17:16:21.695231	-1
Aavikon Karavaanit			http://www.boardgamegeek.com/game/503	\N	\N	\N	5993	2015-05-13 17:16:21.728614	-1
Adel Verpflichtet			http://www.boardgamegeek.com/game/120	\N	\N	\N	5994	2015-05-13 17:16:21.745225	-1
Aether			http://www.boardgamegeek.com/game/68943	\N	\N	\N	5995	2015-05-13 17:16:21.762149	-1
Africana			http://www.boardgamegeek.com/game/118000	\N	\N	\N	5997	2015-05-13 17:16:21.786932	-1
Afrikan tähti deluxe			http://www.boardgamegeek.com/game/5130	\N	\N	\N	5998	2015-05-13 17:16:21.803815	-1
After the Flood			http://www.boardgamegeek.com/game/36888	\N	\N	\N	5999	2015-05-13 17:16:21.820253	-1
Aisopos			http://www.boardgamegeek.com/game/63442	\N	\N	\N	6000	2015-05-13 17:16:21.836912	-1
Aku Ankka			http://www.boardgamegeek.com/game/39636	\N	\N	\N	6001	2015-05-13 17:16:21.853473	-1
Aladdin's Dragons			http://www.boardgamegeek.com/game/492	\N	\N	\N	6002	2015-05-13 17:16:21.87028	-1
Alfred			http://www.boardgamegeek.com/game/40962	\N	\N	\N	6003	2015-05-13 17:16:21.887214	-1
Alhambra			http://www.boardgamegeek.com/game/6249	\N	\N	\N	6004	2015-05-13 17:16:21.903497	-1
Alias			http://www.boardgamegeek.com/game/3818	\N	\N	\N	6007	2015-05-13 17:16:21.937038	-1
Alias Party				\N	\N	\N	6008	2015-05-13 17:16:21.95371	-1
Alias, Juhla				\N	\N	\N	6009	2015-05-13 17:16:21.970238	-1
Amazing Space Venture			http://www.boardgamegeek.com/game/31138	\N	\N	\N	6010	2015-05-13 17:16:21.98684	-1
Amyitis			http://www.boardgamegeek.com/game/29934	\N	\N	\N	6011	2015-05-13 17:16:22.00365	-1
Anasazi			http://www.boardgamegeek.com/game/24224	\N	\N	\N	6012	2015-05-13 17:16:22.020264	-1
Anima				\N	\N	\N	6013	2015-05-13 17:16:22.037249	-1
Animal Express			http://www.boardgamegeek.com/game/29939	\N	\N	\N	6014	2015-05-13 17:16:22.053654	-1
AniMix				\N	\N	\N	6015	2015-05-13 17:16:22.070255	-1
Anno 1503			http://www.boardgamegeek.com/game/8166	\N	\N	\N	6016	2015-05-13 17:16:22.086894	-1
Aqua Romana			http://www.boardgamegeek.com/game/20080	\N	\N	\N	6017	2015-05-13 17:16:22.103556	-1
Aquileia			http://www.boardgamegeek.com/game/108161	\N	\N	\N	6019	2015-05-13 17:16:22.12865	-1
Areena - Titaanien taisto			http://www.boardgamegeek.com/game/105	\N	\N	\N	6020	2015-05-13 17:16:22.145263	-1
Ark of the Covenant, the			http://www.boardgamegeek.com/game/6779	\N	\N	\N	6021	2015-05-13 17:16:22.162215	-1
Arriala			http://www.boardgamegeek.com/game/70097	\N	\N	\N	6022	2015-05-13 17:16:22.178859	-1
Arvuutin			http://www.boardgamegeek.com/game/68947	\N	\N	\N	6023	2015-05-13 17:16:22.195206	-1
ASS Doppelkopf				\N	\N	\N	6025	2015-05-13 17:16:22.220221	-1
ASS Gaigel/Binokel				\N	\N	\N	6026	2015-05-13 17:16:22.237115	-1
ASS Rum/Canasta/Bridge				\N	\N	\N	6027	2015-05-13 17:16:22.253901	-1
ASS Skat (French faces)				\N	\N	\N	6028	2015-05-13 17:16:22.270345	-1
ASS Skat (German faces)				\N	\N	\N	6029	2015-05-13 17:16:22.286917	-1
ASS Tarock/Schafkopf				\N	\N	\N	6030	2015-05-13 17:16:22.303611	-1
Assyria			http://www.boardgamegeek.com/game/43152	\N	\N	\N	6031	2015-05-13 17:16:22.320263	-1
Atlantic Triangle			http://www.boardgamegeek.com/game/60697	\N	\N	\N	6032	2015-05-13 17:16:22.337061	-1
Atlantis			http://www.boardgamegeek.com/game/55253	\N	\N	\N	6034	2015-05-13 17:16:22.361828	-1
Auf Achse Das Kartenspiel			http://www.boardgamegeek.com/game/1310	\N	\N	\N	6035	2015-05-13 17:16:22.378757	-1
Augustus				\N	\N	\N	6036	2015-05-13 17:16:22.395242	-1
Australia			http://www.boardgamegeek.com/game/15033	\N	\N	\N	6037	2015-05-13 17:16:22.412228	-1
Axis & Allies			http://www.boardgamegeek.com/game/98	\N	\N	\N	6039	2015-05-13 17:16:22.436976	-1
Bakari			http://www.boardgamegeek.com/game/4150	\N	\N	\N	6040	2015-05-13 17:16:22.453766	-1
Ballon Cup			http://www.boardgamegeek.com/game/5716	\N	\N	\N	6041	2015-05-13 17:16:22.470694	-1
Bamboleo			http://www.boardgamegeek.com/game/293	\N	\N	\N	6042	2015-05-13 17:16:22.487039	-1
Banaanilaiva			http://www.boardgamegeek.com/game/18104	\N	\N	\N	6043	2015-05-13 17:16:22.503734	-1
Bananas				\N	\N	\N	6044	2015-05-13 17:16:22.520379	-1
Bandu			http://www.boardgamegeek.com/game/1231	\N	\N	\N	6045	2015-05-13 17:16:22.536919	-1
Bang			http://www.boardgamegeek.com/game/3955	\N	\N	\N	6046	2015-05-13 17:16:22.55378	-1
Battle for Moscow			http://www.boardgamegeek.com/game/49276	\N	\N	\N	6047	2015-05-13 17:16:22.570625	-1
Battle Line			http://www.boardgamegeek.com/game/760	\N	\N	\N	6048	2015-05-13 17:16:22.587108	-1
Battle Sheep				\N	\N	\N	6050	2015-05-13 17:16:22.611931	-1
Battlelore			http://www.boardgamegeek.com/game/25417	\N	\N	\N	6052	2015-05-13 17:16:22.637062	-1
Battletech			http://www.boardgamegeek.com/game/1540	\N	\N	\N	6053	2015-05-13 17:16:22.653846	-1
Bausack Maxi			http://www.boardgamegeek.com/game/1231	\N	\N	\N	6054	2015-05-13 17:16:22.670679	-1
Beowulf			http://www.boardgamegeek.com/game/29308	\N	\N	\N	6055	2015-05-13 17:16:22.687266	-1
Beowulf the Legend			http://www.boardgamegeek.com/game/17449	\N	\N	\N	6056	2015-05-13 17:16:22.703808	-1
Haaste!				\N	\N	\N	6273	2015-05-13 17:16:26.579405	-1
Beppo			http://www.boardgamegeek.com/game/27948	\N	\N	\N	6057	2015-05-13 17:16:22.720571	-1
Bet Your Brain			http://www.boardgamegeek.com/game/39342	\N	\N	\N	6058	2015-05-13 17:16:22.737159	-1
Bezzerwizzer			http://www.boardgamegeek.com/game/32441	\N	\N	\N	6059	2015-05-13 17:16:22.753915	-1
Bezzerwizzer mini			http://www.boardgamegeek.com/game/32441	\N	\N	\N	6061	2015-05-13 17:16:22.778674	-1
Biribi			http://www.boardgamegeek.com/game/59703	\N	\N	\N	6062	2015-05-13 17:16:22.795396	-1
Blitz 2.0				\N	\N	\N	6063	2015-05-13 17:16:22.812053	-1
Blokus			http://www.boardgamegeek.com/game/2453	\N	\N	\N	6064	2015-05-13 17:16:22.828669	-1
Blokus Duo			http://www.boardgamegeek.com/game/16395	\N	\N	\N	6066	2015-05-13 17:16:22.853779	-1
Blokus Trigon			http://www.boardgamegeek.com/game/21550	\N	\N	\N	6067	2015-05-13 17:16:22.87048	-1
Bloom			http://www.boardgamegeek.com/game/27490	\N	\N	\N	6068	2015-05-13 17:16:22.887183	-1
Blox			http://www.boardgamegeek.com/game/34227	\N	\N	\N	6069	2015-05-13 17:16:22.903872	-1
Bluffalo			http://www.boardgamegeek.com/game/158994	\N	\N	\N	6070	2015-05-13 17:16:22.920492	-1
Bock Rock			http://www.boardgamegeek.com/game/31506	\N	\N	\N	6071	2015-05-13 17:16:22.93728	-1
Bombay			http://www.boardgamegeek.com/game/40214	\N	\N	\N	6072	2015-05-13 17:16:22.953932	-1
Boochie			http://www.boardgamegeek.com/game/38680	\N	\N	\N	6073	2015-05-13 17:16:22.970383	-1
Bootleggers			http://www.boardgamegeek.com/game/12477	\N	\N	\N	6074	2015-05-13 17:16:22.987072	-1
Booze cruise			http://www.boardgamegeek.com/game/2722	\N	\N	\N	6075	2015-05-13 17:16:23.003768	-1
Boss Kito			http://www.boardgamegeek.com/game/37732	\N	\N	\N	6076	2015-05-13 17:16:23.020591	-1
BrainBox: The World			http://www.boardgamegeek.com/game/40247	\N	\N	\N	6077	2015-05-13 17:16:23.03709	-1
Bunte Runde			http://www.boardgamegeek.com/game/20122	\N	\N	\N	6078	2015-05-13 17:16:23.053851	-1
Bus			http://www.boardgamegeek.com/game/552	\N	\N	\N	6079	2015-05-13 17:16:23.070484	-1
Byzantio				\N	\N	\N	6080	2015-05-13 17:16:23.087147	-1
Bürger, Baumeister & Co.			http://www.boardgamegeek.com/game/40773	\N	\N	\N	6081	2015-05-13 17:16:23.103982	-1
Callisto			http://www.boardgamegeek.com/game/55705	\N	\N	\N	6082	2015-05-13 17:16:23.120487	-1
Camelot Legends			http://www.boardgamegeek.com/game/10496	\N	\N	\N	6083	2015-05-13 17:16:23.137271	-1
Can't Stop			http://www.boardgamegeek.com/game/41	\N	\N	\N	6084	2015-05-13 17:16:23.15379	-1
Canyon			http://www.boardgamegeek.com/game/436	\N	\N	\N	6087	2015-05-13 17:16:23.203747	-1
Carcassonne			http://www.boardgamegeek.com/game/822	\N	\N	\N	6088	2015-05-13 17:16:23.220517	-1
Carcassonne - Lisäosalaatikko Torni			http://www.boardgamegeek.com/game/21385	\N	\N	\N	6097	2015-05-13 17:16:23.303866	-1
Carcassonne - Uusi Maailma			http://www.boardgamegeek.com/game/34615	\N	\N	\N	6098	2015-05-13 17:16:23.320478	-1
Carcassonne Etelämeri				\N	\N	\N	6099	2015-05-13 17:16:23.337182	-1
Carcassonne juhlapainos			http://www.boardgamegeek.com/game/89952	\N	\N	\N	6100	2015-05-13 17:16:23.353963	-1
Carcassonne Kivikausi			http://www.boardgamegeek.com/game/4390	\N	\N	\N	6101	2015-05-13 17:16:23.387502	-1
Carcassonne Kreivi ja Kuningas			http://www.boardgamegeek.com/game/24506	\N	\N	\N	6103	2015-05-13 17:16:23.412308	-1
Carcassonne Pedot ja Paimenet				\N	\N	\N	6104	2015-05-13 17:16:23.428969	-1
Cardcassonne			http://www.boardgamegeek.com/game/58798	\N	\N	\N	6105	2015-05-13 17:16:23.445799	-1
Carpe Astra			http://www.boardgamegeek.com/game/35706	\N	\N	\N	6106	2015-05-13 17:16:23.462257	-1
Cartagena			http://www.boardgamegeek.com/game/826	\N	\N	\N	6107	2015-05-13 17:16:23.529066	-1
Cash 'n Guns			http://www.boardgamegeek.com/game/19237	\N	\N	\N	6108	2015-05-13 17:16:23.643337	-1
Cash 'n Guns - Yakuza expansion			http://www.boardgamegeek.com/game/30909	\N	\N	\N	6109	2015-05-13 17:16:23.687498	-1
Castellers			http://www.boardgamegeek.com/game/36523	\N	\N	\N	6110	2015-05-13 17:16:23.704049	-1
Catan Dice Game			http://www.boardgamegeek.com/game/27710	\N	\N	\N	6111	2015-05-13 17:16:23.803849	-1
Catan Die Kolonien Jubiläums-Szenario			http://www.boardgamegeek.com/game/21097	\N	\N	\N	6112	2015-05-13 17:16:23.837515	-1
Catanin uudisasukkaat			http://www.boardgamegeek.com/game/13	\N	\N	\N	6113	2015-05-13 17:16:23.854043	-1
Catanin uudisasukkaat - merenkävijät			http://www.boardgamegeek.com/game/325	\N	\N	\N	6116	2015-05-13 17:16:23.887341	-1
Catanin uudisasukkaat Junior			http://www.boardgamegeek.com/game/27766	\N	\N	\N	6117	2015-05-13 17:16:23.904004	-1
Catanin Uudisasukkaat Korttipeli			http://www.boardgamegeek.com/game/278	\N	\N	\N	6118	2015-05-13 17:16:23.920667	-1
Caveman			http://www.boardgamegeek.com/game/32253	\N	\N	\N	6119	2015-05-13 17:16:23.937131	-1
Cavum			http://www.boardgamegeek.com/game/37734	\N	\N	\N	6120	2015-05-13 17:16:23.954009	-1
Caylus			http://www.boardgamegeek.com/game/18602	\N	\N	\N	6121	2015-05-13 17:16:23.970491	-1
Caylus Magna Carta			http://www.boardgamegeek.com/game/27364	\N	\N	\N	6122	2015-05-13 17:16:23.987282	-1
Celtica			http://www.boardgamegeek.com/game/21293	\N	\N	\N	6123	2015-05-13 17:16:24.003877	-1
Chang Cheng			http://www.boardgamegeek.com/game/29903	\N	\N	\N	6125	2015-05-13 17:16:24.087283	-1
Charly			http://www.boardgamegeek.com/game/67038	\N	\N	\N	6126	2015-05-13 17:16:24.104002	-1
Charmed - Die Quelle				\N	\N	\N	6127	2015-05-13 17:16:24.120838	-1
Charmed - Le Pouvoir des Trois			http://www.boardgamegeek.com/game/26208	\N	\N	\N	6128	2015-05-13 17:16:24.137268	-1
Cheaty Mages!			http://www.boardgamegeek.com/game/38194	\N	\N	\N	6129	2015-05-13 17:16:24.154162	-1
Cheesy Gonzola			http://www.boardgamegeek.com/game/35339	\N	\N	\N	6130	2015-05-13 17:16:24.170598	-1
Chelsea			http://www.boardgamegeek.com/game/58374	\N	\N	\N	6131	2015-05-13 17:16:24.187554	-1
Chicago Express			http://www.boardgamegeek.com/game/31730	\N	\N	\N	6132	2015-05-13 17:16:24.203947	-1
Chinatown			http://www.boardgamegeek.com/game/47	\N	\N	\N	6133	2015-05-13 17:16:24.22079	-1
Choco			http://www.boardgamegeek.com/game/13373	\N	\N	\N	6134	2015-05-13 17:16:24.237438	-1
Chronicle			http://www.boardgamegeek.com/game/54307	\N	\N	\N	6135	2015-05-13 17:16:24.253969	-1
Civilization			http://www.boardgamegeek.com/game/71	\N	\N	\N	6136	2015-05-13 17:16:24.270468	-1
Clans			http://www.boardgamegeek.com/game/4636	\N	\N	\N	6137	2015-05-13 17:16:24.28739	-1
Classic Rummy				\N	\N	\N	6138	2015-05-13 17:16:24.312529	-1
Clippers			http://www.boardgamegeek.com/game/3128	\N	\N	\N	6139	2015-05-13 17:16:24.328884	-1
Cluedo Korttipeli			http://www.boardgamegeek.com/game/3269	\N	\N	\N	6140	2015-05-13 17:16:24.3456	-1
Cluzzle			http://www.boardgamegeek.com/game/9606	\N	\N	\N	6141	2015-05-13 17:16:24.362463	-1
Colonia			http://www.boardgamegeek.com/game/56707	\N	\N	\N	6142	2015-05-13 17:16:24.379111	-1
Coloretto			http://www.boardgamegeek.com/game/5782	\N	\N	\N	6143	2015-05-13 17:16:24.395716	-1
Colorpop			http://www.boardgamegeek.com/game/125028	\N	\N	\N	6144	2015-05-13 17:16:24.420689	-1
Command & Colors Napoleonics			http://www.boardgamegeek.com/game/62222	\N	\N	\N	6145	2015-05-13 17:16:24.437475	-1
Commands & Colors Ancients			http://www.boardgamegeek.com/game/14105	\N	\N	\N	6146	2015-05-13 17:16:24.453871	-1
Compact curling				\N	\N	\N	6147	2015-05-13 17:16:24.470731	-1
Compatibility			http://www.boardgamegeek.com/game/2604	\N	\N	\N	6148	2015-05-13 17:16:24.487447	-1
Condottiere			http://www.boardgamegeek.com/game/112	\N	\N	\N	6149	2015-05-13 17:16:24.50415	-1
Constellation			http://www.boardgamegeek.com/game/8178	\N	\N	\N	6150	2015-05-13 17:16:24.537535	-1
Continuo			http://www.boardgamegeek.com/game/1190	\N	\N	\N	6151	2015-05-13 17:16:24.554265	-1
Corunea			http://www.boardgamegeek.com/game/31336	\N	\N	\N	6152	2015-05-13 17:16:24.570684	-1
Cosmic Encounter			http://www.boardgamegeek.com/game/15	\N	\N	\N	6153	2015-05-13 17:16:24.587235	-1
Counsils & Contracts			http://www.boardgamegeek.com/game/147892	\N	\N	\N	6154	2015-05-13 17:16:24.603972	-1
Crazy Kick			http://www.boardgamegeek.com/game/21930	\N	\N	\N	6155	2015-05-13 17:16:24.629149	-1
Crystal Code			http://www.boardgamegeek.com/game/23684	\N	\N	\N	6156	2015-05-13 17:16:24.645566	-1
Cthulhu Rising			http://www.boardgamegeek.com/game/37349	\N	\N	\N	6157	2015-05-13 17:16:24.662643	-1
Cutthroat Caverns			http://www.boardgamegeek.com/game/28259	\N	\N	\N	6158	2015-05-13 17:16:24.678932	-1
CV			http://www.boardgamegeek.com/game/143986	\N	\N	\N	6159	2015-05-13 17:16:24.695882	-1
Da Vinci Code			http://www.boardgamegeek.com/game/8946	\N	\N	\N	6160	2015-05-13 17:16:24.712678	-1
Da Vincin Haaste			http://www.boardgamegeek.com/game/22042	\N	\N	\N	6162	2015-05-13 17:16:24.737455	-1
Da Vincin haaste			http://www.boardgamegeek.com/game/17136	\N	\N	\N	6163	2015-05-13 17:16:24.754071	-1
Dampfross			http://www.boardgamegeek.com/game/539	\N	\N	\N	6164	2015-05-13 17:16:24.787394	-1
Danger City			http://www.boardgamegeek.com/game/34393	\N	\N	\N	6165	2015-05-13 17:16:24.804188	-1
Defenders of ClayArt			http://www.boardgamegeek.com/game/37971	\N	\N	\N	6166	2015-05-13 17:16:24.820652	-1
Der Name der Rose			http://www.boardgamegeek.com/game/35488	\N	\N	\N	6167	2015-05-13 17:16:24.8374	-1
Diamant			http://www.boardgamegeek.com/game/15512	\N	\N	\N	6168	2015-05-13 17:16:24.854027	-1
Diamonds Club			http://www.boardgamegeek.com/game/37907	\N	\N	\N	6169	2015-05-13 17:16:24.87072	-1
Dice Town			http://www.boardgamegeek.com/game/40793	\N	\N	\N	6170	2015-05-13 17:16:24.887632	-1
Dicke luft in der  gruft			http://www.boardgamegeek.com/game/10814	\N	\N	\N	6171	2015-05-13 17:16:24.904028	-1
Die Händler von Genoa			http://www.boardgamegeek.com/game/1345	\N	\N	\N	6172	2015-05-13 17:16:24.920809	-1
Die Kolonien Jubiläums-Szenario			http://www.boardgamegeek.com/game/21097	\N	\N	\N	6173	2015-05-13 17:16:24.937426	-1
Die Ritter von der Haselnuss			http://www.boardgamegeek.com/game/1177	\N	\N	\N	6174	2015-05-13 17:16:24.954229	-1
Diplomacy			http://www.boardgamegeek.com/game/483	\N	\N	\N	6175	2015-05-13 17:16:24.970724	-1
Discover India			http://www.boardgamegeek.com/game/86270	\N	\N	\N	6178	2015-05-13 17:16:25.004076	-1
Dixit			http://www.boardgamegeek.com/game/39856	\N	\N	\N	6179	2015-05-13 17:16:25.02091	-1
Dixit Daydreams				\N	\N	\N	6180	2015-05-13 17:16:25.037463	-1
Dixit Jinx			http://www.boardgamegeek.com/game/119407	\N	\N	\N	6181	2015-05-13 17:16:25.054072	-1
Dixit Odyssey			http://www.boardgamegeek.com/game/92828	\N	\N	\N	6182	2015-05-13 17:16:25.070787	-1
dizios			http://www.boardgamegeek.com/game/66888	\N	\N	\N	6183	2015-05-13 17:16:25.087319	-1
Dobble			http://www.boardgamegeek.com/game/63268	\N	\N	\N	6184	2015-05-13 17:16:25.104109	-1
Dominan Species			http://www.boardgamegeek.com/game/62219	\N	\N	\N	6186	2015-05-13 17:16:25.129091	-1
Domination			http://www.boardgamegeek.com/game/16620	\N	\N	\N	6187	2015-05-13 17:16:25.145595	-1
Dominion			http://www.boardgamegeek.com/game/36218	\N	\N	\N	6188	2015-05-13 17:16:25.162588	-1
Dominion - Elonkorjuu			http://www.boardgamegeek.com/game/90850	\N	\N	\N	6189	2015-05-13 17:16:25.179368	-1
Dominion - Hovin Juonet			http://www.boardgamegeek.com/game/40834	\N	\N	\N	6190	2015-05-13 17:16:25.195653	-1
Dominion - Katovuodet			http://www.boardgamegeek.com/game/125403	\N	\N	\N	6191	2015-05-13 17:16:25.212693	-1
Dominion - Kaukaiset rannat			http://www.boardgamegeek.com/game/51811	\N	\N	\N	6192	2015-05-13 17:16:25.229349	-1
Dominion - Killat				\N	\N	\N	6193	2015-05-13 17:16:25.24569	-1
Dominion - nousukausi			http://www.boardgamegeek.com/game/66690	\N	\N	\N	6194	2015-05-13 17:16:25.262472	-1
Donki			http://www.boardgamegeek.com/game/8129	\N	\N	\N	6195	2015-05-13 17:16:25.278963	-1
Doom			http://www.boardgamegeek.com/game/10640	\N	\N	\N	6196	2015-05-13 17:16:25.295838	-1
Down Under			http://www.boardgamegeek.com/game/32154	\N	\N	\N	6197	2015-05-13 17:16:25.312678	-1
Drachengold			http://www.boardgamegeek.com/game/1042	\N	\N	\N	6198	2015-05-13 17:16:25.329046	-1
Dragonia				\N	\N	\N	6199	2015-05-13 17:16:25.346	-1
Du Balais			http://www.boardgamegeek.com/game/28025	\N	\N	\N	6200	2015-05-13 17:16:25.362593	-1
Halli Cups				\N	\N	\N	6274	2015-05-13 17:16:26.596268	-1
Dungeon Lords			http://www.boardgamegeek.com/game/45315	\N	\N	\N	6201	2015-05-13 17:16:25.379062	-1
Dungeons & Dragons			http://www.boardgamegeek.com/game/17533	\N	\N	\N	6202	2015-05-13 17:16:25.395968	-1
E.T. The Extra Terrestrial			http://www.boardgamegeek.com/game/6597	\N	\N	\N	6203	2015-05-13 17:16:25.412746	-1
E.T.I.: Estimated Time to Invasion			http://www.boardgamegeek.com/game/30370	\N	\N	\N	6204	2015-05-13 17:16:25.429327	-1
Eclipse			http://www.boardgamegeek.com/game/72125	\N	\N	\N	6205	2015-05-13 17:16:25.445785	-1
Edel, Stein & Reich			http://www.boardgamegeek.com/game/5781	\N	\N	\N	6206	2015-05-13 17:16:25.462721	-1
Eiszeit			http://www.boardgamegeek.com/game/5767	\N	\N	\N	6207	2015-05-13 17:16:25.479393	-1
El Paso			http://www.boardgamegeek.com/game/56880	\N	\N	\N	6208	2015-05-13 17:16:25.49599	-1
Elasund			http://www.boardgamegeek.com/game/19526	\N	\N	\N	6209	2015-05-13 17:16:25.512462	-1
Eläinpyramidi			http://www.boardgamegeek.com/game/17329	\N	\N	\N	6211	2015-05-13 17:16:25.537394	-1
End of the Triumvirate			http://www.boardgamegeek.com/game/20134	\N	\N	\N	6212	2015-05-13 17:16:25.554128	-1
Ene Mene Muh, gib mir deine Kuh!			http://www.boardgamegeek.com/game/20549	\N	\N	\N	6213	2015-05-13 17:16:25.571038	-1
Enigma			http://www.boardgamegeek.com/game/127312	\N	\N	\N	6214	2015-05-13 17:16:25.587459	-1
Ensimmäinen Alias				\N	\N	\N	6215	2015-05-13 17:16:25.604261	-1
Epäillyt			http://www.boardgamegeek.com/game/41898	\N	\N	\N	6216	2015-05-13 17:16:25.620942	-1
Escape				\N	\N	\N	6217	2015-05-13 17:16:25.637584	-1
España 1936			http://www.boardgamegeek.com/game/31291	\N	\N	\N	6218	2015-05-13 17:16:25.654107	-1
Eternals				\N	\N	\N	6219	2015-05-13 17:16:25.670883	-1
Evergreen			http://www.boardgamegeek.com/game/304	\N	\N	\N	6220	2015-05-13 17:16:25.687422	-1
Evolution Earth: Cataclysm			http://www.boardgamegeek.com/game/63216	\N	\N	\N	6221	2015-05-13 17:16:25.704167	-1
Evolution: The Origin of Species			http://www.boardgamegeek.com/game/71021	\N	\N	\N	6222	2015-05-13 17:16:25.720955	-1
Fairy Tale			http://www.boardgamegeek.com/game/13823	\N	\N	\N	6223	2015-05-13 17:16:25.737637	-1
Farbendomino			http://www.boardgamegeek.com/game/86413	\N	\N	\N	6224	2015-05-13 17:16:25.75426	-1
Farlander			http://www.boardgamegeek.com/game/10196	\N	\N	\N	6225	2015-05-13 17:16:25.770854	-1
Fauna			http://www.boardgamegeek.com/game/35497	\N	\N	\N	6227	2015-05-13 17:16:25.795815	-1
Fettnapf			http://www.boardgamegeek.com/game/19646	\N	\N	\N	6228	2015-05-13 17:16:25.812713	-1
Feudo			http://www.boardgamegeek.com/game/13976	\N	\N	\N	6229	2015-05-13 17:16:25.829505	-1
Fifth Avenue			http://www.boardgamegeek.com/game/9342	\N	\N	\N	6230	2015-05-13 17:16:25.845863	-1
Fifty Fifty			http://www.boardgamegeek.com/game/83197	\N	\N	\N	6231	2015-05-13 17:16:25.862551	-1
Figuratzy			http://www.boardgamegeek.com/game/150979	\N	\N	\N	6232	2015-05-13 17:16:25.87913	-1
Finanssinero			http://www.boardgamegeek.com/game/32677	\N	\N	\N	6233	2015-05-13 17:16:25.89606	-1
Fits			http://www.boardgamegeek.com/game/40393	\N	\N	\N	6234	2015-05-13 17:16:25.912549	-1
Flinke Stinker			http://www.boardgamegeek.com/game/66799	\N	\N	\N	6235	2015-05-13 17:16:25.929136	-1
Flip Flop Pikku Myy			http://www.boardgamegeek.com/game/132679	\N	\N	\N	6236	2015-05-13 17:16:25.945792	-1
Formula D			http://www.boardgamegeek.com/game/37904	\N	\N	\N	6237	2015-05-13 17:16:25.962525	-1
FrachtExpress			http://www.boardgamegeek.com/game/2698	\N	\N	\N	6238	2015-05-13 17:16:25.97926	-1
Freddy			http://www.boardgamegeek.com/game/33036	\N	\N	\N	6239	2015-05-13 17:16:25.99582	-1
Fremde Federn			http://www.boardgamegeek.com/game/114031	\N	\N	\N	6240	2015-05-13 17:16:26.012902	-1
Fresco			http://www.boardgamegeek.com/game/66188	\N	\N	\N	6241	2015-05-13 17:16:26.02916	-1
Fruttirelli			http://www.boardgamegeek.com/game/33799	\N	\N	\N	6242	2015-05-13 17:16:26.045936	-1
Fundstücke			http://www.boardgamegeek.com/game/4475	\N	\N	\N	6243	2015-05-13 17:16:26.062772	-1
Funkenschlag			http://www.boardgamegeek.com/game/2651	\N	\N	\N	6244	2015-05-13 17:16:26.079525	-1
Funny Domino			http://www.boardgamegeek.com/game/28880	\N	\N	\N	6245	2015-05-13 17:16:26.09586	-1
Funny Fishing			http://www.boardgamegeek.com/game/24884	\N	\N	\N	6246	2015-05-13 17:16:26.112786	-1
Gamushara Gang			http://www.boardgamegeek.com/game/38288	\N	\N	\N	6249	2015-05-13 17:16:26.154322	-1
Gear & Piston			http://www.boardgamegeek.com/game/140613	\N	\N	\N	6250	2015-05-13 17:16:26.170921	-1
Geistesblitz			http://www.boardgamegeek.com/game/83195	\N	\N	\N	6251	2015-05-13 17:16:26.18755	-1
Genial			http://www.boardgamegeek.com/game/9674	\N	\N	\N	6253	2015-05-13 17:16:26.21244	-1
Genial Matkaversio			http://www.boardgamegeek.com/game/22484	\N	\N	\N	6255	2015-05-13 17:16:26.262644	-1
Gezanke auf der Planke!			http://www.boardgamegeek.com/game/26106	\N	\N	\N	6256	2015-05-13 17:16:26.279568	-1
Gheos			http://www.boardgamegeek.com/game/23730	\N	\N	\N	6257	2015-05-13 17:16:26.29595	-1
Ghost for $ale			http://www.boardgamegeek.com/game/30287	\N	\N	\N	6258	2015-05-13 17:16:26.312718	-1
Ghost Stories			http://www.boardgamegeek.com/game/37046	\N	\N	\N	6259	2015-05-13 17:16:26.329239	-1
GiftTRAP			http://www.boardgamegeek.com/game/23686	\N	\N	\N	6261	2015-05-13 17:16:26.354264	-1
Giro Galoppo			http://www.boardgamegeek.com/game/21985	\N	\N	\N	6262	2015-05-13 17:16:26.371022	-1
Gloria Mundi			http://www.boardgamegeek.com/game/13286	\N	\N	\N	6263	2015-05-13 17:16:26.388017	-1
Go West			http://www.boardgamegeek.com/game/15180	\N	\N	\N	6264	2015-05-13 17:16:26.404434	-1
Go/Stop			http://www.boardgamegeek.com/game/21061	\N	\N	\N	6265	2015-05-13 17:16:26.42125	-1
Goggle Eyes			http://www.boardgamegeek.com/game/57215	\N	\N	\N	6266	2015-05-13 17:16:26.462595	-1
GoGoGo			http://www.boardgamegeek.com/game/24258	\N	\N	\N	6267	2015-05-13 17:16:26.479629	-1
Good Friends			http://www.boardgamegeek.com/game/10511	\N	\N	\N	6268	2015-05-13 17:16:26.495981	-1
Gosu			http://www.boardgamegeek.com/game/66587	\N	\N	\N	6269	2015-05-13 17:16:26.512946	-1
Great Wall of China			http://www.boardgamegeek.com/game/22198	\N	\N	\N	6270	2015-05-13 17:16:26.529287	-1
Greedy Kingdoms			http://www.boardgamegeek.com/game/57201	\N	\N	\N	6271	2015-05-13 17:16:26.545977	-1
Gulo Gulo			http://www.boardgamegeek.com/game/6351	\N	\N	\N	6272	2015-05-13 17:16:26.562909	-1
Halli Galli			http://www.boardgamegeek.com/game/2944	\N	\N	\N	6275	2015-05-13 17:16:26.612893	-1
Halli Klack!			http://www.boardgamegeek.com/game/117555	\N	\N	\N	6277	2015-05-13 17:16:26.654427	-1
Hanafuda			http://www.boardgamegeek.com/game/5451	\N	\N	\N	6278	2015-05-13 17:16:26.67112	-1
Harakkavarkaat			http://www.boardgamegeek.com/game/18110	\N	\N	\N	6279	2015-05-13 17:16:26.687702	-1
Haste Bock?			http://www.boardgamegeek.com/game/18866	\N	\N	\N	6280	2015-05-13 17:16:26.704486	-1
Hau La			http://www.boardgamegeek.com/game/57310	\N	\N	\N	6281	2015-05-13 17:16:26.72116	-1
Havana			http://www.boardgamegeek.com/game/57925	\N	\N	\N	6282	2015-05-13 17:16:26.737703	-1
Heads of State			http://www.boardgamegeek.com/game/38778	\N	\N	\N	6283	2015-05-13 17:16:26.754404	-1
Heart of Africa			http://www.boardgamegeek.com/game/10869	\N	\N	\N	6284	2015-05-13 17:16:26.771106	-1
Heckmeck am Bratwurmeck			http://www.boardgamegeek.com/game/15818	\N	\N	\N	6285	2015-05-13 17:16:26.787783	-1
Heckmeck Barbecue			http://www.boardgamegeek.com/game/66798	\N	\N	\N	6286	2015-05-13 17:16:26.8044	-1
Heli Hopper			http://www.boardgamegeek.com/game/28834	\N	\N	\N	6287	2015-05-13 17:16:26.820908	-1
Hello Kitty Kimble				\N	\N	\N	6288	2015-05-13 17:16:26.837741	-1
Hermagor			http://www.boardgamegeek.com/game/25224	\N	\N	\N	6289	2015-05-13 17:16:26.879398	-1
Hexcite Global			http://www.boardgamegeek.com/game/9097	\N	\N	\N	6290	2015-05-13 17:16:26.89616	-1
Hidden Conflict			http://www.boardgamegeek.com/game/15804	\N	\N	\N	6291	2015-05-13 17:16:26.912987	-1
High Five			http://www.boardgamegeek.com/game/69205	\N	\N	\N	6292	2015-05-13 17:16:26.929686	-1
Himalaya			http://www.boardgamegeek.com/game/3800	\N	\N	\N	6293	2015-05-13 17:16:26.946267	-1
Hobitti			http://www.boardgamegeek.com/game/126444	\N	\N	\N	6294	2015-05-13 17:16:26.962926	-1
Hobitti - lautapeli			http://www.boardgamegeek.com/game/83629	\N	\N	\N	6295	2015-05-13 17:16:26.979305	-1
Hokaa tai mokaa				\N	\N	\N	6296	2015-05-13 17:16:26.996158	-1
Hollywood			http://www.boardgamegeek.com/game/904	\N	\N	\N	6297	2015-05-13 17:16:27.013052	-1
Hollywood Casting			http://www.boardgamegeek.com/game/34072	\N	\N	\N	6298	2015-05-13 17:16:27.029504	-1
Hoppsan				\N	\N	\N	6299	2015-05-13 17:16:27.046029	-1
Hornet			http://www.boardgamegeek.com/game/71272	\N	\N	\N	6300	2015-05-13 17:16:27.079367	-1
Hotel Checkout			http://www.boardgamegeek.com/game/37437	\N	\N	\N	6301	2015-05-13 17:16:27.096047	-1
Hotel Mystery			http://www.boardgamegeek.com/game/80006	\N	\N	\N	6302	2015-05-13 17:16:27.112888	-1
Huippuhatut			http://www.boardgamegeek.com/game/2549	\N	\N	\N	6304	2015-05-13 17:16:27.137784	-1
Humpuuki				\N	\N	\N	6305	2015-05-13 17:16:27.154555	-1
Husch Husch kleine Hexe			http://www.boardgamegeek.com/game/6573	\N	\N	\N	6306	2015-05-13 17:16:27.187787	-1
i				\N	\N	\N	6307	2015-05-13 17:16:27.204543	-1
Ice Breaker				\N	\N	\N	6308	2015-05-13 17:16:27.221282	-1
Iglu Pop			http://www.boardgamegeek.com/game/8668	\N	\N	\N	6309	2015-05-13 17:16:27.237827	-1
iKnow			http://www.boardgamegeek.com/game/130680	\N	\N	\N	6310	2015-05-13 17:16:27.254459	-1
iKNOW				\N	\N	\N	6311	2015-05-13 17:16:27.321282	-1
iKnow - Aikamme uudet illmiöt				\N	\N	\N	6312	2015-05-13 17:16:27.371402	-1
Illuminati			http://www.boardgamegeek.com/game/859	\N	\N	\N	6313	2015-05-13 17:16:27.387872	-1
Im Jahr des Drachen			http://www.boardgamegeek.com/game/31594	\N	\N	\N	6314	2015-05-13 17:16:27.413126	-1
Impact			http://www.boardgamegeek.com/game/15863	\N	\N	\N	6315	2015-05-13 17:16:27.429736	-1
Inkan aarre				\N	\N	\N	6316	2015-05-13 17:16:27.446378	-1
Iron Sky				\N	\N	\N	6317	2015-05-13 17:16:27.462732	-1
Isabelle & Isabeau			http://www.boardgamegeek.com/game/34391	\N	\N	\N	6318	2015-05-13 17:16:27.47967	-1
Isis & Osiris			http://www.boardgamegeek.com/game/1245	\N	\N	\N	6319	2015-05-13 17:16:27.496234	-1
It's Alive			http://www.boardgamegeek.com/game/28396	\N	\N	\N	6320	2015-05-13 17:16:27.512674	-1
Jalokivijahti				\N	\N	\N	6321	2015-05-13 17:16:27.529553	-1
Jerusalem			http://www.boardgamegeek.com/game/63632	\N	\N	\N	6322	2015-05-13 17:16:27.546375	-1
Jetset Casino			http://www.boardgamegeek.com/game/34298	\N	\N	\N	6323	2015-05-13 17:16:27.562713	-1
Jumbo Zoo			http://www.boardgamegeek.com/game/29940	\N	\N	\N	6324	2015-05-13 17:16:27.579375	-1
Junior Alias			http://www.boardgamegeek.com/game/16160	\N	\N	\N	6325	2015-05-13 17:16:27.596326	-1
Junior Lancelot				\N	\N	\N	6326	2015-05-13 17:16:27.61283	-1
Just 4 fun			http://www.boardgamegeek.com/game/17534	\N	\N	\N	6327	2015-05-13 17:16:27.629373	-1
Jää Sulaa			http://www.boardgamegeek.com/game/141680	\N	\N	\N	6329	2015-05-13 17:16:27.654659	-1
Kadonnut kaupunki				\N	\N	\N	6330	2015-05-13 17:16:27.67118	-1
Kalaha			http://www.boardgamegeek.com/game/2448	\N	\N	\N	6331	2015-05-13 17:16:27.687861	-1
Kaleidos			http://www.boardgamegeek.com/game/545	\N	\N	\N	6332	2015-05-13 17:16:27.704571	-1
Kamisado			http://www.boardgamegeek.com/game/38545	\N	\N	\N	6333	2015-05-13 17:16:27.729666	-1
Kamon			http://www.boardgamegeek.com/game/28738	\N	\N	\N	6334	2015-05-13 17:16:27.746109	-1
Kanin loikka			http://www.boardgamegeek.com/game/8964	\N	\N	\N	6335	2015-05-13 17:16:27.762839	-1
Kannibaalisilmät			http://www.boardgamegeek.com/game/37038	\N	\N	\N	6337	2015-05-13 17:16:27.787833	-1
Kapteeni ja Pilssihiiri			http://www.boardgamegeek.com/game/99393	\N	\N	\N	6339	2015-05-13 17:16:27.812807	-1
Karambolage			http://www.boardgamegeek.com/game/5953	\N	\N	\N	6340	2015-05-13 17:16:27.884732	-1
Karhukopla			http://www.boardgamegeek.com/game/145853	\N	\N	\N	6341	2015-05-13 17:16:27.904701	-1
Karibia			http://www.boardgamegeek.com/game/13301	\N	\N	\N	6342	2015-05-13 17:16:27.92144	-1
Kasvoton vihollinen			http://www.boardgamegeek.com/game/36817	\N	\N	\N	6343	2015-05-13 17:16:27.937886	-1
Kazaam			http://www.boardgamegeek.com/game/32143	\N	\N	\N	6344	2015-05-13 17:16:27.971404	-1
Kellotornin kummitukset				\N	\N	\N	6345	2015-05-13 17:16:27.987901	-1
Keltis			http://www.boardgamegeek.com/game/34585	\N	\N	\N	6346	2015-05-13 17:16:28.004607	-1
Kimble			http://www.boardgamegeek.com/game/1410	\N	\N	\N	6347	2015-05-13 17:16:28.021211	-1
Kimpassa				\N	\N	\N	6348	2015-05-13 17:16:28.037898	-1
King of History			http://www.boardgamegeek.com/game/20193	\N	\N	\N	6349	2015-05-13 17:16:28.054575	-1
King of Tokyo				\N	\N	\N	6350	2015-05-13 17:16:28.079723	-1
Kingdom Builder			http://www.boardgamegeek.com/game/107529	\N	\N	\N	6351	2015-05-13 17:16:28.096167	-1
Kingdoms of Crusaders			http://www.boardgamegeek.com/game/76681	\N	\N	\N	6352	2015-05-13 17:16:28.113073	-1
Kings of Mithril			http://www.boardgamegeek.com/game/83117	\N	\N	\N	6353	2015-05-13 17:16:28.12962	-1
Kipin Kapin Kurre			http://www.boardgamegeek.com/game/32839	\N	\N	\N	6354	2015-05-13 17:16:28.14627	-1
Kivi, Paperi ja Sakset			http://www.boardgamegeek.com/game/19377	\N	\N	\N	6355	2015-05-13 17:16:28.162976	-1
Koiviston seilipaatit ja Haparia hailiverkoilla				\N	\N	\N	6356	2015-05-13 17:16:28.213167	-1
Koko perhe näyttelee				\N	\N	\N	6357	2015-05-13 17:16:28.254812	-1
Koukussa!			http://www.boardgamegeek.com/game/16226	\N	\N	\N	6358	2015-05-13 17:16:28.271436	-1
Kultainen Kompassi			http://www.boardgamegeek.com/game/30239	\N	\N	\N	6360	2015-05-13 17:16:28.296217	-1
Kättä päälle			http://www.boardgamegeek.com/game/149825	\N	\N	\N	6361	2015-05-13 17:16:28.313213	-1
La Boka				\N	\N	\N	6362	2015-05-13 17:16:28.329557	-1
Ladybug's Costume Party			http://www.boardgamegeek.com/game/4522	\N	\N	\N	6363	2015-05-13 17:16:28.346182	-1
Lasten Carcassonne			http://www.boardgamegeek.com/game/41010	\N	\N	\N	6364	2015-05-13 17:16:28.363111	-1
Lasten ostosretki				\N	\N	\N	6365	2015-05-13 17:16:28.379517	-1
LCR			http://www.boardgamegeek.com/game/3522	\N	\N	\N	6366	2015-05-13 17:16:28.396258	-1
League of Six			http://www.boardgamegeek.com/game/31624	\N	\N	\N	6367	2015-05-13 17:16:28.413134	-1
Legends of Andor			http://www.boardgamegeek.com/game/127398	\N	\N	\N	6368	2015-05-13 17:16:28.429529	-1
Lentävä Matto				\N	\N	\N	6369	2015-05-13 17:16:28.446392	-1
Leonardo da Vinci			http://www.boardgamegeek.com/game/21920	\N	\N	\N	6370	2015-05-13 17:16:28.463009	-1
Lexico				\N	\N	\N	6371	2015-05-13 17:16:28.479907	-1
Lifeboats			http://www.boardgamegeek.com/game/249	\N	\N	\N	6372	2015-05-13 17:16:28.496522	-1
Ligretto Blue			http://www.boardgamegeek.com/game/943	\N	\N	\N	6373	2015-05-13 17:16:28.5132	-1
Ligretto Red			http://www.boardgamegeek.com/game/943	\N	\N	\N	6374	2015-05-13 17:16:28.529827	-1
Liskosafari				\N	\N	\N	6375	2015-05-13 17:16:28.546445	-1
Livingstone			http://www.boardgamegeek.com/game/40444	\N	\N	\N	6376	2015-05-13 17:16:28.562953	-1
Lohikäärmeiden aarre			http://www.boardgamegeek.com/game/7483	\N	\N	\N	6377	2015-05-13 17:16:28.579591	-1
Lost Cities			http://www.boardgamegeek.com/game/50	\N	\N	\N	6378	2015-05-13 17:16:28.596499	-1
Love Letter				\N	\N	\N	6381	2015-05-13 17:16:28.629554	-1
Lunch Money				\N	\N	\N	6383	2015-05-13 17:16:28.654978	-1
Luonneanalyysi			http://www.boardgamegeek.com/game/15620	\N	\N	\N	6384	2015-05-13 17:16:28.671367	-1
Ma-Ni-Tu			http://www.boardgamegeek.com/game/28755	\N	\N	\N	6385	2015-05-13 17:16:28.687965	-1
Maaali!			http://www.boardgamegeek.com/game/388	\N	\N	\N	6386	2015-05-13 17:16:28.70475	-1
Maaginen Labyrintti			http://www.boardgamegeek.com/game/41916	\N	\N	\N	6387	2015-05-13 17:16:28.721597	-1
Maailman ympäri 80 päivässä			http://www.boardgamegeek.com/game/12005	\N	\N	\N	6389	2015-05-13 17:16:28.746442	-1
Madeira			http://www.boardgamegeek.com/game/95527	\N	\N	\N	6390	2015-05-13 17:16:28.762997	-1
Mago Magino			http://www.boardgamegeek.com/game/17235	\N	\N	\N	6391	2015-05-13 17:16:28.779643	-1
Make 'n' Break Extreme			http://www.boardgamegeek.com/game/30706	\N	\N	\N	6392	2015-05-13 17:16:28.796335	-1
Mana			http://www.boardgamegeek.com/game/21703	\N	\N	\N	6393	2015-05-13 17:16:28.812998	-1
Manhattan			http://www.boardgamegeek.com/game/199	\N	\N	\N	6394	2015-05-13 17:16:28.829629	-1
Mania!			http://www.boardgamegeek.com/game/85295	\N	\N	\N	6395	2015-05-13 17:16:28.846516	-1
Manila			http://www.boardgamegeek.com/game/15817	\N	\N	\N	6397	2015-05-13 17:16:28.871669	-1
Manno Monster				\N	\N	\N	6398	2015-05-13 17:16:28.888131	-1
Manoeuvre			http://www.boardgamegeek.com/game/17396	\N	\N	\N	6399	2015-05-13 17:16:28.904913	-1
Mare Bella			http://www.boardgamegeek.com/game/35099	\N	\N	\N	6401	2015-05-13 17:16:28.929608	-1
Mare Nostrum			http://www.boardgamegeek.com/game/3931	\N	\N	\N	6402	2015-05-13 17:16:28.946372	-1
Marnon			http://www.boardgamegeek.com/game/310	\N	\N	\N	6404	2015-05-13 17:16:28.971738	-1
Master Labyrinth			http://www.boardgamegeek.com/game/437	\N	\N	\N	6405	2015-05-13 17:16:28.988062	-1
Matchit			http://www.boardgamegeek.com/game/159154	\N	\N	\N	6406	2015-05-13 17:16:29.004712	-1
Matka maan keskipisteeseen			http://www.boardgamegeek.com/game/34010	\N	\N	\N	6407	2015-05-13 17:16:29.02167	-1
Mato Mato			http://www.boardgamegeek.com/game/91671	\N	\N	\N	6408	2015-05-13 17:16:29.038061	-1
Mau Maus			http://www.boardgamegeek.com/game/17500	\N	\N	\N	6409	2015-05-13 17:16:29.054801	-1
Mauna Kea				\N	\N	\N	6410	2015-05-13 17:16:29.071417	-1
Maus Geflippt				\N	\N	\N	6411	2015-05-13 17:16:29.087915	-1
Maxi Yatzy			http://www.boardgamegeek.com/game/20182	\N	\N	\N	6412	2015-05-13 17:16:29.105051	-1
Menolippu			http://www.boardgamegeek.com/game/9209	\N	\N	\N	6413	2015-05-13 17:16:29.121517	-1
Menolippu Eurooppa			http://www.boardgamegeek.com/game/14996	\N	\N	\N	6414	2015-05-13 17:16:29.179845	-1
Menolippu Eurooppa 1912			http://www.boardgamegeek.com/game/53383	\N	\N	\N	6415	2015-05-13 17:16:29.285799	-1
Menolippu korttipeli			http://www.boardgamegeek.com/game/34127	\N	\N	\N	6416	2015-05-13 17:16:29.338011	-1
Menolippu pohjoismaat			http://www.boardgamegeek.com/game/31627	\N	\N	\N	6417	2015-05-13 17:16:29.355048	-1
Menolippu Sveitsi			http://www.boardgamegeek.com/game/30746	\N	\N	\N	6418	2015-05-13 17:16:29.371727	-1
Menolippu USA 1910			http://www.boardgamegeek.com/game/24439	\N	\N	\N	6419	2015-05-13 17:16:29.388219	-1
Merirosvopoukama			http://www.boardgamegeek.com/game/2987	\N	\N	\N	6420	2015-05-13 17:16:29.404854	-1
Metro			http://www.boardgamegeek.com/game/559	\N	\N	\N	6421	2015-05-13 17:16:29.421643	-1
metropolys			http://www.boardgamegeek.com/game/25568	\N	\N	\N	6422	2015-05-13 17:16:29.438096	-1
Mexican Train			http://www.boardgamegeek.com/game/11634	\N	\N	\N	6423	2015-05-13 17:16:29.454941	-1
Midgard			http://www.boardgamegeek.com/game/23985	\N	\N	\N	6424	2015-05-13 17:16:29.47142	-1
Miksi juuri Mäntsälä...?			http://www.boardgamegeek.com/game/43080	\N	\N	\N	6425	2015-05-13 17:16:29.488313	-1
Ming Dynasty			http://www.boardgamegeek.com/game/31075	\N	\N	\N	6426	2015-05-13 17:16:29.504958	-1
miQube			http://www.boardgamegeek.com/game/31715	\N	\N	\N	6427	2015-05-13 17:16:29.521725	-1
Mission Scorpio			http://www.boardgamegeek.com/game/33482	\N	\N	\N	6428	2015-05-13 17:16:29.538157	-1
Missä lahjat herra Hakkarainen			http://www.boardgamegeek.com/game/21541	\N	\N	\N	6429	2015-05-13 17:16:29.554729	-1
Modern Art			http://www.boardgamegeek.com/game/118	\N	\N	\N	6430	2015-05-13 17:16:29.571476	-1
Mondo			http://www.boardgamegeek.com/game/91523	\N	\N	\N	6431	2015-05-13 17:16:29.588127	-1
Monopoli			http://www.boardgamegeek.com/game/1406	\N	\N	\N	6432	2015-05-13 17:16:29.604815	-1
Monopoly			http://www.boardgamegeek.com/game/1406	\N	\N	\N	6433	2015-05-13 17:16:29.621591	-1
Monopoly - Star Wars			http://www.boardgamegeek.com/game/1298	\N	\N	\N	6434	2015-05-13 17:16:29.638207	-1
Monopoly Korttipeli			http://www.boardgamegeek.com/game/684	\N	\N	\N	6435	2015-05-13 17:16:29.654828	-1
Monopoly korttipeli			http://www.boardgamegeek.com/game/684	\N	\N	\N	6436	2015-05-13 17:16:29.671478	-1
Mont Saint Michel			http://www.boardgamegeek.com/game/21835	\N	\N	\N	6437	2015-05-13 17:16:29.688231	-1
Monte Cristo				\N	\N	\N	6438	2015-05-13 17:16:29.704776	-1
Monumento Extreme				\N	\N	\N	6439	2015-05-13 17:16:29.721595	-1
Monza			http://www.boardgamegeek.com/game/4209	\N	\N	\N	6440	2015-05-13 17:16:29.738091	-1
Mord im Arosa			http://www.boardgamegeek.com/game/80006	\N	\N	\N	6441	2015-05-13 17:16:29.754834	-1
Movies & Money			http://www.boardgamegeek.com/game/1175	\N	\N	\N	6442	2015-05-13 17:16:29.771483	-1
Mozaika			http://www.boardgamegeek.com/game/25567	\N	\N	\N	6443	2015-05-13 17:16:29.788204	-1
Mustang			http://www.boardgamegeek.com/game/32993	\N	\N	\N	6444	2015-05-13 17:16:29.805082	-1
Muumien Sanasirkus				\N	\N	\N	6445	2015-05-13 17:16:29.821491	-1
Muumipeli				\N	\N	\N	6446	2015-05-13 17:16:29.838214	-1
Mykerinos			http://www.boardgamegeek.com/game/21441	\N	\N	\N	6447	2015-05-13 17:16:29.855053	-1
Mylady Musketiere			http://www.boardgamegeek.com/game/78954	\N	\N	\N	6448	2015-05-13 17:16:29.871506	-1
Myytti			http://www.boardgamegeek.com/game/61450	\N	\N	\N	6449	2015-05-13 17:16:29.888171	-1
Möhköfantti				\N	\N	\N	6450	2015-05-13 17:16:29.921683	-1
N-Tropy			http://www.boardgamegeek.com/game/15721	\N	\N	\N	6451	2015-05-13 17:16:29.938204	-1
Nations			http://www.boardgamegeek.com/game/126042	\N	\N	\N	6452	2015-05-13 17:16:29.955116	-1
Neljän suora			http://www.boardgamegeek.com/game/2719	\N	\N	\N	6453	2015-05-13 17:16:29.97172	-1
Neuland			http://www.boardgamegeek.com/game/12681	\N	\N	\N	6454	2015-05-13 17:16:29.98848	-1
Neuroshima Hex Duel			http://www.boardgamegeek.com/game/43262	\N	\N	\N	6455	2015-05-13 17:16:30.004838	-1
New England			http://www.boardgamegeek.com/game/5406	\N	\N	\N	6456	2015-05-13 17:16:30.021756	-1
Niagara			http://www.boardgamegeek.com/game/13308	\N	\N	\N	6457	2015-05-13 17:16:30.038128	-1
Nicht Zu Fassen				\N	\N	\N	6459	2015-05-13 17:16:30.063082	-1
Nino Delfino				\N	\N	\N	6460	2015-05-13 17:16:30.079758	-1
Noppa-Alias				\N	\N	\N	6461	2015-05-13 17:16:30.096588	-1
Notre Dame			http://www.boardgamegeek.com/game/25554	\N	\N	\N	6462	2015-05-13 17:16:30.129936	-1
novem			http://www.boardgamegeek.com/game/38678	\N	\N	\N	6463	2015-05-13 17:16:30.146585	-1
Oasis			http://www.boardgamegeek.com/game/9027	\N	\N	\N	6464	2015-05-13 17:16:30.163273	-1
Octopus			http://www.boardgamegeek.com/game/66825	\N	\N	\N	6465	2015-05-13 17:16:30.180026	-1
Odin's Table			http://www.boardgamegeek.com/game/66551	\N	\N	\N	6466	2015-05-13 17:16:30.196572	-1
Odin's table				\N	\N	\N	6467	2015-05-13 17:16:30.213136	-1
Off Topic				\N	\N	\N	6468	2015-05-13 17:16:30.229882	-1
Oil Field			http://www.boardgamegeek.com/game/31354	\N	\N	\N	6469	2015-05-13 17:16:30.246588	-1
Okko, Era of the Asagiri			http://www.boardgamegeek.com/game/29602	\N	\N	\N	6471	2015-05-13 17:16:30.271645	-1
Oltre Mare			http://www.boardgamegeek.com/game/13551	\N	\N	\N	6472	2015-05-13 17:16:30.288278	-1
On the Underground			http://www.boardgamegeek.com/game/24773	\N	\N	\N	6473	2015-05-13 17:16:30.305027	-1
On Top			http://www.boardgamegeek.com/game/35468	\N	\N	\N	6474	2015-05-13 17:16:30.338243	-1
Onslaught			http://www.boardgamegeek.com/game/4287	\N	\N	\N	6475	2015-05-13 17:16:30.355033	-1
Opera			http://www.boardgamegeek.com/game/42743	\N	\N	\N	6476	2015-05-13 17:16:30.371874	-1
Operation			http://www.boardgamegeek.com/game/3737	\N	\N	\N	6477	2015-05-13 17:16:30.3883	-1
Orchard			http://www.boardgamegeek.com/game/5770	\N	\N	\N	6478	2015-05-13 17:16:30.405237	-1
Oregon			http://www.boardgamegeek.com/game/31497	\N	\N	\N	6479	2015-05-13 17:16:30.421624	-1
Orient Express			http://www.boardgamegeek.com/game/2363	\N	\N	\N	6480	2015-05-13 17:16:30.438607	-1
Origo			http://www.boardgamegeek.com/game/27380	\N	\N	\N	6481	2015-05-13 17:16:30.454976	-1
Oshi			http://www.boardgamegeek.com/game/23935	\N	\N	\N	6482	2015-05-13 17:16:30.47162	-1
Pandemia			http://www.boardgamegeek.com/game/30549	\N	\N	\N	6483	2015-05-13 17:16:30.488558	-1
Partners				\N	\N	\N	6485	2015-05-13 17:16:30.513252	-1
Pathagon			http://www.boardgamegeek.com/game/113513	\N	\N	\N	6486	2015-05-13 17:16:30.55496	-1
Pecunia non olet			http://www.boardgamegeek.com/game/20082	\N	\N	\N	6487	2015-05-13 17:16:30.571678	-1
Peikkopolku				\N	\N	\N	6488	2015-05-13 17:16:30.588183	-1
Pekingin Mysteerit			http://www.boardgamegeek.com/game/1950	\N	\N	\N	6489	2015-05-13 17:16:30.605179	-1
Pelikortit			http://www.boardgamegeek.com/game/21804	\N	\N	\N	6490	2015-05-13 17:16:30.621766	-1
Penguin			http://www.boardgamegeek.com/game/22898	\N	\N	\N	6491	2015-05-13 17:16:30.638565	-1
Pentago			http://www.boardgamegeek.com/game/19841	\N	\N	\N	6492	2015-05-13 17:16:30.65534	-1
Pentago XL			http://www.boardgamegeek.com/game/21012	\N	\N	\N	6494	2015-05-13 17:16:30.679964	-1
Pesukarhun pyykkipäivä				\N	\N	\N	6495	2015-05-13 17:16:30.696805	-1
Pharaoh Code				\N	\N	\N	6496	2015-05-13 17:16:30.713344	-1
Phoenicia			http://www.boardgamegeek.com/game/28620	\N	\N	\N	6497	2015-05-13 17:16:30.729982	-1
Photo Loco			http://www.boardgamegeek.com/game/110722	\N	\N	\N	6498	2015-05-13 17:16:30.746906	-1
Piatnik 2x55 korttipakka (2300				\N	\N	\N	6499	2015-05-13 17:16:30.763412	-1
Piatnik 78-kortin Tarot-pakka				\N	\N	\N	6500	2015-05-13 17:16:30.779918	-1
Piatnik Doppelkopf-pakka (182419				\N	\N	\N	6501	2015-05-13 17:16:30.796567	-1
Piatnik Jass-pakka (1831)				\N	\N	\N	6502	2015-05-13 17:16:30.813261	-1
Piatnik Preference-pakka (1811)				\N	\N	\N	6503	2015-05-13 17:16:30.829925	-1
Piatnik Schafkopf-pakka (182211)				\N	\N	\N	6504	2015-05-13 17:16:30.846642	-1
Piatnik Skat-pakka (1804)				\N	\N	\N	6505	2015-05-13 17:16:30.863462	-1
Piatnik Tarock-pakka (1936)				\N	\N	\N	6506	2015-05-13 17:16:30.880008	-1
Pictureka!			http://www.boardgamegeek.com/game/22889	\N	\N	\N	6508	2015-05-13 17:16:30.905242	-1
Pig 10			http://www.boardgamegeek.com/game/83196	\N	\N	\N	6509	2015-05-13 17:16:30.921895	-1
Piirrä ja Arvaa			http://www.boardgamegeek.com/game/15020	\N	\N	\N	6510	2015-05-13 17:16:30.938394	-1
Pikku noita			http://www.boardgamegeek.com/game/29694	\N	\N	\N	6511	2015-05-13 17:16:30.963375	-1
Pingwin			http://www.boardgamegeek.com/game/8203	\N	\N	\N	6512	2015-05-13 17:16:30.98006	-1
Pingwin Deluxe			http://www.boardgamegeek.com/game/8203	\N	\N	\N	6513	2015-05-13 17:16:30.996917	-1
Pino Sortino			http://www.boardgamegeek.com/game/32423	\N	\N	\N	6514	2015-05-13 17:16:31.013538	-1
Piranha Pedro			http://www.boardgamegeek.com/game/14035	\N	\N	\N	6515	2015-05-13 17:16:31.030219	-1
Pit			http://www.boardgamegeek.com/game/140	\N	\N	\N	6516	2015-05-13 17:16:31.046623	-1
Pitchcar			http://www.boardgamegeek.com/game/150	\N	\N	\N	6517	2015-05-13 17:16:31.063259	-1
Poison			http://www.boardgamegeek.com/game/17025	\N	\N	\N	6518	2015-05-13 17:16:31.080173	-1
Portobello Market			http://www.boardgamegeek.com/game/27356	\N	\N	\N	6519	2015-05-13 17:16:31.096654	-1
Possu Ponteva			http://www.boardgamegeek.com/game/35173	\N	\N	\N	6520	2015-05-13 17:16:31.113436	-1
Potion-Making: Practice			http://www.boardgamegeek.com/game/34169	\N	\N	\N	6521	2015-05-13 17:16:31.130165	-1
Power & Weakness			http://www.boardgamegeek.com/game/30878	\N	\N	\N	6522	2015-05-13 17:16:31.146747	-1
Priests of Ra			http://www.boardgamegeek.com/game/59753	\N	\N	\N	6523	2015-05-13 17:16:31.171742	-1
Principato			http://www.boardgamegeek.com/game/90041	\N	\N	\N	6524	2015-05-13 17:16:31.188397	-1
Pro Poker Chipset				\N	\N	\N	6525	2015-05-13 17:16:31.205061	-1
PSI			http://www.boardgamegeek.com/game/3432	\N	\N	\N	6526	2015-05-13 17:16:31.221949	-1
Puerto Rico			http://www.boardgamegeek.com/game/3076	\N	\N	\N	6527	2015-05-13 17:16:31.238589	-1
Purjelentopeli				\N	\N	\N	6529	2015-05-13 17:16:31.271775	-1
Pölkkypäät				\N	\N	\N	6530	2015-05-13 17:16:31.288394	-1
Qin				\N	\N	\N	6531	2015-05-13 17:16:31.305196	-1
Quadefy			http://www.boardgamegeek.com/game/113517	\N	\N	\N	6532	2015-05-13 17:16:31.321708	-1
Quarto!			http://www.boardgamegeek.com/game/681	\N	\N	\N	6533	2015-05-13 17:16:31.338437	-1
Qubix			http://www.boardgamegeek.com/game/35247	\N	\N	\N	6534	2015-05-13 17:16:31.430369	-1
Qwirkle			http://www.boardgamegeek.com/game/25669	\N	\N	\N	6535	2015-05-13 17:16:31.520137	-1
Ra The Dice Game				\N	\N	\N	6537	2015-05-13 17:16:31.58844	-1
Race for the Galaxy			http://www.boardgamegeek.com/game/28143	\N	\N	\N	6538	2015-05-13 17:16:31.60523	-1
Ramba Samba			http://www.boardgamegeek.com/game/21986	\N	\N	\N	6539	2015-05-13 17:16:31.62186	-1
Rancho			http://www.boardgamegeek.com/game/130729	\N	\N	\N	6540	2015-05-13 17:16:31.638457	-1
Rappa Kalja Extreme			http://www.boardgamegeek.com/game/39070	\N	\N	\N	6541	2015-05-13 17:16:31.655215	-1
Rappa Kalja Tupla			http://www.boardgamegeek.com/game/15471	\N	\N	\N	6542	2015-05-13 17:16:31.671844	-1
Realm of Wonder			http://www.boardgamegeek.com/game/162580	\N	\N	\N	6543	2015-05-13 17:16:31.688535	-1
Reise zum Mittelpunkt der erde				\N	\N	\N	6544	2015-05-13 17:16:31.705186	-1
Reuhurinne Reuhupeli			http://www.boardgamegeek.com/game/169250	\N	\N	\N	6545	2015-05-13 17:16:31.722036	-1
Rice Wars			http://www.boardgamegeek.com/game/36634	\N	\N	\N	6546	2015-05-13 17:16:31.738755	-1
Risk			http://www.boardgamegeek.com/game/181	\N	\N	\N	6547	2015-05-13 17:16:31.755058	-1
Robo-Tory			http://www.boardgamegeek.com/game/38275	\N	\N	\N	6548	2015-05-13 17:16:31.77189	-1
Roqfort			http://www.boardgamegeek.com/game/28089	\N	\N	\N	6549	2015-05-13 17:16:31.788414	-1
Roskis				\N	\N	\N	6550	2015-05-13 17:16:31.805204	-1
Royal Palace			http://www.boardgamegeek.com/game/38992	\N	\N	\N	6551	2015-05-13 17:16:31.821819	-1
Royal Turf			http://www.boardgamegeek.com/game/1382	\N	\N	\N	6552	2015-05-13 17:16:31.838628	-1
Rummikub Classic			http://www.boardgamegeek.com/game/811	\N	\N	\N	6553	2015-05-13 17:16:31.855194	-1
Rummikub Word			http://www.boardgamegeek.com/game/4598	\N	\N	\N	6554	2015-05-13 17:16:31.872056	-1
Saboteur			http://www.boardgamegeek.com/game/9220	\N	\N	\N	6555	2015-05-13 17:16:31.888498	-1
Safari			http://www.boardgamegeek.com/game/2777	\N	\N	\N	6556	2015-05-13 17:16:31.905227	-1
Safranito			http://www.boardgamegeek.com/game/66849	\N	\N	\N	6557	2015-05-13 17:16:31.921964	-1
Saigo No Kane			http://www.boardgamegeek.com/game/32995	\N	\N	\N	6558	2015-05-13 17:16:31.938631	-1
Salaisuuksien saari			http://www.boardgamegeek.com/game/65244	\N	\N	\N	6559	2015-05-13 17:16:31.955211	-1
Samurai			http://www.boardgamegeek.com/game/3	\N	\N	\N	6560	2015-05-13 17:16:31.972063	-1
San Francisco Linja 1			http://www.boardgamegeek.com/game/1597	\N	\N	\N	6561	2015-05-13 17:16:31.988619	-1
San Juan			http://www.boardgamegeek.com/game/8217	\N	\N	\N	6562	2015-05-13 17:16:32.005378	-1
Sana-valta			http://www.boardgamegeek.com/game/125436	\N	\N	\N	6563	2015-05-13 17:16:32.021998	-1
Sanasota				\N	\N	\N	6564	2015-05-13 17:16:32.038459	-1
Sano suoraan			http://www.boardgamegeek.com/game/33604	\N	\N	\N	6565	2015-05-13 17:16:32.055166	-1
Saturetki				\N	\N	\N	6566	2015-05-13 17:16:32.07183	-1
Scandaroon			http://www.boardgamegeek.com/game/29599	\N	\N	\N	6567	2015-05-13 17:16:32.088441	-1
Scotland Yard			http://www.boardgamegeek.com/game/438	\N	\N	\N	6568	2015-05-13 17:16:32.105205	-1
Seigo			http://www.boardgamegeek.com/game/28891	\N	\N	\N	6570	2015-05-13 17:16:32.130278	-1
seli, seli sanapeli				\N	\N	\N	6571	2015-05-13 17:16:32.146814	-1
Sellaista sattuu			http://www.boardgamegeek.com/game/17240	\N	\N	\N	6572	2015-05-13 17:16:32.163536	-1
Sellaista sattuu!			http://www.boardgamegeek.com/game/17240	\N	\N	\N	6573	2015-05-13 17:16:32.18034	-1
Senji			http://www.boardgamegeek.com/game/33107	\N	\N	\N	6574	2015-05-13 17:16:32.196927	-1
September			http://www.boardgamegeek.com/game/3371	\N	\N	\N	6575	2015-05-13 17:16:32.21368	-1
Seri				\N	\N	\N	6576	2015-05-13 17:16:32.230224	-1
Settlers of Catan			http://www.boardgamegeek.com/game/13	\N	\N	\N	6577	2015-05-13 17:16:32.247191	-1
Settlers of Catan: Cities & Knights			http://www.boardgamegeek.com/game/926	\N	\N	\N	6578	2015-05-13 17:16:32.263613	-1
Settlers of Catan: Traders & Barbarians			http://www.boardgamegeek.com/game/27760	\N	\N	\N	6579	2015-05-13 17:16:32.28024	-1
Shanghai			http://www.boardgamegeek.com/game/400	\N	\N	\N	6580	2015-05-13 17:16:32.29681	-1
Sherwood			http://www.boardgamegeek.com/game/41019	\N	\N	\N	6581	2015-05-13 17:16:32.313499	-1
Shogun			http://www.boardgamegeek.com/game/20551	\N	\N	\N	6582	2015-05-13 17:16:32.347556	-1
Silmäpeli			http://www.boardgamegeek.com/game/33175	\N	\N	\N	6583	2015-05-13 17:16:32.363579	-1
Sir Hasse			http://www.boardgamegeek.com/game/1177	\N	\N	\N	6584	2015-05-13 17:16:32.380391	-1
Skåne			http://www.boardgamegeek.com/game/64675	\N	\N	\N	6585	2015-05-13 17:16:32.397057	-1
Sliders				\N	\N	\N	6586	2015-05-13 17:16:32.413612	-1
Snapshot			http://www.boardgamegeek.com/game/66116	\N	\N	\N	6587	2015-05-13 17:16:32.430466	-1
Sole Mio			http://www.boardgamegeek.com/game/13530	\N	\N	\N	6588	2015-05-13 17:16:32.446887	-1
Solo				\N	\N	\N	6589	2015-05-13 17:16:32.463876	-1
South Mountain			http://www.boardgamegeek.com/game/26906	\N	\N	\N	6590	2015-05-13 17:16:32.480112	-1
Space Walk			http://www.boardgamegeek.com/game/765	\N	\N	\N	6591	2015-05-13 17:16:32.49689	-1
Sparta			http://www.boardgamegeek.com/game/109105	\N	\N	\N	6592	2015-05-13 17:16:32.513737	-1
Spectrum Lippupeli				\N	\N	\N	6593	2015-05-13 17:16:32.530532	-1
Spinergy			http://www.boardgamegeek.com/game/6610	\N	\N	\N	6594	2015-05-13 17:16:32.547078	-1
Splendor				\N	\N	\N	6596	2015-05-13 17:16:32.572038	-1
Squeeky			http://www.boardgamegeek.com/game/7488	\N	\N	\N	6597	2015-05-13 17:16:32.588871	-1
Stadion-peli			http://www.boardgamegeek.com/game/36768	\N	\N	\N	6598	2015-05-13 17:16:32.605588	-1
Star Wars X-Wing			http://www.boardgamegeek.com/game/103885	\N	\N	\N	6599	2015-05-13 17:16:32.622095	-1
Steel Driver			http://www.boardgamegeek.com/game/37387	\N	\N	\N	6600	2015-05-13 17:16:32.638881	-1
Stone Age			http://www.boardgamegeek.com/game/34635	\N	\N	\N	6601	2015-05-13 17:16:32.655416	-1
Stoplights			http://www.boardgamegeek.com/game/29582	\N	\N	\N	6602	2015-05-13 17:16:32.672122	-1
Storm over Stalingrad				\N	\N	\N	6604	2015-05-13 17:16:32.69694	-1
Story Cubes			http://www.boardgamegeek.com/game/20545	\N	\N	\N	6605	2015-05-13 17:16:32.713648	-1
Story Cubes actions			http://www.boardgamegeek.com/game/89415	\N	\N	\N	6606	2015-05-13 17:16:32.73043	-1
Story Cubes Max				\N	\N	\N	6607	2015-05-13 17:16:32.746919	-1
Story Cubes Voyages			http://www.boardgamegeek.com/game/115233	\N	\N	\N	6608	2015-05-13 17:16:32.776771	-1
Stratego			http://www.boardgamegeek.com/game/1917	\N	\N	\N	6609	2015-05-13 17:16:32.805525	-1
Strawberry Shortcake Labyrinth				\N	\N	\N	6610	2015-05-13 17:16:32.822183	-1
Strike Force One			http://www.boardgamegeek.com/game/5960	\N	\N	\N	6611	2015-05-13 17:16:32.838794	-1
Stronghold				\N	\N	\N	6612	2015-05-13 17:16:32.855639	-1
Sudoku				\N	\N	\N	6613	2015-05-13 17:16:32.871982	-1
Sudoku Das Brettspiel			http://www.boardgamegeek.com/game/19990	\N	\N	\N	6614	2015-05-13 17:16:32.888842	-1
Sudoku Kids				\N	\N	\N	6615	2015-05-13 17:16:32.905465	-1
Sumeria			http://www.boardgamegeek.com/game/39832	\N	\N	\N	6616	2015-05-13 17:16:32.922312	-1
Suomi Tietopeli			http://www.boardgamegeek.com/game/17597	\N	\N	\N	6617	2015-05-13 17:16:32.955545	-1
Suomi Tietopeli Junior			http://www.boardgamegeek.com/game/39734	\N	\N	\N	6618	2015-05-13 17:16:32.971991	-1
Super farmari				\N	\N	\N	6619	2015-05-13 17:16:32.988888	-1
Super Farmari				\N	\N	\N	6620	2015-05-13 17:16:33.005381	-1
Taboo			http://www.boardgamegeek.com/game/18913	\N	\N	\N	6621	2015-05-13 17:16:33.021988	-1
Taistelu Roomasta			http://www.boardgamegeek.com/game/25234	\N	\N	\N	6622	2015-05-13 17:16:33.038913	-1
Taivaan pilarit			http://www.boardgamegeek.com/game/24480	\N	\N	\N	6623	2015-05-13 17:16:33.055592	-1
Tanto Cuore			http://www.boardgamegeek.com/game/65282	\N	\N	\N	6625	2015-05-13 17:16:33.080333	-1
Tara, Seat of Kings			http://www.boardgamegeek.com/game/20821	\N	\N	\N	6626	2015-05-13 17:16:33.097	-1
Tarotista Texas Holdemiin				\N	\N	\N	6627	2015-05-13 17:16:33.113644	-1
Taru Sormusten Herrasta - Kaksinkamppailu				\N	\N	\N	6628	2015-05-13 17:16:33.130475	-1
Tasapeli			http://www.boardgamegeek.com/game/58695	\N	\N	\N	6629	2015-05-13 17:16:33.16389	-1
Tatun ja Patun suomi-peli			http://www.boardgamegeek.com/game/39720	\N	\N	\N	6630	2015-05-13 17:16:33.180562	-1
Teenage Mutant Hero Turtles			http://www.boardgamegeek.com/game/9464	\N	\N	\N	6631	2015-05-13 17:16:33.197226	-1
Teenage Mutant Ninja Turtles Kimble				\N	\N	\N	6632	2015-05-13 17:16:33.213811	-1
Terra Evolution			http://www.boardgamegeek.com/game/101718	\N	\N	\N	6633	2015-05-13 17:16:33.230664	-1
Terra Nova			http://www.boardgamegeek.com/game/20022	\N	\N	\N	6634	2015-05-13 17:16:33.247269	-1
Textra			http://www.boardgamegeek.com/game/140219	\N	\N	\N	6636	2015-05-13 17:16:33.272097	-1
The Club			http://www.boardgamegeek.com/game/32260	\N	\N	\N	6637	2015-05-13 17:16:33.288971	-1
The Drive on Metz			http://www.boardgamegeek.com/game/33030	\N	\N	\N	6638	2015-05-13 17:16:33.305365	-1
The Enigma of Leonardo			http://www.boardgamegeek.com/game/77596	\N	\N	\N	6639	2015-05-13 17:16:33.322157	-1
The Kingdoms of Crusaders			http://www.boardgamegeek.com/game/76681	\N	\N	\N	6640	2015-05-13 17:16:33.338725	-1
The Thorn Princess and the Four Knights			http://www.boardgamegeek.com/game/32293	\N	\N	\N	6641	2015-05-13 17:16:33.372156	-1
The Truckers			http://www.boardgamegeek.com/game/36373	\N	\N	\N	6642	2015-05-13 17:16:33.388735	-1
Thief of Baghdad			http://www.boardgamegeek.com/game/22278	\N	\N	\N	6643	2015-05-13 17:16:33.405696	-1
Thurn und taxis			http://www.boardgamegeek.com/game/21790	\N	\N	\N	6644	2015-05-13 17:16:33.422174	-1
Timber Tom			http://www.boardgamegeek.com/game/38430	\N	\N	\N	6645	2015-05-13 17:16:33.439006	-1
Timeline			http://www.boardgamegeek.com/game/128664	\N	\N	\N	6646	2015-05-13 17:16:33.455494	-1
Tinner's Trail				\N	\N	\N	6647	2015-05-13 17:16:33.471957	-1
Tiukka tilanne rajalla			http://www.boardgamegeek.com/game/22237	\N	\N	\N	6648	2015-05-13 17:16:33.488721	-1
TMNT - Foot Clan Fight				\N	\N	\N	6649	2015-05-13 17:16:33.50567	-1
Tobago				\N	\N	\N	6650	2015-05-13 17:16:33.522072	-1
Toledo			http://www.boardgamegeek.com/game/34599	\N	\N	\N	6651	2015-05-13 17:16:33.538872	-1
Top Trumps - Da Vinci Code			http://www.boardgamegeek.com/game/7262	\N	\N	\N	6652	2015-05-13 17:16:33.555471	-1
Torakkapokeri			http://www.boardgamegeek.com/game/11971	\N	\N	\N	6653	2015-05-13 17:16:33.588999	-1
Tori			http://www.boardgamegeek.com/game/72083	\N	\N	\N	6654	2015-05-13 17:16:33.605745	-1
Tornado Alert!				\N	\N	\N	6655	2015-05-13 17:16:33.622134	-1
Toscana			http://www.boardgamegeek.com/game/72269	\N	\N	\N	6656	2015-05-13 17:16:33.638832	-1
Touche			http://www.boardgamegeek.com/game/5709	\N	\N	\N	6657	2015-05-13 17:16:33.655673	-1
Traditional Chistmas Game				\N	\N	\N	6658	2015-05-13 17:16:33.680812	-1
Trans Europa			http://www.boardgamegeek.com/game/16267	\N	\N	\N	6659	2015-05-13 17:16:33.697405	-1
Trio				\N	\N	\N	6660	2015-05-13 17:16:33.713675	-1
Trivial Pursuit - Star Wars, Classic Edition			http://www.boardgamegeek.com/game/1297	\N	\N	\N	6661	2015-05-13 17:16:33.730706	-1
Trivial Pursuit perhepainos			http://www.boardgamegeek.com/game/2001	\N	\N	\N	6662	2015-05-13 17:16:33.747357	-1
Tsuro			http://www.boardgamegeek.com/game/16992	\N	\N	\N	6663	2015-05-13 17:16:33.763913	-1
Tulip Mania 1637				\N	\N	\N	6664	2015-05-13 17:16:33.780662	-1
Tuotanto			http://www.boardgamegeek.com/game/124224	\N	\N	\N	6665	2015-05-13 17:16:33.797082	-1
Tupla tai Kuitti			http://www.boardgamegeek.com/game/26455	\N	\N	\N	6666	2015-05-13 17:16:33.813773	-1
Turnajaiset			http://www.boardgamegeek.com/game/24908	\N	\N	\N	6667	2015-05-13 17:16:33.830726	-1
Twilight Imperium 3rd Edition			http://www.boardgamegeek.com/game/12493	\N	\N	\N	6668	2015-05-13 17:16:33.847134	-1
Tyynysota			http://www.boardgamegeek.com/game/84671	\N	\N	\N	6669	2015-05-13 17:16:33.864095	-1
Tàin			http://www.boardgamegeek.com/game/32992	\N	\N	\N	6670	2015-05-13 17:16:33.88038	-1
Täydelliset naiset			http://www.boardgamegeek.com/game/19985	\N	\N	\N	6671	2015-05-13 17:16:33.897076	-1
Ubongo			http://www.boardgamegeek.com/game/16986	\N	\N	\N	6672	2015-05-13 17:16:33.913886	-1
ubongo 3D			http://www.boardgamegeek.com/game/46396	\N	\N	\N	6675	2015-05-13 17:16:33.947153	-1
Ubongo Extreme			http://www.boardgamegeek.com/game/31479	\N	\N	\N	6676	2015-05-13 17:16:33.963849	-1
Ubongo Junior				\N	\N	\N	6677	2015-05-13 17:16:33.980473	-1
Ubongo Mini			http://www.boardgamegeek.com/game/28258	\N	\N	\N	6678	2015-05-13 17:16:34.005687	-1
Um Krone und Kragen			http://www.boardgamegeek.com/game/21632	\N	\N	\N	6679	2015-05-13 17:16:34.022375	-1
Universumin valtiaat			http://www.boardgamegeek.com/game/15	\N	\N	\N	6680	2015-05-13 17:16:34.038929	-1
Up			http://www.boardgamegeek.com/game/131051	\N	\N	\N	6681	2015-05-13 17:16:34.055621	-1
UR			http://www.boardgamegeek.com/game/25420	\N	\N	\N	6682	2015-05-13 17:16:34.072178	-1
Urulu			http://www.boardgamegeek.com/game/90870	\N	\N	\N	6683	2015-05-13 17:16:34.088773	-1
Uudet löytöretket			http://www.boardgamegeek.com/game/1334	\N	\N	\N	6684	2015-05-13 17:16:34.105561	-1
Valdora			http://www.boardgamegeek.com/game/40769	\N	\N	\N	6685	2015-05-13 17:16:34.122351	-1
Vasaran alla			http://www.boardgamegeek.com/game/129609	\N	\N	\N	6686	2015-05-13 17:16:34.138909	-1
Vasco Da Gama			http://www.boardgamegeek.com/game/41002	\N	\N	\N	6687	2015-05-13 17:16:34.155765	-1
Velhojen yö			http://www.boardgamegeek.com/game/19996	\N	\N	\N	6689	2015-05-13 17:16:34.180424	-1
Velhovuoren Aarre			http://www.boardgamegeek.com/game/1144	\N	\N	\N	6690	2015-05-13 17:16:34.205597	-1
VeloCity			http://www.boardgamegeek.com/game/67034	\N	\N	\N	6691	2015-05-13 17:16:34.255722	-1
Verflixxt			http://www.boardgamegeek.com/game/17240	\N	\N	\N	6692	2015-05-13 17:16:34.272225	-1
Villit Kuviot			http://www.boardgamegeek.com/game/129381	\N	\N	\N	6693	2015-05-13 17:16:34.289005	-1
Vimmaiset vampyyrit			http://www.boardgamegeek.com/game/10814	\N	\N	\N	6694	2015-05-13 17:16:34.305542	-1
Virheistä viis				\N	\N	\N	6695	2015-05-13 17:16:34.322235	-1
Virtahepo vuoristoradalla			http://www.boardgamegeek.com/game/4587	\N	\N	\N	6696	2015-05-13 17:16:34.338894	-1
Viva il Re			http://www.boardgamegeek.com/game/7806	\N	\N	\N	6697	2015-05-13 17:16:34.35552	-1
Viva Topo			http://www.boardgamegeek.com/game/8195	\N	\N	\N	6698	2015-05-13 17:16:34.372264	-1
Vuodenajat-muistipeli				\N	\N	\N	6699	2015-05-13 17:16:34.388887	-1
Walnut Grove			http://www.boardgamegeek.com/game/103185	\N	\N	\N	6700	2015-05-13 17:16:34.405582	-1
Wapi			http://www.boardgamegeek.com/game/8337	\N	\N	\N	6701	2015-05-13 17:16:34.430755	-1
Warlock Velhojen valtataistelu			http://www.boardgamegeek.com/game/2146	\N	\N	\N	6703	2015-05-13 17:16:34.455564	-1
Welhotanssi			http://www.boardgamegeek.com/game/2087	\N	\N	\N	6704	2015-05-13 17:16:34.472359	-1
Wie verhext			http://www.boardgamegeek.com/game/34084	\N	\N	\N	6706	2015-05-13 17:16:34.497235	-1
Wings of War Deluxe			http://www.boardgamegeek.com/game/31552	\N	\N	\N	6707	2015-05-13 17:16:34.513842	-1
Wizard			http://www.boardgamegeek.com/game/1465	\N	\N	\N	6708	2015-05-13 17:16:34.572511	-1
World of Beer, The			http://www.boardgamegeek.com/game/24907	\N	\N	\N	6709	2015-05-13 17:16:34.58893	-1
World of Warcraft miniatures game			http://www.boardgamegeek.com/game/34496	\N	\N	\N	6710	2015-05-13 17:16:34.605676	-1
Wypas			http://www.boardgamegeek.com/game/32161	\N	\N	\N	6711	2015-05-13 17:16:34.664305	-1
Yatzy			http://www.boardgamegeek.com/game/2243	\N	\N	\N	6712	2015-05-13 17:16:34.680576	-1
Yes			http://www.boardgamegeek.com/game/14191	\N	\N	\N	6713	2015-05-13 17:16:34.697485	-1
yikerz!			http://www.boardgamegeek.com/game/47218	\N	\N	\N	6714	2015-05-13 17:16:34.714088	-1
Yspahan			http://www.boardgamegeek.com/game/22345	\N	\N	\N	6715	2015-05-13 17:16:34.730655	-1
Yucata'			http://www.boardgamegeek.com/game/434	\N	\N	\N	6716	2015-05-13 17:16:34.747365	-1
Yukatán			http://www.boardgamegeek.com/game/32996	\N	\N	\N	6717	2015-05-13 17:16:34.764208	-1
Zanziar			http://www.boardgamegeek.com/game/38868	\N	\N	\N	6718	2015-05-13 17:16:34.780576	-1
Zauber Stauber			http://www.boardgamegeek.com/game/16373	\N	\N	\N	6719	2015-05-13 17:16:34.797552	-1
Zeitalter Napoleons			http://www.boardgamegeek.com/game/8490	\N	\N	\N	6720	2015-05-13 17:16:34.814184	-1
Ziff Zoff			http://www.boardgamegeek.com/game/12243	\N	\N	\N	6721	2015-05-13 17:16:34.830848	-1
Zooloretto			http://www.boardgamegeek.com/game/27588	\N	\N	\N	6722	2015-05-13 17:16:34.847589	-1
Älypää			http://www.boardgamegeek.com/game/33174	\N	\N	\N	6723	2015-05-13 17:16:34.864139	-1
\.


--
-- Data for Name: varasto; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY varasto (nimi, osoite) FROM stdin;
\.


--
-- Data for Name: kokoelmapeli; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY kokoelmapeli (kokoelma, peli, omistaja, lahjoittaja, hylly, paikka, varasto, laatikko, kunto, huomautus, tunniste, lisatty, lisaaja, muokattu, muokkaaja) FROM stdin;
SLS	5980	daFool	\N	\N	\N	\N	\N	\N	säännöt vain saksaksi	392	2015-05-13	daFool	\N	\N
SLS	5981	daFool	Mikko Saari / Korttipeliopas	\N	\N	\N	\N	\N	Lahjoittaja: Mikko Saari / Korttipeliopas	459	2015-05-13	daFool	\N	\N
SLS	5982	daFool	Gen-X	\N	\N	\N	\N	\N	Courtesy of Gen-X	275	2015-05-13	daFool	\N	\N
SLS	5983	daFool	Pema	\N	\N	\N	\N	\N	Courtesy of  Pema	413	2015-05-13	daFool	\N	\N
SLS	5984	daFool	Pema	\N	\N	\N	\N	\N	 	162	2015-05-13	daFool	\N	\N
SLS	5985	daFool	Pema	\N	\N	\N	\N	\N	Lautapelit.fi	408	2015-05-13	daFool	\N	\N
SLS	5986	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	565	2015-05-13	daFool	\N	\N
SLS	5987	daFool	Nestori Lehtonen	\N	\N	\N	\N	\N	Lahjoittaja: Nestori Lehtonen	437	2015-05-13	daFool	\N	\N
SLS	5988	daFool	Eggertspiele	\N	\N	\N	\N	\N	Courtesy of Eggertspiele	259	2015-05-13	daFool	\N	\N
SLS	5989	daFool	Eggertspiele	\N	\N	\N	\N	\N	korttipeli	547	2015-05-13	daFool	\N	\N
SLS	5989	daFool	Eggertspiele	\N	\N	\N	\N	\N	lautapeli	568	2015-05-13	daFool	\N	\N
SLS	5991	daFool	Amo	\N	\N	\N	\N	\N	Courtesy of Amo	374	2015-05-13	daFool	\N	\N
SLS	5991	daFool	Amo	\N	\N	\N	\N	\N	 	529	2015-05-13	daFool	\N	\N
SLS	5993	daFool	Amo	\N	\N	\N	\N	\N	 	57	2015-05-13	daFool	\N	\N
SLS	5994	daFool	Amo	\N	\N	\N	\N	\N	 	135	2015-05-13	daFool	\N	\N
SLS	5995	daFool	Onni games	\N	\N	\N	\N	\N	Courtesy of  Onni games	503	2015-05-13	daFool	\N	\N
SLS	5995	daFool	Onni games	\N	\N	\N	\N	\N	Courtesy of  Onni games	535	2015-05-13	daFool	\N	\N
SLS	5997	daFool	Onni games	\N	\N	\N	\N	\N	 	620	2015-05-13	daFool	\N	\N
SLS	5998	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	702	2015-05-13	daFool	\N	\N
SLS	5999	daFool	Warfrog	\N	\N	\N	\N	\N	Courtesy of Warfrog	314	2015-05-13	daFool	\N	\N
SLS	6000	daFool	Japon Brand	\N	\N	\N	\N	\N	Courtesy of Japon Brand	478	2015-05-13	daFool	\N	\N
SLS	6001	daFool	Japon Brand	\N	\N	\N	\N	\N	 	278	2015-05-13	daFool	\N	\N
SLS	6002	daFool	Japon Brand	\N	\N	\N	\N	\N	 	54	2015-05-13	daFool	\N	\N
SLS	6003	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of  Competo	510	2015-05-13	daFool	\N	\N
SLS	6004	daFool	Competo	\N	\N	\N	\N	\N	 	14	2015-05-13	daFool	\N	\N
SLS	6004	daFool	Competo	\N	\N	\N	\N	\N	 	58	2015-05-13	daFool	\N	\N
SLS	6004	daFool	Competo	\N	\N	\N	\N	\N	 	99	2015-05-13	daFool	\N	\N
SLS	6007	daFool	Competo	\N	\N	\N	\N	\N	 	293	2015-05-13	daFool	\N	\N
SLS	6008	daFool	Competo	\N	\N	\N	\N	\N	 	298	2015-05-13	daFool	\N	\N
SLS	6009	daFool	Stefan Engblom	\N	\N	\N	\N	\N	Courtesy of Stefan Engblom	654	2015-05-13	daFool	\N	\N
SLS	6010	daFool	Sherco Games	\N	\N	\N	\N	\N	Courtesy of Sherco Games	194	2015-05-13	daFool	\N	\N
SLS	6011	daFool	Sherco Games	\N	\N	\N	\N	\N	Europemasters 2008	257	2015-05-13	daFool	\N	\N
SLS	6012	daFool	Sherco Games	\N	\N	\N	\N	\N	 	20	2015-05-13	daFool	\N	\N
SLS	6013	daFool	Väinö Hirvelä	\N	\N	\N	\N	\N	Lahjoittaja: Väinö Hirvelä	441	2015-05-13	daFool	\N	\N
SLS	6014	daFool	Väinö Hirvelä	\N	\N	\N	\N	\N	 	176	2015-05-13	daFool	\N	\N
SLS	6015	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	696	2015-05-13	daFool	\N	\N
SLS	6016	daFool	Markus Nuopponen	\N	\N	\N	\N	\N	Courtesy of Markus Nuopponen	393	2015-05-13	daFool	\N	\N
SLS	6017	daFool	Markus Nuopponen	\N	\N	\N	\N	\N	 	61	2015-05-13	daFool	\N	\N
SLS	6017	daFool	Markus Nuopponen	\N	\N	\N	\N	\N	 	68	2015-05-13	daFool	\N	\N
SLS	6019	daFool	Markus Nuopponen	\N	\N	\N	\N	\N	 	662	2015-05-13	daFool	\N	\N
SLS	6020	daFool	Markus Nuopponen	\N	\N	\N	\N	\N	 	446	2015-05-13	daFool	\N	\N
SLS	6021	daFool	Markus Nuopponen	\N	\N	\N	\N	\N	 	604	2015-05-13	daFool	\N	\N
SLS	6022	daFool	Asmodée	\N	\N	\N	\N	\N	Courtesy of Asmodée	493	2015-05-13	daFool	\N	\N
SLS	6023	daFool	Asmodée	\N	\N	\N	\N	\N	 	468	2015-05-13	daFool	\N	\N
SLS	6023	daFool	Onni games	\N	\N	\N	\N	\N	Courtesy of  Onni games	502	2015-05-13	daFool	\N	\N
SLS	6025	daFool	ASS	\N	\N	\N	\N	\N	6 kpl -- Courtesy of ASS	265	2015-05-13	daFool	\N	\N
SLS	6026	daFool	ASS	\N	\N	\N	\N	\N	4 kpl -- Courtesy of ASS	266	2015-05-13	daFool	\N	\N
SLS	6027	daFool	ASS	\N	\N	\N	\N	\N	5 kpl -- Courtesy of ASS	267	2015-05-13	daFool	\N	\N
SLS	6028	daFool	ASS	\N	\N	\N	\N	\N	9 kpl -- Courtesy of ASS	268	2015-05-13	daFool	\N	\N
SLS	6029	daFool	ASS	\N	\N	\N	\N	\N	FX Schmid 11 kpl -- Courtesy of ASS	269	2015-05-13	daFool	\N	\N
SLS	6030	daFool	ASS	\N	\N	\N	\N	\N	6 kpl -- Courtesy of ASS	264	2015-05-13	daFool	\N	\N
SLS	6031	daFool	ASS	\N	\N	\N	\N	\N	Ei suomen tai englannin kielisiä sääntöjä.	474	2015-05-13	daFool	\N	\N
SLS	6032	daFool	Mindwarrior Games	\N	\N	\N	\N	\N	Courtesy of Mindwarrior Games	462	2015-05-13	daFool	\N	\N
SLS	6032	daFool	Mindwarrior games	\N	\N	\N	\N	\N	Courtesy of  Mindwarrior games	514	2015-05-13	daFool	\N	\N
SLS	6034	daFool	Amo	\N	\N	\N	\N	\N	Courtesy of Amo	549	2015-05-13	daFool	\N	\N
SLS	6035	daFool	Pema	\N	\N	\N	\N	\N	Courtesy of  Pema	411	2015-05-13	daFool	\N	\N
SLS	6036	daFool	Pema	\N	\N	\N	\N	\N	 	743	2015-05-13	daFool	\N	\N
SLS	6037	daFool	Pema	\N	\N	\N	\N	\N	 	44	2015-05-13	daFool	\N	\N
SLS	6037	daFool	Pema	\N	\N	\N	\N	\N	Tuulimyllyn leikkaus pielessä	89	2015-05-13	daFool	\N	\N
SLS	6039	daFool	Eduard Luhtonen	\N	\N	\N	\N	\N	Courtesy of Eduard Luhtonen	718	2015-05-13	daFool	\N	\N
SLS	6040	daFool	Eduard Luhtonen	\N	\N	\N	\N	\N	 	174	2015-05-13	daFool	\N	\N
SLS	6041	daFool	Eduard Luhtonen	\N	\N	\N	\N	\N	 	223	2015-05-13	daFool	\N	\N
SLS	6042	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	463	2015-05-13	daFool	\N	\N
SLS	6043	daFool	Competo	\N	\N	\N	\N	\N	 	142	2015-05-13	daFool	\N	\N
SLS	6044	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	688	2015-05-13	daFool	\N	\N
SLS	6045	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of  Competo	508	2015-05-13	daFool	\N	\N
SLS	6046	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	399	2015-05-13	daFool	\N	\N
SLS	6047	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Battlesson #7 (Second edition)	617	2015-05-13	daFool	\N	\N
SLS	6048	daFool	GMT Games	\N	\N	\N	\N	\N	Courtesy of GMT Games	560	2015-05-13	daFool	\N	\N
SLS	6048	daFool	GMT Games	\N	\N	\N	\N	\N	Courtesy of GMT Games	652	2015-05-13	daFool	\N	\N
SLS	6050	daFool	GMT Games	\N	\N	\N	\N	\N	 	736	2015-05-13	daFool	\N	\N
SLS	6050	daFool	GMT Games	\N	\N	\N	\N	\N	 	757	2015-05-13	daFool	\N	\N
SLS	6052	daFool	GMT Games	\N	\N	\N	\N	\N	 	42	2015-05-13	daFool	\N	\N
SLS	6053	daFool	GMT Games	\N	\N	\N	\N	\N	Suomeksi	536	2015-05-13	daFool	\N	\N
SLS	6054	daFool	Competo	\N	\N	\N	\N	\N	pahvilaatikossa -- Courtesy of  Competo	495	2015-05-13	daFool	\N	\N
SLS	6055	daFool	Competo	\N	\N	\N	\N	\N	 	158	2015-05-13	daFool	\N	\N
SLS	6056	daFool	Competo	\N	\N	\N	\N	\N	 	587	2015-05-13	daFool	\N	\N
SLS	6057	daFool	Amo	\N	\N	\N	\N	\N	Courtesy of Amo	379	2015-05-13	daFool	\N	\N
SLS	6058	daFool	Amo	\N	\N	\N	\N	\N	 	272	2015-05-13	daFool	\N	\N
SLS	6059	daFool	Amo	\N	\N	\N	\N	\N	 	534	2015-05-13	daFool	\N	\N
SLS	6059	daFool	Amo	\N	\N	\N	\N	\N	 	648	2015-05-13	daFool	\N	\N
SLS	6061	daFool	Amo	\N	\N	\N	\N	\N	 	629	2015-05-13	daFool	\N	\N
SLS	6062	daFool	Lautapeliopas	\N	\N	\N	\N	\N	Lahjoittaja: Lautapeliopas	458	2015-05-13	daFool	\N	\N
SLS	6063	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	695	2015-05-13	daFool	\N	\N
SLS	6064	daFool	Competo	\N	\N	\N	\N	\N	 	63	2015-05-13	daFool	\N	\N
SLS	6064	daFool	Competo	\N	\N	\N	\N	\N	 	94	2015-05-13	daFool	\N	\N
SLS	6066	daFool	Competo	\N	\N	\N	\N	\N	 	318	2015-05-13	daFool	\N	\N
SLS	6067	daFool	Competo	\N	\N	\N	\N	\N	 	316	2015-05-13	daFool	\N	\N
SLS	6068	daFool	QWG	\N	\N	\N	\N	\N	Courtesy of QWG	324	2015-05-13	daFool	\N	\N
SLS	6069	daFool	QWG	\N	\N	\N	\N	\N	 	202	2015-05-13	daFool	\N	\N
SLS	6070	daFool	QWG	\N	\N	\N	\N	\N	 	725	2015-05-13	daFool	\N	\N
SLS	6071	daFool	QWG	\N	\N	\N	\N	\N	Lautapelit.fi	407	2015-05-13	daFool	\N	\N
SLS	6072	daFool	Asmodee	\N	\N	\N	\N	\N	Courtesy of Asmodee	427	2015-05-13	daFool	\N	\N
SLS	6073	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	432	2015-05-13	daFool	\N	\N
SLS	6074	daFool	Zoch	\N	\N	\N	\N	\N	 	663	2015-05-13	daFool	\N	\N
SLS	6075	daFool	Zoch	\N	\N	\N	\N	\N	 	513	2015-05-13	daFool	\N	\N
SLS	6076	daFool	QWG	\N	\N	\N	\N	\N	Courtesy of QWG	325	2015-05-13	daFool	\N	\N
SLS	6077	daFool	QWG	\N	\N	\N	\N	\N	 	383	2015-05-13	daFool	\N	\N
SLS	6078	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	334	2015-05-13	daFool	\N	\N
SLS	6079	daFool	Competo	\N	\N	\N	\N	\N	Splotter	574	2015-05-13	daFool	\N	\N
SLS	6080	daFool	Competo	\N	\N	\N	\N	\N	 	712	2015-05-13	daFool	\N	\N
SLS	6081	daFool	Abacus	\N	\N	\N	\N	\N	Courtesy of Abacus	417	2015-05-13	daFool	\N	\N
SLS	6082	daFool	Abacus	\N	\N	\N	\N	\N	 	550	2015-05-13	daFool	\N	\N
SLS	6083	daFool	Abacus	\N	\N	\N	\N	\N	 	48	2015-05-13	daFool	\N	\N
SLS	6084	daFool	Abacus	\N	\N	\N	\N	\N	 	105	2015-05-13	daFool	\N	\N
SLS	6084	daFool	Abacus	\N	\N	\N	\N	\N	muoveissa	136	2015-05-13	daFool	\N	\N
SLS	6084	daFool	Abacus	\N	\N	\N	\N	\N	muoveissa	137	2015-05-13	daFool	\N	\N
SLS	6087	daFool	Abacus	\N	\N	\N	\N	\N	 	84	2015-05-13	daFool	\N	\N
SLS	6088	daFool	Abacus	\N	\N	\N	\N	\N	 	12	2015-05-13	daFool	\N	\N
SLS	6088	daFool	Abacus	\N	\N	\N	\N	\N	 	471	2015-05-13	daFool	\N	\N
SLS	6088	daFool	Abacus	\N	\N	\N	\N	\N	 	532	2015-05-13	daFool	\N	\N
SLS	6088	daFool	Abacus	\N	\N	\N	\N	\N	pelkkä peruspeli ilman jokea	576	2015-05-13	daFool	\N	\N
SLS	6088	daFool	Abacus	\N	\N	\N	\N	\N	pelkkä peruspeli ilman jokea	577	2015-05-13	daFool	\N	\N
SLS	6088	daFool	Abacus	\N	\N	\N	\N	\N	pelkkä peruspeli ilman jokea	578	2015-05-13	daFool	\N	\N
SLS	6088	daFool	Abacus	\N	\N	\N	\N	\N	pelkkä peruspeli ilman jokea	579	2015-05-13	daFool	\N	\N
SLS	6088	daFool	Abacus	\N	\N	\N	\N	\N	pelkkä peruspeli ilman jokea	580	2015-05-13	daFool	\N	\N
SLS	6088	daFool	Abacus	\N	\N	\N	\N	\N	pelkkä peruspeli ilman jokea	581	2015-05-13	daFool	\N	\N
SLS	6097	daFool	Abacus	\N	\N	\N	\N	\N	sisältää neljä lisäosaa: torni, kirkot, kirjurit, lohikäärme	518	2015-05-13	daFool	\N	\N
SLS	6098	daFool	Abacus	\N	\N	\N	\N	\N	 	243	2015-05-13	daFool	\N	\N
SLS	6099	daFool	Abacus	\N	\N	\N	\N	\N	 	758	2015-05-13	daFool	\N	\N
SLS	6100	daFool	Abacus	\N	\N	\N	\N	\N	 	590	2015-05-13	daFool	\N	\N
SLS	6101	daFool	Abacus	\N	\N	\N	\N	\N	Sisältää "Tähystäjä" lisäosan	13	2015-05-13	daFool	\N	\N
SLS	6101	daFool	Abacus	\N	\N	\N	\N	\N	 	756	2015-05-13	daFool	\N	\N
SLS	6103	daFool	Abacus	\N	\N	\N	\N	\N	 	21	2015-05-13	daFool	\N	\N
SLS	6104	daFool	Abacus	\N	\N	\N	\N	\N	 	734	2015-05-13	daFool	\N	\N
SLS	6105	daFool	Abacus	\N	\N	\N	\N	\N	Carcassonne korttipeli	450	2015-05-13	daFool	\N	\N
SLS	6106	daFool	Reiver Games	\N	\N	\N	\N	\N	Courtesy of Reiver Games	315	2015-05-13	daFool	\N	\N
SLS	6107	daFool	Reiver Games	\N	\N	\N	\N	\N	 	357	2015-05-13	daFool	\N	\N
SLS	6108	daFool	Asmodee	\N	\N	\N	\N	\N	Courtesy of Asmodee	210	2015-05-13	daFool	\N	\N
SLS	6109	daFool	Asmodee	\N	\N	\N	\N	\N	Courtesy of Asmodee	211	2015-05-13	daFool	\N	\N
SLS	6110	daFool	Devir	\N	\N	\N	\N	\N	Courtesy of Devir	263	2015-05-13	daFool	\N	\N
SLS	6111	daFool	Devir	\N	\N	\N	\N	\N	säännöt vain saksaksi	359	2015-05-13	daFool	\N	\N
SLS	6112	daFool	Devir	\N	\N	\N	\N	\N	 	516	2015-05-13	daFool	\N	\N
SLS	6113	daFool	Devir	\N	\N	\N	\N	\N	 	522	2015-05-13	daFool	\N	\N
SLS	6113	daFool	Devir	\N	\N	\N	\N	\N	 	523	2015-05-13	daFool	\N	\N
SLS	6113	daFool	Devir	\N	\N	\N	\N	\N	 	524	2015-05-13	daFool	\N	\N
SLS	6116	daFool	Devir	\N	\N	\N	\N	\N	 	309	2015-05-13	daFool	\N	\N
SLS	6117	daFool	Devir	\N	\N	\N	\N	\N	 	122	2015-05-13	daFool	\N	\N
SLS	6118	daFool	Devir	\N	\N	\N	\N	\N	 	36	2015-05-13	daFool	\N	\N
SLS	6119	daFool	JKLM Games	\N	\N	\N	\N	\N	Courtesy of JKLM Games	192	2015-05-13	daFool	\N	\N
SLS	6120	daFool	QWG	\N	\N	\N	\N	\N	Courtesy of QWG	326	2015-05-13	daFool	\N	\N
SLS	6121	daFool	QWG	\N	\N	\N	\N	\N	 	67	2015-05-13	daFool	\N	\N
SLS	6122	daFool	QWG	\N	\N	\N	\N	\N	 	5	2015-05-13	daFool	\N	\N
SLS	6123	daFool	QWG	\N	\N	\N	\N	\N	 	39	2015-05-13	daFool	\N	\N
SLS	6123	daFool	QWG	\N	\N	\N	\N	\N	 	95	2015-05-13	daFool	\N	\N
SLS	6125	daFool	QWG	\N	\N	\N	\N	\N	 	714	2015-05-13	daFool	\N	\N
SLS	6126	daFool	QWG	\N	\N	\N	\N	\N	 	519	2015-05-13	daFool	\N	\N
SLS	6127	daFool	QWG	\N	\N	\N	\N	\N	 	649	2015-05-13	daFool	\N	\N
SLS	6128	daFool	QWG	\N	\N	\N	\N	\N	säännöt ja kortit ranskaksi	345	2015-05-13	daFool	\N	\N
SLS	6129	daFool	Japon Brand	\N	\N	\N	\N	\N	Courtesy of Japon Brand	250	2015-05-13	daFool	\N	\N
SLS	6130	daFool	Zoch	\N	\N	\N	\N	\N	Sis. peruspelinosat -- Courtesy of Zoch	197	2015-05-13	daFool	\N	\N
SLS	6131	daFool	JKLM Games	\N	\N	\N	\N	\N	Courtesy of JKLM Games	422	2015-05-13	daFool	\N	\N
SLS	6132	daFool	JKLM Games	\N	\N	\N	\N	\N	 	439	2015-05-13	daFool	\N	\N
SLS	6133	daFool	JKLM Games	\N	\N	\N	\N	\N	 	225	2015-05-13	daFool	\N	\N
SLS	6134	daFool	JKLM Games	\N	\N	\N	\N	\N	 	289	2015-05-13	daFool	\N	\N
SLS	6135	daFool	Kanai Factory	\N	\N	\N	\N	\N	Säännöt puuttuu -- Courtesy of Kanai Factory	434	2015-05-13	daFool	\N	\N
SLS	6136	daFool	Kanai Factory	\N	\N	\N	\N	\N	Suomenkielinen, säännöt puuttuvat	74	2015-05-13	daFool	\N	\N
SLS	6137	daFool	Kanai Factory	\N	\N	\N	\N	\N	säännöt vain saksaksi	389	2015-05-13	daFool	\N	\N
SLS	6138	daFool	Kanai Factory	\N	\N	\N	\N	\N	 	173	2015-05-13	daFool	\N	\N
SLS	6139	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	Lahjoittaja: Markku Jaatinen	175	2015-05-13	daFool	\N	\N
SLS	6140	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	37	2015-05-13	daFool	\N	\N
SLS	6141	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	vahat homeessa	72	2015-05-13	daFool	\N	\N
SLS	6142	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	664	2015-05-13	daFool	\N	\N
SLS	6143	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	161	2015-05-13	daFool	\N	\N
SLS	6144	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	646	2015-05-13	daFool	\N	\N
SLS	6145	daFool	GMT Games	\N	\N	\N	\N	\N	Courtesy of GMT Games	562	2015-05-13	daFool	\N	\N
SLS	6146	daFool	GMT Games	\N	\N	\N	\N	\N	Courtesy of GMT Games	563	2015-05-13	daFool	\N	\N
SLS	6147	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	700	2015-05-13	daFool	\N	\N
SLS	6148	daFool	Peliko	\N	\N	\N	\N	\N	 	589	2015-05-13	daFool	\N	\N
SLS	6149	daFool	Peliko	\N	\N	\N	\N	\N	 	146	2015-05-13	daFool	\N	\N
SLS	6150	daFool	Peliko	\N	\N	\N	\N	\N	 	588	2015-05-13	daFool	\N	\N
SLS	6151	daFool	Peliko	\N	\N	\N	\N	\N	 	556	2015-05-13	daFool	\N	\N
SLS	6152	daFool	Insight Games	\N	\N	\N	\N	\N	Courtesy of Insight Games	442	2015-05-13	daFool	\N	\N
SLS	6153	daFool	Murad Juraev	\N	\N	\N	\N	\N	Courtesy of Murad Juraev	602	2015-05-13	daFool	\N	\N
SLS	6154	daFool	Kalle Malmioja	\N	\N	\N	\N	\N	Courtesy of Kalle Malmioja	710	2015-05-13	daFool	\N	\N
SLS	6155	daFool	Kalle Malmioja	\N	\N	\N	\N	\N	 	633	2015-05-13	daFool	\N	\N
SLS	6156	daFool	Kalle Malmioja	\N	\N	\N	\N	\N	 	64	2015-05-13	daFool	\N	\N
SLS	6157	daFool	Twilight Creations	\N	\N	\N	\N	\N	Courtesy of Twilight Creations	258	2015-05-13	daFool	\N	\N
SLS	6158	daFool	Smirk & Dagger Games	\N	\N	\N	\N	\N	Courtesy of Smirk & Dagger Games	193	2015-05-13	daFool	\N	\N
SLS	6159	daFool	Smirk & Dagger Games	\N	\N	\N	\N	\N	 	760	2015-05-13	daFool	\N	\N
SLS	6160	daFool	Smirk & Dagger Games	\N	\N	\N	\N	\N	 	18	2015-05-13	daFool	\N	\N
SLS	6160	daFool	Smirk & Dagger Games	\N	\N	\N	\N	\N	ei sääntöjä	344	2015-05-13	daFool	\N	\N
SLS	6162	daFool	Smirk & Dagger Games	\N	\N	\N	\N	\N	korttipeli	51	2015-05-13	daFool	\N	\N
SLS	6163	daFool	Smirk & Dagger Games	\N	\N	\N	\N	\N	lautapeli	52	2015-05-13	daFool	\N	\N
SLS	6164	daFool	Smirk & Dagger Games	\N	\N	\N	\N	\N	 	100	2015-05-13	daFool	\N	\N
SLS	6165	daFool	Isimat	\N	\N	\N	\N	\N	Courtesy of Isimat	179	2015-05-13	daFool	\N	\N
SLS	6166	daFool	Japon Brand	\N	\N	\N	\N	\N	Courtesy of Japon Brand	253	2015-05-13	daFool	\N	\N
SLS	6167	daFool	Japon Brand	\N	\N	\N	\N	\N	 	261	2015-05-13	daFool	\N	\N
SLS	6168	daFool	Japon Brand	\N	\N	\N	\N	\N	 	3	2015-05-13	daFool	\N	\N
SLS	6169	daFool	Japon Brand	\N	\N	\N	\N	\N	 	260	2015-05-13	daFool	\N	\N
SLS	6170	daFool	Asmodee	\N	\N	\N	\N	\N	Courtesy of Asmodee	426	2015-05-13	daFool	\N	\N
SLS	6171	daFool	Asmodee	\N	\N	\N	\N	\N	 	515	2015-05-13	daFool	\N	\N
SLS	6172	daFool	Asmodee	\N	\N	\N	\N	\N	 	132	2015-05-13	daFool	\N	\N
SLS	6173	daFool	Asmodee	\N	\N	\N	\N	\N	säännöt vain saksaksi - Catanin laajennus	355	2015-05-13	daFool	\N	\N
SLS	6174	daFool	Asmodee	\N	\N	\N	\N	\N	säännöt vain saksaksi	348	2015-05-13	daFool	\N	\N
SLS	6175	daFool	Asmodee	\N	\N	\N	\N	\N	Gibson's Games. SDS-merkattu	27	2015-05-13	daFool	\N	\N
SLS	6175	daFool	Asmodee	\N	\N	\N	\N	\N	 	107	2015-05-13	daFool	\N	\N
SLS	6175	daFool	Asmodee	\N	\N	\N	\N	\N	Avalon Hill	108	2015-05-13	daFool	\N	\N
SLS	6178	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of  Competo	505	2015-05-13	daFool	\N	\N
SLS	6179	daFool	Competo	\N	\N	\N	\N	\N	 	448	2015-05-13	daFool	\N	\N
SLS	6180	daFool	Competo	\N	\N	\N	\N	\N	 	753	2015-05-13	daFool	\N	\N
SLS	6181	daFool	Competo	\N	\N	\N	\N	\N	 	622	2015-05-13	daFool	\N	\N
SLS	6182	daFool	Competo	\N	\N	\N	\N	\N	Sis. Dixit 2 [BBGid:55660] ja 3 [BBGid:119657]	618	2015-05-13	daFool	\N	\N
SLS	6183	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of  Competo	511	2015-05-13	daFool	\N	\N
SLS	6184	daFool	Competo	\N	\N	\N	\N	\N	 	594	2015-05-13	daFool	\N	\N
SLS	6184	daFool	Competo	\N	\N	\N	\N	\N	 	647	2015-05-13	daFool	\N	\N
SLS	6186	daFool	GMT Games	\N	\N	\N	\N	\N	Courtesy of GMT Games	601	2015-05-13	daFool	\N	\N
SLS	6187	daFool	GMT Games	\N	\N	\N	\N	\N	 	333	2015-05-13	daFool	\N	\N
SLS	6188	daFool	GMT Games	\N	\N	\N	\N	\N	 	329	2015-05-13	daFool	\N	\N
SLS	6189	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	598	2015-05-13	daFool	\N	\N
SLS	6190	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	405	2015-05-13	daFool	\N	\N
SLS	6191	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	628	2015-05-13	daFool	\N	\N
SLS	6192	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	435	2015-05-13	daFool	\N	\N
SLS	6193	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	690	2015-05-13	daFool	\N	\N
SLS	6194	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	501	2015-05-13	daFool	\N	\N
SLS	6195	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Lautapelit.fi	409	2015-05-13	daFool	\N	\N
SLS	6196	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	90	2015-05-13	daFool	\N	\N
SLS	6197	daFool	Günter Cornett/Bambus Spielverlag	\N	\N	\N	\N	\N	Courtesy of Günter Cornett/Bambus Spielverlag	165	2015-05-13	daFool	\N	\N
SLS	6198	daFool	Günter Cornett/Bambus Spielverlag	\N	\N	\N	\N	\N	saksankielinen	49	2015-05-13	daFool	\N	\N
SLS	6199	daFool	Günter Cornett/Bambus Spielverlag	\N	\N	\N	\N	\N	 	740	2015-05-13	daFool	\N	\N
SLS	6200	daFool	Günter Cornett/Bambus Spielverlag	\N	\N	\N	\N	\N	säännöt vain ranskaksi	356	2015-05-13	daFool	\N	\N
SLS	6201	daFool	Günter Cornett/Bambus Spielverlag	\N	\N	\N	\N	\N	 	475	2015-05-13	daFool	\N	\N
SLS	6202	daFool	Günter Cornett/Bambus Spielverlag	\N	\N	\N	\N	\N	Cynde Sadlerin lahjoitus. Sisältää suomenkielisen D&D:n (Mentzer) pelaajakirjan ja pelinjohtajan kirjan.	328	2015-05-13	daFool	\N	\N
SLS	6203	daFool	Günter Cornett/Bambus Spielverlag	\N	\N	\N	\N	\N	 	26	2015-05-13	daFool	\N	\N
SLS	6204	daFool	Eye-Level Entertainment	\N	\N	\N	\N	\N	Courtesy of Eye-Level Entertainment	195	2015-05-13	daFool	\N	\N
SLS	6205	daFool	Eye-Level Entertainment	\N	\N	\N	\N	\N	 	625	2015-05-13	daFool	\N	\N
SLS	6206	daFool	Eye-Level Entertainment	\N	\N	\N	\N	\N	 	150	2015-05-13	daFool	\N	\N
SLS	6207	daFool	Eye-Level Entertainment	\N	\N	\N	\N	\N	 	128	2015-05-13	daFool	\N	\N
SLS	6208	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	429	2015-05-13	daFool	\N	\N
SLS	6209	daFool	Zoch	\N	\N	\N	\N	\N	 	29	2015-05-13	daFool	\N	\N
SLS	6209	daFool	Zoch	\N	\N	\N	\N	\N	 	59	2015-05-13	daFool	\N	\N
SLS	6211	daFool	Zoch	\N	\N	\N	\N	\N	 	248	2015-05-13	daFool	\N	\N
SLS	6212	daFool	Zoch	\N	\N	\N	\N	\N	the	665	2015-05-13	daFool	\N	\N
SLS	6213	daFool	Zoch	\N	\N	\N	\N	\N	säännöt vain saksaksi	380	2015-05-13	daFool	\N	\N
SLS	6214	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	611	2015-05-13	daFool	\N	\N
SLS	6215	daFool	Competo	\N	\N	\N	\N	\N	 	750	2015-05-13	daFool	\N	\N
SLS	6216	daFool	Competo	\N	\N	\N	\N	\N	 	410	2015-05-13	daFool	\N	\N
SLS	6217	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	686	2015-05-13	daFool	\N	\N
SLS	6218	daFool	Devir	\N	\N	\N	\N	\N	Courtesy of Devir	262	2015-05-13	daFool	\N	\N
SLS	6219	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	706	2015-05-13	daFool	\N	\N
SLS	6220	daFool	Pema	\N	\N	\N	\N	\N	Courtesy of  Pema	412	2015-05-13	daFool	\N	\N
SLS	6221	daFool	Pema	\N	\N	\N	\N	\N	 	457	2015-05-13	daFool	\N	\N
SLS	6222	daFool	Right Games	\N	\N	\N	\N	\N	Courtesy of Right Games	583	2015-05-13	daFool	\N	\N
SLS	6223	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	456	2015-05-13	daFool	\N	\N
SLS	6224	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	säännöt vain saksaksi	364	2015-05-13	daFool	\N	\N
SLS	6225	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	60	2015-05-13	daFool	\N	\N
SLS	6225	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	102	2015-05-13	daFool	\N	\N
SLS	6227	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	465	2015-05-13	daFool	\N	\N
SLS	6228	daFool	Competo	\N	\N	\N	\N	\N	 	675	2015-05-13	daFool	\N	\N
SLS	6229	daFool	Competo	\N	\N	\N	\N	\N	 	69	2015-05-13	daFool	\N	\N
SLS	6230	daFool	Competo	\N	\N	\N	\N	\N	 	130	2015-05-13	daFool	\N	\N
SLS	6231	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	482	2015-05-13	daFool	\N	\N
SLS	6232	daFool	Zoch	\N	\N	\N	\N	\N	 	724	2015-05-13	daFool	\N	\N
SLS	6233	daFool	Zoch	\N	\N	\N	\N	\N	 	219	2015-05-13	daFool	\N	\N
SLS	6234	daFool	Amo	\N	\N	\N	\N	\N	Courtesy of Amo	378	2015-05-13	daFool	\N	\N
SLS	6235	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	485	2015-05-13	daFool	\N	\N
SLS	6236	daFool	Zoch	\N	\N	\N	\N	\N	 	722	2015-05-13	daFool	\N	\N
SLS	6237	daFool	Zoch	\N	\N	\N	\N	\N	 	313	2015-05-13	daFool	\N	\N
SLS	6238	daFool	Zoch	\N	\N	\N	\N	\N	 	575	2015-05-13	daFool	\N	\N
SLS	6239	daFool	Zoch	\N	\N	\N	\N	\N	 	205	2015-05-13	daFool	\N	\N
SLS	6240	daFool	Zoch	\N	\N	\N	\N	\N	 	626	2015-05-13	daFool	\N	\N
SLS	6241	daFool	Zoch	\N	\N	\N	\N	\N	 	564	2015-05-13	daFool	\N	\N
SLS	6242	daFool	Zoch	\N	\N	\N	\N	\N	 	372	2015-05-13	daFool	\N	\N
SLS	6243	daFool	Zoch	\N	\N	\N	\N	\N	 	621	2015-05-13	daFool	\N	\N
SLS	6244	daFool	Friedemann Friese	\N	\N	\N	\N	\N	Sis. Pohjoismaat -- Courtesy of Friedemann Friese	472	2015-05-13	daFool	\N	\N
SLS	6245	daFool	Friedemann Friese	\N	\N	\N	\N	\N	 	363	2015-05-13	daFool	\N	\N
SLS	6246	daFool	Friedemann Friese	\N	\N	\N	\N	\N	 	124	2015-05-13	daFool	\N	\N
SLS	6246	daFool	Friedemann Friese	\N	\N	\N	\N	\N	 	349	2015-05-13	daFool	\N	\N
SLS	6246	daFool	Friedemann Friese	\N	\N	\N	\N	\N	 	531	2015-05-13	daFool	\N	\N
SLS	6249	daFool	Japon Brand	\N	\N	\N	\N	\N	vain Nippon säännöt -- Courtesy of Japon Brand	321	2015-05-13	daFool	\N	\N
SLS	6250	daFool	Japon Brand	\N	\N	\N	\N	\N	 	681	2015-05-13	daFool	\N	\N
SLS	6251	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	488	2015-05-13	daFool	\N	\N
SLS	6251	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	644	2015-05-13	daFool	\N	\N
SLS	6253	daFool	Zoch	\N	\N	\N	\N	\N	 	81	2015-05-13	daFool	\N	\N
SLS	6253	daFool	Zoch	\N	\N	\N	\N	\N	 	92	2015-05-13	daFool	\N	\N
SLS	6255	daFool	Zoch	\N	\N	\N	\N	\N	Lautapelit.fi	400	2015-05-13	daFool	\N	\N
SLS	6256	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	338	2015-05-13	daFool	\N	\N
SLS	6257	daFool	Competo	\N	\N	\N	\N	\N	Z-Man demo	118	2015-05-13	daFool	\N	\N
SLS	6258	daFool	What's your game	\N	\N	\N	\N	\N	Courtesy of What's your game	270	2015-05-13	daFool	\N	\N
SLS	6259	daFool	What's your game	\N	\N	\N	\N	\N	 	312	2015-05-13	daFool	\N	\N
SLS	6259	daFool	What's your game	\N	\N	\N	\N	\N	 	451	2015-05-13	daFool	\N	\N
SLS	6261	daFool	What's your game	\N	\N	\N	\N	\N	 	242	2015-05-13	daFool	\N	\N
SLS	6262	daFool	What's your game	\N	\N	\N	\N	\N	 	354	2015-05-13	daFool	\N	\N
SLS	6263	daFool	What's your game	\N	\N	\N	\N	\N	 	55	2015-05-13	daFool	\N	\N
SLS	6264	daFool	What's your game	\N	\N	\N	\N	\N	 	46	2015-05-13	daFool	\N	\N
SLS	6265	daFool	Japon Brand	\N	\N	\N	\N	\N	Courtesy of Japon Brand	249	2015-05-13	daFool	\N	\N
SLS	6266	daFool	Japon Brand	\N	\N	\N	\N	\N	 	528	2015-05-13	daFool	\N	\N
SLS	6267	daFool	Japon Brand	\N	\N	\N	\N	\N	 	362	2015-05-13	daFool	\N	\N
SLS	6268	daFool	Japon Brand	\N	\N	\N	\N	\N	Gute Freunde	341	2015-05-13	daFool	\N	\N
SLS	6269	daFool	Asmodée	\N	\N	\N	\N	\N	Courtesy of Asmodée	492	2015-05-13	daFool	\N	\N
SLS	6270	daFool	Asmodée	\N	\N	\N	\N	\N	Chinesische Mauer (säännöt vain saksaksi)	343	2015-05-13	daFool	\N	\N
SLS	6271	daFool	Asmodée	\N	\N	\N	\N	\N	 	557	2015-05-13	daFool	\N	\N
SLS	6272	daFool	Asmodée	\N	\N	\N	\N	\N	 	308	2015-05-13	daFool	\N	\N
SLS	6273	daFool	Asmodée	\N	\N	\N	\N	\N	 	741	2015-05-13	daFool	\N	\N
SLS	6274	daFool	Asmodée	\N	\N	\N	\N	\N	 	754	2015-05-13	daFool	\N	\N
SLS	6275	daFool	Asmodée	\N	\N	\N	\N	\N	 	145	2015-05-13	daFool	\N	\N
SLS	6275	daFool	Asmodée	\N	\N	\N	\N	\N	 	631	2015-05-13	daFool	\N	\N
SLS	6277	daFool	Asmodée	\N	\N	\N	\N	\N	 	630	2015-05-13	daFool	\N	\N
SLS	6278	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	Lahjoittaja: Markku Jaatinen	433	2015-05-13	daFool	\N	\N
SLS	6279	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	299	2015-05-13	daFool	\N	\N
SLS	6280	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	391	2015-05-13	daFool	\N	\N
SLS	6281	daFool	Japon Brand	\N	\N	\N	\N	\N	Courtesy of Japon Brand	480	2015-05-13	daFool	\N	\N
SLS	6282	daFool	Eggert Spiele	\N	\N	\N	\N	\N	Courtesy of Eggert Spiele	418	2015-05-13	daFool	\N	\N
SLS	6283	daFool	Eggertspiele	\N	\N	\N	\N	\N	Courtesy of Eggertspiele	254	2015-05-13	daFool	\N	\N
SLS	6284	daFool	Eggertspiele	\N	\N	\N	\N	\N	 	87	2015-05-13	daFool	\N	\N
SLS	6285	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	196	2015-05-13	daFool	\N	\N
SLS	6286	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	481	2015-05-13	daFool	\N	\N
SLS	6287	daFool	Zoch	\N	\N	\N	\N	\N	 	387	2015-05-13	daFool	\N	\N
SLS	6288	daFool	Zoch	\N	\N	\N	\N	\N	 	745	2015-05-13	daFool	\N	\N
SLS	6289	daFool	Zoch	\N	\N	\N	\N	\N	 	666	2015-05-13	daFool	\N	\N
SLS	6290	daFool	Zoch	\N	\N	\N	\N	\N	 	207	2015-05-13	daFool	\N	\N
SLS	6291	daFool	Zoch	\N	\N	\N	\N	\N	 	729	2015-05-13	daFool	\N	\N
SLS	6292	daFool	Zoch	\N	\N	\N	\N	\N	 	592	2015-05-13	daFool	\N	\N
SLS	6293	daFool	Zoch	\N	\N	\N	\N	\N	 	70	2015-05-13	daFool	\N	\N
SLS	6294	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	709	2015-05-13	daFool	\N	\N
SLS	6295	daFool	Peliko	\N	\N	\N	\N	\N	 	717	2015-05-13	daFool	\N	\N
SLS	6296	daFool	Peliko	\N	\N	\N	\N	\N	 	554	2015-05-13	daFool	\N	\N
SLS	6297	daFool	Peliko	\N	\N	\N	\N	\N	 	605	2015-05-13	daFool	\N	\N
SLS	6298	daFool	Isimat	\N	\N	\N	\N	\N	Courtesy of Isimat	181	2015-05-13	daFool	\N	\N
SLS	6299	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	701	2015-05-13	daFool	\N	\N
SLS	6300	daFool	Peliko	\N	\N	\N	\N	\N	Lautapelit.fi	460	2015-05-13	daFool	\N	\N
SLS	6301	daFool	Peliko	\N	\N	\N	\N	\N	 	284	2015-05-13	daFool	\N	\N
SLS	6302	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	609	2015-05-13	daFool	\N	\N
SLS	6302	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	610	2015-05-13	daFool	\N	\N
SLS	6304	daFool	Competo	\N	\N	\N	\N	\N	 	636	2015-05-13	daFool	\N	\N
SLS	6305	daFool	Competo	\N	\N	\N	\N	\N	 	279	2015-05-13	daFool	\N	\N
SLS	6306	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	484	2015-05-13	daFool	\N	\N
SLS	6307	daFool	Zoch	\N	\N	\N	\N	\N	 	738	2015-05-13	daFool	\N	\N
SLS	6308	daFool	Zoch	\N	\N	\N	\N	\N	 	748	2015-05-13	daFool	\N	\N
SLS	6309	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	335	2015-05-13	daFool	\N	\N
SLS	6310	daFool	Competo	\N	\N	\N	\N	\N	 	637	2015-05-13	daFool	\N	\N
SLS	6311	daFool	Competo	\N	\N	\N	\N	\N	– Euroopassa	737	2015-05-13	daFool	\N	\N
SLS	6312	daFool	Competo	\N	\N	\N	\N	\N	 	739	2015-05-13	daFool	\N	\N
SLS	6313	daFool	Competo	\N	\N	\N	\N	\N	 	32	2015-05-13	daFool	\N	\N
SLS	6314	daFool	Alea	\N	\N	\N	\N	\N	Courtesy of Alea	217	2015-05-13	daFool	\N	\N
SLS	6315	daFool	Alea	\N	\N	\N	\N	\N	 	9	2015-05-13	daFool	\N	\N
SLS	6316	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	703	2015-05-13	daFool	\N	\N
SLS	6317	daFool	Blind Spot	\N	\N	\N	\N	\N	Courtesy of Blind Spot	658	2015-05-13	daFool	\N	\N
SLS	6318	daFool	Isimat	\N	\N	\N	\N	\N	Courtesy of Isimat	180	2015-05-13	daFool	\N	\N
SLS	6319	daFool	Abacus	\N	\N	\N	\N	\N	Courtesy of Abacus	489	2015-05-13	daFool	\N	\N
SLS	6320	daFool	Reiver Games	\N	\N	\N	\N	\N	Courtesy of Reiver Games	455	2015-05-13	daFool	\N	\N
SLS	6321	daFool	Reiver Games	\N	\N	\N	\N	\N	 	555	2015-05-13	daFool	\N	\N
SLS	6322	daFool	Abacus	\N	\N	\N	\N	\N	Courtesy of Abacus	491	2015-05-13	daFool	\N	\N
SLS	6323	daFool	Isimat	\N	\N	\N	\N	\N	Courtesy of Isimat	183	2015-05-13	daFool	\N	\N
SLS	6324	daFool	Isimat	\N	\N	\N	\N	\N	 	184	2015-05-13	daFool	\N	\N
SLS	6325	daFool	Isimat	\N	\N	\N	\N	\N	 	291	2015-05-13	daFool	\N	\N
SLS	6326	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	698	2015-05-13	daFool	\N	\N
SLS	6327	daFool	Competo	\N	\N	\N	\N	\N	 	121	2015-05-13	daFool	\N	\N
SLS	6327	daFool	Competo	\N	\N	\N	\N	\N	 	498	2015-05-13	daFool	\N	\N
SLS	6329	daFool	Roll D6	\N	\N	\N	\N	\N	Courtesy of Roll D6	657	2015-05-13	daFool	\N	\N
SLS	6330	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	693	2015-05-13	daFool	\N	\N
SLS	6331	daFool	Competo	\N	\N	\N	\N	\N	Sama kuin Mancala	332	2015-05-13	daFool	\N	\N
SLS	6332	daFool	Asmodee	\N	\N	\N	\N	\N	Courtesy of Asmodee	425	2015-05-13	daFool	\N	\N
SLS	6333	daFool	Asmodee	\N	\N	\N	\N	\N	 	305	2015-05-13	daFool	\N	\N
SLS	6334	daFool	Asmodee	\N	\N	\N	\N	\N	 	385	2015-05-13	daFool	\N	\N
SLS	6335	daFool	Asmodee	\N	\N	\N	\N	\N	ilmeisesti #453	204	2015-05-13	daFool	\N	\N
SLS	6335	daFool	Asmodee	\N	\N	\N	\N	\N	 	453	2015-05-13	daFool	\N	\N
SLS	6337	daFool	Amo	\N	\N	\N	\N	\N	Courtesy of Amo	376	2015-05-13	daFool	\N	\N
SLS	6337	daFool	Amo	\N	\N	\N	\N	\N	 	530	2015-05-13	daFool	\N	\N
SLS	6339	daFool	Amo	\N	\N	\N	\N	\N	 	551	2015-05-13	daFool	\N	\N
SLS	6340	daFool	Amo	\N	\N	\N	\N	\N	 	533	2015-05-13	daFool	\N	\N
SLS	6341	daFool	Amo	\N	\N	\N	\N	\N	 	641	2015-05-13	daFool	\N	\N
SLS	6342	daFool	Amo	\N	\N	\N	\N	\N	 	45	2015-05-13	daFool	\N	\N
SLS	6343	daFool	Amo	\N	\N	\N	\N	\N	 	177	2015-05-13	daFool	\N	\N
SLS	6344	daFool	Wolf Fang	\N	\N	\N	\N	\N	Courtesy of Wolf Fang	167	2015-05-13	daFool	\N	\N
SLS	6345	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	687	2015-05-13	daFool	\N	\N
SLS	6346	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	304	2015-05-13	daFool	\N	\N
SLS	6347	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	79	2015-05-13	daFool	\N	\N
SLS	6348	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	287	2015-05-13	daFool	\N	\N
SLS	6349	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	384	2015-05-13	daFool	\N	\N
SLS	6350	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	689	2015-05-13	daFool	\N	\N
SLS	6351	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	627	2015-05-13	daFool	\N	\N
SLS	6352	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	731	2015-05-13	daFool	\N	\N
SLS	6353	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	619	2015-05-13	daFool	\N	\N
SLS	6354	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	200	2015-05-13	daFool	\N	\N
SLS	6355	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	156	2015-05-13	daFool	\N	\N
SLS	6356	daFool	Vatnuorin kyläyhdistys	\N	\N	\N	\N	\N	Lahjoittaja: Vatnuorin kyläyhdistys	593	2015-05-13	daFool	\N	\N
SLS	6357	daFool	Vatnuorin kyläyhdistys	\N	\N	\N	\N	\N	 	201	2015-05-13	daFool	\N	\N
SLS	6358	daFool	Vatnuorin kyläyhdistys	\N	\N	\N	\N	\N	 	33	2015-05-13	daFool	\N	\N
SLS	6358	daFool	Vatnuorin kyläyhdistys	\N	\N	\N	\N	\N	 	347	2015-05-13	daFool	\N	\N
SLS	6360	daFool	Vatnuorin kyläyhdistys	\N	\N	\N	\N	\N	 	152	2015-05-13	daFool	\N	\N
SLS	6361	daFool	Vatnuorin kyläyhdistys	\N	\N	\N	\N	\N	 	721	2015-05-13	daFool	\N	\N
SLS	6362	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	694	2015-05-13	daFool	\N	\N
SLS	6363	daFool	Competo	\N	\N	\N	\N	\N	Maskenball der Käfer	369	2015-05-13	daFool	\N	\N
SLS	6364	daFool	Competo	\N	\N	\N	\N	\N	Lautapelit.fi	404	2015-05-13	daFool	\N	\N
SLS	6365	daFool	Competo	\N	\N	\N	\N	\N	 	206	2015-05-13	daFool	\N	\N
SLS	6366	daFool	Competo	\N	\N	\N	\N	\N	 	544	2015-05-13	daFool	\N	\N
SLS	6367	daFool	Competo	\N	\N	\N	\N	\N	Europemasters 2008	256	2015-05-13	daFool	\N	\N
SLS	6368	daFool	Competo	\N	\N	\N	\N	\N	 	667	2015-05-13	daFool	\N	\N
SLS	6369	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	685	2015-05-13	daFool	\N	\N
SLS	6370	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	114	2015-05-13	daFool	\N	\N
SLS	6371	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	283	2015-05-13	daFool	\N	\N
SLS	6372	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Z-Man demo	116	2015-05-13	daFool	\N	\N
SLS	6373	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	170	2015-05-13	daFool	\N	\N
SLS	6374	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	also contains Blue	171	2015-05-13	daFool	\N	\N
SLS	6375	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	469	2015-05-13	daFool	\N	\N
SLS	6376	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Lautapelit.fi	406	2015-05-13	daFool	\N	\N
SLS	6377	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Sis. myös enkku säännöt, 3 kynttilänjalkaa puuttuu.	342	2015-05-13	daFool	\N	\N
SLS	6378	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	34	2015-05-13	daFool	\N	\N
SLS	6378	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	85	2015-05-13	daFool	\N	\N
SLS	6378	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	353	2015-05-13	daFool	\N	\N
SLS	6381	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	733	2015-05-13	daFool	\N	\N
SLS	6381	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	752	2015-05-13	daFool	\N	\N
SLS	6383	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	763	2015-05-13	daFool	\N	\N
SLS	6384	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	716	2015-05-13	daFool	\N	\N
SLS	6385	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	346	2015-05-13	daFool	\N	\N
SLS	6386	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	88	2015-05-13	daFool	\N	\N
SLS	6387	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	466	2015-05-13	daFool	\N	\N
SLS	6387	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of  Competo	504	2015-05-13	daFool	\N	\N
SLS	6389	daFool	Competo	\N	\N	\N	\N	\N	 	222	2015-05-13	daFool	\N	\N
SLS	6390	daFool	Competo	\N	\N	\N	\N	\N	 	674	2015-05-13	daFool	\N	\N
SLS	6391	daFool	Competo	\N	\N	\N	\N	\N	 	7	2015-05-13	daFool	\N	\N
SLS	6392	daFool	Competo	\N	\N	\N	\N	\N	 	104	2015-05-13	daFool	\N	\N
SLS	6393	daFool	Competo	\N	\N	\N	\N	\N	 	381	2015-05-13	daFool	\N	\N
SLS	6394	daFool	Competo	\N	\N	\N	\N	\N	 	541	2015-05-13	daFool	\N	\N
SLS	6395	daFool	Revision-Games	\N	\N	\N	\N	\N	Courtesy of Revision-Games	558	2015-05-13	daFool	\N	\N
SLS	6395	daFool	Revision-Games	\N	\N	\N	\N	\N	 	651	2015-05-13	daFool	\N	\N
SLS	6397	daFool	Revision-Games	\N	\N	\N	\N	\N	 	80	2015-05-13	daFool	\N	\N
SLS	6398	daFool	Revision-Games	\N	\N	\N	\N	\N	 	735	2015-05-13	daFool	\N	\N
SLS	6399	daFool	GMT Games	\N	\N	\N	\N	\N	Courtesy of GMT Games	561	2015-05-13	daFool	\N	\N
SLS	6399	daFool	GMT Games	\N	\N	\N	\N	\N	Courtesy of GMT Games	582	2015-05-13	daFool	\N	\N
SLS	6401	daFool	Isimat	\N	\N	\N	\N	\N	Courtesy of Isimat	182	2015-05-13	daFool	\N	\N
SLS	6402	daFool	Virpi Flyktman	\N	\N	\N	\N	\N	Lahjoittaja: Virpi Flyktman	277	2015-05-13	daFool	\N	\N
SLS	6402	daFool	Virpi Flyktman	\N	\N	\N	\N	\N	+Mythology expansion	669	2015-05-13	daFool	\N	\N
SLS	6404	daFool	Virpi Flyktman	\N	\N	\N	\N	\N	 	540	2015-05-13	daFool	\N	\N
SLS	6405	daFool	Amo	\N	\N	\N	\N	\N	Courtesy of Amo	377	2015-05-13	daFool	\N	\N
SLS	6406	daFool	Amo	\N	\N	\N	\N	\N	 	726	2015-05-13	daFool	\N	\N
SLS	6407	daFool	Amo	\N	\N	\N	\N	\N	 	330	2015-05-13	daFool	\N	\N
SLS	6408	daFool	Amo	\N	\N	\N	\N	\N	 	632	2015-05-13	daFool	\N	\N
SLS	6409	daFool	Amo	\N	\N	\N	\N	\N	säännöt vain saksaksi	360	2015-05-13	daFool	\N	\N
SLS	6410	daFool	Touko Tahkokallio	\N	\N	\N	\N	\N	Courtesy of Touko Tahkokallio	711	2015-05-13	daFool	\N	\N
SLS	6411	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	428	2015-05-13	daFool	\N	\N
SLS	6412	daFool	Zoch	\N	\N	\N	\N	\N	 	545	2015-05-13	daFool	\N	\N
SLS	6413	daFool	Zoch	\N	\N	\N	\N	\N	 	16	2015-05-13	daFool	\N	\N
SLS	6414	daFool	Zoch	\N	\N	\N	\N	\N	Sis. Eurooppa 1912 lisäosan	15	2015-05-13	daFool	\N	\N
SLS	6415	daFool	Zoch	\N	\N	\N	\N	\N	Sisältö Menolippu Euroopan laatikossa	445	2015-05-13	daFool	\N	\N
SLS	6416	daFool	Zoch	\N	\N	\N	\N	\N	 	160	2015-05-13	daFool	\N	\N
SLS	6417	daFool	Zoch	\N	\N	\N	\N	\N	 	144	2015-05-13	daFool	\N	\N
SLS	6418	daFool	Zoch	\N	\N	\N	\N	\N	lisäkartta	143	2015-05-13	daFool	\N	\N
SLS	6419	daFool	Zoch	\N	\N	\N	\N	\N	 	163	2015-05-13	daFool	\N	\N
SLS	6420	daFool	Zoch	\N	\N	\N	\N	\N	 	40	2015-05-13	daFool	\N	\N
SLS	6421	daFool	Zoch	\N	\N	\N	\N	\N	 	10	2015-05-13	daFool	\N	\N
SLS	6422	daFool	Zoch	\N	\N	\N	\N	\N	 	661	2015-05-13	daFool	\N	\N
SLS	6423	daFool	Zoch	\N	\N	\N	\N	\N	 	281	2015-05-13	daFool	\N	\N
SLS	6424	daFool	Zoch	\N	\N	\N	\N	\N	Z-Man demo	117	2015-05-13	daFool	\N	\N
SLS	6425	daFool	Amo	\N	\N	\N	\N	\N	Courtesy of Amo	375	2015-05-13	daFool	\N	\N
SLS	6426	daFool	Amo	\N	\N	\N	\N	\N	 	668	2015-05-13	daFool	\N	\N
SLS	6427	daFool	Amo	\N	\N	\N	\N	\N	 	388	2015-05-13	daFool	\N	\N
SLS	6428	daFool	Isimat	\N	\N	\N	\N	\N	Courtesy of Isimat	178	2015-05-13	daFool	\N	\N
SLS	6429	daFool	Isimat	\N	\N	\N	\N	\N	 	553	2015-05-13	daFool	\N	\N
SLS	6430	daFool	Isimat	\N	\N	\N	\N	\N	Lautapelit.fi	401	2015-05-13	daFool	\N	\N
SLS	6431	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	645	2015-05-13	daFool	\N	\N
SLS	6432	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	23	2015-05-13	daFool	\N	\N
SLS	6433	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	572	2015-05-13	daFool	\N	\N
SLS	6434	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	154	2015-05-13	daFool	\N	\N
SLS	6435	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	19	2015-05-13	daFool	\N	\N
SLS	6436	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	634	2015-05-13	daFool	\N	\N
SLS	6437	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	339	2015-05-13	daFool	\N	\N
SLS	6438	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	596	2015-05-13	daFool	\N	\N
SLS	6439	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	221	2015-05-13	daFool	\N	\N
SLS	6440	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	247	2015-05-13	daFool	\N	\N
SLS	6441	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	486	2015-05-13	daFool	\N	\N
SLS	6442	daFool	Zoch	\N	\N	\N	\N	\N	 	635	2015-05-13	daFool	\N	\N
SLS	6443	daFool	Kuznia Gier	\N	\N	\N	\N	\N	Courtesy of Kuznia Gier	230	2015-05-13	daFool	\N	\N
SLS	6444	daFool	Wolf Fang	\N	\N	\N	\N	\N	Courtesy of Wolf Fang	168	2015-05-13	daFool	\N	\N
SLS	6445	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	285	2015-05-13	daFool	\N	\N
SLS	6446	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	707	2015-05-13	daFool	\N	\N
SLS	6447	daFool	Peliko	\N	\N	\N	\N	\N	 	56	2015-05-13	daFool	\N	\N
SLS	6448	daFool	Asmodée	\N	\N	\N	\N	\N	Courtesy of Asmodée	494	2015-05-13	daFool	\N	\N
SLS	6449	daFool	Asmodée	\N	\N	\N	\N	\N	 	452	2015-05-13	daFool	\N	\N
SLS	6450	daFool	Asmodée	\N	\N	\N	\N	\N	 	129	2015-05-13	daFool	\N	\N
SLS	6451	daFool	Asmodée	\N	\N	\N	\N	\N	Out Balance	390	2015-05-13	daFool	\N	\N
SLS	6452	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	683	2015-05-13	daFool	\N	\N
SLS	6453	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Matkaversio	546	2015-05-13	daFool	\N	\N
SLS	6454	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Europemasters 2008	255	2015-05-13	daFool	\N	\N
SLS	6455	daFool	Portal	\N	\N	\N	\N	\N	Courtesy of Portal	421	2015-05-13	daFool	\N	\N
SLS	6456	daFool	Portal	\N	\N	\N	\N	\N	 	660	2015-05-13	daFool	\N	\N
SLS	6457	daFool	Portal	\N	\N	\N	\N	\N	 	53	2015-05-13	daFool	\N	\N
SLS	6457	daFool	Portal	\N	\N	\N	\N	\N	 	82	2015-05-13	daFool	\N	\N
SLS	6459	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	431	2015-05-13	daFool	\N	\N
SLS	6460	daFool	Zoch	\N	\N	\N	\N	\N	 	509	2015-05-13	daFool	\N	\N
SLS	6461	daFool	Zoch	\N	\N	\N	\N	\N	 	744	2015-05-13	daFool	\N	\N
SLS	6462	daFool	Zoch	\N	\N	\N	\N	\N	 	2	2015-05-13	daFool	\N	\N
SLS	6463	daFool	Zoch	\N	\N	\N	\N	\N	 	280	2015-05-13	daFool	\N	\N
SLS	6464	daFool	Zoch	\N	\N	\N	\N	\N	 	86	2015-05-13	daFool	\N	\N
SLS	6465	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	599	2015-05-13	daFool	\N	\N
SLS	6466	daFool	Mindwarrior Games	\N	\N	\N	\N	\N	Courtesy of Mindwarrior Games	461	2015-05-13	daFool	\N	\N
SLS	6467	daFool	Mindwarrior games	\N	\N	\N	\N	\N	Courtesy of  Mindwarrior games	517	2015-05-13	daFool	\N	\N
SLS	6468	daFool	Mindwarrior games	\N	\N	\N	\N	\N	Kirjastoon 09.05.2012. Geekin jonossa.	603	2015-05-13	daFool	\N	\N
SLS	6469	daFool	Mindwarrior games	\N	\N	\N	\N	\N	 	227	2015-05-13	daFool	\N	\N
SLS	6469	daFool	Mindwarrior games	\N	\N	\N	\N	\N	Avaamaton	228	2015-05-13	daFool	\N	\N
SLS	6471	daFool	Asmodee	\N	\N	\N	\N	\N	Courtesy of Asmodee	208	2015-05-13	daFool	\N	\N
SLS	6472	daFool	Asmodee	\N	\N	\N	\N	\N	 	75	2015-05-13	daFool	\N	\N
SLS	6473	daFool	JKLM Games	\N	\N	\N	\N	\N	Courtesy of JKLM Games	190	2015-05-13	daFool	\N	\N
SLS	6474	daFool	JKLM Games	\N	\N	\N	\N	\N	säännöt vain saksaksi	367	2015-05-13	daFool	\N	\N
SLS	6475	daFool	JKLM Games	\N	\N	\N	\N	\N	 	24	2015-05-13	daFool	\N	\N
SLS	6476	daFool	JKLM Games	\N	\N	\N	\N	\N	 	473	2015-05-13	daFool	\N	\N
SLS	6477	daFool	JKLM Games	\N	\N	\N	\N	\N	1 luu puuttuu	31	2015-05-13	daFool	\N	\N
SLS	6478	daFool	JKLM Games	\N	\N	\N	\N	\N	 	246	2015-05-13	daFool	\N	\N
SLS	6479	daFool	JKLM Games	\N	\N	\N	\N	\N	 	157	2015-05-13	daFool	\N	\N
SLS	6480	daFool	JKLM Games	\N	\N	\N	\N	\N	2 pelimerkkiä puuttuu (pun.ja mus.)	542	2015-05-13	daFool	\N	\N
SLS	6481	daFool	JKLM Games	\N	\N	\N	\N	\N	Saksankielinen, enkkusäännöt mukana	111	2015-05-13	daFool	\N	\N
SLS	6482	daFool	JKLM Games	\N	\N	\N	\N	\N	 	358	2015-05-13	daFool	\N	\N
SLS	6483	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	sisältää Tuhon partaalla | Courtesy of Lautapelit.fi	403	2015-05-13	daFool	\N	\N
SLS	6483	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	684	2015-05-13	daFool	\N	\N
SLS	6485	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	319	2015-05-13	daFool	\N	\N
SLS	6486	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	704	2015-05-13	daFool	\N	\N
SLS	6487	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	337	2015-05-13	daFool	\N	\N
SLS	6488	daFool	Competo	\N	\N	\N	\N	\N	 	755	2015-05-13	daFool	\N	\N
SLS	6489	daFool	Competo	\N	\N	\N	\N	\N	 	22	2015-05-13	daFool	\N	\N
SLS	6490	daFool	Competo	\N	\N	\N	\N	\N	52 korttia - made in china	570	2015-05-13	daFool	\N	\N
SLS	6491	daFool	Competo	\N	\N	\N	\N	\N	 	109	2015-05-13	daFool	\N	\N
SLS	6492	daFool	Competo	\N	\N	\N	\N	\N	 	106	2015-05-13	daFool	\N	\N
SLS	6492	daFool	Competo	\N	\N	\N	\N	\N	yksi valkea kuula puuttuu.	569	2015-05-13	daFool	\N	\N
SLS	6494	daFool	Competo	\N	\N	\N	\N	\N	 	172	2015-05-13	daFool	\N	\N
SLS	6495	daFool	Competo	\N	\N	\N	\N	\N	 	286	2015-05-13	daFool	\N	\N
SLS	6496	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	691	2015-05-13	daFool	\N	\N
SLS	6497	daFool	JKLM Games	\N	\N	\N	\N	\N	Courtesy of JKLM Games	191	2015-05-13	daFool	\N	\N
SLS	6498	daFool	JKLM Games	\N	\N	\N	\N	\N	 	732	2015-05-13	daFool	\N	\N
SLS	6499	daFool	Piatnik	\N	\N	\N	\N	\N	Courtesy of Piatnik	240	2015-05-13	daFool	\N	\N
SLS	6500	daFool	Piatnik	\N	\N	\N	\N	\N	Courtesy of Piatnik	232	2015-05-13	daFool	\N	\N
SLS	6501	daFool	Piatnik	\N	\N	\N	\N	\N	Courtesy of Piatnik	233	2015-05-13	daFool	\N	\N
SLS	6502	daFool	Piatnik	\N	\N	\N	\N	\N	Courtesy of Piatnik	239	2015-05-13	daFool	\N	\N
SLS	6503	daFool	Piatnik	\N	\N	\N	\N	\N	Courtesy of Piatnik	238	2015-05-13	daFool	\N	\N
SLS	6504	daFool	Piatnik	\N	\N	\N	\N	\N	Courtesy of Piatnik	234	2015-05-13	daFool	\N	\N
SLS	6505	daFool	Piatnik	\N	\N	\N	\N	\N	Courtesy of Piatnik	237	2015-05-13	daFool	\N	\N
SLS	6506	daFool	Piatnik	\N	\N	\N	\N	\N	Courtesy of Piatnik	235	2015-05-13	daFool	\N	\N
SLS	6506	daFool	Piatnik	\N	\N	\N	\N	\N	Courtesy of Piatnik	236	2015-05-13	daFool	\N	\N
SLS	6508	daFool	Magnus Engblom	\N	\N	\N	\N	\N	Courtesy of Magnus Engblom	396	2015-05-13	daFool	\N	\N
SLS	6509	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	487	2015-05-13	daFool	\N	\N
SLS	6510	daFool	Zoch	\N	\N	\N	\N	\N	 	292	2015-05-13	daFool	\N	\N
SLS	6511	daFool	Zoch	\N	\N	\N	\N	\N	 	127	2015-05-13	daFool	\N	\N
SLS	6512	daFool	Zoch	\N	\N	\N	\N	\N	 	43	2015-05-13	daFool	\N	\N
SLS	6513	daFool	Zoch	\N	\N	\N	\N	\N	Lautapelit.fi	398	2015-05-13	daFool	\N	\N
SLS	6514	daFool	Zoch	\N	\N	\N	\N	\N	 	371	2015-05-13	daFool	\N	\N
SLS	6515	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	336	2015-05-13	daFool	\N	\N
SLS	6516	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	Lahjoittaja: Markku Jaatinen	199	2015-05-13	daFool	\N	\N
SLS	6517	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	141	2015-05-13	daFool	\N	\N
SLS	6518	daFool	Atro Kajaste	\N	\N	\N	\N	\N	Courtesy of Atro Kajaste	642	2015-05-13	daFool	\N	\N
SLS	6519	daFool	Atro Kajaste	\N	\N	\N	\N	\N	 	140	2015-05-13	daFool	\N	\N
SLS	6520	daFool	Amo	\N	\N	\N	\N	\N	Courtesy of Amo	373	2015-05-13	daFool	\N	\N
SLS	6521	daFool	Right Games	\N	\N	\N	\N	\N	Courtesy of Right Games	586	2015-05-13	daFool	\N	\N
SLS	6522	daFool	JKLM Games	\N	\N	\N	\N	\N	Courtesy of JKLM Games	189	2015-05-13	daFool	\N	\N
SLS	6523	daFool	Murad Juraev	\N	\N	\N	\N	\N	Courtesy of Murad Juraev	559	2015-05-13	daFool	\N	\N
SLS	6524	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	595	2015-05-13	daFool	\N	\N
SLS	6525	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	300 chippiä, kortit, button	125	2015-05-13	daFool	\N	\N
SLS	6526	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	713	2015-05-13	daFool	\N	\N
SLS	6527	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	38	2015-05-13	daFool	\N	\N
SLS	6527	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	saksankielinen, englanninkieliset säännöt mukana	131	2015-05-13	daFool	\N	\N
SLS	6529	daFool	Taneli Armanto	\N	\N	\N	\N	\N	Courtesy of Taneli Armanto	653	2015-05-13	daFool	\N	\N
SLS	6530	daFool	Taneli Armanto	\N	\N	\N	\N	\N	 	295	2015-05-13	daFool	\N	\N
SLS	6531	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	682	2015-05-13	daFool	\N	\N
SLS	6532	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	705	2015-05-13	daFool	\N	\N
SLS	6533	daFool	Peliko	\N	\N	\N	\N	\N	 	567	2015-05-13	daFool	\N	\N
SLS	6534	daFool	Peliko	\N	\N	\N	\N	\N	 	730	2015-05-13	daFool	\N	\N
SLS	6535	daFool	Peliko	\N	\N	\N	\N	\N	 	307	2015-05-13	daFool	\N	\N
SLS	6535	daFool	Peliko	\N	\N	\N	\N	\N	 	470	2015-05-13	daFool	\N	\N
SLS	6537	daFool	Abacus	\N	\N	\N	\N	\N	Courtesy of Abacus	415	2015-05-13	daFool	\N	\N
SLS	6538	daFool	Murad Juraev	\N	\N	\N	\N	\N	Courtesy of Murad Juraev	548	2015-05-13	daFool	\N	\N
SLS	6539	daFool	Murad Juraev	\N	\N	\N	\N	\N	 	368	2015-05-13	daFool	\N	\N
SLS	6540	daFool	Murad Juraev	\N	\N	\N	\N	\N	 	728	2015-05-13	daFool	\N	\N
SLS	6541	daFool	Murad Juraev	\N	\N	\N	\N	\N	 	297	2015-05-13	daFool	\N	\N
SLS	6542	daFool	Murad Juraev	\N	\N	\N	\N	\N	 	296	2015-05-13	daFool	\N	\N
SLS	6543	daFool	Murad Juraev	\N	\N	\N	\N	\N	 	761	2015-05-13	daFool	\N	\N
SLS	6544	daFool	Murad Juraev	\N	\N	\N	\N	\N	 	499	2015-05-13	daFool	\N	\N
SLS	6545	daFool	Murad Juraev	\N	\N	\N	\N	\N	 	762	2015-05-13	daFool	\N	\N
SLS	6546	daFool	Kuznia Gier	\N	\N	\N	\N	\N	Courtesy of Kuznia Gier	231	2015-05-13	daFool	\N	\N
SLS	6547	daFool	Eduard Luhtonen	\N	\N	\N	\N	\N	Courtesy of Eduard Luhtonen	719	2015-05-13	daFool	\N	\N
SLS	6548	daFool	Japon Brand	\N	\N	\N	\N	\N	Courtesy of Japon Brand	251	2015-05-13	daFool	\N	\N
SLS	6549	daFool	Japon Brand	\N	\N	\N	\N	\N	Komponentit lisäosalaatikossa (Cheesy Gonzola)	241	2015-05-13	daFool	\N	\N
SLS	6550	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	692	2015-05-13	daFool	\N	\N
SLS	6551	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	670	2015-05-13	daFool	\N	\N
SLS	6552	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	149	2015-05-13	daFool	\N	\N
SLS	6553	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	607	2015-05-13	daFool	\N	\N
SLS	6554	daFool	TOP-TOY	\N	\N	\N	\N	\N	Courtesy of TOP-TOY	597	2015-05-13	daFool	\N	\N
SLS	6555	daFool	TOP-TOY	\N	\N	\N	\N	\N	 	623	2015-05-13	daFool	\N	\N
SLS	6556	daFool	TOP-TOY	\N	\N	\N	\N	\N	 	185	2015-05-13	daFool	\N	\N
SLS	6557	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	483	2015-05-13	daFool	\N	\N
SLS	6558	daFool	Wolf Fang	\N	\N	\N	\N	\N	Courtesy of Wolf Fang	274	2015-05-13	daFool	\N	\N
SLS	6559	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	612	2015-05-13	daFool	\N	\N
SLS	6560	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	6	2015-05-13	daFool	\N	\N
SLS	6561	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	566	2015-05-13	daFool	\N	\N
SLS	6562	daFool	Wolf Fang	\N	\N	\N	\N	\N	saksankielinen	151	2015-05-13	daFool	\N	\N
SLS	6563	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	723	2015-05-13	daFool	\N	\N
SLS	6564	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	697	2015-05-13	daFool	\N	\N
SLS	6565	daFool	Competo	\N	\N	\N	\N	\N	 	638	2015-05-13	daFool	\N	\N
SLS	6566	daFool	Competo	\N	\N	\N	\N	\N	 	759	2015-05-13	daFool	\N	\N
SLS	6567	daFool	JKLM Games	\N	\N	\N	\N	\N	Courtesy of JKLM Games	188	2015-05-13	daFool	\N	\N
SLS	6568	daFool	JKLM Games	\N	\N	\N	\N	\N	 	8	2015-05-13	daFool	\N	\N
SLS	6568	daFool	JKLM Games	\N	\N	\N	\N	\N	 	103	2015-05-13	daFool	\N	\N
SLS	6570	daFool	Harald Enoksson/Mondainai	\N	\N	\N	\N	\N	Courtesy of Harald Enoksson/Mondainai	164	2015-05-13	daFool	\N	\N
SLS	6571	daFool	Harald Enoksson/Mondainai	\N	\N	\N	\N	\N	 	497	2015-05-13	daFool	\N	\N
SLS	6572	daFool	Harald Enoksson/Mondainai	\N	\N	\N	\N	\N	 	93	2015-05-13	daFool	\N	\N
SLS	6573	daFool	Harald Enoksson/Mondainai	\N	\N	\N	\N	\N	 	41	2015-05-13	daFool	\N	\N
SLS	6574	daFool	Harald Enoksson/Mondainai	\N	\N	\N	\N	\N	 	209	2015-05-13	daFool	\N	\N
SLS	6575	daFool	Harald Enoksson/Mondainai	\N	\N	\N	\N	\N	kummaltakin pelaajalta puuttuu yksi lyhyt suora	571	2015-05-13	daFool	\N	\N
SLS	6576	daFool	Harald Enoksson/Mondainai	\N	\N	\N	\N	\N	 	30	2015-05-13	daFool	\N	\N
SLS	6577	daFool	Harald Enoksson/Mondainai	\N	\N	\N	\N	\N	 	1	2015-05-13	daFool	\N	\N
SLS	6578	daFool	Harald Enoksson/Mondainai	\N	\N	\N	\N	\N	säännöt vain saksaksi	395	2015-05-13	daFool	\N	\N
SLS	6579	daFool	Markus Nuopponen, säännöt vain saksaksi	\N	\N	\N	\N	\N	Courtesy of Markus Nuopponen, säännöt vain saksaksi	394	2015-05-13	daFool	\N	\N
SLS	6580	daFool	Julia Lehto	\N	\N	\N	\N	\N	Lahjoittaja: Julia Lehto	310	2015-05-13	daFool	\N	\N
SLS	6581	daFool	Eggert Spiele	\N	\N	\N	\N	\N	Sherwood Forest -- Courtesy of Eggert Spiele	419	2015-05-13	daFool	\N	\N
SLS	6582	daFool	Queen Games	\N	\N	\N	\N	\N	Courtesy of Queen Games	226	2015-05-13	daFool	\N	\N
SLS	6583	daFool	Queen Games	\N	\N	\N	\N	\N	 	186	2015-05-13	daFool	\N	\N
SLS	6584	daFool	Queen Games	\N	\N	\N	\N	\N	 	444	2015-05-13	daFool	\N	\N
SLS	6585	daFool	Queen Games	\N	\N	\N	\N	\N	 	520	2015-05-13	daFool	\N	\N
SLS	6586	daFool	Queen Games	\N	\N	\N	\N	\N	 	672	2015-05-13	daFool	\N	\N
SLS	6587	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	467	2015-05-13	daFool	\N	\N
SLS	6588	daFool	Competo	\N	\N	\N	\N	\N	 	527	2015-05-13	daFool	\N	\N
SLS	6589	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	506	2015-05-13	daFool	\N	\N
SLS	6590	daFool	Roll D6	\N	\N	\N	\N	\N	Courtesy of Roll D6	614	2015-05-13	daFool	\N	\N
SLS	6591	daFool	Roll D6	\N	\N	\N	\N	\N	 	537	2015-05-13	daFool	\N	\N
SLS	6592	daFool	Roll D6	\N	\N	\N	\N	\N	 	643	2015-05-13	daFool	\N	\N
SLS	6593	daFool	Roll D6	\N	\N	\N	\N	\N	 	288	2015-05-13	daFool	\N	\N
SLS	6594	daFool	Roll D6	\N	\N	\N	\N	\N	Suomeksi	119	2015-05-13	daFool	\N	\N
SLS	6594	daFool	Roll D6	\N	\N	\N	\N	\N	Suomeksi	120	2015-05-13	daFool	\N	\N
SLS	6596	daFool	Roll D6	\N	\N	\N	\N	\N	 	749	2015-05-13	daFool	\N	\N
SLS	6597	daFool	Roll D6	\N	\N	\N	\N	\N	säännöt vain saksaksi	350	2015-05-13	daFool	\N	\N
SLS	6598	daFool	Nestori Lehtonen; Geekissä listattua varhaisempi versio arviolta vuodelta 1966	\N	\N	\N	\N	\N	Ei nappuloita?? -- Lahjoittaja: Nestori Lehtonen; Geekissä listattua varhaisempi versio arviolta vuodelta 1966	323	2015-05-13	daFool	\N	\N
SLS	6599	daFool	Nestori Lehtonen; Geekissä listattua varhaisempi versio arviolta vuodelta 1966	\N	\N	\N	\N	\N	sis. 2x X-Wing ja 3x Tie, Y-Wing  ja Adv. Tie	680	2015-05-13	daFool	\N	\N
SLS	6600	daFool	Nestori Lehtonen; Geekissä listattua varhaisempi versio arviolta vuodelta 1966	\N	\N	\N	\N	\N	 	573	2015-05-13	daFool	\N	\N
SLS	6601	daFool	Nestori Lehtonen; Geekissä listattua varhaisempi versio arviolta vuodelta 1966	\N	\N	\N	\N	\N	 	443	2015-05-13	daFool	\N	\N
SLS	6602	daFool	JKLM Games	\N	\N	\N	\N	\N	Courtesy of JKLM Games	187	2015-05-13	daFool	\N	\N
SLS	6602	daFool	JKLM Games	\N	\N	\N	\N	\N	 	525	2015-05-13	daFool	\N	\N
SLS	6604	daFool	JKLM Games	\N	\N	\N	\N	\N	 	512	2015-05-13	daFool	\N	\N
SLS	6605	daFool	JKLM Games	\N	\N	\N	\N	\N	– red	677	2015-05-13	daFool	\N	\N
SLS	6606	daFool	JKLM Games	\N	\N	\N	\N	\N	– blue	679	2015-05-13	daFool	\N	\N
SLS	6607	daFool	JKLM Games	\N	\N	\N	\N	\N	 	676	2015-05-13	daFool	\N	\N
SLS	6608	daFool	JKLM Games	\N	\N	\N	\N	\N	– green	678	2015-05-13	daFool	\N	\N
SLS	6609	daFool	JKLM Games	\N	\N	\N	\N	\N	 	320	2015-05-13	daFool	\N	\N
SLS	6610	daFool	JKLM Games	\N	\N	\N	\N	\N	 	747	2015-05-13	daFool	\N	\N
SLS	6611	daFool	JKLM Games	\N	\N	\N	\N	\N	Battlesson #1	616	2015-05-13	daFool	\N	\N
SLS	6612	daFool	Portal	\N	\N	\N	\N	\N	Courtesy of Portal	420	2015-05-13	daFool	\N	\N
SLS	6613	daFool	Portal	\N	\N	\N	\N	\N	Sis. tiimalasin	35	2015-05-13	daFool	\N	\N
SLS	6614	daFool	Portal	\N	\N	\N	\N	\N	säännöt vain saksaksi	351	2015-05-13	daFool	\N	\N
SLS	6615	daFool	Portal	\N	\N	\N	\N	\N	säännöt vain saksaksi	365	2015-05-13	daFool	\N	\N
SLS	6616	daFool	Reiver Games	\N	\N	\N	\N	\N	Courtesy of Reiver Games	454	2015-05-13	daFool	\N	\N
SLS	6617	daFool	Reiver Games	\N	\N	\N	\N	\N	 	302	2015-05-13	daFool	\N	\N
SLS	6618	daFool	Reiver Games	\N	\N	\N	\N	\N	 	303	2015-05-13	daFool	\N	\N
SLS	6619	daFool	Amo	\N	\N	\N	\N	\N	Courtesy of Amo	699	2015-05-13	daFool	\N	\N
SLS	6620	daFool	Amo	\N	\N	\N	\N	\N	 	727	2015-05-13	daFool	\N	\N
SLS	6621	daFool	Amo	\N	\N	\N	\N	\N	 	715	2015-05-13	daFool	\N	\N
SLS	6622	daFool	Amo	\N	\N	\N	\N	\N	 	123	2015-05-13	daFool	\N	\N
SLS	6623	daFool	Amo	\N	\N	\N	\N	\N	 	66	2015-05-13	daFool	\N	\N
SLS	6623	daFool	Amo	\N	\N	\N	\N	\N	 	98	2015-05-13	daFool	\N	\N
SLS	6625	daFool	Japon Brand	\N	\N	\N	\N	\N	Sis. Eng. säännöt ja käännöslaput -- Courtesy of Japon Brand	479	2015-05-13	daFool	\N	\N
SLS	6626	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	Lahjoittaja: Markku Jaatinen	198	2015-05-13	daFool	\N	\N
SLS	6627	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	Kirja korttipeleistä tekijänä Mikko Saari	331	2015-05-13	daFool	\N	\N
SLS	6628	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	751	2015-05-13	daFool	\N	\N
SLS	6629	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	436	2015-05-13	daFool	\N	\N
SLS	6630	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	552	2015-05-13	daFool	\N	\N
SLS	6631	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	25	2015-05-13	daFool	\N	\N
SLS	6632	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	742	2015-05-13	daFool	\N	\N
SLS	6633	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	606	2015-05-13	daFool	\N	\N
SLS	6634	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	11	2015-05-13	daFool	\N	\N
SLS	6634	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	 	340	2015-05-13	daFool	\N	\N
SLS	6636	daFool	Markku Jaatinen	\N	\N	\N	\N	\N	Lahjoittanut Erkki Vuokila	659	2015-05-13	daFool	\N	\N
SLS	6637	daFool	Tuonela Productions	\N	\N	\N	\N	\N	Courtesy of Tuonela Productions	276	2015-05-13	daFool	\N	\N
SLS	6638	daFool	Tuonela Productions	\N	\N	\N	\N	\N	Battlesson #2 (Second edition)	615	2015-05-13	daFool	\N	\N
SLS	6639	daFool	Right Games	\N	\N	\N	\N	\N	Courtesy of Right Games	584	2015-05-13	daFool	\N	\N
SLS	6640	daFool	Right Games	\N	\N	\N	\N	\N	Courtesy of Right Games	585	2015-05-13	daFool	\N	\N
SLS	6641	daFool	Japon Brand	\N	\N	\N	\N	\N	Courtesy of Japon Brand	252	2015-05-13	daFool	\N	\N
SLS	6642	daFool	Japon Brand	\N	\N	\N	\N	\N	Courtesy of Japon Brand	477	2015-05-13	daFool	\N	\N
SLS	6643	daFool	Japon Brand	\N	\N	\N	\N	\N	säännöt vain saksaksi	366	2015-05-13	daFool	\N	\N
SLS	6644	daFool	Japon Brand	\N	\N	\N	\N	\N	 	73	2015-05-13	daFool	\N	\N
SLS	6645	daFool	Marco Bing/PYXI	\N	\N	\N	\N	\N	Courtesy of Marco Bing/PYXI	327	2015-05-13	daFool	\N	\N
SLS	6646	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	639	2015-05-13	daFool	\N	\N
SLS	6647	daFool	JKLM Games	\N	\N	\N	\N	\N	Courtesy of JKLM Games	424	2015-05-13	daFool	\N	\N
SLS	6648	daFool	JKLM Games	\N	\N	\N	\N	\N	 	126	2015-05-13	daFool	\N	\N
SLS	6649	daFool	JKLM Games	\N	\N	\N	\N	\N	 	746	2015-05-13	daFool	\N	\N
SLS	6650	daFool	Zoch	\N	\N	\N	\N	\N	Courtesy of Zoch	430	2015-05-13	daFool	\N	\N
SLS	6651	daFool	Zoch	\N	\N	\N	\N	\N	 	159	2015-05-13	daFool	\N	\N
SLS	6652	daFool	Zoch	\N	\N	\N	\N	\N	 	526	2015-05-13	daFool	\N	\N
SLS	6653	daFool	Zoch	\N	\N	\N	\N	\N	 	50	2015-05-13	daFool	\N	\N
SLS	6654	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	464	2015-05-13	daFool	\N	\N
SLS	6655	daFool	Hyptic Games	\N	\N	\N	\N	\N	Courtesy of  Hyptic Games	507	2015-05-13	daFool	\N	\N
SLS	6656	daFool	Hyptic Games	\N	\N	\N	\N	\N	 	521	2015-05-13	daFool	\N	\N
SLS	6657	daFool	Hyptic Games	\N	\N	\N	\N	\N	 	224	2015-05-13	daFool	\N	\N
SLS	6658	daFool	Hyptic Games	\N	\N	\N	\N	\N	 	133	2015-05-13	daFool	\N	\N
SLS	6659	daFool	Hyptic Games	\N	\N	\N	\N	\N	 	449	2015-05-13	daFool	\N	\N
SLS	6660	daFool	Hyptic Games	\N	\N	\N	\N	\N	 	294	2015-05-13	daFool	\N	\N
SLS	6661	daFool	Hyptic Games	\N	\N	\N	\N	\N	 	153	2015-05-13	daFool	\N	\N
SLS	6662	daFool	Magnus Engblom	\N	\N	\N	\N	\N	Courtesy of Magnus Engblom	397	2015-05-13	daFool	\N	\N
SLS	6663	daFool	Magnus Engblom	\N	\N	\N	\N	\N	 	382	2015-05-13	daFool	\N	\N
SLS	6664	daFool	JKLM Games	\N	\N	\N	\N	\N	Courtesy of JKLM Games	423	2015-05-13	daFool	\N	\N
SLS	6665	daFool	JKLM Games	\N	\N	\N	\N	\N	 	624	2015-05-13	daFool	\N	\N
SLS	6666	daFool	JKLM Games	\N	\N	\N	\N	\N	 	300	2015-05-13	daFool	\N	\N
SLS	6667	daFool	JKLM Games	\N	\N	\N	\N	\N	 	28	2015-05-13	daFool	\N	\N
SLS	6668	daFool	JKLM Games	\N	\N	\N	\N	\N	 	47	2015-05-13	daFool	\N	\N
SLS	6669	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	600	2015-05-13	daFool	\N	\N
SLS	6670	daFool	Wolf Fang	\N	\N	\N	\N	\N	Courtesy of Wolf Fang	169	2015-05-13	daFool	\N	\N
SLS	6671	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	147	2015-05-13	daFool	\N	\N
SLS	6672	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	62	2015-05-13	daFool	\N	\N
SLS	6672	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	91	2015-05-13	daFool	\N	\N
SLS	6672	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	306	2015-05-13	daFool	\N	\N
SLS	6675	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of Competo	500	2015-05-13	daFool	\N	\N
SLS	6676	daFool	Competo	\N	\N	\N	\N	\N	 	386	2015-05-13	daFool	\N	\N
SLS	6677	daFool	Competo	\N	\N	\N	\N	\N	 	650	2015-05-13	daFool	\N	\N
SLS	6678	daFool	Competo	\N	\N	\N	\N	\N	 	220	2015-05-13	daFool	\N	\N
SLS	6679	daFool	Competo	\N	\N	\N	\N	\N	 	613	2015-05-13	daFool	\N	\N
SLS	6680	daFool	Nestori Lehtonen	\N	\N	\N	\N	\N	Lahjoittaja: Nestori Lehtonen	322	2015-05-13	daFool	\N	\N
SLS	6681	daFool	Nestori Lehtonen	\N	\N	\N	\N	\N	 	640	2015-05-13	daFool	\N	\N
SLS	6682	daFool	What's your game	\N	\N	\N	\N	\N	Courtesy of What's your game	271	2015-05-13	daFool	\N	\N
SLS	6683	daFool	What's your game	\N	\N	\N	\N	\N	 	591	2015-05-13	daFool	\N	\N
SLS	6684	daFool	What's your game	\N	\N	\N	\N	\N	 	83	2015-05-13	daFool	\N	\N
SLS	6685	daFool	Abacus	\N	\N	\N	\N	\N	Courtesy of Abacus	414	2015-05-13	daFool	\N	\N
SLS	6686	daFool	Roll D6	\N	\N	\N	\N	\N	Courtesy of Roll D6	655	2015-05-13	daFool	\N	\N
SLS	6687	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	416	2015-05-13	daFool	\N	\N
SLS	6687	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	476	2015-05-13	daFool	\N	\N
SLS	6689	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	77	2015-05-13	daFool	\N	\N
SLS	6690	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Figuureita puuttuu	539	2015-05-13	daFool	\N	\N
SLS	6691	daFool	Abacus	\N	\N	\N	\N	\N	Courtesy of Abacus	490	2015-05-13	daFool	\N	\N
SLS	6692	daFool	Julia Lehto	\N	\N	\N	\N	\N	Lahjoittaja: Julia Lehto	311	2015-05-13	daFool	\N	\N
SLS	6693	daFool	Roll D6	\N	\N	\N	\N	\N	Courtesy of Roll D6	656	2015-05-13	daFool	\N	\N
SLS	6694	daFool	Roll D6	\N	\N	\N	\N	\N	 	76	2015-05-13	daFool	\N	\N
SLS	6695	daFool	Peliko	\N	\N	\N	\N	\N	Courtesy of Peliko	708	2015-05-13	daFool	\N	\N
SLS	6696	daFool	Peliko	\N	\N	\N	\N	\N	 	673	2015-05-13	daFool	\N	\N
SLS	6697	daFool	Peliko	\N	\N	\N	\N	\N	 	148	2015-05-13	daFool	\N	\N
SLS	6698	daFool	Peliko	\N	\N	\N	\N	\N	2/8 juusto puuttuu	370	2015-05-13	daFool	\N	\N
SLS	6699	daFool	Nestori Lehtonen	\N	\N	\N	\N	\N	Lahjoittaja: Nestori Lehtonen	438	2015-05-13	daFool	\N	\N
SLS	6700	daFool	Nestori Lehtonen	\N	\N	\N	\N	\N	 	608	2015-05-13	daFool	\N	\N
SLS	6701	daFool	Nestori Lehtonen	\N	\N	\N	\N	\N	 	282	2015-05-13	daFool	\N	\N
SLS	6701	daFool	Väinö Hirvelä	\N	\N	\N	\N	\N	Lahjoittaja: Väinö Hirvelä	440	2015-05-13	daFool	\N	\N
SLS	6703	daFool	Väinö Hirvelä	\N	\N	\N	\N	\N	 	538	2015-05-13	daFool	\N	\N
SLS	6704	daFool	Väinö Hirvelä	\N	\N	\N	\N	\N	 	139	2015-05-13	daFool	\N	\N
SLS	6704	daFool	Väinö Hirvelä	\N	\N	\N	\N	\N	 	203	2015-05-13	daFool	\N	\N
SLS	6706	daFool	Alea	\N	\N	\N	\N	\N	Courtesy of Alea	218	2015-05-13	daFool	\N	\N
SLS	6707	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	Courtesy of Lautapelit.fi	402	2015-05-13	daFool	\N	\N
SLS	6708	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	447	2015-05-13	daFool	\N	\N
SLS	6709	daFool	Lautapelit.fi	\N	\N	\N	\N	\N	 	17	2015-05-13	daFool	\N	\N
SLS	6710	daFool	Eduard Luhtonen	\N	\N	\N	\N	\N	Courtesy of Eduard Luhtonen	720	2015-05-13	daFool	\N	\N
SLS	6711	daFool	Kuznia Gier	\N	\N	\N	\N	\N	Courtesy of Kuznia Gier	229	2015-05-13	daFool	\N	\N
SLS	6712	daFool	Kuznia Gier	\N	\N	\N	\N	\N	 	290	2015-05-13	daFool	\N	\N
SLS	6713	daFool	Kuznia Gier	\N	\N	\N	\N	\N	saksaksi	134	2015-05-13	daFool	\N	\N
SLS	6714	daFool	Competo	\N	\N	\N	\N	\N	Courtesy of  Competo	496	2015-05-13	daFool	\N	\N
SLS	6715	daFool	Competo	\N	\N	\N	\N	\N	 	110	2015-05-13	daFool	\N	\N
SLS	6716	daFool	Competo	\N	\N	\N	\N	\N	Suomeksi	543	2015-05-13	daFool	\N	\N
SLS	6717	daFool	Wolf Fang	\N	\N	\N	\N	\N	Courtesy of Wolf Fang	273	2015-05-13	daFool	\N	\N
SLS	6718	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	245	2015-05-13	daFool	\N	\N
SLS	6719	daFool	Wolf Fang	\N	\N	\N	\N	\N	säännöt vain saksaksi	352	2015-05-13	daFool	\N	\N
SLS	6720	daFool	Wolf Fang	\N	\N	\N	\N	\N	Age of Napoleon	671	2015-05-13	daFool	\N	\N
SLS	6721	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	361	2015-05-13	daFool	\N	\N
SLS	6722	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	4	2015-05-13	daFool	\N	\N
SLS	6723	daFool	Wolf Fang	\N	\N	\N	\N	\N	 	301	2015-05-13	daFool	\N	\N
\.


--
-- Data for Name: laina; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY laina (lainaaja, lainattu, kokoelmapeli, palautus, pantti, palautettu, tapahtuma, modified) FROM stdin;
\.


--
-- Data for Name: logi; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY logi (kuka, koska, mita, tiedosto, mika, rivi, luokka) FROM stdin;
\N	2015-04-08 14:57:09.504646+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 14:57:09.526147+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 14:57:09.541933+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-08 14:57:21.145143+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-08 14:57:21.229429+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 14:57:21.240929+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 14:57:21.249371+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-08 14:57:48.840387+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 14:57:48.897719+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 14:57:48.90598+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-08 14:59:23.608932+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 14:59:23.625358+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 14:59:23.633654+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-08 14:59:27.851083+03	Käyttäjä daFool kirjautui ulos.	/home/mos/projektit/slskirjasto/session.php		10	AUDIT
\N	2015-04-08 14:59:27.938329+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 14:59:27.941843+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 14:59:27.950209+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-08 14:59:34.108934+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-08 14:59:34.189038+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 14:59:34.199742+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 14:59:34.208083+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-08 14:59:45.387628+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 14:59:45.400318+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 14:59:45.408731+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-08 15:00:01.482003+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 15:00:01.499364+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 15:00:01.516147+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-08 15:00:53.537376+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 15:00:53.588856+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 15:00:53.596939+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-08 15:01:58.001338+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 15:01:58.01099+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 15:01:58.019355+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-08 15:02:46.010997+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 15:02:46.021667+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 15:02:46.02938+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-08 15:07:52.42016+03	Tapahtuma Table Top Day 2015 lisätty.	/home/mos/projektit/slskirjasto/helpers/collections.php	SLSCOLLECTIONS	44	INFO
\N	2015-04-08 15:07:54.789777+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 15:07:54.803555+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 15:07:54.820191+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-08 15:15:21.876824+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-08 15:15:21.885673+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-08 15:15:21.903408+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-10 09:47:40.921029+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-10 09:47:40.945921+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 09:47:40.954072+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-10 14:44:51.935046+03	b:0; b:0;	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	18	DEBUG
\N	2015-04-10 14:45:26.616483+03	b:0; b:0;	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 14:45:26.63172+03		/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 14:45:26.639848+03	select * from vKokoelma where kokoelma=:k  limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 14:52:15.015723+03	b:0; b:0;	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 14:52:15.02414+03		/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 14:52:15.032388+03	select * from vKokoelma where kokoelma=:k  limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:04:27.087081+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-10 15:04:27.098877+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 15:04:27.106252+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-10 15:04:35.791943+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-10 15:04:35.900531+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-10 15:04:35.914081+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 15:04:35.922454+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-10 15:10:14.833872+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:10:14.844764+03	kokoelma asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:10:14.852675+03	select * from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by kokoelma asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:19:51.244182+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:19:51.252135+03	kokoelma asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:19:51.26038+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:19:51.268746+03	select * from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by kokoelma asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:21:52.559408+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:21:52.57013+03	kokoelma asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:21:52.57842+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:21:52.586716+03	select * from vKokoelma where kokoelma=:k  order by kokoelma asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:24:53.328056+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-10 15:24:53.342712+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 15:24:53.351401+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-10 15:24:57.004456+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-10 15:24:57.017588+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 15:24:57.032366+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-10 15:25:00.562093+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-10 15:25:00.575737+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 15:25:00.593683+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-10 15:25:01.859185+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-10 15:25:01.867229+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 15:25:01.875535+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-10 15:25:03.387591+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-10 15:25:03.400507+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 15:25:03.409252+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-10 15:25:58.772454+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-10 15:25:58.896347+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-10 15:25:58.90554+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 15:25:58.923216+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-10 15:26:01.686169+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:26:01.705697+03	kokoelma asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:26:01.722126+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:26:01.730413+03	select * from vKokoelma where kokoelma=:k  order by kokoelma asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:27:43.798892+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:27:43.808494+03	kokoelma asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:27:43.816194+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:27:43.824518+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by kokoelma asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:28:35.56429+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:28:35.571545+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:28:35.579756+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:28:35.588259+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:29:04.31696+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"Cat";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:29:04.328314+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:29:04.336733+03	a:2:{s:5:"value";s:3:"Cat";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:29:04.344989+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Cat, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:29:05.048745+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:4:"Cata";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:29:05.053629+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:29:05.062333+03	a:2:{s:5:"value";s:4:"Cata";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:29:05.070321+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Cata, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:29:07.874016+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:5:"Catan";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:29:07.886646+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:29:07.894613+03	a:2:{s:5:"value";s:5:"Catan";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:29:07.902762+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Catan, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:29:08.461948+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:6:"Catan%";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:29:08.478619+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:29:08.48626+03	a:2:{s:5:"value";s:6:"Catan%";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:29:08.494659+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Catan%, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:29:11.938196+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:6:"Catan.";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:29:11.95286+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:29:11.96083+03	a:2:{s:5:"value";s:6:"Catan.";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:29:11.969442+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Catan., k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:29:12.811882+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:7:"Catan.*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:29:12.836288+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:29:12.844485+03	a:2:{s:5:"value";s:7:"Catan.*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:32:33.232884+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 19:07:17.975592+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-10 15:29:12.852486+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Catan.*, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:29:19.357456+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:8:".Catan.*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:29:19.368951+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:29:19.37775+03	a:2:{s:5:"value";s:8:".Catan.*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:29:19.385621+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=.Catan.*, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:29:20.361405+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:9:".*Catan.*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:29:20.369123+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:29:20.377372+03	a:2:{s:5:"value";s:9:".*Catan.*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:29:20.385488+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=.*Catan.*, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:31:02.130237+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:31:02.146506+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:31:02.154685+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:31:02.163084+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:31:06.554058+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"S";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:31:06.605194+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:31:06.612967+03	a:2:{s:5:"value";s:1:"S";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:31:06.620998+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=S, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:31:09.565316+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"S.";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:31:09.5795+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:31:09.587736+03	a:2:{s:5:"value";s:2:"S.";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:31:09.595827+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=S., k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:31:12.047411+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"S.*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:31:12.063762+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:31:12.07168+03	a:2:{s:5:"value";s:3:"S.*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:31:12.079928+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=S.*, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:31:17.192306+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"S";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:31:17.249577+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:31:17.262517+03	a:2:{s:5:"value";s:1:"S";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:31:17.270666+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=S, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:31:17.738882+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"S*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:31:17.770847+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:31:17.778728+03	a:2:{s:5:"value";s:2:"S*";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:31:17.787075+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=S*, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:32:25.762638+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"S";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:32:25.775286+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:32:25.783386+03	a:2:{s:5:"value";s:1:"S";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:32:25.791478+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=S, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:32:33.224372+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"Se";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:32:33.241379+03	a:2:{s:5:"value";s:2:"Se";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:32:33.249374+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Se, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:32:38.870596+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"Set";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:32:38.882859+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:32:38.890855+03	a:2:{s:5:"value";s:3:"Set";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:32:38.899323+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Set, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:32:41.398128+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:4:"Sett";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:32:41.407311+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:32:41.415878+03	a:2:{s:5:"value";s:4:"Sett";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:32:41.424258+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Sett, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:07.08826+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"S";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:07.097462+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:07.106086+03	a:2:{s:5:"value";s:1:"S";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:07.114417+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=S, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:07.962101+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"C";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:07.995048+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:08.006012+03	a:2:{s:5:"value";s:1:"C";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:08.014403+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=C, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:09.216376+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"Ca";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:09.231026+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:09.239324+03	a:2:{s:5:"value";s:2:"Ca";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:09.247549+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Ca, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:09.835455+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"Car";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:09.838781+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:09.847664+03	a:2:{s:5:"value";s:3:"Car";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:09.855735+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Car, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:12.00401+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:6:"Carcas";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:12.014532+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:12.02283+03	a:2:{s:5:"value";s:6:"Carcas";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:12.031282+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Carcas, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:13.768139+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:7:"Carcass";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:13.780627+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:13.789022+03	a:2:{s:5:"value";s:7:"Carcass";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:13.797273+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Carcass, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:21.383081+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:4:"Carc";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:21.396938+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:21.405138+03	a:2:{s:5:"value";s:4:"Carc";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:21.41313+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Carc, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:21.848492+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"C";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:21.855039+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:21.86339+03	a:2:{s:5:"value";s:1:"C";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:21.871986+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=C, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:22.319679+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:22.330933+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:22.339103+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:22.347181+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:23.221692+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"L";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:23.230002+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:23.238273+03	a:2:{s:5:"value";s:1:"L";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:23.246445+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=L, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:23.922945+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"La";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:23.947083+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:23.955261+03	a:2:{s:5:"value";s:2:"La";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:23.963572+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=La, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:25.239351+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"Lai";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:25.25489+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:25.263111+03	a:2:{s:5:"value";s:3:"Lai";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:25.271498+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Lai, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:27.572283+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:4:"Lain";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:27.588238+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:27.596065+03	a:2:{s:5:"value";s:4:"Lain";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:27.604491+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Lain, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:33:29.705603+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"Lai";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:33:29.730174+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:33:29.737905+03	a:2:{s:5:"value";s:3:"Lai";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:33:29.746118+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Lai, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:36:02.862904+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:36:02.878912+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:36:02.887302+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:36:02.89564+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-10 15:37:20.393558+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-10 15:37:20.399409+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-10 15:37:20.407877+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-10 15:37:20.416095+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:03:54.70599+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 16:03:54.723206+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 16:03:54.731476+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-11 16:04:12.685097+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-11 16:04:12.837038+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 16:04:12.847091+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 16:04:12.863483+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 16:04:14.558633+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:04:14.572304+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:04:14.580123+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:04:14.588487+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:14:26.404773+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:14:26.419499+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:14:26.427867+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:14:26.436092+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:25:46.786862+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 16:25:46.796522+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 16:25:46.804594+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-11 16:25:55.673929+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-11 16:25:55.786956+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 16:25:55.795774+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 16:25:55.804052+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 16:25:57.72952+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:25:57.737342+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:25:57.745538+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:25:57.753803+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:26:42.629235+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 16:26:42.63469+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 16:26:42.643063+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 16:26:45.980383+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:26:45.992929+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:26:46.000948+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:26:46.009281+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:26:49.540732+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 16:26:49.550893+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 16:26:49.584489+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 16:26:50.80175+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:26:50.817566+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:26:50.825704+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:26:50.833947+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:28:05.45018+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:28:05.46315+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:28:05.471475+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:28:05.47984+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:34:29.929657+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:34:29.940642+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:34:29.948955+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:34:29.957281+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:36:01.214882+03	b:0; b:0;	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:36:01.243537+03		/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:36:01.276921+03	b:0;	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:36:01.293868+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:36:41.705071+03	b:0; b:0;	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:36:41.716113+03		/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:36:41.732757+03	b:0;	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:36:41.741363+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 16:36:48.501338+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 16:36:48.507441+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 16:36:48.515721+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 16:36:48.524109+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 17:08:18.18666+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 17:08:18.205198+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 17:08:18.213337+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-11 17:08:25.288503+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-11 17:08:25.39369+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 17:08:25.404508+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 17:08:25.413271+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 17:09:06.841653+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 17:09:06.852408+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 17:09:06.860644+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 17:09:06.869073+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 17:25:55.991299+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 17:25:56.00985+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 17:25:56.018039+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 17:25:56.026694+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 17:27:33.695777+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 17:27:33.704345+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 17:27:33.712778+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 17:27:33.720939+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 17:33:12.936425+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 17:33:12.942915+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 17:33:12.951804+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-11 17:33:20.034555+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-11 17:33:20.205497+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 17:33:20.217551+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 17:33:20.225648+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 19:47:08.709731+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 17:33:22.447664+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 17:33:22.459067+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 17:33:22.4677+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 17:33:22.475423+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 17:35:35.466359+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 17:35:35.475957+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 17:35:35.484379+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 17:35:35.492599+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 17:42:08.477949+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 17:42:08.486407+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 17:42:08.494865+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 17:42:08.502905+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:01:44.866828+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 18:01:44.884022+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 18:01:44.892206+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-11 18:01:53.600213+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-11 18:01:53.73594+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 18:01:53.750219+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 18:01:53.758474+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 18:01:55.893609+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:01:55.908343+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:01:55.916571+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:01:55.924959+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:02:14.997724+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 18:02:15.007179+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 18:02:15.015567+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 18:02:16.737002+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:02:16.748803+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:02:16.757343+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:02:16.765498+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:10:04.733846+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:10:04.754847+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:10:04.762823+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:10:04.771326+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:16:02.743374+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:16:02.758721+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:16:02.767099+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:16:02.7753+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:18:10.075084+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:18:10.092958+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:18:10.10113+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:18:10.109543+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:22:01.51039+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 18:22:01.520926+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 18:22:01.529801+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-11 18:22:10.743598+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-11 18:22:10.878736+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 18:22:10.8872+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 18:22:10.895371+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 18:26:35.163884+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:26:35.188349+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:26:35.196789+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:26:35.204795+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:27:16.752539+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:27:16.769136+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:27:16.777723+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:27:16.811209+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:28:56.350555+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:28:56.363415+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:28:56.371806+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:28:56.38021+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:30:30.88773+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:30:30.899985+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:30:30.907833+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:30:30.916272+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:30:44.745738+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:30:44.76533+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:30:44.773791+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:30:44.781987+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:31:27.842413+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:31:27.86301+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:31:27.897619+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:31:27.904423+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:31:43.193378+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:31:43.22046+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:31:43.228558+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:31:43.237126+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:31:52.435154+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:31:52.444869+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:31:52.45325+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 19:47:08.717917+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:31:52.461669+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:32:45.262215+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:32:45.275269+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:32:45.283479+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:32:45.291702+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:36:59.191803+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:36:59.201966+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:36:59.210083+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:36:59.218618+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:37:35.358962+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:37:35.374838+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:37:35.383082+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:37:35.391437+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:42:12.532308+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 18:42:12.54192+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 18:42:12.550014+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-11 18:42:20.266804+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-11 18:42:20.406582+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 18:42:20.416329+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 18:42:20.424815+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 18:42:22.70591+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:42:22.716208+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:42:22.724547+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:42:22.732861+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:42:45.510827+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:42:45.52336+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:42:45.531668+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:42:45.539993+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 18:44:02.319116+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 18:44:02.335501+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 18:44:02.343862+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 18:44:02.352037+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 19:46:57.866993+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 19:46:57.915222+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 19:46:57.967519+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-11 19:47:05.847751+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-11 19:47:05.99465+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 19:47:06.009528+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 19:47:06.025996+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 19:47:08.696997+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 19:47:08.726003+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 19:47:11.390356+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 19:47:11.400969+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 19:47:11.409404+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 19:48:18.607676+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 19:48:18.622125+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 19:48:18.630838+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 19:48:18.638805+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 19:48:21.78234+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 19:48:21.830404+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 19:48:21.872697+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 19:49:36.331571+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 19:49:36.350894+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 19:49:36.392444+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 19:49:36.40083+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 19:49:38.347399+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 19:49:38.359971+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 19:49:38.367506+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 19:49:49.328079+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 19:49:49.333513+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 19:49:49.34172+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 19:49:49.349993+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 20:00:34.46369+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 20:00:34.478522+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 20:00:34.487159+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 20:00:34.495151+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=uTable Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 20:00:58.100217+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 20:00:58.135614+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 20:00:58.168966+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 20:00:58.219245+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 20:11:36.017923+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 20:11:36.031518+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 20:11:36.040136+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-11 20:11:44.675893+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-11 20:11:44.822016+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-11 20:11:44.839613+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-11 20:11:44.897974+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-11 20:11:46.263829+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 20:11:46.272675+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 20:11:46.281091+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 17:44:36.786303+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 20:11:46.289363+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-11 20:16:33.950357+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-11 20:16:33.966898+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-11 20:16:33.975169+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-11 20:16:33.983438+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 17:19:57.356024+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:19:57.380962+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:19:57.38907+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:21:22.804363+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:21:22.817544+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:21:22.825889+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:21:41.508087+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:21:41.517354+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:21:41.525071+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:23:47.035861+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:23:47.042506+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:23:47.050963+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:24:59.83716+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:24:59.846658+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:24:59.863245+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:25:56.044989+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:25:56.051828+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:25:56.060297+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:26:06.56182+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:26:06.567838+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:26:06.576028+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:28:15.845214+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:28:15.860185+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:28:15.868545+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:29:43.788938+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:29:43.805113+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:29:43.821512+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:31:53.032759+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:31:53.064092+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:31:53.072582+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-18 17:43:40.816531+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-18 17:43:40.941591+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 17:43:40.956454+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:43:40.964393+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 17:44:36.73129+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 17:44:36.778076+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 17:03:25.875489+03	nimi desc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 17:44:36.811368+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 18:03:45.429738+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 18:03:45.444105+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 18:03:45.452122+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 18:03:45.46039+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
daFool	2015-04-18 18:04:01.249733+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-18 18:04:01.346003+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 18:04:01.351357+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 18:04:01.360169+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 18:04:09.115062+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 18:04:09.126892+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 18:04:09.134307+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 18:04:09.142503+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 18:05:40.368913+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-18 18:05:40.37906+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-18 18:05:40.387347+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-18 18:05:45.049654+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 18:05:45.062818+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 18:05:45.070374+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 18:05:45.078629+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 18:06:34.387267+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 18:06:34.392748+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 18:06:34.400728+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 18:06:34.408856+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 18:07:37.920609+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 18:07:37.931915+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 18:07:37.940053+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 18:07:37.948436+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 18:07:47.281507+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 18:07:47.29019+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 18:07:47.298303+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 18:07:47.306836+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=1480, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 18:52:50.260392+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 18:52:50.266411+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 18:52:50.274713+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 18:52:50.283046+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:08:52.698796+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:08:52.710804+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:08:52.718216+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:08:52.72709+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:14:57.837529+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:14:57.846974+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:14:57.855183+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:14:57.863496+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:15:30.109189+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:15:30.120875+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:15:30.128319+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:15:30.138714+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:17:03.0372+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:17:03.047976+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:17:03.056123+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:17:03.065265+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:17:50.472405+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:17:50.478323+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:17:50.486601+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:17:50.495315+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:27:02.538067+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:27:02.545888+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:27:02.554207+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:27:02.562555+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:28:11.641226+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:28:11.650415+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:28:11.658589+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:28:11.666927+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:28:30.320469+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:28:30.332892+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:28:30.340821+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:28:30.349083+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:36:06.503239+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:36:06.513741+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:36:06.522089+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:36:06.532159+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-18 19:51:34.152486+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-18 19:51:34.16745+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-18 19:51:34.175665+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-18 19:51:34.183982+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 17:03:19.864444+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 17:03:19.921104+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 17:03:19.934096+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 17:03:25.865755+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:4:"desc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 17:03:25.892167+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi desc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 17:03:27.912831+03	a:1:{i:0;a:2:{s:6:"column";s:1:"1";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 17:03:27.925132+03	suunnittelija asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 17:03:27.933599+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by suunnittelija asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 17:03:30.276529+03	a:1:{i:0;a:2:{s:6:"column";s:1:"1";s:3:"dir";s:4:"desc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 17:03:30.310088+03	suunnittelija desc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 17:03:30.325311+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by suunnittelija desc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 17:03:32.814838+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 17:03:32.841838+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 17:03:32.849928+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 17:03:34.796206+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:4:"desc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 17:03:34.809047+03	nimi desc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 17:03:34.817327+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi desc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 17:09:15.695044+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 17:09:15.705008+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 17:09:15.714083+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 17:10:17.676117+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 17:10:17.684664+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 17:10:17.694248+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 17:13:11.47247+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 17:13:11.491238+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 17:13:11.499311+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 17:13:11.507891+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 17:21:57.838997+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 17:21:57.852104+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 17:21:57.860782+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 17:21:57.868765+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 17:23:18.11851+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 17:23:18.130721+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 17:23:18.139449+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 17:23:18.148216+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 18:01:02.159901+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 18:01:02.173437+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 18:01:02.182327+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 18:01:02.190769+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 19:07:10.624665+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 19:07:10.641485+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 19:07:10.651371+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-04-25 19:07:17.74951+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		29	AUDIT
\N	2015-04-25 19:07:17.963765+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 19:07:17.991201+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 19:08:22.964534+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 19:08:22.980135+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 19:08:22.988529+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 19:08:26.798787+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 19:08:26.813139+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 19:08:26.83873+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 19:08:26.847212+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 22:35:36.310136+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 22:35:36.393749+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 22:35:36.443785+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 22:35:38.163908+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 22:35:38.176981+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 22:35:38.185363+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 22:35:38.19376+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 22:36:53.363021+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 22:36:53.41432+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 22:36:53.422253+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 22:36:53.430866+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 22:36:57.633566+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 22:36:57.647707+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 22:36:57.655546+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 22:36:57.663936+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 22:37:24.327223+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 22:37:24.337491+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 22:37:24.345703+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 22:37:24.35536+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 22:59:38.449089+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 22:59:38.493414+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 22:59:38.51837+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 22:59:40.613618+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 22:59:40.628145+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 22:59:40.634816+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 22:59:40.644008+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 23:38:18.423551+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 23:38:18.439772+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 23:38:18.448732+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 23:38:18.456579+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 23:41:52.308381+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 23:41:52.319069+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 23:41:52.327315+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 23:41:52.33961+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 23:45:12.813692+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 23:45:12.825153+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 23:45:12.833888+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 23:45:12.843287+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-25 23:49:47.605919+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:49:47.617464+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:49:47.642302+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:26.703717+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:26.715726+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:26.723458+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:32.157047+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:32.165781+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:32.174259+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:33.863738+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:33.873423+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:33.881087+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:35.39725+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:35.40663+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:35.414675+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:36.51044+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:36.523175+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:36.531499+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:37.611675+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:37.640307+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:37.64826+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:39.322982+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:39.330988+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:39.33937+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:40.829561+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:40.83958+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:40.847432+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:42.033417+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:42.047892+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:42.056284+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:43.557591+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:43.572836+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:43.581236+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:44.791788+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:44.797399+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-26 12:28:07.778266+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:44.805814+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:50:46.133301+03	a:1:{i:0;a:2:{s:6:"column";s:1:"3";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-25 23:50:46.140398+03	bgglinkki asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-25 23:50:46.148529+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by bgglinkki asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-25 23:51:00.795546+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-25 23:51:00.821808+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-25 23:51:00.83025+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-25 23:51:00.83825+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 11:51:07.271297+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-26 11:51:07.307372+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-26 11:51:07.315953+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-26 11:51:18.942377+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 11:51:18.956955+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 11:51:18.996033+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 11:51:19.006732+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:03:41.293816+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:03:41.305128+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:03:41.313558+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:03:41.322071+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:03:59.327155+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:03:59.345803+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:03:59.3541+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:03:59.362442+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:07:34.774318+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:07:34.783216+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:07:34.791558+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:07:34.799884+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:08:44.159339+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:08:44.170949+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:08:44.17966+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:08:44.187551+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:16:31.48875+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:16:31.5026+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:16:31.51028+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:16:31.518672+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:28:03.190702+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:28:03.203073+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:28:03.211722+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:28:03.219763+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:28:07.764656+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-26 12:28:07.811445+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-26 12:28:13.475655+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:28:13.485882+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:28:13.494174+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:28:13.502739+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:31:20.451552+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:31:20.458534+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:31:20.466582+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:31:20.475007+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:32:35.21864+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:32:35.229127+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:32:35.237508+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:32:35.246332+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:34:17.121339+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:34:17.131457+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:34:17.139661+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:34:17.149376+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:36:52.128658+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:36:52.138994+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:36:52.1472+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:36:52.155715+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 12:37:25.827693+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 12:37:25.837016+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 12:37:25.845267+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 12:37:25.853682+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 13:31:35.493696+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 13:31:35.507214+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 13:31:35.51592+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 13:31:35.52406+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:32:47.095861+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-26 17:32:47.108828+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-26 17:32:47.126865+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-04-26 17:32:49.269566+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:32:49.283784+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:32:49.292188+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:32:49.300514+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:33:00.415199+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:33:00.43316+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:33:00.441521+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:33:00.44985+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:38:09.672058+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:38:09.690463+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:38:09.698677+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:38:09.707125+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:39:35.304433+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:39:35.36059+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:39:35.3688+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:39:35.37704+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:39:36.996006+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:39:37.027075+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:39:37.09372+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:39:37.135336+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:42:43.627813+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:42:43.683796+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:42:43.692134+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:42:43.70028+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:45:17.845312+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:45:17.858367+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:45:17.866767+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:45:17.875517+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:45:56.983749+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:45:57.014324+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:45:57.04774+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:45:57.10932+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:46:52.99456+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:46:53.032165+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:46:53.044383+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:46:53.052753+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-26 17:47:49.444062+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	19	DEBUG
\N	2015-04-26 17:47:49.466215+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	33	DEBUG
\N	2015-04-26 17:47:49.475051+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	34	DEBUG
\N	2015-04-26 17:47:49.482717+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	119	DEBUG
\N	2015-04-28 20:11:51.809932+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-04-28 20:11:51.863364+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-04-28 20:11:51.871287+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-05-11 15:39:11.687251+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-11 15:39:11.760166+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-11 15:39:11.768457+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-05-11 15:39:22.274951+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-11 15:39:22.292787+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-11 15:39:22.301023+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-11 15:39:22.308985+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	134	DEBUG
\N	2015-05-11 15:39:36.828582+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-11 15:39:36.841916+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-11 15:39:36.850204+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-05-11 15:40:00.552526+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-11 15:40:00.565646+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-11 15:40:00.573686+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-11 15:40:00.581963+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	134	DEBUG
\N	2015-05-11 15:40:09.089042+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:5:"Domin";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-11 15:40:09.098658+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-11 15:40:09.10685+03	a:2:{s:5:"value";s:5:"Domin";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-11 15:40:09.114562+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Domin, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	134	DEBUG
\N	2015-05-11 15:40:09.488183+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:7:"Dominio";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-11 15:40:09.498225+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-11 15:40:09.506922+03	a:2:{s:5:"value";s:7:"Dominio";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-11 15:40:09.515151+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Dominio, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	134	DEBUG
\N	2015-05-11 15:40:33.991078+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-11 15:40:34.005308+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-11 15:40:34.013588+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-11 15:40:34.022066+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	134	DEBUG
\N	2015-05-11 15:46:04.016141+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-11 15:46:04.028204+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-11 15:46:04.036125+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-11 15:46:04.044842+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	134	DEBUG
daFool	2015-05-11 15:55:08.656006+03		/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-11 15:55:08.823655+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-11 15:55:08.850144+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-11 15:55:08.865059+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-05-11 16:06:24.324559+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-11 16:06:24.335576+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-11 16:06:24.344197+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-05-11 16:06:45.206577+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-11 16:06:45.251422+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-11 16:06:45.285457+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-05-11 16:06:52.517726+03		/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-11 16:06:52.657581+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-11 16:06:52.667406+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-11 16:06:52.675822+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-05-11 16:11:16.291198+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-11 16:11:16.346993+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-11 16:11:16.355005+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-05-11 16:11:18.331283+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-11 16:11:18.346688+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-11 16:11:18.354944+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-11 16:11:18.363199+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Table Top Day, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	134	DEBUG
\N	2015-05-11 16:43:19.916226+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-11 16:43:19.969474+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-11 16:43:20.010321+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
daFool	2015-05-11 16:43:28.811807+03		/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-11 16:43:28.945513+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-11 16:43:28.959402+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-11 16:43:28.968105+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	69	DEBUG
\N	2015-05-12 18:46:09.255695+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 18:46:09.399842+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 18:46:09.416649+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 18:56:18.112872+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 18:56:18.122709+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 18:56:18.130919+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 18:59:06.715536+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 18:59:06.729891+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 18:59:06.737996+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 19:01:48.772311+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 19:01:48.786685+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 19:01:48.795099+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 19:02:02.068806+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 19:02:02.086126+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 19:02:02.102751+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 19:04:15.841469+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 19:04:15.85328+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 19:04:15.861498+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 19:04:47.642616+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:04:47.659685+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:04:47.668081+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:04:47.676833+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:04:50.492965+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 19:04:50.501172+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 19:04:50.509479+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 19:04:57.73162+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:04:57.751002+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:04:57.792611+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:04:57.826001+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:05:13.852676+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 19:05:13.866564+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 19:05:13.875502+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 19:05:15.7826+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:05:15.799758+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:05:15.808216+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:05:15.816548+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:06:43.162332+03	a:1:{i:0;a:2:{s:6:"column";s:1:"5";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:06:43.186508+03	tila asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:06:43.194789+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:06:43.202826+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tila asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:06:55.245506+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:06:55.260762+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:06:55.268829+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:06:55.277551+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:07:04.550973+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:07:04.568444+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:07:04.576853+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:07:04.585175+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:13:48.65401+03	Käyttäjä Geek2 rekisteröityi	/home/mos/projektit/slskirjasto/uusikayttaja.php		91	AUDIT
\N	2015-05-12 19:14:12.211325+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:14:12.244093+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:14:12.252371+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:14:12.260483+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:15:51.605781+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  SLS	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 19:16:16.888989+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 19:16:16.945452+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 19:16:16.953929+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 19:16:19.433903+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:19.487228+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:19.495413+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:19.503427+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:24.562773+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"d";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:24.569787+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:24.578463+03	a:2:{s:5:"value";s:1:"d";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:24.58665+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=d, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:25.685109+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"do ";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:25.745182+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:25.753111+03	a:2:{s:5:"value";s:3:"do ";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:25.761596+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=do , k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:29.286607+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:6:"do you";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:29.294824+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:29.303067+03	a:2:{s:5:"value";s:6:"do you";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:29.311079+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=do you, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:30.869781+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:4:"do y";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:30.878259+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:30.886327+03	a:2:{s:5:"value";s:4:"do y";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:30.894773+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=do y, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:31.276801+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"c";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:31.286537+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:31.294719+03	a:2:{s:5:"value";s:1:"c";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:31.302723+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=c, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:31.725092+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"cth";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:31.72805+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:31.736349+03	a:2:{s:5:"value";s:3:"cth";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:31.744525+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=cth, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:32.348097+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:4:"cthu";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:32.352876+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:32.361169+03	a:2:{s:5:"value";s:4:"cthu";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:32.369711+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=cthu, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:34.32557+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"c";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:34.355039+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:34.370087+03	a:2:{s:5:"value";s:1:"c";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:34.378405+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=c, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:34.779538+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"D";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:34.786231+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:34.794416+03	a:2:{s:5:"value";s:1:"D";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:34.802938+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=D, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:35.432565+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"Do";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:35.436915+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:35.444701+03	a:2:{s:5:"value";s:2:"Do";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:35.453123+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=Do, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:16:38.225619+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:16:38.235772+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:16:38.24424+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:16:38.252421+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:29:49.411724+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:29:49.423394+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:29:49.432094+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:29:49.44007+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 13:02:33.25797+03	tila asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:29:58.514901+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:29:58.531249+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:29:58.539477+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:29:58.547928+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:38:49.209633+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  SLS	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 19:40:17.728125+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:40:17.745337+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:40:17.753767+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:40:17.761963+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:40:25.505308+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 19:40:25.520238+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 19:40:25.528274+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 19:40:25.536868+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 19:40:56.135777+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  SLS	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 19:59:32.590138+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:14.909718+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:14.946128+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.030343+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.051333+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.070861+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.08761+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.103872+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.120953+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.137289+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.153823+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.171187+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.187545+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.204399+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.220468+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.237468+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.253694+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.27026+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.286959+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.304129+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:19:17.177354+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 20:00:15.320397+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.337262+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.430038+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.507704+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.645807+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.687422+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.729413+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.814899+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.853742+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.887391+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.903943+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.920291+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.937381+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.953765+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.970563+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:15.987189+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:16.003603+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:16.020672+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:16.036761+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:16.05447+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:16.07043+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:16.087426+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:16.103577+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.122535+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.145732+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.162024+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.178526+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.195689+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.212337+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.22869+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.246032+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.261778+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.278917+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.294817+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.311946+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.328439+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.345361+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.361914+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.379046+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.395666+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.411461+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.428701+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.445117+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:00:21.462306+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.160198+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.243336+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.29741+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.362798+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.400903+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.417452+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.434289+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.451124+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.476792+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.492595+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.509383+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.525826+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.542944+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.558905+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.575783+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.592785+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.608783+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.634913+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.651398+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.668118+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.684309+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.727411+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.748905+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.767737+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.784135+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.801011+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.819261+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.833747+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.850938+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.866815+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.884497+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.901223+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.917546+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.934308+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.950653+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.967135+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:12.984217+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:13.00075+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:13.01731+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:13.034398+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:13.051184+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:13.067485+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.093912+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.117527+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.136968+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.158972+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.175442+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.192307+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.208489+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.22561+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.24194+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.259046+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.275618+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.292083+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.31687+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.334056+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.35061+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.367271+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.384249+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.40049+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.417477+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.434053+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:18.450654+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.48155+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.51267+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.53621+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.560135+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.583894+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.601136+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.615971+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.632443+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.649713+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.665697+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.682848+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.69946+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.716504+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.732687+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.757665+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.773742+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.790509+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.807186+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.824031+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.840592+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:01:48.857191+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.695858+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.717926+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.740735+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.756869+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.772958+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.788925+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.805465+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.822366+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.839163+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.855859+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.872425+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.888907+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.905658+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.922263+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.939029+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.95588+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.97218+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:17.988757+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:18.005782+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:18.022903+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:18.039504+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.06579+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.088261+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.10521+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.121943+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.138876+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.155483+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.171724+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.188699+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.205188+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.222256+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.238492+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.255913+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.272239+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.28923+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.30564+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.331181+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.347189+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.363936+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.38058+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.397224+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:23.414153+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:30.820755+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:30.855473+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:30.897028+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:30.947108+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:30.988636+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.005051+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.021357+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.038611+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.054608+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.071679+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.088104+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.105551+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.122569+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.144206+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.167603+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.188805+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.204585+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.221735+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.238223+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.255567+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.271194+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.308761+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.332268+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.347648+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.363142+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.380821+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.396896+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.413444+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.430463+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.446748+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.463505+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.479942+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.496802+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.513856+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.530004+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.546451+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.563713+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.580322+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.597154+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.613438+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.630019+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:31.648503+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.205913+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.241677+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.263945+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.280378+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.297379+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.313107+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.330166+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.346402+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.363282+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.379931+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.396722+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.412895+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.43061+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.446308+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.463361+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.480145+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.497213+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.513925+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.529988+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.546585+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:34.563302+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.586521+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.613775+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.629762+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.646708+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.66276+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.679385+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.695974+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.712876+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.729227+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.746238+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.763066+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.780086+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.796279+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.813006+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.829727+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.846233+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.863391+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.879737+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.896+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.912879+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:02:39.938181+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:09.95676+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:09.995057+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.011354+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.027868+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.044905+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.061213+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.080714+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.094782+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.125026+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.158164+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.178639+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.19496+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.211592+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.228693+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.244565+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.262558+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.286703+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.303097+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.32004+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.336597+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:03:10.354123+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:10:09.8835+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:10:45.137361+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 20:10:45.148253+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 20:10:45.157195+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 20:10:46.807945+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 20:10:46.814979+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 20:10:46.823191+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 20:10:46.8315+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 20:11:52.434615+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  SLS	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:12:43.433634+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  SLS	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:15:21.800767+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma; 3002 SLS	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:16:20.643503+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma; 3002 SLS	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:19:16.896837+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma; 3002 SLS	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-12 20:19:17.154401+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 20:19:17.168752+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 20:19:17.220716+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 20:19:36.641112+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-12 20:19:36.650668+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-12 20:19:36.659258+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-12 20:19:38.86055+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 20:19:38.875766+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 20:19:38.884062+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 20:19:38.892556+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 20:19:41.470132+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"do";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 20:19:41.484106+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 20:19:41.492361+03	a:2:{s:5:"value";s:2:"do";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 20:19:41.500823+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=do, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 20:19:45.847271+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:5:"do uo";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 20:19:45.858665+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 20:19:45.867217+03	a:2:{s:5:"value";s:5:"do uo";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 20:19:45.875585+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=do uo, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 20:19:46.542896+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:6:"do uou";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 20:19:46.600535+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 20:19:46.667278+03	a:2:{s:5:"value";s:6:"do uou";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 20:19:46.700656+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=do uou, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 20:19:47.244876+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"do ";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 20:19:47.293261+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 20:19:47.317025+03	a:2:{s:5:"value";s:3:"do ";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 20:19:47.358891+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=do , k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-12 20:19:48.593782+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:4:"do y";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-12 20:19:48.608986+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-12 20:19:48.617416+03	a:2:{s:5:"value";s:4:"do y";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-12 20:19:48.625644+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=do y, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 10:16:53.574172+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 10:16:53.6294+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 10:16:53.679637+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
daFool	2015-05-13 10:17:10.037161+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 10:17:10.139157+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 10:17:10.161839+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 10:17:10.170017+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 10:17:13.69133+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 10:17:13.703323+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 10:17:13.711491+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 10:17:13.719815+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
daFool	2015-05-13 10:27:24.217821+03	Tapahtuma Ropecon 2015 lisätty.	/home/mos/projektit/slskirjasto/helpers/collections.php	SLSCOLLECTIONS	44	INFO
\N	2015-05-13 10:31:03.972887+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 10:31:03.988356+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 10:31:03.996999+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 10:31:17.137809+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 10:31:17.154332+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 10:31:17.162432+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 10:31:17.170671+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 10:39:40.686137+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma;  Ropecon 2015	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	95	DEBUG
\N	2015-05-13 10:39:40.987815+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 10:39:41.028421+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 10:39:41.068488+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 10:39:41.076156+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 10:44:37.426718+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 10:44:37.442983+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 10:44:37.451112+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 10:44:37.459706+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 10:44:39.704949+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 10:44:39.717644+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 10:44:39.726019+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 10:44:39.734501+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 10:46:21.28959+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 10:46:21.312614+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 10:46:21.320279+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
daFool	2015-05-13 10:46:33.163545+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 10:46:33.289069+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 10:46:33.302676+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 10:46:33.311225+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
daFool	2015-05-13 10:47:21.366789+03	Tapahtuma Ropecon 2015 lisätty.	/home/mos/projektit/slskirjasto/helpers/collections.php	SLSCOLLECTIONS	44	INFO
daFool	2015-05-13 10:50:46.696533+03	Tapahtuma Ropecon 2015 lisätty.	/home/mos/projektit/slskirjasto/helpers/collections.php	SLSCOLLECTIONS	44	INFO
daFool	2015-05-13 10:56:28.21872+03	Tapahtuma Ropecon 2015 lisätty.	/home/mos/projektit/slskirjasto/helpers/collections.php	SLSCOLLECTIONS	44	INFO
\N	2015-05-13 11:02:20.18466+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 11:02:20.199143+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 11:02:20.207933+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 11:02:23.886995+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 11:02:23.907392+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 11:02:23.915404+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 11:02:26.471396+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 11:02:26.481831+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 11:02:26.49144+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
daFool	2015-05-13 11:06:14.503605+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 12:27:07.228673+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 11:06:14.643344+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 11:06:14.660235+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 11:06:14.668538+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 11:06:30.658733+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 11:06:30.676212+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 11:06:30.684483+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 11:09:19.924685+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 11:09:19.941194+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 11:09:19.950081+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 11:10:34.752507+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 11:10:34.761741+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 11:10:34.770061+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 11:11:46.233519+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 11:11:46.241196+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 11:11:46.249213+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 12:00:19.429016+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 12:00:19.440829+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 12:00:19.448278+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
daFool	2015-05-13 12:00:36.214326+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 12:00:36.357053+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 12:00:36.381182+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 12:00:36.388517+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 12:25:07.235667+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 12:25:07.252343+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 12:25:07.278029+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
daFool	2015-05-13 12:25:13.95903+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 12:25:14.101028+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 12:25:14.111271+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 12:25:14.118669+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 12:25:17.565442+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 12:25:17.576973+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 12:25:17.584943+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 12:25:17.594169+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 12:25:26.048752+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 12:25:26.059727+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 12:25:26.067961+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 12:25:27.552224+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 12:25:27.584479+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 12:25:27.67316+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 12:25:27.701337+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 12:27:07.209565+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 12:27:07.220631+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 12:27:07.237193+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 12:28:28.360591+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 12:28:28.391303+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 12:28:28.398954+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 12:28:28.407483+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 12:44:07.00798+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 12:44:07.020169+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 12:44:07.027769+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 12:44:07.036323+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=SLS, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 13:00:21.457274+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 13:00:21.479384+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 13:00:21.487949+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
daFool	2015-05-13 13:00:27.676615+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 13:00:27.890123+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 13:00:27.90452+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 13:00:27.912246+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 13:00:31.301983+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:00:31.353906+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:00:31.395424+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:00:31.470421+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 13:01:53.877807+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	27	DEBUG
\N	2015-05-13 13:01:53.90171+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	41	DEBUG
\N	2015-05-13 13:01:53.910872+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	73	DEBUG
\N	2015-05-13 13:01:56.328026+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:01:56.343368+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:01:56.352+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:01:56.360534+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 13:02:26.177984+03	a:1:{i:0;a:2:{s:6:"column";s:1:"1";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:02:26.191864+03	nimi asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:02:26.200291+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:02:26.208608+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by nimi asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 13:02:29.784574+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:02:29.800165+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:02:29.808166+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:02:29.816664+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 13:02:31.641836+03	a:1:{i:0;a:2:{s:6:"column";s:1:"4";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:02:31.650046+03	omistaja asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:02:31.658177+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:02:31.666729+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by omistaja asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 13:02:33.255551+03	a:1:{i:0;a:2:{s:6:"column";s:1:"5";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:02:33.26642+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:02:33.274807+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tila asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	135	DEBUG
\N	2015-05-13 13:43:53.047003+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 13:43:53.105198+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 13:43:53.113342+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
daFool	2015-05-13 13:44:00.996578+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 13:44:01.226111+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 13:44:01.25504+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 13:44:01.288522+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 13:44:03.16741+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:44:03.179605+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:44:03.188321+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:44:03.196872+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 13:44:32.917768+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:44:32.92805+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:44:32.936228+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:44:32.944596+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 13:55:26.265198+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 13:55:26.323324+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 13:55:26.331385+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 13:55:29.306134+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:55:29.314709+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:55:29.322971+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:55:29.331351+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 13:55:38.526712+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:55:38.539819+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:55:38.548135+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 13:55:38.5559+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 13:56:22.180993+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 13:56:22.195004+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 13:56:22.203151+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 13:56:28.714017+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 13:56:28.727878+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 13:56:28.736206+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 13:56:32.828786+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 13:56:32.844316+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 13:56:32.852667+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 13:56:52.914809+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 13:56:52.926958+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 13:56:52.934859+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:04:16.953657+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 13:56:52.943521+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:01:11.505079+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:01:11.51984+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:01:11.594813+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
daFool	2015-05-13 14:01:24.120581+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 14:01:24.336146+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:01:24.352388+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:01:24.360957+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:01:27.543602+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:01:27.560779+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:01:27.568868+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:01:27.577897+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:01:31.511143+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:01:31.526947+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:01:31.535567+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:01:48.209781+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:01:48.226391+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:01:48.234682+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:01:48.242646+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:01:56.589762+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:01:56.601488+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:01:56.609414+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:02:05.311801+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:02:05.333448+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:02:05.341945+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:02:05.350467+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:02:08.12946+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:02:08.14133+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:02:08.150528+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:02:10.137493+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:02:10.141563+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:02:10.150519+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:02:10.158934+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:04:05.579153+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:04:05.601837+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:04:05.610057+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:04:07.677813+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:04:07.718832+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:04:07.751543+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
daFool	2015-05-13 14:04:16.713217+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 14:04:16.967594+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:04:16.976402+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:04:18.944984+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:04:18.959723+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:04:18.968006+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:04:18.975934+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:06:22.925887+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:06:22.935368+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:06:22.94383+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:06:22.952776+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:06:35.538182+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:06:35.551946+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:06:35.559795+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:06:35.568747+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
daFool	2015-05-13 14:07:53.065222+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma; 3003 Ropecon 2015	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	96	DEBUG
\N	2015-05-13 14:07:53.301642+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:07:53.330897+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:07:53.413786+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:07:53.455383+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:11:10.509387+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"de";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:11:10.519037+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:11:10.527193+03	a:2:{s:5:"value";s:2:"de";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:11:10.535678+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=de, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:11:14.379845+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"dea";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:11:14.435487+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:11:14.443816+03	a:2:{s:5:"value";s:3:"dea";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:11:14.45176+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=dea, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
daFool	2015-05-13 14:12:47.575884+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma; 3003 Ropecon 2015	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	96	DEBUG
\N	2015-05-13 14:12:47.786212+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:12:47.796628+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:12:47.805143+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:12:47.813309+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
daFool	2015-05-13 14:15:42.134385+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma; 3003 Ropecon 2015	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	96	DEBUG
\N	2015-05-13 14:15:42.503244+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:15:42.520589+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:15:42.5284+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:15:42.537227+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
daFool	2015-05-13 14:18:30.80436+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma; 3003 Ropecon 2015	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	96	DEBUG
\N	2015-05-13 15:01:53.752731+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
daFool	2015-05-13 14:19:26.477162+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma; 3003 Ropecon 2015	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	96	DEBUG
\N	2015-05-13 14:19:26.785284+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:19:26.800813+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:19:26.808439+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:19:26.816784+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:19:30.655452+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"dea";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:19:30.666738+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:19:30.67505+03	a:2:{s:5:"value";s:3:"dea";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:19:30.683322+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=dea, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:19:41.901912+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:19:41.916035+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:19:41.924208+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:19:41.932784+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:19:51.736194+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:12:"670541597682";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:19:51.749153+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:19:51.75749+03	a:2:{s:5:"value";s:12:"670541597682";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:19:51.765789+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v) order by tunniste asc limit :length offset :start; (v=670541597682, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:27:14.252737+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:27:14.264567+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:27:14.273042+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:27:15.984694+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:27:15.998228+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:27:16.00617+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:27:35.068577+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:27:35.080118+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:27:35.089125+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:27:37.495006+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:27:37.522811+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:27:37.529984+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
daFool	2015-05-13 14:27:47.152257+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 14:27:47.373794+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:27:47.38788+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:27:47.396024+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:27:49.815513+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:27:49.82995+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:27:49.837746+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:27:49.845939+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:27:54.450782+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:12:"670541597682";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:27:54.462675+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:27:54.470962+03	a:2:{s:5:"value";s:12:"670541597682";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:27:54.479403+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v or gtin ~* :v) order by tunniste asc limit :length offset :start; (v=670541597682, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:30:16.327024+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:30:16.338193+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:30:16.346549+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:30:16.355195+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:30:20.153367+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"6";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:30:20.171318+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:30:20.179326+03	a:2:{s:5:"value";s:1:"6";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:30:20.188347+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v or gtin ~* :v) order by tunniste asc limit :length offset :start; (v=6, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:30:29.726631+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"62";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:30:29.737465+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:30:29.745607+03	a:2:{s:5:"value";s:2:"62";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:30:29.754045+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v or gtin ~* :v) order by tunniste asc limit :length offset :start; (v=62, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:30:32.340021+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:1:"6";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:30:32.378202+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:30:32.387562+03	a:2:{s:5:"value";s:1:"6";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:30:32.395665+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v or gtin ~* :v) order by tunniste asc limit :length offset :start; (v=6, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:30:42.411369+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"67";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:30:42.420095+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:30:42.428419+03	a:2:{s:5:"value";s:2:"67";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:30:42.436655+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v or gtin ~* :v) order by tunniste asc limit :length offset :start; (v=67, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:30:57.412614+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:30:57.427537+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:30:57.44419+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:30:57.452354+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:47:26.912776+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:47:26.928626+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:47:26.936955+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
daFool	2015-05-13 14:47:32.951638+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 14:47:33.163729+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:47:33.177803+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:47:33.186005+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:47:36.073348+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:47:36.085927+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:47:36.094244+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:47:36.103005+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:47:40.054988+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:2:"67";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:47:40.069108+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:47:40.077403+03	a:2:{s:5:"value";s:2:"67";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:47:40.085671+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v or gtin ~* :v) order by tunniste asc limit :length offset :start; (v=67, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:47:53.302565+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:47:53.3184+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:47:53.326831+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:47:53.335465+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:47:55.826842+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"dea";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:47:55.860004+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:47:55.868165+03	a:2:{s:5:"value";s:3:"dea";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:47:55.876597+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v or gtin ~* :v) order by tunniste asc limit :length offset :start; (v=dea, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:47:56.473235+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:4:"dead";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:47:56.47654+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:47:56.484828+03	a:2:{s:5:"value";s:4:"dead";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:47:56.493131+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k and (nimi ~* :v or tila ~*:v or gtin ~* :v) order by tunniste asc limit :length offset :start; (v=dead, k=Ropecon 2015, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 14:59:12.289324+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:59:12.303796+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:59:12.311934+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
daFool	2015-05-13 14:59:18.215013+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 14:59:18.40845+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:59:18.428533+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:59:18.437083+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:59:37.550191+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 14:59:37.569864+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 14:59:37.579021+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 14:59:40.41713+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 14:59:40.427387+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 14:59:40.435973+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 14:59:40.444021+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Fool's Gold, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
daFool	2015-05-13 15:00:52.67077+03	select * from peli as p join kokoelmapeli as k on k.peli=p.Tunniste where p.Tunniste = :rex and kokoelma=:kokoelma; 3003 Fool's Gold	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	96	DEBUG
\N	2015-05-13 15:00:52.934735+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	36	DEBUG
\N	2015-05-13 15:00:52.948128+03	tunniste asc	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	50	DEBUG
\N	2015-05-13 15:00:52.956451+03	a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_collectiongames.php	hum	51	DEBUG
\N	2015-05-13 15:00:52.964787+03	select tunniste, nimi, hylly, paikka, omistaja, tila from vKokoelma where kokoelma=:k  order by tunniste asc limit :length offset :start; (v=, k=Fool's Gold, start=0, length=10)	/home/mos/projektit/slskirjasto/helpers/collectionGames.php	SLSCOLLECTIONGAMES	136	DEBUG
\N	2015-05-13 15:01:42.824947+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 15:01:42.836849+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 15:01:42.845231+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 15:01:51.609483+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"ded";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 15:01:51.62811+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 15:01:51.636374+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; (ded)	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 15:01:53.742467+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"dea";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 15:01:53.761423+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; (dea)	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 15:02:22.169994+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:3:"dea";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 15:02:22.185043+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 15:02:22.192875+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; (dea)	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 15:02:26.333684+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 15:02:26.369294+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 15:02:26.384524+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 16:33:30.505337+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 16:33:30.565774+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 16:33:30.573993+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
daFool	2015-05-13 16:33:41.291364+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 16:33:41.431885+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 16:33:41.565313+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 16:33:41.608223+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 17:11:27.421062+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 17:11:27.435058+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 17:11:27.443238+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 17:11:28.04205+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 17:11:28.10786+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 17:11:28.160251+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 17:11:38.265355+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 17:11:38.276193+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 17:11:38.284561+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
daFool	2015-05-13 17:11:43.088069+03	Käyttäjä daFool kirjautui paikallisesti.	/home/mos/projektit/slskirjasto/checkAuth.php		47	AUDIT
\N	2015-05-13 17:11:43.218875+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 17:11:43.234186+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 17:11:43.242571+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\N	2015-05-13 17:16:13.624323+03	a:1:{i:0;a:2:{s:6:"column";s:1:"0";s:3:"dir";s:3:"asc";}} a:2:{s:5:"value";s:0:"";s:5:"regex";s:4:"true";}	/home/mos/projektit/slskirjasto/json_games.php	hum	37	DEBUG
\N	2015-05-13 17:16:13.637718+03	nimi asc	/home/mos/projektit/slskirjasto/json_games.php	hum	51	DEBUG
\N	2015-05-13 17:16:13.654338+03	select * from peli where (nimi ~* :v or julkaisija ~* :v or suunnittelija ~* :v or bgglinkki ~* :v) order by nimi asc limit :length offset :start; ()	/home/mos/projektit/slskirjasto/helpers/games.php	SLSGAMES	92	DEBUG
\.


--
-- Name: peli_tunniste_seq; Type: SEQUENCE SET; Schema: public; Owner: mos
--

SELECT pg_catalog.setval('peli_tunniste_seq', 6723, true);


--
-- Data for Name: peliarvio; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY peliarvio (peli, arvioija, arvo) FROM stdin;
\.


--
-- Data for Name: tagi; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY tagi (nimi, selitys, lisatty, lisaaja) FROM stdin;
\.


--
-- Data for Name: pelitagi; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY pelitagi (tagi, lisatty, lisaaja, peli) FROM stdin;
\.


--
-- Name: pseudojasen; Type: SEQUENCE SET; Schema: public; Owner: sls
--

SELECT pg_catalog.setval('pseudojasen', -10000, true);


--
-- Data for Name: tagiehdotus; Type: TABLE DATA; Schema: public; Owner: mos
--

COPY tagiehdotus (ehdotettu, ehdottaja, laji, tagi, nimi, selitys) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

